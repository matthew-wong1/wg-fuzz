struct Struct_1 {
    a: vec4<f32>,
    b: vec4<bool>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec4<f32>,
    c: u32,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<f32>,
    c: vec3<u32>,
    d: f32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 18> = array<vec4<u32>, 18>(vec4<u32>(8541u, 0u, 64569u, 9558u), vec4<u32>(66511u, 4294967295u, 0u, 0u), vec4<u32>(76598u, 18269u, 4294967295u, 65292u), vec4<u32>(23554u, 4294967295u, 0u, 4294967295u), vec4<u32>(4294967295u, 1u, 1u, 1u), vec4<u32>(9396u, 0u, 0u, 71914u), vec4<u32>(110358u, 25383u, 4294967295u, 1u), vec4<u32>(4294967295u, 79690u, 15862u, 23092u), vec4<u32>(30536u, 1u, 16801u, 65686u), vec4<u32>(1u, 10181u, 38012u, 100315u), vec4<u32>(45068u, 22803u, 65447u, 4294967295u), vec4<u32>(1u, 4294967295u, 26274u, 4294967295u), vec4<u32>(6401u, 42892u, 48961u, 0u), vec4<u32>(78406u, 4294967295u, 26775u, 25443u), vec4<u32>(1u, 1u, 43473u, 1u), vec4<u32>(83926u, 1u, 13094u, 37831u), vec4<u32>(1u, 18819u, 0u, 0u), vec4<u32>(38538u, 4294967295u, 1u, 1u));

var<private> global1: vec3<f32> = vec3<f32>(133f, 2057f, 845f);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: i32, arg_1: bool) -> vec3<f32> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(592f, 651f, -672f, global1.x)) - vec4<f32>(-1739f, _wgslsmith_f_op_f32(min(global1.x, -1086f)), -203f, _wgslsmith_f_op_f32(-global1.x))))), !(!vec4<bool>(true, arg_1, true, arg_1)), select(u_input.d.zx, ~u_input.d.yx, vec2<bool>(false, true)));
    var var_1 = -_wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.b, arg_0, -5488i), vec3<i32>(u_input.a, arg_0, 3344i)), abs(vec3<i32>(u_input.b, -2147483647i, u_input.c))), (-vec3<i32>(2147483647i, 57076i, 2147483647i) >> (vec3<u32>(88113u, var_0.c.x, 72963u) % vec3<u32>(32u))) >> (u_input.d.zyy % vec3<u32>(32u)), firstLeadingBit(firstLeadingBit(~vec3<i32>(66958i, -14331i, arg_0))));
    return _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-275f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.x + global1.x)), -107f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.x, var_0.a.x, global1.x))))));
}

fn func_3(arg_0: Struct_2) -> vec3<u32> {
    global0 = array<vec4<u32>, 18>();
    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a.x, -301f, -2092f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global1.x, 696f, global1.x))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2(-2147483647i, false))) + vec3<f32>(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_vec3_f32(func_2(-2147483647i, true)).x, _wgslsmith_f_op_vec3_f32(func_2(0i, false)).x)))));
    var var_0 = vec3<f32>(-458f, -895f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(826f + 114f), 941f, select(arg_0.a.x < -292f, false, true))))));
    var var_1 = false;
    var var_2 = firstLeadingBit(-(~_wgslsmith_mult_i32(u_input.a, u_input.b)));
    return u_input.d.wzz;
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: vec4<bool>, arg_3: vec3<u32>) -> vec3<i32> {
    let var_0 = arg_2.x;
    var var_1 = true;
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1632f, -1573f, -235f, 1068f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(501f, 997f, arg_0.a.x, arg_0.a.x))))), select(vec4<bool>(all(arg_2), _wgslsmith_f_op_vec3_f32(func_2(u_input.b, false)).x == _wgslsmith_f_op_f32(floor(global1.x)), all(!vec3<bool>(false, arg_2.x, var_0)), !arg_2.x), arg_2, var_0), vec2<u32>(reverseBits(u_input.d.x), 1u) >> (vec2<u32>(_wgslsmith_dot_vec2_u32(arg_3.yy, firstLeadingBit(vec2<u32>(1u, 8640u))), abs(_wgslsmith_mod_u32(arg_3.x, 1u))) % vec2<u32>(32u)));
    global0 = array<vec4<u32>, 18>();
    global1 = _wgslsmith_f_op_vec3_f32(-arg_0.a.zyw);
    return vec3<i32>(select(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(~vec3<i32>(36309i, -40758i, -144i), countOneBits(vec3<i32>(59410i, u_input.a, 7080i))), _wgslsmith_div_vec3_i32(vec3<i32>(arg_1, u_input.a, 1i), vec3<i32>(arg_1, -2147483647i, 32389i)) & ~vec3<i32>(4357i, arg_1, 2147483647i)), 79638i, true), _wgslsmith_div_i32(select(min(u_input.a, arg_1), -arg_1, false || arg_2.x) & u_input.b, arg_1), _wgslsmith_div_i32(-arg_1, (i32(-1i) * -1i) ^ (arg_1 >> (var_2.c.x % 32u))));
}

