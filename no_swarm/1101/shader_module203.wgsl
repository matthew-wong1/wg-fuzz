struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: vec2<u32>,
    d: bool,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: bool, arg_1: i32, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    return abs(32883u);
}

fn func_2(arg_0: vec4<u32>, arg_1: vec4<u32>) -> Struct_1 {
    let var_0 = Struct_1(!(!(!select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false)))), 1408f, vec2<u32>(u_input.b.x, func_3(u_input.b.x <= arg_0.x, select(u_input.c, u_input.c, false), Struct_1(vec3<bool>(false, true, false), -1000f, arg_0.xz, false, true), Struct_1(vec3<bool>(false, false, true), -673f, vec2<u32>(94181u, u_input.b.x), true, true)) << (~_wgslsmith_div_u32(2192u, 4377u) % 32u)), true, all(vec3<bool>(reverseBits(-2147483647i) != abs(u_input.a), false, false)));
    let var_1 = _wgslsmith_div_i32(u_input.c, u_input.c);
    let var_2 = Struct_1(!(!vec3<bool>(true, true, any(vec3<bool>(true, true, var_0.e)))), var_0.b, ~(~(~reverseBits(vec2<u32>(arg_1.x, 4294967295u)))), _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(1u, arg_0.x, 1u, 31381u)), vec4<u32>(u_input.b.x, var_0.c.x, 0u, 0u)), u_input.b.x) != max(~7890u, _wgslsmith_dot_vec2_u32(max(u_input.b.zz, var_0.c), _wgslsmith_div_vec2_u32(u_input.b.zy, vec2<u32>(0u, 4294967295u)))), all(!(!select(vec3<bool>(false, false, var_0.d), var_0.a, true))));
    var var_3 = var_1 | 0i;
    let var_4 = Struct_1(vec3<bool>(var_0.d, var_2.b < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.b) * _wgslsmith_f_op_f32(abs(1158f))), all(vec3<bool>(true, any(vec4<bool>(true, false, true, var_0.e)), true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(645f)))))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -723f), 456f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b + var_2.b)))), arg_0.wx, any(!var_2.a), any(vec2<bool>(var_0.a.x, true)));
    return var_0;
}

