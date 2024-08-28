struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: vec3<f32>,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 8>;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: vec4<i32>) -> vec4<i32> {
    var var_0 = 0i;
    var var_1 = Struct_1(59994u, _wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, 0u, 63353u, reverseBits(1u)), vec4<u32>(1u, 59956u, 4294967295u, 0u) >> (firstTrailingBit(vec4<u32>(33199u, 93394u, 21906u, 0u)) % vec4<u32>(32u))), ~abs(vec4<u32>(4294967295u, 24503u, 52561u, 63242u))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(vec3<f32>(1085f, -710f, 1000f), vec3<f32>(-2286f, -190f, 108f)))))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-1067f, _wgslsmith_div_f32(2683f, -2337f), 1f) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-752f, 362f, 1529f))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-542f, -215f, -1901f), vec3<f32>(502f, 1000f, -475f), vec3<bool>(true, false, false)))))), 0u);
    global0 = array<i32, 8>();
    let var_2 = _wgslsmith_div_vec2_i32(arg_0.xx, ~abs(_wgslsmith_add_vec2_i32(vec2<i32>(2147483647i, 1i), vec2<i32>(-48806i, u_input.a)) << (vec2<u32>(36270u, 0u) % vec2<u32>(32u))));
    var var_3 = _wgslsmith_f_op_f32(exp2(var_1.c.x));
    return vec4<i32>(arg_0.x, _wgslsmith_div_i32(max(~14541i, -2147483647i), -3876i), _wgslsmith_dot_vec4_i32(vec4<i32>(-37364i, _wgslsmith_sub_i32(-36816i, 15352i << (var_1.d % 32u)), 32293i, arg_0.x), arg_0), min(~1i, _wgslsmith_add_i32(~_wgslsmith_mult_i32(-44865i, -1i), global0[_wgslsmith_index_u32(~(~15132u), 8u)])));
}

fn func_4(arg_0: vec4<i32>, arg_1: vec3<bool>) -> f32 {
    var var_0 = select(-(~_wgslsmith_mod_i32(global0[_wgslsmith_index_u32(52326u, 8u)], global0[_wgslsmith_index_u32(1u, 8u)])), arg_0.x, false) >> (~(~1u) % 32u);
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-909f)) * 1000f), -933f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-403f, 393f)), _wgslsmith_f_op_f32(f32(-1f) * -942f)), -1140f), vec4<f32>(-652f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-354f - 1000f)), _wgslsmith_div_f32(_wgslsmith_div_f32(-278f, 813f), _wgslsmith_div_f32(-1254f, -830f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -509f) * _wgslsmith_div_f32(-1793f, -771f))))));
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-446f * _wgslsmith_div_f32(-866f, _wgslsmith_f_op_f32(step(var_1.x, -181f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(-1000f, var_1.x)), 392f)))), var_1.x);
    let var_3 = arg_1.x;
    var var_4 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-633f * var_2.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -250f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -502f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-554f)) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1000f - var_2.x)))), _wgslsmith_div_f32(-473f, _wgslsmith_f_op_f32(610f * _wgslsmith_f_op_f32(-var_2.x)))) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(var_1.x)), var_2.x, var_2.x, _wgslsmith_f_op_f32(var_1.x - -1343f))))));
    return 660f;
}

fn func_2(arg_0: u32, arg_1: f32, arg_2: u32) -> vec2<f32> {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(arg_1 + _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(1111f, -433f)), arg_1)))), arg_1, 478f);
    var var_1 = Struct_1(arg_2, vec4<u32>(~reverseBits(abs(20660u)), abs(50251u), abs(~arg_2), ~(~_wgslsmith_clamp_u32(arg_2, arg_0, 1u))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(arg_1 + var_0.x), _wgslsmith_f_op_f32(-var_0.x))))), ~arg_0);
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_4(func_3(vec4<i32>(2147483647i, global0[_wgslsmith_index_u32(1u, 8u)], global0[_wgslsmith_index_u32(var_1.d, 8u)], 25761i)), select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), false))), var_0.x, any(vec4<bool>(true, true, true, true)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)));
    let var_3 = -872f;
    var var_4 = vec2<bool>(all(vec2<bool>(true, true)), true);
    return var_0.zy;
}

