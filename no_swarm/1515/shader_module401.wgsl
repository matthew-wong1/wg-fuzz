struct Struct_1 {
    a: vec3<i32>,
    b: i32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: bool,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
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

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> bool {
    let var_0 = _wgslsmith_sub_vec4_u32(~(~vec4<u32>(36458u, u_input.b.x, 1u, u_input.b.x)) | abs(reverseBits(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, u_input.b.x, u_input.b.x, 53715u), vec4<u32>(u_input.b.x, 0u, 0u, u_input.b.x)))), vec4<u32>(4294967295u, ~0u, ~_wgslsmith_mod_u32(_wgslsmith_mod_u32(4294967295u, 1u), _wgslsmith_sub_u32(88458u, 35823u)), 4294967295u));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-782f, -172f, -1300f, 994f) + vec4<f32>(480f, 1281f, 544f, 1084f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1537f, -2191f, 812f, 463f) - vec4<f32>(689f, 982f, -625f, -467f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1908f, 702f, -495f, -965f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-605f, 1316f, -464f, -821f) - vec4<f32>(-1000f, 403f, 470f, 686f))))) - vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(163f, -302f, false))) * 712f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1000f, _wgslsmith_f_op_f32(f32(-1f) * -760f))) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(-800f, 2413f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-2214f)) - 955f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-470f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1045f, -293f)))));
    var var_2 = Struct_1(u_input.a.xxw, u_input.a.x);
    var var_3 = Struct_1(vec3<i32>(17281i, _wgslsmith_mod_i32(~(-var_2.a.x), ~(-49603i) | u_input.c), max(~(u_input.c << (0u % 32u)), abs(_wgslsmith_div_i32(-13465i, u_input.c)))), _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(29713i, u_input.a.x, u_input.a.x), firstLeadingBit(u_input.a.wxw)), -20930i, -2147483647i), -_wgslsmith_mod_vec3_i32(vec3<i32>(0i, var_2.a.x, -18501i), u_input.a.yyw)));
    var var_4 = Struct_2(_wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(-var_1.x)));
    return var_1.x == var_4.a;
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: Struct_2, arg_3: i32) -> vec4<bool> {
    let var_0 = vec3<bool>(_wgslsmith_dot_vec3_u32(~firstTrailingBit(u_input.b), u_input.b) <= firstTrailingBit(57740u), all(!vec4<bool>(any(vec4<bool>(arg_1, arg_1, false, arg_1)), !arg_1, false, arg_1 & false)), !(!arg_1 | (true == func_3())));
    let var_1 = vec2<bool>(arg_1 == all(vec3<bool>(true, var_0.x, select(var_0.x, arg_1, true))), func_3());
    let var_2 = _wgslsmith_div_f32(-860f, arg_2.a);
    var var_3 = Struct_2(_wgslsmith_f_op_f32(min(2337f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_0.a - arg_0.a), _wgslsmith_f_op_f32(round(arg_2.a))))))));
    var_3 = arg_0;
    return select(select(!vec4<bool>(arg_1, select(false, false, var_0.x), !var_1.x, true), vec4<bool>(!var_1.x || arg_1, arg_1, -2147483647i != u_input.c, true), !(!vec4<bool>(var_0.x, var_1.x, false, false))), vec4<bool>(false, any(vec4<bool>(var_0.x & true, arg_1 && true, all(vec4<bool>(arg_1, arg_1, var_1.x, var_0.x)), select(var_1.x, true, var_0.x))), var_1.x, var_0.x), ~5412u != u_input.b.x);
}

