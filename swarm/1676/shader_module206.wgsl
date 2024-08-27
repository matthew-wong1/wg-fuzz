struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: vec2<i32>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: i32,
    d: f32,
    e: f32,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: vec4<u32>,
    d: Struct_1,
}

struct Struct_5 {
    a: Struct_2,
    b: i32,
    c: u32,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -47955i;

var<private> global1: array<Struct_2, 22>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec2<u32>, arg_2: vec3<i32>) -> vec4<u32> {
    var var_0 = ~min(min(vec3<u32>(min(u_input.b, arg_1.x), _wgslsmith_mod_u32(u_input.b, 1698u), _wgslsmith_dot_vec4_u32(vec4<u32>(41125u, 0u, arg_1.x, 4294967295u), vec4<u32>(3436u, 0u, arg_1.x, 4294967295u))), vec3<u32>(arg_1.x, arg_1.x, 1u)), ~(abs(vec3<u32>(0u, 252u, arg_1.x)) ^ ~vec3<u32>(u_input.b, 1u, 6027u)));
    let var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1191f, 1380f, -1121f, 1634f))))) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 1045f, -497f, 1061f))))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(276f, 212f, 270f, -1124f) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1164f, -284f, 281f, 130f), vec4<f32>(-303f, -888f, -468f, -822f)))))), select(!select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true), false), vec4<bool>(all(vec4<bool>(true, true, false, true)), any(vec2<bool>(false, false)), false, true), vec4<bool>(all(vec2<bool>(true, false)), any(vec4<bool>(false, false, true, false)), true, true)))));
    var var_2 = Struct_5(Struct_2(~vec4<u32>(_wgslsmith_sub_u32(u_input.b, arg_1.x), 4294967295u, ~20741u, abs(8874u)), Struct_1(129f < _wgslsmith_f_op_f32(-var_1.a.x), ~(vec3<i32>(-24726i, arg_0.x, arg_0.x) ^ vec3<i32>(arg_2.x, -2147483647i, -1i)), u_input.a.wy, ~(vec4<u32>(82352u, arg_1.x, u_input.b, arg_1.x) << (vec4<u32>(88007u, u_input.b, var_0.x, arg_1.x) % vec4<u32>(32u)))), min(-min(-42623i, -7808i), ~(arg_0.x | arg_0.x)), -1419f, var_1.a.x), -69960i ^ _wgslsmith_mult_i32(arg_2.x, -26699i), _wgslsmith_sub_u32(~var_0.x, arg_1.x) >> (u_input.b % 32u), global1[_wgslsmith_index_u32(1u, 22u)]);
    let var_3 = Struct_4(var_1, Struct_2(~var_2.a.b.d, var_2.a.b, (u_input.a.x | (u_input.a.x << (var_0.x % 32u))) >> (~(4294967295u >> (arg_1.x % 32u)) % 32u), _wgslsmith_f_op_f32(690f * var_1.a.x), var_1.a.x), _wgslsmith_mod_vec4_u32(var_2.a.a, _wgslsmith_div_vec4_u32(vec4<u32>(var_2.d.a.x, ~var_0.x, ~var_0.x, select(48252u, 10296u, false)), _wgslsmith_mult_vec4_u32(var_2.d.a, var_2.a.b.d) & (vec4<u32>(var_2.c, var_2.c, var_2.c, var_2.c) & vec4<u32>(1u, 4294967295u, var_0.x, 25928u)))), Struct_1(all(vec3<bool>(var_2.d.b.a, true, !var_2.d.b.a)), countOneBits(u_input.a.zzz), -vec2<i32>(1i, max(14159i, u_input.a.x)), min(abs(vec4<u32>(var_2.d.a.x, 36373u, var_2.c, 27922u)), ~vec4<u32>(var_2.d.b.d.x, arg_1.x, 2923u, var_2.a.a.x))));
    let var_4 = -1000f;
    return ~var_2.a.b.d;
}

fn func_2(arg_0: vec2<u32>, arg_1: vec3<bool>, arg_2: vec4<bool>, arg_3: i32) -> f32 {
    global0 = -u_input.a.x;
    var var_0 = Struct_4(Struct_3(vec4<f32>(_wgslsmith_f_op_f32(473f - -1105f), -789f, 983f, _wgslsmith_f_op_f32(711f - _wgslsmith_f_op_f32(round(149f))))), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(firstLeadingBit(~vec4<u32>(34914u, 74345u, u_input.b, u_input.b) ^ vec4<u32>(40581u, u_input.b, 10345u, 23905u)), _wgslsmith_mult_vec4_u32(~(~vec4<u32>(u_input.b, 1u, 4294967295u, u_input.b)), vec4<u32>(0u, 0u, _wgslsmith_div_u32(u_input.b, arg_0.x), _wgslsmith_div_u32(arg_0.x, 53215u)))), 22u)], func_3(~abs(vec2<i32>(arg_3, arg_3)), vec2<u32>(1u, ~arg_0.x), ~select(u_input.a.yyy, u_input.a.wzy, arg_2.x)) | (abs(~vec4<u32>(arg_0.x, 4294967295u, u_input.b, 4294967295u)) ^ min(vec4<u32>(u_input.b, 1u, u_input.b, arg_0.x), ~vec4<u32>(u_input.b, arg_0.x, 1u, 5661u))), Struct_1(!arg_2.x, -vec3<i32>(~arg_3, 4551i, -arg_3), u_input.a.zy, vec4<u32>(countOneBits(arg_0.x), ~countOneBits(9522u), abs(_wgslsmith_sub_u32(u_input.b, 4294967295u)), arg_0.x)));
    global0 = -2147483647i;
    global0 = ~(-54824i);
    global0 = -min(~_wgslsmith_sub_i32(u_input.a.x, -22152i) >> (~arg_0.x % 32u), var_0.d.b.x);
    return _wgslsmith_f_op_f32(-var_0.b.e);
}

