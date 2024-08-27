struct Struct_1 {
    a: vec4<bool>,
    b: vec2<bool>,
    c: vec3<bool>,
    d: bool,
    e: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<f32>,
    c: i32,
    d: vec4<u32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: vec3<bool>, arg_3: Struct_1) -> vec3<u32> {
    global0 = 4294967295u;
    var var_0 = Struct_1(select(vec4<bool>(true, any(vec4<bool>(arg_0.c.x, arg_2.x, arg_2.x, arg_3.a.x)) != arg_3.b.x, arg_2.x, arg_0.c.x), vec4<bool>(arg_2.x, !(!arg_3.b.x), any(!arg_2), all(arg_3.b) && true), any(vec4<bool>(false, arg_2.x, all(arg_0.a), arg_2.x))), !arg_2.yx, arg_2, 37616u < ~_wgslsmith_dot_vec3_u32(abs(vec3<u32>(19465u, 1u, 0u)), reverseBits(vec3<u32>(56953u, 0u, 3555u))), 1458f);
    let var_1 = true;
    var var_2 = Struct_1(!var_0.a, select(select(vec2<bool>(var_0.a.x, false), var_0.a.yy, true), select(select(vec2<bool>(var_0.c.x, false), arg_2.yy, !vec2<bool>(arg_0.d, false)), arg_0.a.zz, select(select(vec2<bool>(false, false), vec2<bool>(true, true), arg_0.a.x), select(vec2<bool>(arg_2.x, false), vec2<bool>(arg_0.b.x, true), var_0.b.x), 1900f <= arg_1.x)), arg_3.b.x), arg_2, all(select(vec4<bool>(arg_3.d, all(vec3<bool>(true, true, arg_2.x)), select(arg_0.d, arg_0.d, false), true), arg_3.a, select(select(vec4<bool>(true, var_0.a.x, false, false), vec4<bool>(true, arg_0.b.x, arg_0.c.x, arg_0.b.x), arg_2.x), !vec4<bool>(true, true, arg_3.a.x, arg_3.b.x), !vec4<bool>(arg_2.x, arg_2.x, false, true)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-159f - _wgslsmith_f_op_f32(var_0.e * -490f))), _wgslsmith_f_op_f32(max(-2445f, 1049f)), !var_0.a.x)));
    var_0 = Struct_1(!vec4<bool>(arg_0.a.x, arg_0.a.x, var_1, !all(vec3<bool>(true, arg_2.x, arg_3.d))), select(arg_2.yx, !select(select(var_0.b, arg_0.a.zw, arg_0.b.x), !vec2<bool>(true, arg_2.x), !arg_2.yz), true), arg_3.a.yyx, var_0.d, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-856f, _wgslsmith_f_op_f32(trunc(arg_3.e))))));
    return ~(~vec3<u32>(firstTrailingBit(1u), ~(~4124u), reverseBits(0u >> (0u % 32u))));
}