fn func_2(arg_0: vec3<u32>, arg_1: i32, arg_2: vec3<f32>) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_2.x))) > 897f;
    let var_1 = select(select(vec4<bool>(var_0, var_0, var_0, var_0), !select(!vec4<bool>(var_0, var_0, var_0, true), !vec4<bool>(false, false, false, var_0), !vec4<bool>(var_0, true, true, false)), !vec4<bool>(true, all(vec2<bool>(var_0, var_0)), all(vec2<bool>(var_0, true)), true)), select(vec4<bool>(true, !any(vec3<bool>(var_0, var_0, var_0)), all(!vec3<bool>(var_0, var_0, true)), any(!vec4<bool>(true, var_0, false, var_0))), select(vec4<bool>(true, arg_2.x >= 1684f, true, any(vec3<bool>(true, var_0, true))), vec4<bool>(var_0, var_0, !var_0, true), !(var_0 == false)), func_4(Struct_2(_wgslsmith_f_op_f32(arg_2.x + arg_2.x)), func_3(), Struct_2(_wgslsmith_f_op_f32(round(670f))), u_input.a.x)), false);
    let var_2 = Struct_2(_wgslsmith_f_op_f32(arg_2.x * 1511f));
    var var_3 = Struct_1(vec3<i32>(u_input.a.x, -(~(arg_1 | u_input.c)), min(-3981i, ~46020i)), _wgslsmith_dot_vec3_i32(u_input.a.zyz << (_wgslsmith_sub_vec3_u32(vec3<u32>(arg_0.x, 30129u, u_input.b.x) & vec3<u32>(1u, arg_0.x, arg_0.x), vec3<u32>(22160u, 1725u, arg_0.x)) % vec3<u32>(32u)), u_input.a.zwx));
    let var_4 = Struct_3(u_input.a, !var_0, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1044f, var_2.a, 1154f, 176f), vec4<f32>(1891f, -236f, 706f, arg_2.x))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a, -228f, 348f, arg_2.x))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.x, 2002f, -1000f, -783f)))) + vec4<f32>(1f, _wgslsmith_f_op_f32(max(var_2.a, arg_2.x)), _wgslsmith_div_f32(var_2.a, -1000f), _wgslsmith_f_op_f32(1000f * var_2.a)))));
    return ~countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.b.x, u_input.b.x, arg_0.x), vec4<u32>(20836u, u_input.b.x, 1u, arg_0.x)) >> (43216u % 32u)) | _wgslsmith_dot_vec4_u32(abs(reverseBits(select(vec4<u32>(0u, u_input.b.x, 0u, u_input.b.x), vec4<u32>(62614u, 1u, arg_0.x, u_input.b.x), vec4<bool>(true, false, true, true)))), select(abs(~vec4<u32>(u_input.b.x, 1u, u_input.b.x, 61689u)), countOneBits(~vec4<u32>(arg_0.x, 0u, 15099u, u_input.b.x)), vec4<bool>(var_1.x, true, !var_4.b, !var_4.b)));
}

fn func_5(arg_0: bool, arg_1: vec4<bool>, arg_2: vec4<i32>, arg_3: vec3<i32>) -> Struct_1 {
    let var_0 = vec3<i32>(max(firstLeadingBit(_wgslsmith_add_i32(u_input.a.x, select(arg_2.x, arg_3.x, false))), -70128i), 20053i, select(_wgslsmith_dot_vec2_i32(arg_2.xz, u_input.a.xx) & _wgslsmith_dot_vec2_i32(~arg_2.wz, select(u_input.a.xx, u_input.a.zy, arg_1.zz)), -10200i, arg_1.x));
    let var_1 = Struct_2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -215f) - _wgslsmith_f_op_f32(min(719f, _wgslsmith_f_op_f32(max(-974f, 481f))))), _wgslsmith_f_op_f32(step(-1005f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-230f))))))));
    let var_2 = -1922f;
    return Struct_1(abs(vec3<i32>(_wgslsmith_dot_vec3_i32(select(vec3<i32>(2147483647i, var_0.x, arg_2.x), u_input.a.zwy, arg_1.x), var_0), var_0.x, arg_2.x)), abs(_wgslsmith_add_i32(_wgslsmith_mod_i32(arg_2.x, -1i << (u_input.b.x % 32u)), i32(-1i) * -arg_2.x)));
}

fn func_1(arg_0: vec2<f32>) -> Struct_1 {
    var var_0 = u_input.b.x;
    var_0 = ~min(~(~8225u | (u_input.b.x | 0u)), abs(u_input.b.x));
    let var_1 = vec2<u32>(~(~0u), u_input.b.x);
    let var_2 = abs(vec3<i32>(u_input.c, -11176i, u_input.c));
    var var_3 = ~u_input.b.zz;
    return func_5((0u < func_2(~vec3<u32>(var_1.x, 53895u, 0u), 2147483647i, _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, arg_0.x, arg_0.x)))) || false, !vec4<bool>(false, any(select(vec2<bool>(true, true), vec2<bool>(false, false), false)), 24891i <= max(2147483647i, var_2.x), false), vec4<i32>(2147483647i, ~var_2.x, 18330i >> ((~37381u | _wgslsmith_sub_u32(var_1.x, 65915u)) % 32u), -51232i), _wgslsmith_div_vec3_i32(~var_2, vec3<i32>(1i, u_input.c, _wgslsmith_sub_i32(u_input.a.x, 1i))));
}

