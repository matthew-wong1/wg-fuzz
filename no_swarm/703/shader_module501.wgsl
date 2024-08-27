struct Struct_1 {
    a: bool,
    b: f32,
    c: vec4<bool>,
    d: bool,
}

struct Struct_2 {
    a: bool,
    b: vec2<f32>,
    c: Struct_1,
    d: vec2<i32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: f32,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec2<u32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 2> = array<vec4<bool>, 2>(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true));

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> f32 {
    global0 = array<vec4<bool>, 2>();
    let var_0 = Struct_2(!(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(-1766f, 192f)))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1260f - 447f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -803f), _wgslsmith_f_op_f32(trunc(573f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(234f, 267f)))), Struct_1(true, -1529f, vec4<bool>(true, true, true, true), select(true, true, any(select(vec4<bool>(true, false, false, true), global0[_wgslsmith_index_u32(76460u, 2u)], true)))), _wgslsmith_add_vec2_i32(select(-vec2<i32>(u_input.a, u_input.a), vec2<i32>(firstTrailingBit(-41356i), -64953i), select(vec2<bool>(true, true), vec2<bool>(true, false), true)), -vec2<i32>(_wgslsmith_div_i32(-1i, -29589i), u_input.a)));
    global0 = array<vec4<bool>, 2>();
    var var_1 = 2147483647i << (~(~_wgslsmith_dot_vec2_u32(~vec2<u32>(0u, 17746u), vec2<u32>(1u, 1u))) % 32u);
    var var_2 = (_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.c.b), _wgslsmith_f_op_f32(-304f * _wgslsmith_f_op_f32(var_0.c.b * var_0.c.b)))) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(var_0.b.x, var_0.c.b))) + _wgslsmith_f_op_f32(-var_0.c.b))) & !var_0.a;
    return -1000f;
}

fn func_4(arg_0: vec4<bool>, arg_1: f32, arg_2: f32) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(-arg_2);
    let var_1 = false && arg_0.x;
    global0 = array<vec4<bool>, 2>();
    var var_2 = vec4<f32>(-1251f, arg_2, _wgslsmith_f_op_f32(-var_0), _wgslsmith_div_f32(885f, arg_2));
    let var_3 = _wgslsmith_sub_vec3_u32(countOneBits(vec3<u32>(max(1u, _wgslsmith_mod_u32(1u, 1u)), countOneBits(1u), 58400u)), ~firstTrailingBit(vec3<u32>(1u, 1u, 1u)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) - var_0);
}

fn func_5(arg_0: vec4<f32>) -> vec3<f32> {
    let var_0 = ~(~_wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(u_input.a, 2147483647i, 2147483647i)), ~vec3<i32>(u_input.a, u_input.a, u_input.a)) ^ _wgslsmith_mult_vec3_i32(select(-vec3<i32>(u_input.a, -11289i, u_input.a), vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<bool>(true, true, true)), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, 2147483647i, u_input.a), -vec3<i32>(1i, u_input.a, -37323i))));
    let var_1 = i32(-1i) * -3077i;
    var var_2 = Struct_2(false, _wgslsmith_f_op_vec2_f32(ceil(arg_0.yw)), Struct_1(any(vec4<bool>(true, true, false, false)) || true, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -682f))))), global0[_wgslsmith_index_u32(min(_wgslsmith_add_u32(select(0u, 14919u, false), 1u), ~(~4884u)), 2u)], (1u | _wgslsmith_dot_vec3_u32(vec3<u32>(20436u, 1u, 21613u), vec3<u32>(58986u, 4294967295u, 32804u))) > ~_wgslsmith_div_u32(13749u, 3786u)), vec2<i32>(_wgslsmith_dot_vec4_i32(select(vec4<i32>(26104i, 34678i, -1i, var_0.x), vec4<i32>(-2147483647i, -19927i, var_1, var_1), false), vec4<i32>(1i, var_1, var_1, -18151i) | vec4<i32>(-2147483647i, 8883i, u_input.a, var_0.x)) ^ ~(~u_input.a), _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(reverseBits(vec2<i32>(u_input.a, 1i)), var_0.zz), vec2<i32>(_wgslsmith_mult_i32(var_0.x, -67202i), 1i))));
    var var_3 = Struct_1(true & var_2.a, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(var_2.c.b)), _wgslsmith_f_op_f32(-938f * 667f), !(_wgslsmith_div_i32(-13304i, -1i) <= ~var_2.d.x))), select(select(select(vec4<bool>(var_2.a, false, var_2.a, var_2.a), vec4<bool>(var_2.c.c.x, true, var_2.c.a, var_2.c.a), true), global0[_wgslsmith_index_u32(1u, 2u)], var_2.a), vec4<bool>(_wgslsmith_f_op_f32(exp2(var_2.c.b)) >= _wgslsmith_f_op_f32(-arg_0.x), true, all(var_2.c.c.yxx), var_2.c.d), select(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, 2667u, 4294967295u, 23451u), vec4<u32>(214u, 31079u, 28774u, 1u)), 2u)], var_2.c.c, !var_2.c.a)), true);
    let var_4 = var_2.a;
    return _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(min(var_2.b.x, _wgslsmith_f_op_f32(step(-1068f, 1223f)))), _wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(-var_3.b)), -613f))), arg_0.yww));
}

