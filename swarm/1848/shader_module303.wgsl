struct Struct_1 {
    a: vec4<i32>,
    b: u32,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: f32 = 1814f;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec3<i32> {
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-452f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(114f)))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(371f)) * 1173f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(406f, -613f))))))));
    global1 = -1000f;
    let var_0 = false;
    var var_1 = Struct_1(~_wgslsmith_mod_vec4_i32(global0.a, ~(global0.a ^ vec4<i32>(-1i, global0.a.x, 2147483647i, global0.a.x))), u_input.b, global0.a.zwz);
    var var_2 = select(vec3<bool>(false, !var_0 | false, any(select(vec4<bool>(true, var_0, var_0, false), !vec4<bool>(var_0, true, var_0, var_0), true))), select(vec3<bool>(!(var_0 && var_0), var_0, var_0), select(vec3<bool>(!var_0, all(vec2<bool>(var_0, false)), !var_0), vec3<bool>(!var_0, true, var_0), var_0 != var_0), var_0), true);
    return vec3<i32>(global0.a.x, var_1.a.x, -26297i);
}

fn func_4(arg_0: i32, arg_1: vec4<bool>, arg_2: Struct_1) -> bool {
    global1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1494f, 2812f)) - -1000f), -1355f)));
    return !arg_1.x;
}

fn func_2(arg_0: Struct_1) -> bool {
    let var_0 = !(func_4(abs(reverseBits(16598i)), select(select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), true), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true), false), true), Struct_1(_wgslsmith_sub_vec4_i32(arg_0.a, global0.a), 12874u, func_3())) || (!any(vec3<bool>(true, false, true)) | any(vec4<bool>(true, true, true, true))));
    global1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(-1779f, _wgslsmith_f_op_f32(ceil(331f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2240f * _wgslsmith_f_op_f32(min(1267f, -433f))) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(-247f, -319f)), -397f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(288f, -544f, all(vec4<bool>(var_0, true, true, false))))))));
    let var_1 = Struct_1(vec4<i32>(global0.a.x, firstTrailingBit(global0.a.x), i32(-1i) * -2147483647i, min(-max(arg_0.c.x, 2147483647i), 29454i)), ~arg_0.b, arg_0.c);
    let var_2 = !select(!vec3<bool>(true, all(vec4<bool>(true, var_0, true, false)), arg_0.a.x >= arg_0.c.x), vec3<bool>(!(!var_0), var_0, var_0), !vec3<bool>(all(vec2<bool>(false, var_0)), !var_0, !var_0));
    var var_3 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    return !(!var_2.x);
}

fn func_5(arg_0: bool, arg_1: Struct_1, arg_2: u32, arg_3: Struct_1) -> Struct_1 {
    let var_0 = countOneBits(global0.b);
    var var_1 = _wgslsmith_div_i32(-73039i, 14659i);
    let var_2 = _wgslsmith_mult_vec3_u32((select(vec3<u32>(u_input.b, 1u, arg_3.b), min(vec3<u32>(68293u, 0u, arg_2), vec3<u32>(1u, u_input.a, arg_1.b)), !vec3<bool>(arg_0, arg_0, arg_0)) << (reverseBits(_wgslsmith_div_vec3_u32(vec3<u32>(arg_2, arg_2, var_0), vec3<u32>(global0.b, 40591u, 4294967295u))) % vec3<u32>(32u))) ^ abs(select(vec3<u32>(0u, 0u, 0u), _wgslsmith_sub_vec3_u32(vec3<u32>(arg_3.b, 1u, arg_2), vec3<u32>(arg_3.b, global0.b, 12811u)), select(vec3<bool>(arg_0, false, arg_0), vec3<bool>(arg_0, arg_0, false), arg_0))), vec3<u32>(0u, arg_2, var_0));
    global0 = arg_3;
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) * vec3<f32>(-984f, -250f, _wgslsmith_f_op_f32(-1826f - 897f))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1961f, 647f, -1000f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-273f, -1529f, -943f) + vec3<f32>(-1405f, -980f, -1000f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1390f, 168f, -649f)))));
    return arg_1;
}