fn func_1() -> Struct_4 {
    var var_0 = _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(func_2(vec2<u32>(u_input.b, u_input.b), vec3<bool>(true, true, true), select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false)), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true)), ~u_input.a.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(-371f, _wgslsmith_f_op_f32(f32(-1f) * -775f))))))));
    var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.x, 1000f)) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.x))))) * _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_0.x, -1177f))) - _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, 1000f) + vec2<f32>(var_0.x, var_0.x))))))));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(119f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-442f + 438f))), var_0.x)));
    let var_2 = var_1.x;
    var var_3 = countOneBits(select(~vec3<i32>(-55427i, 34620i, firstTrailingBit(u_input.a.x)), abs(-u_input.a.xwz | (u_input.a.wzw ^ vec3<i32>(u_input.a.x, u_input.a.x, -29595i))), select(vec3<bool>(true, var_2 > var_1.x, any(vec4<bool>(false, true, true, false))), vec3<bool>(true, true, all(vec4<bool>(true, false, true, false))), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false)))));
    return Struct_4(Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(621f, 1065f, 1384f, -492f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_1.x, -870f, var_2)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, -607f, -157f, -272f) - vec4<f32>(var_0.x, var_1.x, -336f, -984f))))), Struct_2(_wgslsmith_add_vec4_u32(firstLeadingBit(vec4<u32>(17802u, 4089u, 0u, u_input.b)), vec4<u32>(15894u, 1u, u_input.b, 1u) >> (~vec4<u32>(u_input.b, u_input.b, 26851u, u_input.b) % vec4<u32>(32u))), Struct_1(!any(vec4<bool>(false, true, false, false)), ~u_input.a.xzz | abs(u_input.a.zzz), -_wgslsmith_add_vec2_i32(vec2<i32>(var_3.x, -1i), vec2<i32>(-11807i, 0i)), vec4<u32>(u_input.b | 40104u, func_3(vec2<i32>(var_3.x, -16059i), vec2<u32>(u_input.b, u_input.b), u_input.a.wwz).x, 52569u, _wgslsmith_dot_vec2_u32(vec2<u32>(19471u, 4294967295u), vec2<u32>(28289u, u_input.b)))), _wgslsmith_dot_vec2_i32(~abs(vec2<i32>(1i, 8249i)), var_3.yz), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2, var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -272f)))), _wgslsmith_f_op_f32(func_2(_wgslsmith_div_vec2_u32(vec2<u32>(36534u, u_input.b), ~vec2<u32>(51052u, u_input.b)), vec3<bool>(true, true, true), vec4<bool>(false, true, all(vec2<bool>(true, true)), all(vec3<bool>(false, true, false))), ~min(20535i, 1i)))), ~(~(reverseBits(vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b)) >> (~vec4<u32>(u_input.b, u_input.b, 0u, 11536u) % vec4<u32>(32u)))), Struct_1(!any(select(vec2<bool>(false, true), vec2<bool>(false, false), true)), u_input.a.ywy, vec2<i32>(firstTrailingBit(-2147483647i), min(1i, 2147483647i) & (u_input.a.x | u_input.a.x)), ~(vec4<u32>(u_input.b, 40821u, 4294967295u, 33512u) ^ vec4<u32>(285u, u_input.b, u_input.b, 21803u)) >> (~vec4<u32>(67760u, u_input.b, 11685u, 1u) % vec4<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = vec4<i32>(~(-(~(u_input.a.x << (62533u % 32u)))), _wgslsmith_dot_vec3_i32(reverseBits(reverseBits(-vec3<i32>(u_input.a.x, var_0.b.c, -2147483647i))), u_input.a.xxz), u_input.a.x, _wgslsmith_div_i32(_wgslsmith_clamp_i32(-56387i, u_input.a.x, ~(-7199i)), var_0.d.c.x));
    global0 = u_input.a.x;
    var var_2 = Struct_5(func_1().b, ~(-7002i), 11929u, Struct_2(func_1().b.a, Struct_1(var_0.b.b.a, vec3<i32>(-u_input.a.x, -2147483647i, 16402i), ~var_0.b.b.b.xy, ~abs(var_0.c)), firstTrailingBit(-var_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(238f - 537f)), _wgslsmith_f_op_f32(func_2((vec2<u32>(var_0.d.d.x, 23161u) ^ vec2<u32>(u_input.b, u_input.b)) | var_0.c.ww, !vec3<bool>(false, var_0.b.b.a, var_0.d.a), !(!vec4<bool>(true, var_0.b.b.a, true, var_0.d.a)), u_input.a.x))));
    var var_3 = u_input.a;
    var var_4 = 1u;
    let var_5 = -1445f == _wgslsmith_f_op_f32(sign(var_2.a.e));
    var var_6 = _wgslsmith_clamp_u32(reverseBits(abs(_wgslsmith_dot_vec4_u32(func_1().b.a, vec4<u32>(u_input.b, var_0.b.b.d.x, var_0.b.a.x, u_input.b)))), var_2.a.b.d.x, var_2.a.a.x & max(5426u, abs(countOneBits(u_input.b))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(1i << (_wgslsmith_dot_vec2_u32(var_0.d.d.zy, ~var_2.a.a.xz) % 32u), _wgslsmith_mod_i32(_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-62393i, -23732i, var_1.x, var_2.a.c), var_1), -30241i), -(~20158i)), var_2.d.b.c.x), func_1().b.b.d, ~(~var_2.d.b.d.x));
}

