struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: f32,
    d: vec4<f32>,
    e: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec4<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(1u, vec4<u32>(1u, 23646u, 5437u, 20042u), 355f, vec4<f32>(-101f, -419f, 1027f, -669f), false);

var<private> global1: vec4<bool>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: bool) -> vec4<bool> {
    global0 = Struct_1(_wgslsmith_sub_u32(41905u, ~u_input.b), vec4<u32>(_wgslsmith_mult_u32(1u, 31285u), ~global0.b.x >> ((0u << (_wgslsmith_add_u32(u_input.b, global0.b.x) % 32u)) % 32u), _wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, arg_0.a, arg_0.b.x, u_input.b), arg_0.b), ~(0u >> (~global0.b.x % 32u))), _wgslsmith_f_op_f32(-643f - _wgslsmith_f_op_f32(-693f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.c + -397f) * 1000f))), _wgslsmith_f_op_vec4_f32(-global0.d), arg_2);
    global1 = !(!(!(!vec4<bool>(arg_0.e, true, true, true))));
    let var_0 = arg_0;
    let var_1 = var_0.c;
    global1 = vec4<bool>(!any(global1.yx) & (_wgslsmith_mult_u32(1u, _wgslsmith_mod_u32(arg_0.b.x, 32553u)) < 31551u), all(global1.zx), arg_2, any(select(vec3<bool>(var_0.e, 137f > arg_0.c, arg_0.b.x < 1643u), !select(global1.zzz, vec3<bool>(false, var_0.e, global0.e), global1.xww), true)));
    return !(!vec4<bool>(all(select(vec4<bool>(false, false, false, true), vec4<bool>(global1.x, true, arg_0.e, false), vec4<bool>(false, true, false, false))), global1.x, global1.x | true, !arg_0.e));
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: Struct_1) -> bool {
    global1 = vec4<bool>(all(vec3<bool>(arg_1.e, all(!vec2<bool>(true, global1.x)), arg_2.x != u_input.b)), any(!(!select(vec4<bool>(true, false, arg_1.e, global1.x), vec4<bool>(global0.e, arg_1.e, false, global0.e), vec4<bool>(true, false, arg_1.e, arg_1.e)))), arg_1.e, global1.x && arg_1.e);
    let var_0 = select(!(!(!(!vec4<bool>(true, false, arg_3.e, false)))), vec4<bool>(global0.e, true, true, !any(global1.ww)), select(vec4<bool>(false, arg_3.e, any(vec3<bool>(global1.x, arg_1.e, true)), global1.x), !(!(!vec4<bool>(arg_1.e, false, global1.x, true))), !(!(!vec4<bool>(global0.e, global1.x, global0.e, arg_1.e)))));
    var var_1 = Struct_1(_wgslsmith_add_u32(~min(~global0.a, firstLeadingBit(4294967295u)), _wgslsmith_sub_u32(global0.a, countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.b.x, 0u), vec2<u32>(arg_2.x, global0.b.x))))), global0.b >> (abs(global0.b) % vec4<u32>(32u)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1708f * _wgslsmith_f_op_f32(max(541f, global0.d.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0.d.x)))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.d.x) - -2575f), _wgslsmith_f_op_f32(ceil(268f)))), _wgslsmith_f_op_vec4_f32(round(arg_3.d)), _wgslsmith_div_f32(_wgslsmith_div_f32(arg_1.d.x, -1265f), arg_1.c) != _wgslsmith_f_op_f32(-arg_1.d.x));
    let var_2 = -21263i;
    global1 = var_0;
    return !(!global1.x);
}

