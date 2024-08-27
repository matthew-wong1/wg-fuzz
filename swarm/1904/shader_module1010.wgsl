struct Struct_1 {
    a: bool,
    b: i32,
    c: vec2<f32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec4<i32>,
    d: vec2<bool>,
    e: bool,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_1,
    c: bool,
}

struct Struct_5 {
    a: Struct_2,
    b: vec2<bool>,
    c: Struct_3,
    d: f32,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: vec2<u32>,
    e: vec2<u32>,
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

var<private> global0: Struct_5 = Struct_5(Struct_2(false, Struct_1(true, 4608i, vec2<f32>(1000f, 574f)), vec4<i32>(-9028i, 87653i, -1i, 1i), vec2<bool>(false, true), true), vec2<bool>(true, true), Struct_3(1u), 196f, 272f);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_1(arg_0: u32, arg_1: Struct_1) -> vec3<bool> {
    return !select(!(!vec3<bool>(global0.a.e, arg_1.a, arg_1.a)), vec3<bool>(false, true, !(global0.a.e == false)), true);
}

fn func_3(arg_0: vec3<u32>, arg_1: vec3<f32>, arg_2: u32, arg_3: vec4<f32>) -> vec2<bool> {
    global0 = Struct_5(global0.a, vec2<bool>(func_1(u_input.b.x, global0.a.b).x, 0u < _wgslsmith_sub_u32(countOneBits(u_input.e.x), min(arg_2, 4294967295u))), Struct_3(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(global0.c.a, 31087u, global0.c.a, arg_2) << (vec4<u32>(u_input.a, 12963u, 11195u, u_input.d.x) % vec4<u32>(32u)), vec4<u32>(95565u, arg_2, 44969u, 57979u), ~vec4<u32>(global0.c.a, 1u, 1u, global0.c.a)), reverseBits(~vec4<u32>(0u, 22200u, arg_0.x, 105108u)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.x * global0.a.b.c.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-208f + -1000f))) - arg_3.x), global0.a.b.c.x);
    var var_0 = vec4<u32>(~firstTrailingBit(_wgslsmith_clamp_u32(select(arg_2, 19886u, false), 1u, ~arg_2)), ~firstLeadingBit(1u), abs(u_input.a), 4294967295u);
    var var_1 = _wgslsmith_mod_vec3_u32(~var_0.wwy ^ abs(_wgslsmith_mod_vec3_u32(~arg_0, vec3<u32>(u_input.d.x, var_0.x, 0u))), countOneBits(reverseBits(vec3<u32>(0u, arg_0.x, 1u))) << (_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, arg_0.x, firstTrailingBit(0u)), ~vec3<u32>(arg_0.x, var_0.x, 28009u), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_0.x, global0.c.a, arg_0.x), var_0.xyw, var_0.xyx)) % vec3<u32>(32u)));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -636f) * -123f);
    let var_3 = Struct_2(true, Struct_1(global0.b.x, _wgslsmith_dot_vec2_i32(~vec2<i32>(global0.a.c.x, 16577i), min(vec2<i32>(global0.a.b.b, 0i), -global0.a.c.zw)), arg_3.xw), ~vec4<i32>(global0.a.b.b, _wgslsmith_add_i32(max(global0.a.b.b, 2147483647i), global0.a.b.b), min(1i, countOneBits(-14080i)), -global0.a.c.x), !global0.b, !all(select(select(vec4<bool>(false, global0.a.d.x, global0.b.x, global0.a.d.x), vec4<bool>(global0.b.x, false, false, global0.b.x), vec4<bool>(true, global0.b.x, true, false)), !vec4<bool>(false, global0.b.x, false, false), vec4<bool>(global0.b.x, global0.a.e, global0.b.x, true))));
    return vec2<bool>(false, false);
}