fn func_2(arg_0: i32) -> vec3<f32> {
    global0 = array<vec4<bool>, 2>();
    global0 = array<vec4<bool>, 2>();
    global0 = array<vec4<bool>, 2>();
    var var_0 = vec3<u32>(1u, 1u, 1u);
    let var_1 = true;
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_5(vec4<f32>(1000f, _wgslsmith_f_op_f32(func_4(global0[_wgslsmith_index_u32(var_0.x, 2u)], _wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(-584f + -1476f))), _wgslsmith_f_op_f32(-1418f - -1189f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-775f - -277f))))) - _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -751f) * -206f), _wgslsmith_f_op_f32(1000f - _wgslsmith_div_f32(573f, -1015f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1182f)))))));
}

fn func_1(arg_0: vec3<bool>, arg_1: u32, arg_2: i32) -> Struct_1 {
    global0 = array<vec4<bool>, 2>();
    let var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(216f, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(371f)), -191f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(569f, 1531f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(func_2(u_input.a)))))));
    global0 = array<vec4<bool>, 2>();
    global0 = array<vec4<bool>, 2>();
    let var_1 = _wgslsmith_mult_u32(1u, abs(1u));
    return Struct_1(true || !arg_0.x, _wgslsmith_f_op_f32(abs(917f)), select(global0[_wgslsmith_index_u32(~(~(~61936u)), 2u)], global0[_wgslsmith_index_u32(firstLeadingBit(~(1u ^ arg_1)), 2u)], -1i > arg_2), all(vec4<bool>(arg_0.x, !arg_0.x, var_0.x >= -212f, true)) & !(firstLeadingBit(arg_2) >= ~u_input.a));
}

