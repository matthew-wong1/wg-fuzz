struct Struct_1 {
    a: f32,
    b: bool,
    c: i32,
    d: vec4<bool>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<i32>,
    c: u32,
    d: vec3<u32>,
    e: vec2<u32>,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec3<u32>,
    d: vec3<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(45704i, -1i, -74903i, -2646i);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: vec4<i32>) -> bool {
    var var_0 = !select(select(vec4<bool>(global0.x >= u_input.a.x, any(arg_1.d.wwx), false, arg_1.b), select(arg_1.d, vec4<bool>(false, false, arg_1.b, false), false), arg_1.b), !select(arg_1.d, arg_1.d, false), arg_1.d.x);
    var_0 = !select(!vec4<bool>(arg_1.b, !var_0.x, true, true), select(!(!arg_1.d), !(!arg_1.d), arg_1.d.x), arg_1.d);
    let var_1 = !vec2<bool>(var_0.x, !arg_1.d.x);
    var var_2 = _wgslsmith_sub_vec3_i32(vec3<i32>(1i, _wgslsmith_add_i32(-arg_1.c, -arg_1.e), ~_wgslsmith_add_i32(countOneBits(57089i), _wgslsmith_add_i32(-38819i, 1i))), select(vec3<i32>(_wgslsmith_div_i32(i32(-1i) * -2147483647i, arg_1.c >> (1u % 32u)), -13912i, _wgslsmith_sub_i32(select(arg_1.c, 22454i, false), _wgslsmith_sub_i32(arg_2.x, 27228i))), _wgslsmith_mod_vec3_i32(global0.yzw, select(vec3<i32>(global0.x, arg_1.c, arg_1.c), vec3<i32>(arg_1.c, arg_2.x, 1764i), !vec3<bool>(false, arg_1.d.x, arg_1.d.x))), var_1.x));
    var var_3 = select(select(select(arg_1.d, arg_1.d, select(vec4<bool>(true, var_1.x, arg_1.d.x, false), !arg_1.d, var_0.x)), arg_1.d, arg_1.d), !arg_1.d, !vec4<bool>(var_0.x, -2147483647i >= min(-2147483647i, arg_2.x), !var_0.x, false));
    return any(var_3.xw) || arg_1.b;
}

fn func_2(arg_0: f32, arg_1: vec3<i32>) -> Struct_4 {
    let var_0 = Struct_1(1661f, true, u_input.a.x, select(vec4<bool>(false, true, true, true), vec4<bool>(true, true & all(vec3<bool>(false, false, false)), true, all(vec3<bool>(false, true, true))), select(vec4<bool>(any(vec3<bool>(false, true, true)), false, all(vec2<bool>(false, true)), true), vec4<bool>(true, true, true, true), !func_3(vec4<f32>(2075f, arg_0, -1360f, arg_0), Struct_1(1418f, true, arg_1.x, vec4<bool>(true, true, true, false), -2147483647i), vec4<i32>(-1i, u_input.b.x, 1i, arg_1.x)))), 1i);
    global0 = u_input.a;
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(trunc(arg_0)), _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(-248f)), arg_0, func_3(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.a, arg_0, var_0.a, 1730f))), var_0, u_input.a | u_input.a))) + var_0.a));
    var var_2 = any(vec4<bool>(true, false, var_0.b, _wgslsmith_mod_i32(29087i, u_input.b.x) >= firstLeadingBit(2147483647i))) | false;
    var var_3 = _wgslsmith_add_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(select(4294967295u, ~4294967295u, true), 81560u, _wgslsmith_mod_u32(max(1u, 34774u), 1u), _wgslsmith_mult_u32(1u, ~0u))) & vec4<u32>(1u, select(1u << (select(1u, 0u, true) % 32u), _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 37759u), vec2<u32>(14261u, 37896u)), 54714u), var_0.b), 47797u, ~0u);
    return Struct_4(Struct_1(_wgslsmith_f_op_f32(var_1.x + _wgslsmith_div_f32(var_0.a, 702f)), any(select(select(var_0.d.yyz, var_0.d.wwy, var_0.d.wwx), select(vec3<bool>(var_0.b, true, var_0.d.x), vec3<bool>(false, false, var_0.b), vec3<bool>(var_0.b, var_0.d.x, var_0.d.x)), !var_0.d.zww)), arg_1.x, var_0.d, _wgslsmith_add_i32(2147483647i, firstTrailingBit(-1i))), -select(~select(vec3<i32>(var_0.e, global0.x, var_0.c), u_input.a.yyw, true), (vec3<i32>(2147483647i, -102879i, -1i) >> (vec3<u32>(var_3.x, 0u, 25299u) % vec3<u32>(32u))) | arg_1, !var_0.d.zyy), ~12982u, ((~var_3.wxy | vec3<u32>(55996u, var_3.x, 45884u)) | ~(~vec3<u32>(var_3.x, var_3.x, var_3.x))) >> (_wgslsmith_add_vec3_u32(firstTrailingBit(_wgslsmith_add_vec3_u32(vec3<u32>(var_3.x, var_3.x, 64858u), vec3<u32>(4294967295u, 4294967295u, var_3.x))), ~var_3.zxw) % vec3<u32>(32u)), var_3.xw);
}

