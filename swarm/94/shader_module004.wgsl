struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: vec4<u32>,
    d: vec2<bool>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: i32,
    d: vec2<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: vec4<i32>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_3,
    c: Struct_1,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<i32>,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> bool {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -3040f), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-1226f, _wgslsmith_f_op_f32(f32(-1f) * -316f))), -1247f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(175f)) - _wgslsmith_f_op_f32(1537f - -1941f)) + -1145f)), 1765f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1511f, _wgslsmith_f_op_f32(f32(-1f) * -169f))) * -1000f) - _wgslsmith_f_op_f32(round(1f))));
    var var_1 = all(vec4<bool>(!any(vec3<bool>(false, false, false)) != true, false, select(-1i, ~(-2147483647i), false) < _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(-67i, -38150i), vec2<i32>(-43159i, -48196i)), vec2<i32>(-83062i, 0i)), all(vec2<bool>(false, true)) | true));
    var var_2 = 1u;
    let var_3 = Struct_1(~vec3<i32>(abs(i32(-1i) * -51519i), 1i, 1i), var_0.x, vec4<u32>(u_input.a, ~abs(1u), u_input.a, firstTrailingBit(~u_input.a) >> (~reverseBits(4553u) % 32u)), !vec2<bool>(false, _wgslsmith_add_u32(u_input.a, u_input.a) <= _wgslsmith_mod_u32(50314u, 13504u)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1033f), -904f)) != _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * var_0.x)), 303f));
    var var_4 = _wgslsmith_clamp_u32(~u_input.a, 4294967295u, (1u | u_input.a) << (u_input.a % 32u));
    return ((~firstTrailingBit(27721u) | u_input.a) >> (_wgslsmith_add_u32(~var_3.c.x | ~u_input.a, _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(58222u, u_input.a), vec2<u32>(4294967295u, var_3.c.x)), ~4799u)) % 32u)) < u_input.a;
}

fn func_4(arg_0: Struct_3) -> bool {
    var var_0 = arg_0.b.b;
    let var_1 = countOneBits(-1i);
    let var_2 = abs(arg_0.b.a);
    var var_3 = _wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(arg_0.c, ~(~vec4<i32>(var_2.x, arg_0.b.a.x, -2147483647i, var_1))), select(_wgslsmith_mult_vec4_i32(arg_0.c, arg_0.c), arg_0.c, select(vec4<bool>(true, true, !arg_0.b.d.x, arg_0.b.b != 2629f), select(select(vec4<bool>(arg_0.a, arg_0.a, true, arg_0.a), vec4<bool>(arg_0.b.d.x, arg_0.a, true, arg_0.b.e), arg_0.a), vec4<bool>(arg_0.b.e, true, arg_0.b.d.x, arg_0.b.e), !arg_0.a), false)));
    var_3 = reverseBits(abs(~vec4<i32>(-var_3.x, _wgslsmith_mult_i32(var_1, 1i), 2147483647i, -var_2.x)));
    return -var_3.x > 1414i;
}

fn func_2(arg_0: vec4<u32>) -> Struct_1 {
    var var_0 = vec4<bool>(true, _wgslsmith_dot_vec2_u32(countOneBits(_wgslsmith_sub_vec2_u32(vec2<u32>(22553u, arg_0.x), arg_0.xz)), countOneBits(~vec2<u32>(arg_0.x, u_input.a))) == firstTrailingBit(abs(u_input.a >> (0u % 32u))), func_4(Struct_3(true, Struct_1(vec3<i32>(2147483647i, -30080i, 1i), _wgslsmith_f_op_f32(-1000f + 1235f), ~arg_0, vec2<bool>(true, false), func_3()), vec4<i32>(2147483647i, firstLeadingBit(16117i), 57638i, -2147483647i))), true);
    var_0 = select(!(!select(select(vec4<bool>(true, true, var_0.x, false), vec4<bool>(false, true, var_0.x, var_0.x), false), select(vec4<bool>(var_0.x, true, false, true), vec4<bool>(var_0.x, true, false, var_0.x), vec4<bool>(var_0.x, true, var_0.x, false)), true)), select(!(!(!vec4<bool>(false, true, var_0.x, var_0.x))), select(vec4<bool>(var_0.x, false, false, arg_0.x < arg_0.x), !vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(true, func_4(Struct_3(var_0.x, Struct_1(vec3<i32>(0i, 44724i, 5591i), -1081f, vec4<u32>(arg_0.x, 18987u, arg_0.x, u_input.a), var_0.zz, false), vec4<i32>(26627i, 2147483647i, 44154i, -27356i))), var_0.x, true)), any(select(!vec4<bool>(var_0.x, var_0.x, var_0.x, false), vec4<bool>(false, true, false, false), select(vec4<bool>(false, false, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, true), vec4<bool>(false, false, var_0.x, var_0.x))))), vec4<bool>(func_4(Struct_3(true, Struct_1(vec3<i32>(2147483647i, -33483i, -1i), -1837f, arg_0, var_0.xy, var_0.x), -vec4<i32>(23465i, 57098i, -25646i, -1i))), (arg_0.x >> (_wgslsmith_dot_vec2_u32(arg_0.zw, arg_0.yz) % 32u)) < _wgslsmith_clamp_u32(abs(47712u), 1u, 14119u), true, false));
    let var_1 = -43774i;
    var var_2 = reverseBits(vec2<u32>(~21798u, 70236u));
    var_2 = min(select(countOneBits(arg_0.yz), arg_0.wz, true), arg_0.wz);
    return Struct_1(min(min(vec3<i32>(-var_1, firstTrailingBit(var_1), 31736i), max(~vec3<i32>(-2147483647i, -9458i, var_1), vec3<i32>(-19019i, 11212i, 0i))), -(-vec3<i32>(28519i, var_1, var_1) | abs(vec3<i32>(-17851i, var_1, var_1)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * 1056f) - 1923f)) - -268f), vec4<u32>(firstTrailingBit(~(~u_input.a)), ~(~(~67804u)), ~abs(1u), abs(var_2.x)), vec2<bool>(var_0.x, true), all(var_0.xx));
}