fn func_6(arg_0: Struct_1, arg_1: bool, arg_2: bool, arg_3: Struct_3) -> bool {
    let var_0 = min(min(countOneBits(-vec3<i32>(u_input.a, -2147483647i, u_input.a)), vec3<i32>(_wgslsmith_div_i32(-1i, u_input.a), _wgslsmith_mod_i32(arg_3.b.d.x, 0i), -4629i ^ arg_3.d.d.x)), select(countOneBits(vec3<i32>(-16397i, 66568i, arg_3.b.d.x)), vec3<i32>(arg_3.d.d.x, ~(-16381i), _wgslsmith_dot_vec2_i32(vec2<i32>(0i, -87285i), vec2<i32>(arg_3.b.d.x, 702i))), func_1(!arg_3.b.c.c.zzz, reverseBits(27672u), u_input.a).d)) | _wgslsmith_mult_vec3_i32(firstLeadingBit((vec3<i32>(u_input.a, 31732i, -16787i) >> (vec3<u32>(0u, 45196u, 16792u) % vec3<u32>(32u))) | firstTrailingBit(vec3<i32>(u_input.a, -21931i, 2147483647i))), firstTrailingBit(_wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(arg_3.b.d.x, 24362i, arg_3.d.d.x), vec3<i32>(2147483647i, 56789i, -1i)), vec3<i32>(21805i, arg_3.d.d.x, 41360i))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-797f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.b), -793f)));
    var var_2 = func_1(!arg_0.c.xyy, 0u, arg_3.b.d.x);
    let var_3 = abs(firstLeadingBit(~firstTrailingBit(1u)));
    var var_4 = var_3;
    return -279f > _wgslsmith_f_op_vec3_f32(func_5(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1484f, var_2.b, -555f, 1999f) - _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_2.b, 1433f, -287f, var_1)))))))).x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(980f - 168f);
    var var_1 = reverseBits(1u);
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -513f) * _wgslsmith_f_op_f32(1272f - -850f)) - _wgslsmith_f_op_f32(-432f + 608f)) + _wgslsmith_f_op_f32(-1436f - 861f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-878f - 2137f), _wgslsmith_f_op_f32(trunc(105f))))))));
    global0 = array<vec4<bool>, 2>();
    var var_2 = vec3<bool>(false, (false | func_6(func_1(vec3<bool>(false, false, false), 0u, u_input.a), true, true, Struct_3(288f, Struct_2(true, vec2<f32>(486f, 129f), Struct_1(false, 241f, global0[_wgslsmith_index_u32(10543u, 2u)], true), vec2<i32>(u_input.a, u_input.a)), 414f, Struct_2(false, vec2<f32>(2224f, -130f), Struct_1(false, 343f, global0[_wgslsmith_index_u32(4836u, 2u)], true), vec2<i32>(-2147483647i, u_input.a))))) || !all(vec2<bool>(true, true)), false);
    let var_3 = (vec4<u32>(1u, 1u, 59953u, ~1u) << (vec4<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(36221u, 718u, 1u, 20073u), vec4<u32>(4294967295u, 1u, 20580u, 82418u)), abs(~1u), 0u & _wgslsmith_dot_vec3_u32(vec3<u32>(35748u, 0u, 110359u), vec3<u32>(1u, 1u, 0u)), ~_wgslsmith_div_u32(1u, 1u)) % vec4<u32>(32u))) | ~vec4<u32>(1u, 1u, 1u, 1u);
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -960f), -1660f))) + -1262f) * _wgslsmith_f_op_f32(func_1(func_1(vec3<bool>(false, var_2.x, false), 1u, -u_input.a).c.wxx, 677u & var_3.x, 0i).b + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1255f) * _wgslsmith_f_op_f32(floor(-163f)))))));
    var_4 = -1000f;
    let var_5 = func_1(vec3<bool>(any(!(!vec3<bool>(var_2.x, var_2.x, var_2.x))), !(var_3.x > ~var_3.x), firstTrailingBit(u_input.a) <= u_input.a), select(~var_3.x, min(abs(var_3.x >> (825u % 32u)), _wgslsmith_clamp_u32(var_3.x, 4294967295u, _wgslsmith_dot_vec2_u32(var_3.xy, vec2<u32>(47934u, 4294967295u)))), false), ~(~(~(-2147483647i))));
    let x = u_input.a;
    s_output = StorageBuffer(~firstTrailingBit(firstTrailingBit(vec2<i32>(53411i, -21149i))), abs(max(vec4<i32>(-35201i, reverseBits(u_input.a), u_input.a, ~u_input.a), ~(-vec4<i32>(-1i, -72136i, u_input.a, -43647i)))), ~vec2<u32>(var_3.x, ~select(var_3.x, var_3.x, false)), -8335i, ~(-33597i) << (1u % 32u));
}