fn func_1(arg_0: f32, arg_1: Struct_3) -> Struct_2 {
    var var_0 = func_2(_wgslsmith_f_op_f32(964f + _wgslsmith_f_op_f32(187f * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(arg_0)))))), reverseBits(_wgslsmith_mod_vec3_i32(u_input.a.ywx, u_input.a.wyx ^ global0.wyx) >> (vec3<u32>(1u, 1u, _wgslsmith_clamp_u32(0u, 51709u, 0u)) % vec3<u32>(32u))));
    let var_1 = func_2(var_0.a.a, u_input.a.zwz).a;
    let var_2 = vec2<bool>(!arg_1.b.x, arg_1.a.b);
    var var_3 = var_0.d;
    var var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(937f, 914f, _wgslsmith_f_op_f32(exp2(var_1.a)), -498f) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1209f, var_0.a.a, 623f, -617f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a, 202f, var_0.a.a, 1476f) - vec4<f32>(arg_0, -1184f, -1036f, -1216f)))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1578f, _wgslsmith_div_f32(1000f, arg_0), _wgslsmith_f_op_f32(abs(898f)), 287f)))));
    return Struct_2(func_2(_wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(min(1649f, _wgslsmith_f_op_f32(arg_1.a.a * arg_1.a.a)))), vec3<i32>(~(-1i), -_wgslsmith_dot_vec2_i32(vec2<i32>(var_1.e, var_0.b.x), global0.wz), 1i)).a, Struct_1(-840f, true, arg_1.a.c, vec4<bool>(arg_1.a.b, false, func_3(_wgslsmith_div_vec4_f32(vec4<f32>(583f, arg_0, 2444f, var_1.a), vec4<f32>(arg_1.a.a, 1000f, 1739f, var_4.x)), func_2(-126f, vec3<i32>(global0.x, var_0.b.x, -31936i)).a, ~vec4<i32>(var_1.c, var_1.e, 1i, 1i)), var_2.x), _wgslsmith_dot_vec4_i32(u_input.a, abs(u_input.a) >> (~vec4<u32>(50337u, 18829u, 4294967295u, 1u) % vec4<u32>(32u)))));
}

