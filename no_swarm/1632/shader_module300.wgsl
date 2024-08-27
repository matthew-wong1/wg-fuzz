struct Struct_1 {
    a: vec3<f32>,
    b: vec4<bool>,
    c: vec3<f32>,
    d: i32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec4<i32>,
    c: vec2<i32>,
    d: bool,
    e: vec4<f32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec3<bool>,
    c: vec3<u32>,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> f32 {
    var var_0 = Struct_3(vec3<bool>(u_input.a > -(~1i), select(all(vec2<bool>(true, true)), true, true), all(vec2<bool>(u_input.a != -1i, true))), select(select(!select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), false), select(vec3<bool>(true, false, true), select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true)), true), !select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), true)), vec3<bool>(true, true, _wgslsmith_f_op_f32(f32(-1f) * -472f) >= _wgslsmith_f_op_f32(abs(global0.x))), !select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), true)), vec3<u32>(~1u, firstLeadingBit(_wgslsmith_add_u32(2999u, 79011u)), 1u) >> (vec3<u32>(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(11516u, 61572u, 18160u)), ~vec3<u32>(1u, 71384u, 0u)), ~1u, select(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 46287u), vec2<u32>(21437u, 1u)), 0u, select(false, true, true))) % vec3<u32>(32u)), select(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), all(vec2<bool>(false, false))), vec3<bool>(any(vec2<bool>(true, true)), true, !any(vec3<bool>(true, true, true))), !select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), false), vec3<bool>(false, true, true))));
    let var_1 = true;
    global0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global0.x * -199f))), global0.x, global0.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-239f, global0.x, global0.x) - vec3<f32>(global0.x, 259f, 2604f))))));
    let var_2 = Struct_2(vec3<f32>(global0.x, -2123f, 1168f), abs(countOneBits(_wgslsmith_mod_vec4_i32(vec4<i32>(56408i, -1i, u_input.a, u_input.a), abs(vec4<i32>(u_input.a, u_input.a, -1i, 0i))))), ~abs(-_wgslsmith_div_vec2_i32(vec2<i32>(u_input.a, 18294i), vec2<i32>(1i, u_input.a))), false | var_1, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global0.x, -342f, global0.x, global0.x)))))));
    var_0 = Struct_3(var_0.d, !(!(!(!var_0.d))), var_0.c, vec3<bool>(false, u_input.a <= select(~var_2.c.x, -17964i, var_0.d.x), var_0.c.x <= 13173u));
    return global0.x;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_3) -> f32 {
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(arg_0.a)))) + vec3<f32>(_wgslsmith_f_op_f32(arg_0.c.x * _wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_f32(-309f - 570f), global0.x));
    var var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, -1246f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_0.c * arg_0.a) - arg_0.c))))), vec4<i32>(-1i) * -_wgslsmith_mult_vec4_i32(-vec4<i32>(arg_0.d, arg_0.d, 43846i, u_input.a), ~vec4<i32>(u_input.a, u_input.a, arg_0.d, 22294i)), ~reverseBits(vec2<i32>(26469i, -arg_0.d)), any(!(!arg_0.b)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(sign(global0.x)), _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.c.x - -842f)), 1431f))));
    global0 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(400f, arg_0.a.x, var_0.a.x))) + arg_0.a), var_0.e.zzy)))));
    global0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-arg_0.a), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.c.x), _wgslsmith_div_f32(global0.x, -1946f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global0.x + 675f), _wgslsmith_f_op_f32(arg_0.a.x + 1507f), var_0.d | true)), -1350f))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(524f, -927f)), global0.x)), arg_0.a.x, global0.x), _wgslsmith_f_op_vec3_f32(-var_0.e.yzw)), var_0.d));
    let var_1 = !arg_1.a.x;
    return -1306f;
}