fn func_6(arg_0: Struct_1) -> Struct_1 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(step(-133f, _wgslsmith_div_f32(-1962f, -2800f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-963f)), -959f))), 1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(160f)), _wgslsmith_f_op_f32(987f + _wgslsmith_f_op_f32(114f * -1272f)))) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(514f)))))), -1000f);
    let var_1 = _wgslsmith_mult_u32(arg_0.b, u_input.b);
    let var_2 = _wgslsmith_dot_vec4_u32(abs(~select(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, 4294967295u, 35401u, arg_0.b), vec4<u32>(1u, arg_0.b, arg_0.b, 0u)), min(vec4<u32>(4294967295u, 19429u, u_input.b, 84060u), vec4<u32>(u_input.a, global0.b, u_input.b, 1u)), vec4<bool>(true, true, true, true))), select(min(~(~vec4<u32>(1u, global0.b, u_input.b, arg_0.b)), vec4<u32>(countOneBits(32729u), 39704u, arg_0.b, ~var_1)), reverseBits(_wgslsmith_clamp_vec4_u32(countOneBits(vec4<u32>(var_1, arg_0.b, 54115u, var_1)), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, 1992u, 44429u, 0u), vec4<u32>(19636u, 45037u, u_input.a, 25906u)), vec4<u32>(4294967295u, 4294967295u, 1u, 10952u) | vec4<u32>(0u, global0.b, 4294967295u, 1u))), true));
    global1 = var_0.x;
    var var_3 = Struct_1(countOneBits(~vec4<i32>(_wgslsmith_add_i32(-2147483647i, 0i), func_3().x, 1i, arg_0.a.x >> (global0.b % 32u))), 20867u, vec3<i32>(arg_0.a.x, -arg_0.c.x, -2147483647i));
    return func_5(false, Struct_1(_wgslsmith_add_vec4_i32(max(global0.a, arg_0.a), select(vec4<i32>(0i, -1i, arg_0.c.x, arg_0.c.x), vec4<i32>(arg_0.c.x, var_3.c.x, arg_0.c.x, var_3.c.x), vec4<bool>(false, true, false, false))) ^ reverseBits(~var_3.a), 1u, _wgslsmith_sub_vec3_i32(arg_0.a.xxw, _wgslsmith_div_vec3_i32(vec3<i32>(var_3.c.x, -7337i, arg_0.a.x), vec3<i32>(var_3.c.x, 50618i, var_3.c.x)) | select(global0.c, global0.c, vec3<bool>(true, true, false)))), max(10524u, u_input.a), Struct_1(~(~(arg_0.a ^ vec4<i32>(var_3.c.x, 19982i, 1i, var_3.a.x))), var_3.b, _wgslsmith_clamp_vec3_i32(var_3.a.xxx, _wgslsmith_mod_vec3_i32(func_5(false, Struct_1(vec4<i32>(1i, arg_0.c.x, 2147483647i, arg_0.a.x), 1u, vec3<i32>(-18597i, global0.c.x, var_3.c.x)), 0u, Struct_1(var_3.a, 4294967295u, arg_0.c)).c, vec3<i32>(-14310i, -1i, global0.a.x)), global0.c << (_wgslsmith_sub_vec3_u32(vec3<u32>(arg_0.b, var_1, 1u), vec3<u32>(var_1, var_1, global0.b)) % vec3<u32>(32u)))));
}

fn func_7(arg_0: u32, arg_1: u32, arg_2: Struct_1) -> vec2<i32> {
    global0 = arg_2;
    var var_0 = _wgslsmith_dot_vec4_i32(vec4<i32>(~func_5(true, func_6(arg_2), 4294967295u, arg_2).a.x, ~(-(~(-30234i))), -1i, select(reverseBits(arg_2.a.x) & _wgslsmith_mod_i32(arg_2.c.x, 42026i), _wgslsmith_mult_i32(global0.a.x, i32(-1i) * -1i), -1000f <= _wgslsmith_f_op_f32(select(-1000f, -531f, true)))), ~(-(vec4<i32>(1i, -13674i, arg_2.a.x, 13247i) | vec4<i32>(1i, global0.c.x, 23947i, arg_2.a.x)) | -(global0.a >> (vec4<u32>(arg_2.b, 0u, 4294967295u, arg_1) % vec4<u32>(32u)))));
    var var_1 = arg_2.a.x <= _wgslsmith_clamp_i32(_wgslsmith_add_i32(-2147483647i, _wgslsmith_add_i32(2147483647i, arg_2.a.x)) << (abs(~arg_2.b) % 32u), 0i, _wgslsmith_mod_i32(-(~global0.a.x), arg_2.a.x));
    return _wgslsmith_clamp_vec2_i32(global0.c.yz, select(vec2<i32>(global0.c.x, global0.a.x), ~min(-vec2<i32>(global0.a.x, global0.a.x), -vec2<i32>(arg_2.c.x, arg_2.c.x)), false), arg_2.c.xz);
}