fn func_6(arg_0: f32, arg_1: f32, arg_2: Struct_1, arg_3: Struct_3) -> bool {
    let var_0 = arg_3;
    var var_1 = arg_3;
    var var_2 = Struct_1(~arg_2.a, _wgslsmith_mult_i32(i32(-1i) * -_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, -19639i), vec2<i32>(34345i, 1687i)), _wgslsmith_mod_i32(var_1.a.x, -var_1.a.x)));
    var_2 = Struct_1(-firstLeadingBit(arg_3.a.zxz), _wgslsmith_mod_i32(i32(-1i) * -_wgslsmith_dot_vec2_i32(arg_2.a.yy, vec2<i32>(var_2.b, -2147483647i)), -((arg_2.b & 2147483647i) & abs(var_0.a.x))));
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c.x * -709f)), -183f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 + _wgslsmith_f_op_f32(min(arg_1, _wgslsmith_f_op_f32(step(arg_0, -1290f)))))), arg_0);
    return arg_3.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~u_input.a.wyw;
    let var_1 = select(!(!vec4<bool>(true, true, true, all(vec4<bool>(false, true, true, true)))), !vec4<bool>((u_input.b.x ^ u_input.b.x) > _wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(u_input.b.x, 18333u, 23797u)), true, all(vec2<bool>(false, false)), any(vec2<bool>(false, false))), all(vec4<bool>(true, true, false, _wgslsmith_mult_i32(u_input.a.x, -1i) < (2147483647i ^ u_input.c))));
    let var_2 = ~(-(var_0.x | _wgslsmith_dot_vec3_i32(~u_input.a.xyz, vec3<i32>(u_input.a.x, -15021i, var_0.x))));
    var var_3 = -vec3<i32>(var_0.x, ~_wgslsmith_add_i32(-var_0.x, 39431i ^ var_2), 0i);
    var_3 = _wgslsmith_div_vec3_i32(firstTrailingBit(firstLeadingBit(vec3<i32>(2147483647i << (u_input.b.x % 32u), _wgslsmith_mult_i32(u_input.c, var_2), var_0.x))), reverseBits(~u_input.a.yww));
    var_3 = ~select(u_input.a.xwy, u_input.a.ywz, func_6(495f, _wgslsmith_f_op_f32(ceil(-699f)), func_1(vec2<f32>(1263f, -369f)), Struct_3(vec4<i32>(0i, 14430i, -1i, var_3.x), false, vec4<f32>(886f, 255f, 1364f, 1682f)))) & (reverseBits(~(vec3<i32>(u_input.c, var_3.x, -20650i) ^ vec3<i32>(var_2, var_2, var_0.x))) ^ ~vec3<i32>(10267i, reverseBits(u_input.c), var_3.x));
    let var_4 = Struct_1(~(-vec3<i32>(var_3.x, var_2, var_3.x) >> ((vec3<u32>(1u, 14481u, 11245u) << (vec3<u32>(u_input.b.x, u_input.b.x, 6913u) % vec3<u32>(32u))) % vec3<u32>(32u))) << (u_input.b % vec3<u32>(32u)), 17356i ^ select(var_0.x, -2147483647i, ~57245u >= (u_input.b.x << (28712u % 32u))));
    var_3 = vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_add_i32(~(~0i), _wgslsmith_dot_vec3_i32(~var_4.a, firstLeadingBit(u_input.a.wyz))), -2147483647i), -39373i, _wgslsmith_clamp_i32(reverseBits(-1i), firstLeadingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, var_4.b, 26818i, var_2), vec4<i32>(var_3.x, var_0.x, var_2, var_0.x)) ^ _wgslsmith_dot_vec4_i32(vec4<i32>(-2463i, -6390i, 9876i, var_0.x), u_input.a)), ~u_input.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_u32(u_input.b.xy, firstTrailingBit(vec2<u32>(u_input.b.x, 25157u))), _wgslsmith_div_vec4_f32(vec4<f32>(-300f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(250f, -632f)) * _wgslsmith_div_f32(-206f, 495f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-399f * 760f) + 1079f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1341f * -1540f))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-409f, 994f, -931f, 1065f), vec4<f32>(202f, 890f, -1070f, 825f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(239f, -837f, 2476f, -1354f) - vec4<f32>(-1301f, 898f, 1811f, -470f)))))), vec3<f32>(-283f, _wgslsmith_f_op_f32(min(1000f, _wgslsmith_div_f32(518f, _wgslsmith_f_op_f32(-396f + 177f)))), -299f));
}