fn func_1(arg_0: f32, arg_1: vec2<bool>) -> Struct_3 {
    global0 = array<vec4<u32>, 18>();
    let var_0 = false;
    global1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1429f, _wgslsmith_div_f32(global1.x, arg_0), arg_0)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, 1886f, 1043f) * vec3<f32>(global1.x, arg_0, arg_0)) * _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1574f, arg_0, arg_0), vec3<f32>(global1.x, -2037f, 3272f))))), vec3<f32>(global1.x, _wgslsmith_div_f32(global1.x, arg_0), arg_0), true)));
    var var_1 = _wgslsmith_f_op_f32(547f + arg_0);
    var var_2 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2(u_input.a, arg_1.x & all(vec3<bool>(true, true, false)))))));
    return Struct_3(func_4(Struct_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, arg_0, 495f, global1.x)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-825f, arg_0, global1.x, -1536f))))), select(4178i, 1i, true), vec4<bool>(true, true, true, true), func_3(Struct_2(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1161f, 219f, global1.x, global1.x)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_2.x, 800f, var_2.x, arg_0))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, global1.x, arg_0, -1449f)))) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, 507f, var_2.x, -384f)))))), u_input.d.x, ~firstTrailingBit(_wgslsmith_clamp_i32(_wgslsmith_clamp_i32(-34530i, 20867i, u_input.b), -u_input.c, u_input.b >> (u_input.d.x % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~firstLeadingBit(~vec3<i32>(2147483647i, firstTrailingBit(-1i), reverseBits(u_input.a)));
    var var_1 = func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1159f)) - global1.x) - 1431f)), vec2<bool>(select(true, _wgslsmith_f_op_f32(abs(global1.x)) != _wgslsmith_f_op_f32(max(1742f, -1683f)), true | (global1.x <= -391f)), false));
    let var_2 = 618f;
    var var_3 = true;
    let var_4 = all(select(vec3<bool>(var_1.b.x > var_1.b.x, true, true), vec3<bool>(true, true, true), vec3<bool>(all(vec2<bool>(true, true)), true, true))) || (false != !all(vec4<bool>(true, false, true, true)));
    let var_5 = Struct_1(vec4<f32>(_wgslsmith_f_op_vec3_f32(func_2(var_0.x, var_4)).x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.b.x, -1712f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1410f), global1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(var_2, var_2), -708f)) + _wgslsmith_f_op_vec3_f32(func_2(-var_1.d, all(vec4<bool>(var_4, true, var_4, var_4)))).x)), vec4<bool>(!select(true, var_4, var_4), true, false, _wgslsmith_f_op_f32(-global1.x) != var_2), _wgslsmith_add_vec2_u32(u_input.d.wy, ~u_input.d.yy));
    let x = u_input.a;
    s_output = StorageBuffer(max(vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_mod_i32(var_1.d, 0i), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, -7936i, var_1.d, var_0.x), vec4<i32>(var_0.x, u_input.b, 0i, u_input.c))), _wgslsmith_mod_i32(var_1.a.x, var_0.x) ^ ~var_1.a.x, _wgslsmith_mult_i32(u_input.c, _wgslsmith_mod_i32(-11180i, var_0.x)), u_input.b), ~firstLeadingBit(~vec4<i32>(var_0.x, 36330i, 0i, -14904i))), vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1.b.x, -2049f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(global1.x)), _wgslsmith_f_op_f32(select(global1.x, var_1.b.x, false))))), global1.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1657f), -522f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(global1.x, global1.x)), _wgslsmith_f_op_f32(select(570f, -1050f, var_5.b.x)))), var_4))), vec3<u32>(var_5.c.x, min(94167u, _wgslsmith_mult_u32(~var_5.c.x, ~19119u)), abs(59643u)), 1000f, global1.xy);
}