fn func_2(arg_0: vec3<bool>, arg_1: i32, arg_2: vec2<bool>, arg_3: Struct_3) -> Struct_5 {
    global0 = Struct_5(global0.a, func_3(~vec3<u32>(~1u, 29405u, global0.c.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1545f, 280f, global0.e)), vec3<f32>(2483f, global0.d, -544f))), 40450u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-396f, -350f, -579f, global0.a.b.c.x))) * vec4<f32>(global0.e, _wgslsmith_f_op_f32(-global0.d), _wgslsmith_div_f32(667f, 1000f), _wgslsmith_f_op_f32(-global0.a.b.c.x)))), arg_3, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -324f)), _wgslsmith_f_op_f32(639f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-109f, -508f, false))) - 160f)));
    var var_0 = firstTrailingBit(~arg_3.a);
    var var_1 = 53351u;
    let var_2 = !vec3<bool>(!(u_input.a != arg_3.a), false, true);
    var_1 = 4294967295u;
    return Struct_5(Struct_2(false, global0.a.b, abs(_wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(global0.a.c, vec4<i32>(-24857i, 0i, 1i, 0i), vec4<i32>(arg_1, 1i, 1i, global0.a.c.x)), max(global0.a.c, global0.a.c))), vec2<bool>(false, all(vec3<bool>(false, true, true))), true), func_1(_wgslsmith_div_u32(_wgslsmith_mult_u32(global0.c.a, global0.c.a & 49887u), countOneBits(arg_3.a) << (arg_3.a % 32u)), Struct_1(false | !arg_2.x, firstLeadingBit(-2147483647i), global0.a.b.c)).yx, Struct_3(~_wgslsmith_mult_u32(u_input.c, 4294967295u)), -1517f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.a.b.c.x, _wgslsmith_f_op_f32(exp2(global0.e))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_2(select(select(vec3<bool>(true, true, true), !vec3<bool>(true, false, global0.b.x), vec3<bool>(global0.a.e, global0.a.b.a, global0.a.e)), !(!func_1(34349u, global0.a.b)), true & (4029i >= (global0.a.b.b & 0i))), 24388i >> (_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(abs(u_input.d), reverseBits(vec2<u32>(global0.c.a, 0u))), select(vec2<u32>(global0.c.a, global0.c.a) & u_input.b, max(u_input.e, vec2<u32>(global0.c.a, 0u)), true)) % 32u), !func_1(39794u, Struct_1(global0.a.b.a, global0.a.b.b, _wgslsmith_f_op_vec2_f32(-vec2<f32>(609f, 787f)))).xz, Struct_3(6525u));
    global0 = Struct_5(Struct_2(true, func_2(!select(vec3<bool>(global0.b.x, global0.b.x, true), vec3<bool>(global0.a.b.a, global0.a.b.a, global0.a.b.a), vec3<bool>(true, true, global0.b.x)), abs(global0.a.c.x) >> (0u % 32u), global0.a.d, global0.c).a.b, ~_wgslsmith_mod_vec4_i32(vec4<i32>(global0.a.b.b, global0.a.b.b, global0.a.b.b, 1i), _wgslsmith_mod_vec4_i32(global0.a.c, global0.a.c)), !global0.b, ~select(global0.c.a, 8849u, true) >= ~34911u), global0.a.d, func_2(select(select(vec3<bool>(false, true, global0.b.x), !vec3<bool>(true, global0.b.x, true), select(vec3<bool>(global0.b.x, global0.a.e, global0.b.x), vec3<bool>(false, true, global0.a.b.a), vec3<bool>(global0.b.x, global0.b.x, true))), !select(vec3<bool>(false, false, true), vec3<bool>(global0.b.x, false, false), true), _wgslsmith_f_op_f32(-2557f - global0.a.b.c.x) >= -241f), global0.a.b.b, vec2<bool>(global0.a.b.a, !func_2(vec3<bool>(true, true, global0.a.e), global0.a.c.x, global0.b, global0.c).a.e), Struct_3(0u)).c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -124f) + -1550f)), 2021f), 724f);
    let var_0 = !vec4<bool>(true & (select(global0.a.b.b, -2147483647i, global0.a.d.x) == _wgslsmith_clamp_i32(global0.a.b.b, 0i, global0.a.c.x)), true, !func_3(~vec3<u32>(0u, global0.c.a, 4294967295u), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1642f, global0.d, 1183f))), 1u, _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global0.d, 851f, 808f, -620f)))).x, global0.b.x);
    let var_1 = ~_wgslsmith_mod_u32(0u, func_2(var_0.wwz, _wgslsmith_dot_vec2_i32(global0.a.c.yz, vec2<i32>(2147483647i, global0.a.b.b)), func_1(u_input.b.x, global0.a.b).yy, Struct_3(4294967295u)).c.a >> (1u % 32u));
    global0 = func_2(var_0.zwz, -func_2(func_1(~0u, global0.a.b), func_2(!var_0.zww, _wgslsmith_mult_i32(global0.a.b.b, -33315i), !global0.a.d, func_2(vec3<bool>(global0.a.d.x, true, var_0.x), global0.a.c.x, vec2<bool>(true, true), global0.c).c).a.b.b, global0.a.d, func_2(vec3<bool>(false, global0.b.x, var_0.x), global0.a.c.x, select(vec2<bool>(global0.a.b.a, var_0.x), global0.b, false), global0.c).c).a.c.x, func_3(countOneBits(~(~vec3<u32>(global0.c.a, global0.c.a, 7548u))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1598f, 598f, -1773f)))))), _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, u_input.e.x, u_input.d.x), vec3<u32>(global0.c.a, 16967u, 0u)) | vec3<u32>(u_input.e.x, 0u, 1u), select(vec3<u32>(46694u, 32851u, 49961u), vec3<u32>(22850u, 1u, var_1), var_0.xww) << (_wgslsmith_mult_vec3_u32(vec3<u32>(1u, 0u, 4294967295u), vec3<u32>(4294967295u, 83071u, u_input.e.x)) % vec3<u32>(32u))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-331f, _wgslsmith_f_op_f32(trunc(309f)), 1000f, _wgslsmith_f_op_f32(exp2(global0.d))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) + vec4<f32>(global0.e, global0.d, 867f, global0.d)))), Struct_3(15591u));
    var var_2 = _wgslsmith_sub_vec4_u32(~vec4<u32>(global0.c.a, ~32614u & ~u_input.a, var_1 ^ ~global0.c.a, firstLeadingBit(~var_1)), vec4<u32>(4294967295u, _wgslsmith_div_u32(reverseBits(u_input.c), select(1u, u_input.d.x, var_0.x)), u_input.a, _wgslsmith_dot_vec4_u32(select(vec4<u32>(var_1, 1u, 0u, u_input.b.x), vec4<u32>(0u, global0.c.a, global0.c.a, 4294967295u), false), ~vec4<u32>(46312u, global0.c.a, global0.c.a, global0.c.a))) & ~countOneBits(vec4<u32>(global0.c.a, 20006u, 4294967295u, global0.c.a)));
    let var_3 = func_2(func_1(42427u, func_2(!(!var_0.yzx), -2147483647i, vec2<bool>(global0.b.x, true), Struct_3(var_2.x)).a.b), global0.a.b.b, global0.b, Struct_3(1u)).c;
    var var_4 = u_input.c;
    var var_5 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(4294967295u, _wgslsmith_dot_vec4_u32(min(vec4<u32>(0u, global0.c.a, var_3.a, global0.c.a), vec4<u32>(var_2.x, 56648u, global0.c.a, 1u)), vec4<u32>(1u, var_1, 1u, u_input.b.x)), var_2.x, global0.c.a) & ~(select(vec4<u32>(global0.c.a, 0u, 3407u, var_2.x), vec4<u32>(var_1, global0.c.a, 1u, var_2.x), true) ^ ~vec4<u32>(4294967295u, 14350u, 14359u, 84231u)));
}