fn func_1(arg_0: vec4<u32>, arg_1: i32, arg_2: vec3<u32>, arg_3: bool) -> Struct_1 {
    var var_0 = Struct_1(global0.a, ~4294967295u, firstLeadingBit(-vec3<i32>(global0.c.x, 11646i, global0.c.x & global0.c.x)));
    let var_1 = -func_7(39488u, _wgslsmith_clamp_u32(~arg_0.x, ~arg_0.x, arg_2.x) >> (~_wgslsmith_clamp_u32(0u, u_input.b, 38812u) % 32u), func_6(func_5(func_2(Struct_1(global0.a, 4294967295u, vec3<i32>(37430i, 32271i, -1i))), Struct_1(global0.a, 53077u, var_0.a.xxw), 4294967295u, Struct_1(vec4<i32>(38922i, var_0.a.x, -2147483647i, -68865i), 45962u, global0.c))));
    let var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(667f)) + 1371f), _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(-717f)))))));
    let var_3 = var_2;
    var_0 = func_5(arg_3 && arg_3, func_5(true | !(!arg_3), func_6(Struct_1(global0.a, ~u_input.b, var_0.c)), ~0u, Struct_1(global0.a, arg_0.x, ~(~global0.c))), ~arg_2.x, Struct_1(~select(firstLeadingBit(global0.a), ~var_0.a, vec4<bool>(false, arg_3, arg_3, arg_3)), ~0u, select(vec3<i32>(global0.c.x & 17972i, ~(-2147483647i), var_1.x), _wgslsmith_add_vec3_i32(global0.c, var_0.a.zzw), !arg_3)));
    return Struct_1(vec4<i32>(global0.c.x, -func_3().x, abs(_wgslsmith_div_i32(arg_1, var_0.c.x)), -1i) | ~_wgslsmith_add_vec4_i32(global0.a, -var_0.a), arg_0.x, ~vec3<i32>(2147483647i, ~arg_1 ^ var_1.x, 0i));
}