fn func_2(arg_0: f32) -> u32 {
    let var_0 = _wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(~vec3<u32>(1u, 1u, 1u), ~_wgslsmith_div_vec3_u32(vec3<u32>(0u, 1u, 4294967295u), vec3<u32>(1u, 4294967295u, 59909u))), ~_wgslsmith_mult_vec3_u32(func_3(Struct_1(vec4<bool>(false, false, true, true), vec2<bool>(true, false), vec3<bool>(true, true, false), false, arg_0), vec4<f32>(arg_0, arg_0, arg_0, arg_0), vec3<bool>(false, true, false), Struct_1(vec4<bool>(false, false, false, true), vec2<bool>(false, true), vec3<bool>(true, true, false), false, arg_0)), select(vec3<u32>(2385u, 1u, 1u), vec3<u32>(1u, 18832u, 0u), true))), ~(~firstLeadingBit(vec3<u32>(62866u, 53743u, 0u))));
    global0 = var_0.x;
    var var_1 = _wgslsmith_sub_vec4_i32(~(~vec4<i32>(u_input.a.x, _wgslsmith_add_i32(u_input.a.x, -1i), u_input.a.x ^ -40482i, u_input.a.x)), _wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, 0i), select(u_input.a.x, 0i, false), _wgslsmith_div_i32(u_input.a.x, 20987i), u_input.a.x), ~(-vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x))), firstTrailingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a.x, -24168i, -52325i, u_input.a.x), vec4<i32>(19834i, 15885i, -2147483647i, u_input.a.x), vec4<i32>(-1i, u_input.a.x, -1i, -40517i))) >> (vec4<u32>(abs(1u), _wgslsmith_clamp_u32(var_0.x, 0u, var_0.x), 1u, func_3(Struct_1(vec4<bool>(true, true, true, false), vec2<bool>(true, false), vec3<bool>(true, true, true), true, arg_0), vec4<f32>(-812f, -1076f, arg_0, -1562f), vec3<bool>(true, true, true), Struct_1(vec4<bool>(false, false, false, false), vec2<bool>(false, false), vec3<bool>(true, false, true), true, arg_0)).x) % vec4<u32>(32u))));
    let var_2 = select(select(vec4<bool>(!(u_input.a.x <= 0i), true, all(select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true))), _wgslsmith_f_op_f32(485f * arg_0) >= arg_0), select(vec4<bool>(any(vec3<bool>(true, true, false)), all(vec4<bool>(true, true, false, false)), u_input.a.x <= var_1.x, true), select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false)), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false)), vec4<bool>(true, true, true, true)), false), select(vec4<bool>(true, any(vec4<bool>(true, true, true, true)), any(vec3<bool>(true, true, true)), select(true, true, arg_0 != arg_0)), select(!select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true), true)), select(vec4<bool>(true, true, true, false), select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true)), select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false), true))), !select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), true);
    let var_3 = var_2.x;
    return var_0.x;
}

fn func_1(arg_0: vec4<i32>) -> vec3<f32> {
    let var_0 = u_input.a.x;
    global0 = 1u;
    global0 = _wgslsmith_dot_vec4_u32(vec4<u32>(abs(1u), func_2(_wgslsmith_f_op_f32(min(-1000f, -752f))), _wgslsmith_sub_u32(4294967295u << (0u % 32u), ~6116u), ~0u) | vec4<u32>(4294967295u, 1u, firstTrailingBit(reverseBits(0u)), ~1u), countOneBits(~select(~vec4<u32>(45224u, 7539u, 20486u, 10827u), ~vec4<u32>(1u, 4294967295u, 24564u, 1u), select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true)))));
    global0 = _wgslsmith_add_u32(reverseBits(6496u), ~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, _wgslsmith_clamp_u32(21925u, 1u, 33050u), abs(4294967295u), 1u), vec4<u32>(1u, 1u, 1u, 1u)));
    var var_1 = 1537f;
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(-433f, -1068f, true)))), _wgslsmith_f_op_f32(f32(-1f) * -357f), _wgslsmith_f_op_f32(-434f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f + -1990f), _wgslsmith_f_op_f32(max(-838f, 666f))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(159f, 1000f, 888f)))))));
}