fn func_1(arg_0: vec2<u32>) -> vec4<u32> {
    var var_0 = _wgslsmith_add_vec2_i32(~(-abs(vec2<i32>(-8958i, global0[_wgslsmith_index_u32(33827u, 8u)]))), vec2<i32>(-_wgslsmith_dot_vec2_i32(max(u_input.b, u_input.b), -u_input.b), u_input.a));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1194f, 1991f))))) - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(129f, 634f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2(21566u, -1000f, arg_0.x)))))));
    var var_2 = !(!(!select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(true, true), vec2<bool>(true, true))));
    var_2 = select(select(vec2<bool>(~75409u <= firstLeadingBit(arg_0.x), !(0u > arg_0.x)), !select(select(vec2<bool>(var_2.x, var_2.x), vec2<bool>(true, false), vec2<bool>(false, false)), vec2<bool>(var_2.x, false), true), true), !select(vec2<bool>(all(vec2<bool>(var_2.x, var_2.x)), true), select(select(vec2<bool>(false, var_2.x), vec2<bool>(false, var_2.x), true), vec2<bool>(var_2.x, true), true), vec2<bool>(true, false)), !select(var_2.x, _wgslsmith_f_op_f32(175f - var_1.x) < 273f, true));
    var var_3 = ~arg_0.x;
    return _wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(abs(_wgslsmith_sub_vec4_u32(~vec4<u32>(arg_0.x, arg_0.x, 12922u, arg_0.x), _wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0.x, arg_0.x, 88502u, arg_0.x), vec4<u32>(arg_0.x, 37327u, arg_0.x, 10779u), vec4<u32>(24982u, 1u, arg_0.x, 9349u)))), _wgslsmith_mod_vec4_u32(countOneBits(~vec4<u32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x)), max(~vec4<u32>(4294967295u, arg_0.x, 32021u, arg_0.x), abs(vec4<u32>(arg_0.x, arg_0.x, arg_0.x, 4294967295u))))), vec4<u32>(_wgslsmith_dot_vec3_u32(~(vec3<u32>(26488u, 62129u, arg_0.x) & vec3<u32>(arg_0.x, 4294967295u, arg_0.x)), (vec3<u32>(11047u, arg_0.x, 4294967295u) & vec3<u32>(82138u, arg_0.x, arg_0.x)) ^ vec3<u32>(4294967295u, arg_0.x, 22534u)), firstTrailingBit(4294967295u), arg_0.x, 1u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(42875u, _wgslsmith_add_vec4_u32(func_1(~vec2<u32>(78102u, 0u)), ~_wgslsmith_add_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 5859u, 26511u, 97661u))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(488f, -1000f, 513f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-565f, -1267f, 514f)) * _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1429f, 282f, -1208f)))))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(495f, 1000f, 1620f), vec3<f32>(-684f, -1298f, 283f), vec3<bool>(true, false, false)))))), true)), _wgslsmith_div_u32(_wgslsmith_div_u32(~1u, 1u), 6992u) ^ _wgslsmith_dot_vec4_u32(~_wgslsmith_div_vec4_u32(vec4<u32>(0u, 35539u, 0u, 30815u), vec4<u32>(26264u, 17267u, 111484u, 4294967295u)), ~vec4<u32>(1u, 1u, 1u, 1u)));
    var_0 = Struct_1((var_0.a >> (firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 63858u, 1u, 14362u), var_0.b)) % 32u)) >> (countOneBits(select(_wgslsmith_sub_u32(var_0.a, 30875u), 65096u, true)) % 32u), _wgslsmith_clamp_vec4_u32(~_wgslsmith_mult_vec4_u32(var_0.b & vec4<u32>(1u, var_0.b.x, var_0.a, 4294967295u), var_0.b), ~abs(vec4<u32>(var_0.a, var_0.d, 16168u, 4294967295u) ^ vec4<u32>(var_0.d, 4294967295u, 9488u, 12270u)), ~vec4<u32>(~1u, 1u, var_0.d, 1u)), vec3<f32>(_wgslsmith_f_op_f32(round(var_0.c.x)), -846f, _wgslsmith_f_op_vec2_f32(func_2(0u, _wgslsmith_f_op_f32(func_4(-vec4<i32>(u_input.c, 2147483647i, global0[_wgslsmith_index_u32(147317u, 8u)], -2440i), vec3<bool>(true, true, true))), ~_wgslsmith_add_u32(var_0.d, var_0.b.x))).x), ~_wgslsmith_mod_u32(4294967295u, 10170u));
    var_0 = Struct_1(~1u, _wgslsmith_div_vec4_u32(var_0.b, vec4<u32>(13642u & min(0u, var_0.d), func_1(~var_0.b.wx).x, 4294967295u, ~var_0.b.x)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.c) - _wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0.c.x, 1237f, var_0.c.x), var_0.c))))))), 1u);
    var_0 = Struct_1(~_wgslsmith_add_u32(max(func_1(var_0.b.xy).x, ~68190u), _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(var_0.b, var_0.b), var_0.b)), vec4<u32>(var_0.d, 12211u << (_wgslsmith_mod_u32(var_0.a, 111691u) % 32u), ~(~var_0.b.x), 16017u) | (var_0.b | (~vec4<u32>(var_0.b.x, 11417u, 4294967295u, 21214u) << (vec4<u32>(0u, var_0.b.x, 1u, 4294967295u) % vec4<u32>(32u)))), var_0.c, var_0.b.x);
    let var_1 = all(vec2<bool>(all(vec3<bool>(true, true, true)), true));
    var var_2 = !var_1;
    let var_3 = Struct_1(~var_0.b.x, ~vec4<u32>(var_0.a, ~(~var_0.d), ~firstTrailingBit(1u), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 0u) | vec2<u32>(0u, var_0.d), _wgslsmith_mult_vec2_u32(vec2<u32>(22195u, 81351u), var_0.b.zy))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.c)))), ~var_0.a);
    let var_4 = var_3;
    global0 = array<i32, 8>();
    let x = u_input.a;
    s_output = StorageBuffer(~(-1i), var_3.b.yyz);
}