fn func_8(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: vec3<bool>, arg_3: f32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1379f))), 1549f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(arg_3, arg_3), -662f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1024f, arg_3))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(1758f, 328f), _wgslsmith_f_op_f32(arg_3 * 285f))))));
    let var_1 = arg_0;
    global0 = func_5(select(arg_1.x < (0u ^ ~u_input.b), true || any(!vec2<bool>(arg_2.x, true)), !arg_2.x), var_1, select(_wgslsmith_div_u32(40474u, 1183u), 1u, arg_2.x) << (_wgslsmith_mult_u32(_wgslsmith_mult_u32(0u, abs(arg_1.x)), ~1u << ((1u & u_input.a) % 32u)) % 32u), Struct_1(select(arg_0.a, _wgslsmith_clamp_vec4_i32(arg_0.a, vec4<i32>(-2147483647i, arg_0.a.x, 2147483647i, global0.c.x), vec4<i32>(global0.c.x, var_1.a.x, var_1.a.x, -42553i)), select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, arg_2.x), false)) << (vec4<u32>(countOneBits(var_1.b), arg_0.b, ~23608u, arg_1.x | 58616u) % vec4<u32>(32u)), ~countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(u_input.b, u_input.b))), vec3<i32>(-global0.a.x >> (1u % 32u), _wgslsmith_div_i32(~arg_0.c.x, ~0i), var_1.c.x)));
    var var_2 = Struct_1(var_1.a, _wgslsmith_sub_u32(global0.b, ~arg_1.x), func_1((vec4<u32>(17487u, 1u, 25415u, arg_1.x) & max(vec4<u32>(u_input.b, global0.b, 26526u, arg_0.b), vec4<u32>(arg_0.b, u_input.b, 21920u, 1u))) << (~(~vec4<u32>(var_1.b, 0u, 7596u, 9556u)) % vec4<u32>(32u)), 1i, arg_1, func_4(_wgslsmith_add_i32(var_1.a.x, global0.a.x), select(!vec4<bool>(arg_2.x, arg_2.x, true, arg_2.x), vec4<bool>(arg_2.x, true, false, false), vec4<bool>(arg_2.x, arg_2.x, arg_2.x, true)), var_1)).a.zyx);
    var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1925f - var_0.x))) + -794f), arg_3));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(_wgslsmith_add_vec4_i32(global0.a, min(global0.a, -_wgslsmith_sub_vec4_i32(vec4<i32>(global0.a.x, global0.a.x, global0.a.x, 5845i), vec4<i32>(global0.c.x, global0.a.x, global0.c.x, -14406i)))), global0.b, firstTrailingBit(vec3<i32>(0i, countOneBits(-2147483647i), global0.a.x)) << (vec3<u32>(1u, 0u, _wgslsmith_add_u32(13524u, global0.b) >> (u_input.b % 32u)) % vec3<u32>(32u)));
    let var_0 = abs(firstLeadingBit(47317u));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(692f, 1203f, 571f, -510f))) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(580f, -884f, -347f, 1000f))))))));
    let var_2 = _wgslsmith_sub_i32(1i, global0.a.x);
    var var_3 = func_8(func_1(min(~(vec4<u32>(22368u, 4294967295u, global0.b, global0.b) >> (vec4<u32>(var_0, var_0, global0.b, global0.b) % vec4<u32>(32u))), abs(vec4<u32>(4294967295u, 1u, global0.b, var_0) & vec4<u32>(65808u, var_0, 1u, 16043u))), firstTrailingBit(abs(1i) << ((var_0 | 40268u) % 32u)), ~vec3<u32>(0u, select(19096u, 5147u, true), u_input.a), true), countOneBits(firstLeadingBit(~max(vec3<u32>(72706u, 3334u, 1u), vec3<u32>(0u, 59264u, 0u)))), vec3<bool>(any(select(select(vec2<bool>(false, true), vec2<bool>(true, true), false), vec2<bool>(false, false), -1i < var_2)), true, _wgslsmith_f_op_f32(-2740f * _wgslsmith_f_op_f32(var_1.x - var_1.x)) >= var_1.x), _wgslsmith_f_op_f32(exp2(var_1.x)));
    var var_4 = func_5(all(select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true)), vec3<bool>(true, true, true), vec3<bool>(select(true, true, false), false, true))), Struct_1(_wgslsmith_add_vec4_i32(vec4<i32>(1i, -global0.c.x, _wgslsmith_dot_vec4_i32(global0.a, var_3.a), reverseBits(var_3.c.x)), var_3.a), 1u, -vec3<i32>(-global0.a.x, func_6(Struct_1(var_3.a, global0.b, global0.c)).c.x, -14024i)), 0u, Struct_1(var_3.a, global0.b & ~41077u, -global0.a.xxy));
    let var_5 = Struct_1(func_5(true | any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)), func_1(vec4<u32>(148195u, 45157u, var_3.b, u_input.a), global0.c.x, ~(~vec3<u32>(u_input.b, 19751u, 291u)), false), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 64988u, var_3.b), _wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(24644u, 1u, 77049u), vec3<u32>(9447u, 4294967295u, 34357u), vec3<u32>(u_input.a, var_3.b, 37907u)), vec3<u32>(16610u, 0u, var_3.b))), func_6(Struct_1(-vec4<i32>(var_4.c.x, var_3.a.x, 58672i, 2228i), var_3.b >> (global0.b % 32u), global0.a.xyx))).a, 0u, countOneBits(_wgslsmith_sub_vec3_i32(vec3<i32>(var_4.c.x, var_4.a.x, func_3().x), func_6(Struct_1(var_4.a, global0.b, vec3<i32>(var_3.a.x, 4372i, -41200i))).a.wzx)));
    let var_6 = vec2<bool>(any(vec2<bool>(true, true)), true);
    let var_7 = vec3<bool>(var_6.x, var_6.x, all(vec3<bool>(var_6.x, !func_2(var_5), select(func_2(var_5), false, all(vec2<bool>(false, var_6.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(126061u ^ ~var_0, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(var_1.wyx)) + _wgslsmith_div_vec3_f32(var_1.zzz, vec3<f32>(723f, -2175f, -511f))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1000f, var_1.x, 324f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_1.xwz - var_1.zzx) * _wgslsmith_f_op_vec3_f32(select(var_1.xwy, var_1.wwx, true))))), var_1.zwz, select(!select(var_7, vec3<bool>(var_6.x, var_7.x, var_7.x), vec3<bool>(true, var_6.x, true)), !(!vec3<bool>(var_7.x, true, true)), vec3<bool>(var_6.x, false, var_6.x | true)))));
}