fn func_5(arg_0: vec2<i32>, arg_1: Struct_1) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(299f, _wgslsmith_f_op_f32(-arg_1.b))), 549f))));
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    let var_2 = arg_1;
    var var_3 = Struct_4(countOneBits(vec4<u32>(arg_1.c.x, select(4294967295u, u_input.a, false), 0u, u_input.a)) | vec4<u32>(~13868u, max(arg_1.c.x ^ 0u, arg_1.c.x), abs(u_input.a) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, 50334u, 27864u), arg_1.c) % 32u), ~_wgslsmith_dot_vec2_u32(arg_1.c.yz, vec2<u32>(70068u, var_2.c.x))), Struct_3(var_2.e, var_2, abs(-vec4<i32>(-41562i, arg_1.a.x, 2147483647i, 3629i))), Struct_1(vec3<i32>(abs(~arg_1.a.x), select(reverseBits(arg_1.a.x), countOneBits(arg_0.x), true), arg_0.x), arg_1.b, vec4<u32>(0u, 14091u, abs(arg_1.c.x), 20219u >> (u_input.a % 32u)), select(func_2(arg_1.c << (vec4<u32>(1u, u_input.a, 69657u, 13287u) % vec4<u32>(32u))).d, var_2.d, true | arg_1.e), true), ~(vec3<u32>(arg_1.c.x, 2819u, ~2628u) >> (vec3<u32>(arg_1.c.x, ~4294967295u, reverseBits(0u)) % vec3<u32>(32u))));
    let var_4 = Struct_4(countOneBits(max(~vec4<u32>(u_input.a, u_input.a, arg_1.c.x, var_2.c.x) >> (~arg_1.c % vec4<u32>(32u)), var_2.c)), var_3.b, func_2(firstLeadingBit(~arg_1.c)), firstTrailingBit(var_3.a.xzx));
    return vec3<bool>(false, any(select(!(!vec3<bool>(true, var_3.b.b.d.x, var_3.c.e)), select(!vec3<bool>(var_4.c.e, false, false), select(vec3<bool>(false, var_2.e, false), vec3<bool>(var_2.e, false, var_2.d.x), vec3<bool>(var_3.b.b.e, true, false)), false), !vec3<bool>(true, true, var_3.c.e))), var_4.c.d.x);
}

