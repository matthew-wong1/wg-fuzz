struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: vec4<bool>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec2<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: array<vec3<f32>, 14>;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    global1 = array<vec3<f32>, 14>();
    var var_0 = max(~abs(abs(countOneBits(vec3<u32>(arg_2.b, 1u, 12729u)))), abs(_wgslsmith_clamp_vec3_u32(~vec3<u32>(arg_2.b, 4294967295u, 1u), vec3<u32>(arg_1.b, 65991u, arg_1.b), vec3<u32>(25102u, arg_2.b, 1u) << (vec3<u32>(6802u, 4294967295u, arg_2.b) % vec3<u32>(32u)))) << (vec3<u32>(~(arg_1.b & arg_1.b), 65011u, 258u) % vec3<u32>(32u)));
    global0 = -max(vec3<i32>(global0.x | 25649i, -2147483647i, -2147483647i & global0.x), select(vec3<i32>(u_input.c.x, u_input.c.x, 1i) << (vec3<u32>(var_0.x, 15376u, 1u) % vec3<u32>(32u)), firstLeadingBit(u_input.a.yxy), vec3<bool>(arg_2.a.x, arg_0.c.x, arg_1.a.x))) >> (vec3<u32>(_wgslsmith_mod_u32(~arg_1.b, arg_1.b) >> (arg_1.b % 32u), _wgslsmith_mult_u32(min(~var_0.x, 1u), _wgslsmith_mod_u32(~51494u, arg_2.b)), ~var_0.x) % vec3<u32>(32u));
    var var_1 = countOneBits(17888i >> (~(~_wgslsmith_div_u32(var_0.x, 10378u)) % 32u));
    var var_2 = Struct_2(arg_0, _wgslsmith_f_op_f32(sign(-381f)), arg_1, arg_1);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -633f) + _wgslsmith_f_op_f32(step(-607f, _wgslsmith_f_op_f32(var_2.b - var_2.b))));
}

