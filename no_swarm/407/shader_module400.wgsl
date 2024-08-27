struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: bool,
    d: vec3<u32>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: Struct_1,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec4<u32>,
    d: i32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(true, vec3<u32>(14809u, 4294967295u, 7294u), true, vec3<u32>(1u, 4745u, 1u), vec2<bool>(false, false));

var<private> global1: array<vec2<u32>, 9> = array<vec2<u32>, 9>(vec2<u32>(63092u, 26429u), vec2<u32>(4294967295u, 40504u), vec2<u32>(1u, 1u), vec2<u32>(891u, 1u), vec2<u32>(4294967295u, 28316u), vec2<u32>(0u, 39851u), vec2<u32>(41338u, 43584u), vec2<u32>(4294967295u, 14385u), vec2<u32>(0u, 62224u));

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<i32>, arg_1: bool) -> vec3<i32> {
    global0 = Struct_1(!(u_input.b <= u_input.c) || (countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.e, 1u), vec2<u32>(u_input.c, 9468u))) <= u_input.b), vec3<u32>(_wgslsmith_clamp_u32(firstTrailingBit(29367u), min(firstTrailingBit(22903u), 1u), 44675u), 44730u, 0u), arg_1, ~select(select(abs(vec3<u32>(4294967295u, 14516u, 4294967295u)), ~global0.d, vec3<bool>(false, false, arg_1)), vec3<u32>(0u, 0u, ~global0.d.x), _wgslsmith_add_i32(u_input.d, 1i) > (0i >> (u_input.c % 32u))), vec2<bool>(true || arg_1, all(vec4<bool>(any(vec4<bool>(true, global0.a, arg_1, global0.a)), arg_1, all(global0.e), u_input.d == arg_0.x))));
    let var_0 = 57829u;
    var var_1 = Struct_1(global0.a, ~global0.b, !arg_1, ~vec3<u32>(global0.d.x, global0.d.x, countOneBits(~19465u)), !select(!global0.e, global0.e, select(select(vec2<bool>(true, false), global0.e, vec2<bool>(true, true)), global0.e, global0.e)));
    let var_2 = _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1473f, _wgslsmith_f_op_f32(f32(-1f) * -929f), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-1554f, _wgslsmith_f_op_f32(-946f - 1244f)), 759f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(-1579f, -1000f)), _wgslsmith_f_op_f32(round(-1063f)), _wgslsmith_f_op_f32(f32(-1f) * -786f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-785f, 1000f, -472f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(111f, -109f, 173f) + vec3<f32>(800f, -1000f, 1493f)))))));
    var_1 = Struct_1(global0.a, var_1.d, select(true, 432f < _wgslsmith_f_op_f32(sign(-1172f)), any(select(vec4<bool>(false, var_1.e.x, var_1.c, global0.a), vec4<bool>(arg_1, false, true, false), true))) == arg_1, var_1.b, !global0.e);
    return arg_0;
}

fn func_2() -> vec3<bool> {
    var var_0 = Struct_1(global0.e.x, select(global0.d, global0.d | _wgslsmith_mod_vec3_u32(select(vec3<u32>(64691u, global0.b.x, global0.b.x), vec3<u32>(46992u, 51010u, 1u), vec3<bool>(global0.e.x, true, global0.c)), global0.b), true), !any(select(!vec4<bool>(true, global0.e.x, global0.a, true), vec4<bool>(false, global0.c, global0.c, global0.c), global0.e.x)), global0.d, !select(global0.e, select(select(global0.e, global0.e, global0.e), select(vec2<bool>(global0.c, global0.e.x), vec2<bool>(global0.c, true), global0.c), !global0.e), true));
    var var_1 = min(~_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.d, -2147483647i, u_input.d), vec3<i32>(u_input.a, u_input.a, -26930i)), func_3(vec3<i32>(u_input.d, -46048i, -37328i), global0.a)), ~43765i), u_input.a);
    var var_2 = var_0.c;
    let var_3 = vec4<u32>(var_0.d.x, u_input.c, _wgslsmith_clamp_u32(global0.d.x, _wgslsmith_dot_vec3_u32(max(select(vec3<u32>(0u, 13015u, var_0.d.x), global0.b, vec3<bool>(true, global0.a, var_0.a)), _wgslsmith_add_vec3_u32(vec3<u32>(global0.d.x, global0.d.x, var_0.d.x), global0.b)), _wgslsmith_add_vec3_u32(~global0.d, var_0.b)), _wgslsmith_mod_u32(50447u, var_0.d.x)), u_input.e);
    let var_4 = _wgslsmith_clamp_i32(reverseBits(-2147483647i), func_3(firstLeadingBit(-_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.d, -2147483647i, -2147483647i), vec3<i32>(u_input.a, 35787i, 0i))), global0.c).x, abs(abs(u_input.d)));
    return vec3<bool>(var_0.a, true, 8331u <= (1u | u_input.c));
}