fn func_1(arg_0: Struct_4, arg_1: vec3<i32>) -> u32 {
    let var_0 = ~_wgslsmith_mod_u32(_wgslsmith_mod_u32(select(14495u, u_input.a, arg_0.c.e), u_input.a) >> (u_input.a % 32u), ~(~(~arg_0.c.c.x)));
    let var_1 = select(!(!func_5(_wgslsmith_mod_vec2_i32(arg_0.b.b.a.xx, vec2<i32>(33444i, -1i)), func_2(vec4<u32>(33031u, 468u, 14087u, var_0)))), vec3<bool>(all(select(!arg_0.c.d, func_5(arg_1.yz, Struct_1(arg_1, arg_0.c.b, vec4<u32>(u_input.a, arg_0.a.x, arg_0.b.b.c.x, 4294967295u), arg_0.b.b.d, true)).xx, arg_0.c.e)), _wgslsmith_add_u32(~16177u, _wgslsmith_div_u32(2103u, 100894u)) < arg_0.a.x, func_5(arg_0.c.a.zy, func_2(arg_0.c.c >> (vec4<u32>(44240u, var_0, var_0, var_0) % vec4<u32>(32u)))).x), false);
    return 3103u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(Struct_1((vec3<i32>(1i, 1i, 1i) << (~vec3<u32>(99703u, u_input.a, u_input.a) % vec3<u32>(32u))) << (~vec3<u32>(u_input.a, 1u, u_input.a) % vec3<u32>(32u)), _wgslsmith_f_op_f32(ceil(239f)), vec4<u32>(12657u, u_input.a, _wgslsmith_div_u32(firstTrailingBit(1u), 102147u), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a) | vec2<u32>(u_input.a, 12689u), ~vec2<u32>(35240u, u_input.a))), vec2<bool>(true, true), !(!any(vec4<bool>(true, true, false, false)))), select(~vec4<u32>(~u_input.a, 54343u, 0u, select(1u, u_input.a, true)), vec4<u32>(1u, ~28901u, func_1(Struct_4(vec4<u32>(u_input.a, 49340u, 77341u, u_input.a), Struct_3(true, Struct_1(vec3<i32>(2147483647i, 28840i, -77964i), -611f, vec4<u32>(u_input.a, 46460u, u_input.a, u_input.a), vec2<bool>(true, false), true), vec4<i32>(-16910i, -2147483647i, 1i, 0i)), Struct_1(vec3<i32>(-12610i, 1i, -29467i), 914f, vec4<u32>(u_input.a, 1u, 0u, 4294967295u), vec2<bool>(false, false), false), vec3<u32>(1u, u_input.a, u_input.a)), vec3<i32>(1i, 1i, 1i)), _wgslsmith_div_u32(4294967295u, u_input.a)) | ~_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 4294967295u, u_input.a, 34838u), vec4<u32>(14911u, u_input.a, u_input.a, 28972u), vec4<u32>(1u, 1u, u_input.a, 4294967295u)), !(~u_input.a <= _wgslsmith_mult_u32(4294967295u, u_input.a))), 1i, select(vec2<bool>(false, !all(vec3<bool>(true, true, true))), !vec2<bool>(all(vec3<bool>(true, true, true)), true), !vec2<bool>(true, all(vec4<bool>(true, false, true, true)))), func_2(vec4<u32>(0u, max(u_input.a, u_input.a), 81416u, ~(~u_input.a))));
    let var_1 = ~reverseBits(26135i);
    let var_2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.e.b), -1040f)))))));
    var var_3 = var_0.a.b;
    var var_4 = Struct_2(var_0.e, max(vec4<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.e.c.x, 1u, u_input.a), var_0.b.zxw), 8042u, var_0.b.x, ~(~u_input.a)), _wgslsmith_mult_vec4_u32(vec4<u32>(~1u, max(1u, u_input.a), 8871u, ~var_0.a.c.x), select(abs(vec4<u32>(34054u, u_input.a, u_input.a, 0u)), var_0.a.c, select(vec4<bool>(false, var_0.e.d.x, false, var_0.d.x), vec4<bool>(var_0.e.d.x, true, true, var_0.e.d.x), true)))), var_0.c, vec2<bool>(func_3(), var_0.e.d.x), func_2(vec4<u32>(firstLeadingBit(firstLeadingBit(var_0.b.x)), ~u_input.a, firstTrailingBit(37562u) ^ (2541u | var_0.e.c.x), max(u_input.a, select(30875u, 1u, var_0.d.x)))));
    var_3 = var_2;
    let var_5 = select(!(!select(vec2<bool>(false, var_4.d.x), vec2<bool>(var_0.a.e, false), func_5(vec2<i32>(0i, var_0.a.a.x), var_4.a).zx)), var_4.a.d, !(-56627i >= abs(var_1)));
    var var_6 = Struct_3(!(22809u > u_input.a), func_2(var_0.b), ~(~_wgslsmith_mod_vec4_i32(countOneBits(vec4<i32>(var_4.c, var_0.a.a.x, var_0.c, var_1)), firstLeadingBit(vec4<i32>(53254i, var_1, 51060i, 0i)))));
    var var_7 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_2 * var_4.a.b), var_2, _wgslsmith_f_op_f32(-480f + var_0.e.b), -1000f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2, 1108f, -2032f, var_0.a.b)));
    let x = u_input.a;
    s_output = StorageBuffer(var_7.yz, ~(~(~countOneBits(vec4<i32>(1i, var_6.b.a.x, 36437i, 20755i)))), _wgslsmith_f_op_f32(select(var_7.x, var_7.x, all(vec4<bool>(var_4.e.d.x, func_2(var_4.b).e, true, !var_4.a.d.x)))), ~u_input.a);
}