fn func_2(arg_0: bool, arg_1: f32, arg_2: bool) -> Struct_1 {
    global0 = u_input.a.yxw;
    let var_0 = Struct_2(Struct_1(vec4<bool>(arg_0, true, true, arg_0), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e, u_input.e, u_input.d, 4294967295u), _wgslsmith_div_vec4_u32(vec4<u32>(113561u, u_input.d, u_input.e, 1u), vec4<u32>(u_input.d, 0u, 21133u, u_input.e))) << (firstLeadingBit(_wgslsmith_div_u32(56304u, 1u)) % 32u), vec4<bool>(any(vec4<bool>(arg_2, true, arg_2, arg_2)) && true, -384f <= _wgslsmith_f_op_f32(-arg_1), true, arg_0), -33813i | -u_input.c.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1515f - _wgslsmith_f_op_f32(func_3(Struct_1(vec4<bool>(false, true, arg_2, arg_0), u_input.d, vec4<bool>(arg_2, arg_2, true, arg_0), -2801i), Struct_1(vec4<bool>(true, true, arg_2, true), u_input.e, vec4<bool>(arg_0, arg_0, false, arg_2), -14927i), Struct_1(vec4<bool>(arg_0, false, false, arg_0), 48596u, vec4<bool>(true, arg_2, arg_0, arg_0), -12866i)))), _wgslsmith_f_op_f32(f32(-1f) * -1517f))), Struct_1(vec4<bool>(true, true, false, !(2147483647i < global0.x)), _wgslsmith_div_u32(u_input.e, firstLeadingBit(1u)), vec4<bool>(!arg_2, true | !arg_0, !arg_2, true | all(vec3<bool>(false, arg_0, arg_0))), 0i), Struct_1(vec4<bool>(_wgslsmith_f_op_f32(-arg_1) > _wgslsmith_f_op_f32(412f * 1984f), select(!arg_0, true, arg_0 || false), false, arg_0), _wgslsmith_mult_u32(u_input.e << (u_input.d % 32u), ~40714u) << (~3600u % 32u), vec4<bool>(any(!vec2<bool>(arg_0, false)), _wgslsmith_f_op_f32(exp2(arg_1)) == -2822f, (arg_1 <= arg_1) && arg_0, true), reverseBits(~2147483647i)));
    var var_1 = Struct_2(var_0.d, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-242f, _wgslsmith_f_op_f32(1239f - 1000f)), _wgslsmith_f_op_f32(-721f + _wgslsmith_div_f32(-980f, _wgslsmith_f_op_f32(-709f - arg_1))))), Struct_1(var_0.d.a, ~u_input.e, !(!var_0.a.a), countOneBits(_wgslsmith_div_i32(1i, 9264i))), var_0.c);
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, arg_1)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.b, 156f), vec2<f32>(-971f, -341f), vec2<bool>(false, arg_0))) - _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1177f, 911f), vec2<f32>(-295f, arg_1))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1175f, _wgslsmith_f_op_f32(select(-1605f, -602f, var_1.d.a.x)))), !var_1.a.c.xx)));
    var var_3 = Struct_2(var_1.d, 1902f, Struct_1(vec4<bool>(var_1.d.a.x, !any(var_0.a.a.yw), all(select(vec2<bool>(var_0.a.a.x, false), var_1.a.a.xz, var_1.a.a.xx)), !(true == var_1.d.a.x)), ~(~var_1.d.b ^ var_1.a.b), vec4<bool>(false, false, arg_0, !arg_2 || true), _wgslsmith_sub_i32(~1i, -2147483647i)), var_1.a);
    return Struct_1(!(!var_1.d.c), 4294967295u, select(var_1.c.c, select(!select(var_0.c.c, vec4<bool>(false, arg_0, var_1.c.c.x, false), vec4<bool>(false, arg_2, var_0.a.c.x, arg_0)), var_3.c.a, all(!var_0.d.a.yw)), vec4<bool>(all(var_3.d.c), var_1.c.c.x, arg_2, _wgslsmith_dot_vec3_u32(vec3<u32>(28930u, 1u, var_0.d.b), vec3<u32>(0u, 4294967295u, var_3.a.b)) >= _wgslsmith_mult_u32(8545u, var_0.c.b))), var_1.a.d);
}