fn func_1(arg_0: bool, arg_1: f32) -> bool {
    let var_0 = global0.a;
    var var_1 = Struct_2(select(select(select(vec3<bool>(arg_0, global0.a, arg_0), select(vec3<bool>(global0.c, arg_0, arg_0), vec3<bool>(arg_0, global0.e.x, false), vec3<bool>(true, false, true)), !vec3<bool>(true, global0.e.x, arg_0)), !func_2(), global0.c), select(vec3<bool>(func_2().x, global0.a, any(vec4<bool>(arg_0, global0.e.x, arg_0, true))), vec3<bool>(arg_0, arg_0, false || global0.e.x), !vec3<bool>(false, global0.a, arg_0)), true), Struct_1(arg_0, ~abs(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, 46243u, 0u), vec3<u32>(6319u, global0.d.x, 4294967295u))), !any(select(vec4<bool>(global0.c, true, arg_0, false), vec4<bool>(arg_0, true, true, global0.e.x), arg_0)), global0.d, !select(global0.e, vec2<bool>(true, global0.c), select(vec2<bool>(true, true), global0.e, vec2<bool>(true, true)))), Struct_1(arg_1 >= _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(arg_1, -616f)))), ~max(~global0.b, ~global0.b), any(func_2()), ~select(vec3<u32>(global0.d.x, 8037u, global0.d.x), global0.d, false) << ((_wgslsmith_div_vec3_u32(vec3<u32>(global0.d.x, u_input.e, global0.d.x), global0.b) | min(vec3<u32>(global0.b.x, global0.b.x, 4294967295u), global0.d)) % vec3<u32>(32u)), !global0.e), select(min(vec2<i32>(3327i, u_input.a), vec2<i32>(-2147483647i, 25418i)) | vec2<i32>(u_input.a, u_input.d), ~vec2<i32>(19271i, u_input.d), vec2<bool>(global0.e.x, u_input.d < 1i)) & (~(-vec2<i32>(2147483647i, 1i)) & (vec2<i32>(u_input.d, u_input.a) & min(vec2<i32>(-6283i, 2147483647i), vec2<i32>(u_input.a, -4942i)))));
    var_1 = Struct_2(var_1.a, var_1.b, var_1.b, _wgslsmith_mod_vec2_i32(abs(_wgslsmith_mult_vec2_i32(-var_1.d, -var_1.d)), var_1.d));
    var_1 = Struct_2(var_1.a, var_1.c, Struct_1(true, var_1.c.b, var_1.c.a, vec3<u32>(global0.b.x, 1u, _wgslsmith_sub_u32(u_input.c, firstLeadingBit(60302u))), vec2<bool>(true, true)), ~_wgslsmith_mod_vec2_i32(-firstTrailingBit(var_1.d), abs(min(var_1.d, vec2<i32>(var_1.d.x, var_1.d.x)))));
    var var_2 = Struct_1(true, var_1.c.b, !(var_1.c.a | arg_0), global0.b, !vec2<bool>(var_1.b.e.x, !arg_0));
    return select(any(!vec4<bool>(global0.b.x != global0.d.x, true, all(global0.e), var_2.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(arg_1))))) <= _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(arg_1, arg_1)))), 703f), var_1.d.x > u_input.d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(func_1(!(true && global0.c), -154f), _wgslsmith_clamp_vec3_u32(firstLeadingBit(~global0.d), vec3<u32>(global0.d.x << (13909u % 32u), 28779u, 0u), countOneBits(global0.d | global0.b)) << (~vec3<u32>(1u, u_input.b & 38249u, u_input.c) % vec3<u32>(32u)), !global0.c, vec3<u32>(u_input.e, global0.b.x | u_input.b, _wgslsmith_add_u32(~u_input.b, 2978u)), select(!select(vec2<bool>(true, global0.c), vec2<bool>(global0.c, global0.a), any(vec3<bool>(true, false, false))), vec2<bool>(global0.a, false), global0.c));
    var var_1 = Struct_2(vec3<bool>(global0.c, any(!(!var_0.e)), func_2().x), Struct_1(global0.a, global0.d, false, ~abs(global0.d), var_0.e), Struct_1(global0.a, ~firstLeadingBit(abs(vec3<u32>(4294967295u, 1487u, global0.d.x))), any(vec4<bool>(all(vec3<bool>(var_0.c, var_0.a, false)), !global0.a, true, global0.a | false)), select(global0.d & global0.b, firstTrailingBit(var_0.b), func_2()) & _wgslsmith_sub_vec3_u32(vec3<u32>(var_0.d.x, 46479u, 8125u), vec3<u32>(global0.d.x, 0u, u_input.c) << (vec3<u32>(var_0.b.x, 0u, 28268u) % vec3<u32>(32u))), global0.e), -(~firstLeadingBit(vec2<i32>(10123i, u_input.a) | vec2<i32>(u_input.a, 7123i))));
    let var_2 = vec3<u32>(~(~1u), firstLeadingBit(firstTrailingBit(countOneBits(firstLeadingBit(u_input.b)))), global0.d.x);
    let var_3 = Struct_2(var_1.a, Struct_1(true | (~u_input.c != (92515u | var_2.x)), global0.d, true, vec3<u32>(_wgslsmith_mult_u32(21925u, 33516u) << (~4294967295u % 32u), var_1.b.b.x, var_2.x), select(var_1.b.e, select(vec2<bool>(true, var_0.e.x), vec2<bool>(true, true), var_0.e), select(any(var_1.a.xy), !var_1.c.c, !var_0.c))), Struct_1(var_1.c.e.x, select(global0.b, vec3<u32>(1u, 1u, 1u), var_0.e.x) & ~vec3<u32>(u_input.c, var_2.x, var_1.b.d.x), var_1.c.c & (var_0.e.x && !var_0.c), _wgslsmith_clamp_vec3_u32(global0.b, var_2, vec3<u32>(4294967295u, 97670u, 1u)), !vec2<bool>(!var_1.b.e.x, true)), ~(~(vec2<i32>(u_input.a, -2147483647i) ^ var_1.d)) >> ((~_wgslsmith_add_vec2_u32(vec2<u32>(var_0.b.x, 1u), var_2.yz) >> (vec2<u32>(0u, var_1.c.b.x ^ 35046u) % vec2<u32>(32u))) % vec2<u32>(32u)));
    var var_4 = max(firstLeadingBit(var_0.b.x), 23184u >> (~countOneBits(_wgslsmith_sub_u32(41327u, var_0.b.x)) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -554f), _wgslsmith_f_op_f32(floor(-221f)), -364f, _wgslsmith_f_op_f32(612f + -1000f)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1058f, 502f, -1196f, 909f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -527f, -197f, 568f))))), firstLeadingBit(_wgslsmith_dot_vec4_i32(~vec4<i32>(0i, u_input.d, -21726i, u_input.a), reverseBits(vec4<i32>(u_input.a, 1i, var_1.d.x, -1i)))) >> (62347u % 32u), ~(~firstTrailingBit(countOneBits(vec4<u32>(26296u, 40816u, 0u, var_2.x)))), var_3.d.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(-1674f, 1000f)), _wgslsmith_f_op_f32(497f * 1416f), _wgslsmith_f_op_f32(trunc(105f)), -505f), vec4<f32>(_wgslsmith_f_op_f32(select(-450f, 721f, var_0.c)), -771f, 657f, -1000f))));
}

