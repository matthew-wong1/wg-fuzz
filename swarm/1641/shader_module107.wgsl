struct Struct_1 {
    a: u32,
    b: u32,
    c: f32,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: i32,
    c: f32,
    d: Struct_2,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: vec2<bool>) -> Struct_1 {
    return Struct_1(~1u, arg_1.x, _wgslsmith_f_op_f32(arg_0.c * arg_0.c));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: Struct_4, arg_3: vec2<f32>) -> Struct_1 {
    global0 = _wgslsmith_dot_vec3_i32(vec3<i32>(arg_2.d.b, -1i, arg_2.b), _wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(0i, 1i, max(1i, arg_2.d.b)), vec3<i32>(-1i, arg_2.b, ~arg_2.d.b)), vec3<i32>(~(2147483647i | arg_2.b), arg_2.b, arg_2.d.b)));
    global0 = 0i;
    var var_0 = Struct_3(arg_2.d);
    var var_1 = firstTrailingBit(vec4<u32>(~var_0.a.c.b | 1u, u_input.a.x, var_0.a.c.a, 19533u));
    global0 = _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(var_0.a.b, var_0.a.b, -10328i, -9500i)), countOneBits(vec4<i32>(-2147483647i, arg_2.d.b, arg_2.b, arg_2.d.b))), reverseBits(firstTrailingBit(abs(19959i)))), _wgslsmith_add_vec2_i32(max(_wgslsmith_add_vec2_i32(vec2<i32>(arg_2.d.b, arg_2.d.b), vec2<i32>(arg_2.d.b, 46491i)), vec2<i32>(-1i) * -vec2<i32>(var_0.a.b, var_0.a.b)), -_wgslsmith_mod_vec2_i32(vec2<i32>(1i, var_0.a.b) >> (vec2<u32>(var_1.x, 40235u) % vec2<u32>(32u)), min(vec2<i32>(arg_2.b, 35488i), vec2<i32>(-31258i, var_0.a.b)))));
    return arg_2.e;
}

fn func_4(arg_0: Struct_1) -> bool {
    global0 = -1i;
    let var_0 = -468f;
    let var_1 = firstTrailingBit(~(~min(abs(u_input.a.zx), ~u_input.a.xy)));
    let var_2 = Struct_4(!(!any(vec2<bool>(false, true))) & any(!select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true))), 12082i, _wgslsmith_f_op_f32(ceil(-780f)), Struct_2(-1080f, 1i, Struct_1(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, var_1.x, arg_0.a), vec3<u32>(4294967295u, 27225u, 0u)), ~(~1u), 602f)), arg_0);
    var var_3 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(-arg_0.c)), arg_0.c))), -(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(var_2.b, var_2.b), vec2<i32>(-55186i, 90i)), vec2<i32>(var_2.b, 7583i)) | countOneBits(var_2.b)), arg_0);
    return any(select(select(!select(vec2<bool>(true, var_2.a), vec2<bool>(true, var_2.a), true), select(select(vec2<bool>(var_2.a, false), vec2<bool>(var_2.a, true), false), !vec2<bool>(true, var_2.a), !var_2.a), select(vec2<bool>(var_2.a, var_2.a), !vec2<bool>(true, var_2.a), select(var_2.a, false, var_2.a))), vec2<bool>((var_2.a != var_2.a) | true, var_2.a), select(select(select(vec2<bool>(var_2.a, true), vec2<bool>(true, var_2.a), vec2<bool>(false, var_2.a)), !vec2<bool>(var_2.a, var_2.a), vec2<bool>(var_2.a, var_2.a)), select(!vec2<bool>(false, var_2.a), vec2<bool>(true, true), true), true)));
}

fn func_1(arg_0: vec2<u32>, arg_1: bool) -> f32 {
    let var_0 = vec4<bool>(arg_1, func_4(func_3(func_2(Struct_1(1706u, 4294967295u, 473f), vec4<u32>(0u, 34114u, 0u, arg_0.x), vec2<bool>(false, arg_1)), _wgslsmith_f_op_vec4_f32(vec4<f32>(662f, 368f, 716f, -950f) + vec4<f32>(-548f, -213f, -1781f, -1000f)), Struct_4(false, 0i, -235f, Struct_2(-975f, -43856i, Struct_1(u_input.a.x, 17484u, 826f)), Struct_1(77580u, arg_0.x, -780f)), vec2<f32>(1000f, 1823f))) | all(select(vec3<bool>(arg_1, arg_1, true), vec3<bool>(arg_1, false, arg_1), select(vec3<bool>(true, arg_1, false), vec3<bool>(arg_1, arg_1, arg_1), false))), 3206u == arg_0.x, true);
    let var_1 = ~arg_0.x;
    let var_2 = false;
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(step(-364f, 959f))) * _wgslsmith_f_op_f32(abs(-1073f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-837f - -997f)) - -358f));
    var var_4 = Struct_1(u_input.a.x, 1u | func_2(Struct_1(max(u_input.a.x, 4294967295u), firstLeadingBit(arg_0.x), _wgslsmith_f_op_f32(trunc(var_3.x))), _wgslsmith_mult_vec4_u32(vec4<u32>(arg_0.x, 4294967295u, 4294967295u, 73305u), vec4<u32>(var_1, var_1, u_input.a.x, 64143u)) >> (select(vec4<u32>(35221u, 42802u, arg_0.x, var_1), vec4<u32>(4958u, 0u, 0u, 11900u), arg_1) % vec4<u32>(32u)), var_0.wx).a, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_3.x))))));
    return 453f;
}