fn func_2() -> vec4<bool> {
    let var_0 = firstTrailingBit(u_input.b);
    let var_1 = Struct_1(_wgslsmith_clamp_u32(u_input.b, reverseBits(abs(~u_input.b)), global0.b.x), vec4<u32>(1u, var_0 & reverseBits(~0u), ~(~(~4294967295u)), min(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(5072u, 46451u, 1u, global0.b.x), vec4<u32>(0u, u_input.b, var_0, 12264u)), 1u), 1u)), -396f, global0.d, func_4(global0.b.yy, Struct_1(firstLeadingBit(4294967295u), ~(~global0.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0.d.x))), vec4<f32>(global0.c, -1155f, global0.c, _wgslsmith_div_f32(global0.c, 2184f)), (global1.x == global1.x) && all(vec2<bool>(true, global0.e))), vec2<u32>(global0.a, ~_wgslsmith_add_u32(1u, 24221u)), Struct_1(~(global0.a & var_0), ~vec4<u32>(1u, 13992u, 4294967295u, 0u), global0.d.x, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.d.x, global0.d.x, global0.d.x, 730f), global0.d, func_3(Struct_1(9979u, vec4<u32>(4294967295u, var_0, 3946u, 4294967295u), global0.d.x, vec4<f32>(global0.d.x, 676f, -498f, global0.c), global1.x), global0.d, false))), global0.e)));
    let var_2 = -u_input.a;
    global0 = Struct_1(global0.a, firstTrailingBit(vec4<u32>(27347u, _wgslsmith_add_u32(~var_1.b.x, ~68516u), 5812u, ~(~1u))), var_1.c, global0.d, all(!(!vec3<bool>(global1.x, global1.x, global0.e))));
    let var_3 = true && global1.x;
    return select(select(vec4<bool>(all(select(vec2<bool>(global0.e, false), global1.ww, false)), !(!global0.e), true, u_input.b < u_input.b), !vec4<bool>(var_1.e, true & global1.x, all(global1.wx), global1.x), any(select(vec4<bool>(true, true, var_3, true), vec4<bool>(global0.e, true, var_3, true), !vec4<bool>(global1.x, var_1.e, true, var_1.e)))), select(select(!vec4<bool>(false, var_3, false, var_3), vec4<bool>(select(false, true, var_1.e), all(vec4<bool>(var_3, true, true, false)), func_3(var_1, var_1.d, false).x, global1.x & true), vec4<bool>(true, func_3(var_1, vec4<f32>(-516f, var_1.d.x, var_1.c, 255f), true).x, global1.x, all(global1.xy))), !vec4<bool>(false, true, global1.x, false != var_1.e), vec4<bool>(global1.x, true, _wgslsmith_div_i32(var_2.x, var_2.x) >= u_input.a.x, false)), select(vec4<bool>(false && any(global1.wxy), var_1.e, false, true), func_3(Struct_1(abs(var_1.b.x), _wgslsmith_div_vec4_u32(vec4<u32>(1u, var_1.a, 53146u, var_1.a), var_1.b), _wgslsmith_f_op_f32(global0.d.x - global0.d.x), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-214f, var_1.d.x, 1140f, var_1.d.x))), true), var_1.d, select(!var_1.e, false, true)), true));
}