fn func_1(arg_0: u32, arg_1: i32, arg_2: vec4<i32>) -> vec3<bool> {
    let var_0 = Struct_2(func_2(all(vec2<bool>(false, all(vec3<bool>(true, true, true)))), _wgslsmith_f_op_f32(f32(-1f) * -1093f), all(vec3<bool>(true, true, false))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(610f * -397f))), 103f, true)), Struct_1(func_2(all(vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-2085f, -1000f, true)) + 1206f), !(u_input.e >= u_input.d)).a, u_input.e, vec4<bool>(true, true, true, true), -21438i), func_2(!(!select(true, false, false)), 1f, any(!func_2(false, -123f, true).a.zzz)));
    var var_1 = vec3<i32>(-(var_0.a.d ^ -2147483647i), arg_1, ~(~(-_wgslsmith_sub_i32(-2147483647i, arg_1))));
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b)))), _wgslsmith_f_op_f32(434f * var_0.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.b - -1820f), _wgslsmith_f_op_f32(var_0.b * 624f))))));
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_0.b, _wgslsmith_f_op_f32(func_3(var_0.a, func_2(var_0.a.c.x, var_0.b, false), var_0.c))), var_2.wx));
    let var_4 = Struct_1(vec4<bool>(false, func_2(var_0.d.d > 31171i, 1705f, any(vec4<bool>(false, true, false, var_0.d.c.x))).c.x, var_0.c.c.x, select(true, !all(var_0.c.a.xy), !(!var_0.a.a.x))), 23585u, vec4<bool>(select(var_0.d.c.x, var_0.a.a.x, var_0.c.a.x) & func_2(true, _wgslsmith_f_op_f32(sign(var_2.x)), true).a.x, false, true, false), 9987i);
    return var_4.a.zwy;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.c.x | -117i;
    var var_1 = func_1(u_input.e, abs(firstLeadingBit(-(u_input.b.x >> (65213u % 32u)))), max(-(-vec4<i32>(u_input.c.x, u_input.a.x, 10513i, -7405i) & (vec4<i32>(global0.x, u_input.b.x, global0.x, 1i) | vec4<i32>(-46648i, global0.x, global0.x, 2147483647i))), firstTrailingBit(-u_input.a)));
    var var_2 = vec2<u32>(u_input.d, 1u >> (u_input.d % 32u)) << (vec2<u32>(abs(u_input.e), _wgslsmith_mult_u32(reverseBits(abs(u_input.d)), _wgslsmith_mod_u32(~17456u, ~1u))) % vec2<u32>(32u));
    var var_3 = Struct_2(func_2(var_1.x, -1000f, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), Struct_1(vec4<bool>(_wgslsmith_sub_i32(u_input.c.x, u_input.c.x) <= global0.x, var_1.x, true, any(vec3<bool>(false, var_1.x, false))), abs(var_2.x), select(select(select(vec4<bool>(false, true, true, false), vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), vec4<bool>(true, var_1.x, var_1.x, var_1.x)), !vec4<bool>(true, var_1.x, var_1.x, false), select(vec4<bool>(var_1.x, var_1.x, var_1.x, false), vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), vec4<bool>(true, false, true, var_1.x))), select(vec4<bool>(var_1.x, var_1.x, false, false), func_2(true, -1000f, false).c, vec4<bool>(false, true, var_1.x, var_1.x)), !select(vec4<bool>(true, var_1.x, true, var_1.x), vec4<bool>(false, false, true, var_1.x), vec4<bool>(false, true, true, var_1.x))), ~u_input.a.x), Struct_1(!vec4<bool>(any(vec4<bool>(var_1.x, var_1.x, false, var_1.x)), any(var_1.zx), !var_1.x, var_1.x), ~(~u_input.d & 1u), vec4<bool>(true, var_1.x, !(!var_1.x), true), 1i));
    var var_4 = u_input.a;
    var var_5 = Struct_2(var_3.a, 1000f, func_2(u_input.e > _wgslsmith_dot_vec3_u32(~vec3<u32>(31771u, var_2.x, var_2.x), ~vec3<u32>(1u, 68058u, var_3.a.b)), 416f, (func_1(var_2.x, var_3.c.d, vec4<i32>(u_input.b.x, 2147483647i, var_3.a.d, global0.x)).x && true) & ((-17629i << (var_3.c.b % 32u)) == _wgslsmith_dot_vec3_i32(vec3<i32>(var_4.x, -6132i, var_3.d.d), var_4.xzx))), Struct_1(vec4<bool>(true, any(select(var_3.c.a, vec4<bool>(true, true, var_1.x, true), true)), _wgslsmith_add_i32(global0.x, var_4.x) > u_input.c.x, var_1.x), ~_wgslsmith_add_u32(~1u, var_2.x), select(select(var_3.a.c, vec4<bool>(true, true, false, var_1.x), false), var_3.d.a, var_3.a.a), -(max(26253i, u_input.b.x) ^ u_input.a.x)));
    let var_6 = func_2(var_5.a.c.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -682f)))))), func_1(u_input.d, -33758i, vec4<i32>(u_input.c.x, select(1i, var_3.a.d, true) ^ _wgslsmith_div_i32(2147483647i, 14728i), -50584i ^ firstTrailingBit(u_input.c.x), ~var_4.x)).x).c.yyy;
    let var_7 = func_2(all(vec4<bool>(!(!var_6.x), true, false, var_6.x)), _wgslsmith_f_op_f32(max(var_5.b, var_3.b)), false);
    var var_8 = var_3.c.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(min(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(var_5.a.b, var_2.x, var_3.d.b), func_2(false, var_5.b, true).b), vec2<u32>(9782u, 13242u)), ~0u));
}