fn func_1(arg_0: vec3<f32>) -> Struct_1 {
    let var_0 = func_2(abs(~_wgslsmith_mod_vec4_u32(~vec4<u32>(120433u, 4294967295u, 41266u, u_input.b.x), vec4<u32>(4294967295u, u_input.b.x, u_input.b.x, u_input.b.x))), vec4<u32>(u_input.b.x, 4294967295u, firstTrailingBit(_wgslsmith_add_u32(max(0u, u_input.b.x), u_input.b.x)), u_input.b.x));
    let var_1 = vec3<bool>(any(var_0.a), var_0.a.x && all(select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, var_0.a.x, var_0.a.x, var_0.d), var_0.d), select(vec4<bool>(var_0.d, var_0.d, var_0.e, true), vec4<bool>(var_0.a.x, true, false, true), var_0.d), select(vec4<bool>(var_0.d, var_0.d, var_0.d, var_0.a.x), vec4<bool>(var_0.d, var_0.d, true, false), false))), false);
    let var_2 = func_2(vec4<u32>(var_0.c.x, (~u_input.b.x << (u_input.b.x % 32u)) >> (var_0.c.x % 32u), var_0.c.x, func_3(select(true, var_0.a.x, var_1.x), firstTrailingBit(u_input.c), Struct_1(vec3<bool>(var_1.x, var_1.x, false), -517f, ~vec2<u32>(var_0.c.x, u_input.b.x), true, u_input.a <= 15659i), var_0)), ~(~(~_wgslsmith_sub_vec4_u32(vec4<u32>(1u, u_input.b.x, 1u, var_0.c.x), vec4<u32>(var_0.c.x, 0u, u_input.b.x, u_input.b.x)))));
    let var_3 = Struct_1(vec3<bool>(false, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(473f, arg_0.x, false)), arg_0.x) != -403f, select(var_1.x, !(!var_1.x), !any(var_1.xy))), arg_0.x, max(~var_2.c, ~vec2<u32>(~0u, 4294967295u)), var_2.e, false);
    let var_4 = func_2(_wgslsmith_div_vec4_u32(vec4<u32>(1u, _wgslsmith_mod_u32(_wgslsmith_clamp_u32(4294967295u, 1u, var_3.c.x), 0u), ~46069u, _wgslsmith_mult_u32(var_2.c.x, _wgslsmith_mod_u32(1u, u_input.b.x))), _wgslsmith_sub_vec4_u32(firstTrailingBit(select(vec4<u32>(51995u, 1u, var_3.c.x, var_2.c.x), vec4<u32>(var_3.c.x, 19629u, var_2.c.x, 1u), true)), ~abs(vec4<u32>(var_3.c.x, 13937u, 1u, var_2.c.x)))), _wgslsmith_add_vec4_u32(select(abs(vec4<u32>(0u, 1u, 0u, var_2.c.x)) << (vec4<u32>(var_3.c.x, 42577u, var_0.c.x, u_input.b.x) % vec4<u32>(32u)), min(vec4<u32>(var_3.c.x, 41821u, 0u, var_2.c.x) ^ vec4<u32>(var_0.c.x, var_2.c.x, var_2.c.x, 49686u), vec4<u32>(u_input.b.x, var_2.c.x, var_3.c.x, var_3.c.x)), !(u_input.a > -2147483647i)), ~(~abs(vec4<u32>(4294967295u, 44259u, 1u, var_3.c.x)))));
    return Struct_1(func_2(vec4<u32>(1u | _wgslsmith_mult_u32(var_0.c.x, var_4.c.x), ~_wgslsmith_div_u32(var_3.c.x, 6540u), var_0.c.x, 3948u), _wgslsmith_div_vec4_u32(~vec4<u32>(4294967295u, var_3.c.x, var_0.c.x, u_input.b.x) << (~vec4<u32>(57724u, var_4.c.x, 17310u, 6154u) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, 30074u, 4294967295u, 0u), vec4<u32>(0u, var_2.c.x, 0u, var_4.c.x)), vec4<u32>(4294967295u, var_0.c.x, 4294967295u, 5636u), _wgslsmith_add_vec4_u32(vec4<u32>(21194u, var_2.c.x, var_4.c.x, var_0.c.x), vec4<u32>(var_4.c.x, var_0.c.x, var_0.c.x, 1555u))))).a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(-1448f, _wgslsmith_f_op_f32(1240f + arg_0.x))))) + _wgslsmith_f_op_f32(sign(-1000f))), vec2<u32>(_wgslsmith_sub_u32(~var_0.c.x, var_4.c.x ^ func_2(vec4<u32>(var_2.c.x, var_3.c.x, var_0.c.x, var_0.c.x), vec4<u32>(35427u, 1u, 4294967295u, 31609u)).c.x), func_2(vec4<u32>(_wgslsmith_div_u32(0u, var_0.c.x), 0u, var_3.c.x & 1u, _wgslsmith_add_u32(var_2.c.x, 1u)), ~(vec4<u32>(7058u, 0u, 60896u, 18126u) ^ vec4<u32>(var_4.c.x, var_3.c.x, var_2.c.x, 55149u))).c.x), var_2.e, true);
}