fn func_1() -> Struct_3 {
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, 632f, -1991f) - vec3<f32>(global0.x, global0.x, global0.x)))), vec3<f32>(_wgslsmith_div_f32(global0.x, global0.x), -564f, -1180f)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, global0.x)) - vec3<f32>(global0.x, -940f, -1513f)))));
    global0 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, global0.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 473f, global0.x))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-897f, global0.x, 153f))), vec3<f32>(global0.x, 889f, 603f)))))));
    global0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x * -754f)) * _wgslsmith_f_op_f32(func_2(Struct_1(vec3<f32>(global0.x, global0.x, -716f), vec4<bool>(false, true, false, false), vec3<f32>(662f, 639f, global0.x), u_input.a), Struct_3(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<u32>(0u, 6822u, 4294967295u), vec3<bool>(true, true, true))))), 219f, _wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(f32(-1f) * -834f))));
    let var_0 = _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(~max(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u)), select(~vec3<u32>(1u, 1u, 1u), vec3<u32>(115550u, abs(1u), _wgslsmith_clamp_u32(0u, 0u, 0u)), select(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), true), vec3<bool>(false, false, false), true))), vec3<u32>(abs(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(0u, 11921u, 0u, 109925u)), firstLeadingBit(vec4<u32>(0u, 0u, 4294967295u, 91429u)))), 20449u ^ firstTrailingBit(~0u), ~(~1u)));
    var var_1 = ~(i32(-1i) * -1i);
    return Struct_3(vec3<bool>(!any(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true))), !any(select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false), false)), true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false), vec3<u32>(1u, ~(~var_0), ~select(var_0, var_0, false) ^ _wgslsmith_dot_vec2_u32(abs(vec2<u32>(var_0, var_0)), vec2<u32>(4294967295u, 1u))), select(select(vec3<bool>(any(vec3<bool>(false, false, true)), all(vec2<bool>(true, true)), any(vec4<bool>(false, false, true, true))), !select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false)), false), vec3<bool>(true, any(vec2<bool>(true, true)), true), vec3<bool>(true, true, true)));
}