fn func_1() -> Struct_1 {
    var var_0 = global0.d.xy;
    global1 = select(vec4<bool>(global0.e, !(!(global0.e | true)), global1.x, select(~u_input.b <= global0.a, ~u_input.b > ~4294967295u, true)), !select(func_2(), vec4<bool>(select(false, global1.x, global0.e), !global1.x, true, true), vec4<bool>(any(global1.xzx), 22253i >= u_input.d, true, global1.x)), func_3(Struct_1(30151u, min(global0.b | vec4<u32>(u_input.b, u_input.b, 45401u, 1u), global0.b), _wgslsmith_f_op_f32(f32(-1f) * -675f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global0.d - vec4<f32>(var_0.x, -2042f, var_0.x, 155f))), false), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-205f, -1000f, -277f, _wgslsmith_f_op_f32(1181f + -511f))), all(!select(vec4<bool>(false, global1.x, true, false), vec4<bool>(true, global0.e, false, false), global1.x))).x);
    global0 = Struct_1(33523u << (u_input.b % 32u), countOneBits(_wgslsmith_sub_vec4_u32(vec4<u32>(~global0.b.x, ~0u, firstLeadingBit(u_input.b), _wgslsmith_sub_u32(52634u, global0.a)), global0.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x + 1000f), _wgslsmith_f_op_f32(global0.d.x - 864f)))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -464f) - global0.d.x), _wgslsmith_f_op_f32(f32(-1f) * -396f)), var_0.x, var_0.x, global0.d.x), func_4(vec2<u32>(~0u, 48424u), Struct_1(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, global0.a, 12324u), global0.b.yxx), abs(_wgslsmith_add_vec4_u32(vec4<u32>(global0.a, global0.b.x, global0.b.x, 14796u), vec4<u32>(0u, 4294967295u, 4294967295u, 1u))), -1939f, global0.d, false), global0.b.xz, Struct_1(4294967295u, global0.b, global0.c, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(abs(global0.d)))), global1.x)));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(458f - _wgslsmith_f_op_f32(max(var_0.x, global0.c))) * var_0.x) * _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-1045f, _wgslsmith_f_op_f32(3300f + var_0.x))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x - var_0.x), _wgslsmith_f_op_f32(step(-1000f, var_0.x))))));
    global0 = Struct_1(_wgslsmith_mult_u32(4294967295u, firstTrailingBit(38210u)), ~(~_wgslsmith_mult_vec4_u32(vec4<u32>(global0.a, 4294967295u, 4294967295u, u_input.b) >> (global0.b % vec4<u32>(32u)), ~vec4<u32>(1u, 4294967295u, u_input.b, 4294967295u))), _wgslsmith_f_op_f32(min(-200f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -274f))) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(128f - var_0.x)))))), vec4<f32>(var_0.x, 348f, _wgslsmith_f_op_f32(var_0.x * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.c), _wgslsmith_f_op_f32(-global0.d.x))), _wgslsmith_f_op_f32(max(795f, _wgslsmith_f_op_f32(ceil(global0.c))))), select(global0.e, global0.e, !(!global1.x)));
    return Struct_1(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(global0.b >> (firstTrailingBit(vec4<u32>(52253u, 44248u, 0u, 4294967295u)) % vec4<u32>(32u)), global0.b), 1u), select(~_wgslsmith_clamp_vec4_u32(select(global0.b, global0.b, global0.e), select(vec4<u32>(0u, u_input.b, 22317u, 0u), vec4<u32>(29751u, u_input.b, 142u, 71039u), true), vec4<u32>(global0.a, 7504u, u_input.b, u_input.b) & vec4<u32>(1u, global0.a, 0u, u_input.b)), ~(~global0.b), global1.x), 158f, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-487f)) - -1249f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(-323f)))), _wgslsmith_f_op_f32(f32(-1f) * -1130f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.d.x))), global1.x);
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_1) -> vec2<i32> {
    global0 = arg_1;
    var var_0 = firstTrailingBit(~vec4<u32>(0u, _wgslsmith_sub_u32(10672u | arg_0.x, _wgslsmith_add_u32(arg_0.x, global0.b.x)), _wgslsmith_add_u32(~1u, max(global0.b.x, u_input.b)), _wgslsmith_mult_u32(global0.b.x, ~1u)));
    var_0 = arg_1.b;
    let var_1 = _wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(firstTrailingBit(u_input.e) & u_input.e, u_input.d, 0i, ~(~u_input.a.x)), vec4<i32>(-u_input.a.x ^ 1i, u_input.d, select(u_input.a.x, u_input.e, false), -56323i), -(~vec4<i32>(-31500i, -10069i, u_input.e, u_input.a.x))), ~firstLeadingBit(-(~vec4<i32>(u_input.c, 1i, -38959i, -17708i))));
    var var_2 = ~vec2<i32>(~u_input.e, var_1.x) >> (firstLeadingBit(vec2<u32>(u_input.b, 67948u) >> (_wgslsmith_sub_vec2_u32(max(global0.b.zw, arg_1.b.wy), var_0.wx) % vec2<u32>(32u))) % vec2<u32>(32u));
    return ~_wgslsmith_mult_vec2_i32(_wgslsmith_add_vec2_i32(var_1.xw, _wgslsmith_div_vec2_i32(select(u_input.a.xz, vec2<i32>(var_1.x, 37526i), true), ~var_1.yy)), var_1.yx);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = reverseBits(reverseBits(_wgslsmith_mod_vec2_i32(func_5(global0.b.zww, func_1()), select(firstTrailingBit(vec2<i32>(u_input.e, 0i)), vec2<i32>(u_input.c, -47337i), global0.c != -1000f))));
    global1 = !func_2();
    var var_1 = func_1();
    let var_2 = ~(~func_1().a) == var_1.a;
    let var_3 = var_1.d.zxx;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(abs(815f)), ~global0.b, global0.b, global0.d.x);
}