fn func_4(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: u32) -> Struct_1 {
    var var_0 = func_2(~vec4<u32>(_wgslsmith_mod_u32(4468u << (arg_2.c.x % 32u), u_input.b.x), ~_wgslsmith_sub_u32(arg_3, arg_0.c.x), u_input.b.x, abs(~1u)), vec4<u32>(func_1(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-120f, 1000f, -292f)))).c.x << (51120u % 32u), ~func_2(~vec4<u32>(0u, 21905u, 4294967295u, arg_2.c.x), vec4<u32>(arg_3, arg_0.c.x, arg_3, 0u)).c.x, 27230u, 0u));
    var var_1 = Struct_1(vec3<bool>(~firstTrailingBit(0u) >= abs(func_3(true, 32149i, Struct_1(vec3<bool>(arg_0.a.x, arg_0.a.x, true), arg_1.x, u_input.b.xy, true, false), arg_0)), _wgslsmith_f_op_f32(988f + _wgslsmith_f_op_f32(min(arg_0.b, -264f))) != -1083f, true), _wgslsmith_f_op_f32(-arg_1.x), arg_2.c, var_0.e, arg_0.d);
    return func_2(_wgslsmith_clamp_vec4_u32((countOneBits(vec4<u32>(70498u, u_input.b.x, 0u, var_0.c.x)) << (_wgslsmith_sub_vec4_u32(vec4<u32>(arg_0.c.x, 26929u, 0u, 1u), vec4<u32>(var_1.c.x, 66839u, 4294967295u, 11347u)) % vec4<u32>(32u))) >> (vec4<u32>(reverseBits(var_0.c.x), var_1.c.x, ~var_0.c.x, 4294967295u) % vec4<u32>(32u)), vec4<u32>(arg_0.c.x, 0u, 10837u, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.c.x, 4294967295u, 4294967295u), vec3<u32>(arg_3, 0u, 22534u))) << (max(reverseBits(vec4<u32>(4294967295u, 1072u, 9379u, 6215u)), ~vec4<u32>(32029u, 0u, 0u, 12267u)) % vec4<u32>(32u)), _wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, u_input.b.x, arg_3, 1u), vec4<u32>(1u, 29804u, 73876u, arg_2.c.x)), vec4<u32>(0u, 1u, 1u, arg_2.c.x) | vec4<u32>(1u, 67015u, 0u, arg_0.c.x)), _wgslsmith_mod_vec4_u32(~vec4<u32>(1u, u_input.b.x, arg_3, u_input.b.x), abs(vec4<u32>(1u, 0u, arg_3, var_1.c.x))))), vec4<u32>(~select(var_0.c.x, 53520u, false), arg_3, _wgslsmith_mult_u32(u_input.b.x, 1u), 1u) & ((~vec4<u32>(arg_2.c.x, arg_3, arg_3, arg_2.c.x) ^ (vec4<u32>(var_1.c.x, 4294967295u, arg_3, 4294967295u) ^ vec4<u32>(u_input.b.x, var_0.c.x, 4294967295u, var_1.c.x))) << (vec4<u32>(~69381u, func_1(arg_1.ywz).c.x, 40333u << (1u % 32u), 19381u ^ arg_0.c.x) % vec4<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 4294967295u;
    let var_1 = func_4(func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-662f, 783f, 295f) * vec3<f32>(234f, -1000f, 1002f))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -889f) * -619f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1144f - -1000f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(280f - -217f) * _wgslsmith_f_op_f32(trunc(-160f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(1171f * -1000f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(734f)))), -337f), func_1(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(149f, -1000f, -635f) * vec3<f32>(146f, -1422f, 229f)), vec3<f32>(-906f, -557f, -331f))))), func_1(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1039f, 1000f, -692f), vec3<f32>(-368f, 645f, -1021f), vec3<bool>(false, true, false)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1785f, 380f, 147f))))).c.x);
    let var_2 = -2147483647i;
    let var_3 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(var_1.b, var_1.b)))), var_1.b), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, var_1.b) - vec2<f32>(var_1.b, var_1.b))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -951f), _wgslsmith_f_op_f32(select(var_1.b, -724f, var_1.a.x)))))));
    let var_4 = any(select(var_1.a, var_1.a, func_2(~vec4<u32>(6553u, 4294967295u, u_input.b.x, 103226u) | ~vec4<u32>(var_0, 0u, 4294967295u, u_input.b.x), ~(~vec4<u32>(var_0, var_1.c.x, var_0, var_1.c.x))).a));
    var var_5 = select(vec4<bool>(any(select(var_1.a, !var_1.a, !var_1.a)), true, all(!vec2<bool>(true, var_4)), !(19700u <= u_input.b.x)), select(vec4<bool>(true, true, true, true), select(!(!vec4<bool>(var_4, var_4, var_1.a.x, var_4)), !select(vec4<bool>(true, true, var_1.a.x, var_1.a.x), vec4<bool>(var_1.a.x, var_4, false, var_1.a.x), var_4), vec4<bool>(true, true, true, true)), any(!select(vec4<bool>(false, var_1.e, false, var_4), vec4<bool>(var_1.a.x, false, false, false), vec4<bool>(true, false, var_1.d, false)))), var_1.e);
    var var_6 = u_input.b.yy;
    let var_7 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(firstLeadingBit(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(0i, -2669i, u_input.c, -21286i)), firstLeadingBit(vec4<i32>(u_input.c, u_input.a, -15155i, -2147483647i)))), _wgslsmith_clamp_i32(var_2, _wgslsmith_clamp_i32(-2147483647i, firstLeadingBit(u_input.a), -27156i), -u_input.c)));
}