fn func_5(arg_0: vec4<bool>) -> Struct_2 {
    let var_0 = u_input.a.x;
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1120f, -1166f, -635f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1000f, 1180f, 1024f), vec3<f32>(-269f, 1128f, -156f)))))) - vec3<f32>(_wgslsmith_f_op_f32(-1409f + -478f), _wgslsmith_f_op_f32(min(-188f, -479f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1147f))))));
    var var_2 = _wgslsmith_mod_u32(~var_0, ~(select(27316u, u_input.a.x | 1u, !arg_0.x) >> (14707u % 32u)));
    global0 = -9890i;
    var var_3 = abs(_wgslsmith_clamp_vec4_i32(firstTrailingBit(vec4<i32>(1i, 1i, 1i, 1i) << (~vec4<u32>(0u, u_input.a.x, 3016u, var_0) % vec4<u32>(32u))), _wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(abs(vec4<i32>(22151i, -1i, -1i, 20670i)), vec4<i32>(1i, -1i, 1i, -29101i) << (vec4<u32>(4868u, var_0, 1u, 1u) % vec4<u32>(32u))), _wgslsmith_div_vec4_i32(vec4<i32>(20471i, 43251i, 0i, -24821i), ~vec4<i32>(-37183i, 2147483647i, -13458i, 15978i))), vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, -1i), vec2<i32>(-4610i, 8696i)), 1i, ~(-15348i), _wgslsmith_dot_vec3_i32(vec3<i32>(-392i, -43821i, -14757i), vec3<i32>(1i, 2147483647i, 1i))) >> (_wgslsmith_mult_vec4_u32(~vec4<u32>(1939u, 1u, 602u, 4294967295u), vec4<u32>(4294967295u, 17522u, var_0, var_0)) % vec4<u32>(32u))));
    return Struct_2(383f, -var_3.x, func_2(func_3(Struct_1(_wgslsmith_sub_u32(var_0, u_input.a.x), ~0u, -1027f), vec4<f32>(_wgslsmith_f_op_f32(select(var_1.x, var_1.x, arg_0.x)), _wgslsmith_f_op_f32(ceil(-516f)), -313f, var_1.x), Struct_4(true, var_3.x, _wgslsmith_f_op_f32(-var_1.x), Struct_2(884f, var_3.x, Struct_1(u_input.a.x, var_0, 968f)), func_2(Struct_1(1u, u_input.a.x, 1432f), vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, u_input.a.x), vec2<bool>(arg_0.x, arg_0.x))), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, var_1.x) * vec2<f32>(var_1.x, var_1.x))), ~vec4<u32>(~0u, var_0, ~u_input.a.x, ~44495u), select(!(!vec2<bool>(arg_0.x, true)), select(!arg_0.xx, select(arg_0.yx, vec2<bool>(arg_0.x, true), arg_0.wy), all(vec3<bool>(arg_0.x, arg_0.x, false))), select(select(arg_0.xz, arg_0.xz, false), vec2<bool>(false, arg_0.x), arg_0.x || arg_0.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(!select(vec4<bool>(any(vec3<bool>(true, false, true)), true, true, true), vec4<bool>(true, select(false, false, false), false, select(false, false, true)), _wgslsmith_f_op_f32(func_1(u_input.a.zy, false)) < -2078f));
    var var_1 = all(!vec2<bool>(all(vec3<bool>(true, true, false)), select(select(true, true, false), true, var_0.b == var_0.b)));
    var_1 = select(false, false, any(vec2<bool>(any(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), false)), !any(vec2<bool>(false, true)))));
    global0 = ~1i;
    var var_2 = Struct_3(Struct_2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c.c + -1675f) * 1000f))), func_5(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))).b, func_2(Struct_1(~4427u, ~0u, var_0.a), countOneBits(vec4<u32>(4294967295u, var_0.c.b, 1u, u_input.a.x)), vec2<bool>(false, true))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(55577i, var_2.a.b, -(37963i ^ -var_0.b)), vec3<f32>(_wgslsmith_f_op_f32(floor(func_5(vec4<bool>(true, true, true, true)).c.c)), func_2(var_0.c, ~_wgslsmith_mod_vec4_u32(vec4<u32>(6781u, u_input.a.x, var_2.a.c.b, 4294967295u), vec4<u32>(var_2.a.c.a, u_input.a.x, var_2.a.c.a, 0u)), select(vec2<bool>(true, true), vec2<bool>(true, false), true)).c, -558f), -537f);
}