fn func_4(arg_0: vec3<f32>, arg_1: vec4<bool>, arg_2: f32, arg_3: f32) -> u32 {
    global0 = 19403u;
    var var_0 = Struct_1(arg_1, select(select(vec2<bool>(all(arg_1.zyx), !arg_1.x), !select(vec2<bool>(arg_1.x, false), arg_1.zw, arg_1.x), true & (false != arg_1.x)), vec2<bool>(any(select(vec3<bool>(arg_1.x, arg_1.x, arg_1.x), arg_1.wyw, vec3<bool>(true, arg_1.x, true))), !arg_1.x | arg_1.x), all(!arg_1)), vec3<bool>(true, false, arg_1.x), arg_1.x, arg_2);
    var_0 = Struct_1(arg_1, select(arg_1.zw, select(vec2<bool>(arg_1.x, any(var_0.a.xy)), arg_1.zw, select(var_0.b, select(var_0.b, var_0.c.yy, arg_1.x), arg_1.x && false)), !vec2<bool>(true, arg_1.x)), var_0.c, arg_1.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_vec3_f32(func_1(-vec4<i32>(u_input.a.x, u_input.a.x, -2147483647i, 25584i))).x)));
    var var_1 = Struct_1(arg_1, arg_1.zw, select(vec3<bool>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, 5677i, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -4954i)) >= (i32(-1i) * -2147483647i), select(!var_0.a.x, var_0.d, any(arg_1)), !(var_0.c.x | true)), vec3<bool>(!arg_1.x, !var_0.d, var_0.c.x), vec3<bool>(true && any(vec4<bool>(arg_1.x, true, true, var_0.b.x)), var_0.b.x, all(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), var_0.b.x)))), any(var_0.a), arg_2);
    let var_2 = Struct_1(!vec4<bool>(true, any(select(vec4<bool>(true, false, var_1.d, arg_1.x), var_0.a, var_1.a.x)), true, !all(var_1.c.yy)), select(select(vec2<bool>(true, !var_0.c.x), vec2<bool>(true, true), !var_0.b.x), var_0.c.yx, true), vec3<bool>(any(var_1.a), any(vec3<bool>(var_1.c.x & true, var_0.d != var_1.c.x, all(arg_1.yzw))), !any(select(vec4<bool>(arg_1.x, false, false, var_0.d), var_1.a, arg_1))), true, _wgslsmith_f_op_f32(1306f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.e - arg_3))));
    return 8100u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    global0 = ~func_4(_wgslsmith_f_op_vec3_f32(func_1(~(vec4<i32>(49934i, u_input.a.x, -13031i, 11226i) & vec4<i32>(u_input.a.x, u_input.a.x, 0i, -75408i)))), vec4<bool>(firstTrailingBit(-2147483647i) != -46097i, any(vec3<bool>(true, var_0, var_0)), any(select(vec4<bool>(false, var_0, var_0, var_0), vec4<bool>(true, true, var_0, true), vec4<bool>(var_0, var_0, false, var_0))), !any(vec3<bool>(true, false, false))), _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1936f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-659f * 766f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(841f)) - -522f)));
    global0 = 1u;
    let var_1 = Struct_1(select(!select(vec4<bool>(false, false, false, var_0), vec4<bool>(true, true, true, true), true), !select(!vec4<bool>(var_0, var_0, false, true), !vec4<bool>(var_0, var_0, var_0, true), select(vec4<bool>(var_0, true, var_0, var_0), vec4<bool>(var_0, true, var_0, var_0), var_0)), !vec4<bool>(true, true, !var_0, var_0)), select(vec2<bool>(true, var_0), vec2<bool>(!(!var_0), true), vec2<bool>(any(vec4<bool>(false, true, var_0, true)), true)), !select(vec3<bool>(true, true, var_0 | var_0), vec3<bool>(!var_0, !var_0, any(vec2<bool>(false, var_0))), var_0), var_0, -1000f);
    global0 = 4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(_wgslsmith_dot_vec2_i32(~vec2<i32>(-17369i, u_input.a.x), firstLeadingBit(u_input.a)), abs(firstLeadingBit(u_input.a.x)), ~_wgslsmith_mod_i32(u_input.a.x, u_input.a.x)) << (vec3<u32>(~16111u, _wgslsmith_dot_vec2_u32(vec2<u32>(23354u, 79082u), select(vec2<u32>(5282u, 75088u), vec2<u32>(37000u, 1u), var_1.a.yz)), firstLeadingBit(1u)) % vec3<u32>(32u)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(2165f, _wgslsmith_div_f32(1804f, _wgslsmith_f_op_f32(var_1.e - var_1.e))))), 24011i, firstTrailingBit(vec4<u32>(max(_wgslsmith_dot_vec4_u32(vec4<u32>(24519u, 30908u, 47711u, 45938u), vec4<u32>(1u, 70587u, 9960u, 0u)), _wgslsmith_div_u32(13868u, 1u)), ~1u, 24643u, countOneBits(1u))), vec3<i32>(u_input.a.x, _wgslsmith_div_i32(u_input.a.x, u_input.a.x), 0i));
}