fn func_4(arg_0: Struct_2) -> i32 {
    let var_0 = vec2<u32>(firstTrailingBit(~select(func_2(610f, u_input.c).d.x, abs(16615u), all(vec3<bool>(false, true, false)))), _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), ~max(vec2<u32>(1u, 1u), vec2<u32>(0u, 4294967295u))), 47785u));
    global0 = reverseBits(_wgslsmith_clamp_vec4_i32(vec4<i32>(~reverseBits(-17414i), 0i, arg_0.a.c, func_2(-209f, u_input.c).a.e), u_input.a, vec4<i32>(~_wgslsmith_mult_i32(global0.x, 11020i), ~_wgslsmith_mod_i32(-422i, global0.x), ~u_input.a.x, 0i)));
    let var_1 = Struct_5(func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -390f) * 1451f)), -select(vec3<i32>(2147483647i, arg_0.a.c, global0.x) << (vec3<u32>(0u, 10159u, var_0.x) % vec3<u32>(32u)), _wgslsmith_div_vec3_i32(vec3<i32>(-7153i, u_input.c.x, 19003i), global0.zwz), arg_0.a.d.zwz)));
    var var_2 = Struct_5(var_1.a);
    var var_3 = true;
    return -2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1610f + 828f), _wgslsmith_f_op_f32(1018f + 738f))), firstLeadingBit(min(global0.x, -15482i)) >= 27952i, ~7677i, vec4<bool>(true, true, true, all(vec3<bool>(true, true, true))), -83785i), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(-694f)))) - 1f), true, ~1i, vec4<bool>(any(vec2<bool>(true, true)), all(vec2<bool>(false, false)), any(vec3<bool>(true, true, true)), true), func_4(func_1(_wgslsmith_f_op_f32(min(160f, -1135f)), Struct_3(Struct_1(-1651f, false, -1i, vec4<bool>(true, true, false, false), global0.x), vec2<bool>(true, true))))));
    var var_1 = vec2<bool>(var_0.a.a != _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.a)), 1186f), !(!func_1(-424f, Struct_3(Struct_1(227f, var_0.a.d.x, global0.x, vec4<bool>(true, var_0.a.b, var_0.a.b, true), -42427i), var_0.a.d.zw)).a.d.x) | (var_0.a.e <= (_wgslsmith_mod_i32(u_input.b.x, var_0.a.e) << (1u % 32u))));
    var var_2 = firstLeadingBit(select(~min(abs(vec4<u32>(4294967295u, 51111u, 1u, 6731u)), min(vec4<u32>(1u, 9802u, 0u, 1u), vec4<u32>(1u, 1u, 70268u, 0u))), vec4<u32>(1u, 1u, 1u, 1u), var_1.x));
    global0 = max(u_input.a, -_wgslsmith_sub_vec4_i32(abs(~vec4<i32>(var_0.b.e, u_input.c.x, 54765i, global0.x)), -vec4<i32>(var_0.b.e, global0.x, u_input.b.x, -55569i) << (firstLeadingBit(vec4<u32>(58119u, 30170u, var_2.x, 10013u)) % vec4<u32>(32u))));
    let var_3 = Struct_3(func_1(_wgslsmith_f_op_f32(1018f + _wgslsmith_f_op_f32(ceil(var_0.a.a))), Struct_3(func_2(func_1(442f, Struct_3(var_0.a, var_0.b.d.yz)).a.a, ~global0.wwy).a, vec2<bool>(true, true))).a, var_0.b.d.wx);
    var var_4 = Struct_5(func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(var_0.a.a, global0.yzy).a.a * -1000f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.a.a * -1296f))), _wgslsmith_mod_vec3_i32(vec3<i32>(21337i, 1i, u_input.b.x), vec3<i32>(var_3.a.e, _wgslsmith_div_i32(-8588i, var_0.b.e), -2147483647i))));
    var_1 = var_3.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -534f) * -136f), -1884f))), ~abs(~_wgslsmith_mod_u32(4294967295u, var_4.a.d.x)), var_2.zxw, min(var_4.a.d, var_4.a.d << (min(vec3<u32>(var_2.x, 1u, var_2.x), ~var_2.xyy) % vec3<u32>(32u))), var_3.a.a);
}