fn func_4(arg_0: Struct_3, arg_1: vec2<u32>) -> vec4<bool> {
    var var_0 = abs(vec2<u32>(arg_1.x << (_wgslsmith_sub_u32(7166u, arg_1.x) % 32u), func_1().c.x | ~_wgslsmith_div_u32(1u, 1u)));
    global0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -479f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1000f)) - _wgslsmith_f_op_f32(func_2(Struct_1(vec3<f32>(802f, 1162f, 150f), vec4<bool>(arg_0.b.x, arg_0.d.x, arg_0.b.x, arg_0.d.x), vec3<f32>(global0.x, -643f, -693f), 0i), Struct_3(arg_0.a, vec3<bool>(arg_0.b.x, false, arg_0.d.x), vec3<u32>(var_0.x, arg_1.x, 39372u), vec3<bool>(false, arg_0.d.x, arg_0.b.x))))))));
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(883f, 1774f, global0.x)) * vec3<f32>(_wgslsmith_div_f32(-842f, global0.x), _wgslsmith_f_op_f32(min(global0.x, global0.x)), _wgslsmith_f_op_f32(-1000f - 1033f))))));
    var_0 = arg_0.c.yx;
    var var_1 = countOneBits(~_wgslsmith_sub_vec2_u32(vec2<u32>(var_0.x, _wgslsmith_clamp_u32(40600u, 6653u, 30509u)), arg_1));
    return !select(!vec4<bool>(arg_0.d.x, !arg_0.d.x, arg_0.b.x || true, func_1().b.x), !(!(!vec4<bool>(true, true, arg_0.a.x, true))), select(!vec4<bool>(arg_0.a.x, arg_0.d.x, false, arg_0.a.x), select(select(vec4<bool>(false, arg_0.b.x, false, false), vec4<bool>(arg_0.a.x, true, false, false), false), vec4<bool>(arg_0.d.x, arg_0.d.x, false, arg_0.d.x), true), select(!vec4<bool>(false, arg_0.a.x, arg_0.d.x, false), !vec4<bool>(true, arg_0.d.x, true, false), arg_0.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, _wgslsmith_f_op_f32(sign(global0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)))), select(select(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false)), func_4(func_1(), min(vec2<u32>(1u, 1u), vec2<u32>(4294967295u, 8720u))), all(vec3<bool>(true, false, true)) | true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false), !all(vec4<bool>(true, true, false, true))), vec4<bool>(!any(vec2<bool>(false, false)), !any(vec4<bool>(true, true, false, false)), true, true)), vec3<f32>(_wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(trunc(1f))), _wgslsmith_f_op_f32(-global0.x), global0.x), abs(-1i));
    global0 = var_0.c;
    let var_1 = !(select(-var_0.d, 1i, false) >= -19899i);
    var var_2 = Struct_1(var_0.c, func_4(Struct_3(func_4(Struct_3(var_0.b.zzw, var_0.b.xzz, vec3<u32>(4294967295u, 4294967295u, 24997u), vec3<bool>(true, false, false)), ~vec2<u32>(116327u, 0u)).zxz, var_0.b.www, _wgslsmith_clamp_vec3_u32(min(vec3<u32>(0u, 0u, 32039u), vec3<u32>(7589u, 10703u, 1u)), vec3<u32>(1874u, 92562u, 41776u), ~vec3<u32>(0u, 14327u, 64862u)), vec3<bool>(true, true, select(true, var_1, true))), vec2<u32>(_wgslsmith_sub_u32(~35512u, 1u), firstTrailingBit(0u) >> (~14127u % 32u))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2730f + -788f) + global0.x), _wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(-var_0.a.x)), var_0.a.x) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0.a.x, 276f, _wgslsmith_f_op_f32(446f * global0.x)), var_0.c))), _wgslsmith_mult_i32(_wgslsmith_mod_i32(u_input.a, var_0.d), -59069i));
    let var_3 = select(!var_0.b, func_4(func_1(), _wgslsmith_mod_vec2_u32(abs(_wgslsmith_clamp_vec2_u32(vec2<u32>(22587u, 0u), vec2<u32>(748u, 15297u), vec2<u32>(4294967295u, 20968u))), vec2<u32>(~4294967295u, _wgslsmith_mult_u32(0u, 33039u)))), var_0.b.x);
    var_2 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_1(vec3<f32>(528f, var_0.c.x, 925f), var_2.b, vec3<f32>(global0.x, var_2.a.x, var_0.c.x), -11621i), Struct_3(vec3<bool>(true, false, false), vec3<bool>(var_3.x, true, var_2.b.x), vec3<u32>(0u, 0u, 1u), var_3.zzx))))), _wgslsmith_f_op_f32(-var_2.a.x), global0.x), vec4<bool>(!(true & var_2.b.x), false, _wgslsmith_mult_i32(1i, countOneBits(34065i)) < ~(var_0.d & var_0.d), -974f > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-818f)))), vec3<f32>(377f, var_2.c.x, global0.x), ~3169i);
    let var_4 = Struct_2(_wgslsmith_f_op_vec3_f32(var_2.a * var_0.c), max(firstTrailingBit(vec4<i32>(~u_input.a, -2147483647i, -2147483647i, _wgslsmith_clamp_i32(var_2.d, 22636i, u_input.a))), vec4<i32>(_wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(-29805i, u_input.a, -1i)), firstLeadingBit(vec3<i32>(var_2.d, 0i, -10665i))), var_0.d, -17686i, -6902i)), -_wgslsmith_mod_vec2_i32(~vec2<i32>(-1i, var_0.d), _wgslsmith_sub_vec2_i32(-vec2<i32>(u_input.a, var_2.d), vec2<i32>(u_input.a, var_2.d))), !var_0.b.x & select(var_2.b.x, func_4(Struct_3(var_2.b.zxy, vec3<bool>(true, true, var_0.b.x), vec3<u32>(1u, 2107u, 46452u), vec3<bool>(var_0.b.x, true, var_0.b.x)), _wgslsmith_mod_vec2_u32(vec2<u32>(50097u, 19970u), vec2<u32>(31078u, 1u))).x, any(select(var_0.b, vec4<bool>(true, var_3.x, false, false), var_2.b.x))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -766f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_1(vec3<f32>(global0.x, -1072f, var_2.c.x), var_3, vec3<f32>(var_2.c.x, 1555f, -995f), var_2.d), Struct_3(vec3<bool>(var_3.x, var_1, var_1), var_2.b.xyw, vec3<u32>(4294967295u, 6255u, 4294967295u), var_3.ywy))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1430f) - -534f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global0.x - var_2.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_2.a.x))))), var_2.a.x));
    var var_5 = Struct_1(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1000f, var_0.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.c.x)) * _wgslsmith_f_op_f32(f32(-1f) * -181f))))), var_2.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(var_4.a.x * 1000f), 1000f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_4.e.yyx))))), -firstLeadingBit(5693i) & (~max(54479i, 35076i) | select(u_input.a, _wgslsmith_mult_i32(var_2.d, -2147483647i), all(vec4<bool>(true, true, var_2.b.x, false)))));
    var var_6 = Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(1235f, var_2.c.x)), var_4.e.x, var_5.c.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.c * var_0.a)), !var_4.d)), var_3, _wgslsmith_f_op_vec3_f32(select(var_0.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(104f, var_0.a.x, -609f)))), var_2.b.xyy)), _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(abs(-1i), -51168i, -u_input.a, var_2.d & -22973i), countOneBits(vec4<i32>(var_5.d, 0i, var_2.d, 7062i))), vec4<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(var_2.d, var_2.d, var_2.d), var_4.b.xxx), var_4.b.wyw), ~(~16268i), _wgslsmith_mod_i32(_wgslsmith_sub_i32(-2147483647i, var_5.d), abs(var_0.d)), -45225i)));
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(55841u, 1u, _wgslsmith_dot_vec3_u32(~vec3<u32>(42513u, 42114u, 109100u), vec3<u32>(1u, 1u, 1u)), ~4294967295u), var_0.a);
}

