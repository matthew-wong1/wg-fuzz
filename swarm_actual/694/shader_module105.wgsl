struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec4<f32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec2<bool>(false, false));

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<u32>, arg_1: bool, arg_2: vec2<i32>) -> vec2<bool> {
    let var_0 = Struct_3(global0.a);
    global0 = Struct_3(select(global0.a, vec2<bool>(arg_2.x > -2147483647i, false), select(false, any(select(vec3<bool>(true, true, arg_1), vec3<bool>(true, arg_1, var_0.a.x), false)), true)));
    global0 = Struct_3(vec2<bool>(false, all(vec3<bool>(true, arg_1, any(vec3<bool>(false, false, global0.a.x))))));
    global0 = Struct_3(var_0.a);
    global0 = Struct_3(!vec2<bool>(!(var_0.a.x && var_0.a.x), false));
    return vec2<bool>(var_0.a.x, global0.a.x);
}

fn func_2(arg_0: Struct_3) -> Struct_3 {
    let var_0 = arg_0;
    global0 = Struct_3(select(vec2<bool>(_wgslsmith_div_u32(1u, u_input.a) >= ~33004u, var_0.a.x), func_3(countOneBits(~vec4<u32>(0u, 35636u, u_input.a, 1u)), _wgslsmith_clamp_u32(5931u, u_input.a, 0u) <= 12420u, ~vec2<i32>(u_input.b, u_input.b)), true));
    return Struct_3(arg_0.a);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1) -> Struct_2 {
    let var_0 = min(u_input.a, _wgslsmith_clamp_u32(abs(min(_wgslsmith_add_u32(14729u, u_input.a), 73138u)), ~(~(~arg_1.b.x)), ~(~u_input.a)));
    global0 = arg_0;
    let var_1 = -(~(-38462i));
    var var_2 = ~vec3<i32>(~(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, var_1), vec2<i32>(-2147483647i, var_1)) & 1i), countOneBits(u_input.b), var_1);
    global0 = Struct_3(select(!global0.a, func_3(_wgslsmith_div_vec4_u32(select(vec4<u32>(u_input.a, 10127u, var_0, 56744u), vec4<u32>(0u, u_input.a, arg_1.b.x, 0u), vec4<bool>(true, global0.a.x, global0.a.x, false)), vec4<u32>(var_0, var_0, 1u, arg_1.b.x) << (vec4<u32>(arg_1.c, arg_1.c, arg_1.b.x, 45259u) % vec4<u32>(32u))), _wgslsmith_mod_i32(var_2.x, -2147483647i) < var_2.x, var_2.xx), !func_3(~vec4<u32>(44231u, u_input.a, 7672u, var_0), true, vec2<i32>(1i, var_2.x))));
    return Struct_2(Struct_1(true, arg_1.b, ~u_input.a), Struct_1(global0.a.x, arg_1.b, 4294967295u), arg_1.a);
}

fn func_1(arg_0: vec3<f32>, arg_1: vec4<i32>) -> Struct_1 {
    var var_0 = func_4(func_2(Struct_3(!(!vec2<bool>(global0.a.x, global0.a.x)))), Struct_1(global0.a.x, select(~vec3<u32>(4055u, u_input.a, u_input.a), ~vec3<u32>(u_input.a, u_input.a, u_input.a), !global0.a.x) << (_wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(29483u, u_input.a, 0u), vec3<u32>(u_input.a, u_input.a, u_input.a)), vec3<u32>(51940u, 14167u, 60692u) & vec3<u32>(u_input.a, u_input.a, u_input.a)) % vec3<u32>(32u)), ~(~0u)));
    let var_1 = Struct_2(var_0.a, Struct_1(!(!(!var_0.a.a)), ~_wgslsmith_mult_vec3_u32(firstTrailingBit(vec3<u32>(4294967295u, var_0.b.c, 4294967295u)), _wgslsmith_div_vec3_u32(var_0.a.b, var_0.b.b)), firstLeadingBit(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(65832u, 4294967295u), vec2<u32>(76874u, var_0.b.b.x)), _wgslsmith_div_vec2_u32(vec2<u32>(var_0.b.b.x, var_0.a.c), vec2<u32>(var_0.a.b.x, u_input.a))))), all(global0.a));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(-338f * arg_0.x), -828f, arg_0.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(arg_0, vec3<f32>(-1244f, arg_0.x, arg_0.x))))))));
    var_2 = vec3<f32>(arg_0.x, _wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(-var_2.x))))), -597f);
    var_2 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_2.x, -741f, false)) - _wgslsmith_f_op_f32(-arg_0.x))), arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1088f) * var_2.x))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-515f)) * 1193f), var_2.x, _wgslsmith_f_op_f32(-var_2.x)), vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1343f - arg_0.x), _wgslsmith_f_op_f32(var_2.x - var_2.x))), -1617f, var_2.x))));
    return func_4(func_2(Struct_3(select(vec2<bool>(false, false), !vec2<bool>(var_1.c, true), func_2(Struct_3(global0.a)).a))), func_4(func_2(Struct_3(global0.a)), Struct_1(select(true, all(global0.a), 29221i >= u_input.b), ~countOneBits(var_0.a.b), var_1.b.c)).a).b;
}

fn func_5(arg_0: i32, arg_1: Struct_1) -> vec4<u32> {
    var var_0 = u_input.b;
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1411f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1045f) * -1042f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - 616f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-775f + -351f)))));
    global0 = func_2(func_2(func_2(func_2(func_2(Struct_3(vec2<bool>(global0.a.x, true)))))));
    var_0 = _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, u_input.b, u_input.b, arg_0), abs(min(firstLeadingBit(~vec4<i32>(-1i, u_input.b, -12571i, 2147483647i)), vec4<i32>(-2147483647i, -38066i, -1i, -47632i) << (vec4<u32>(u_input.a, u_input.a, 101008u, 0u) % vec4<u32>(32u)))));
    var var_2 = Struct_2(func_4(func_2(func_2(func_2(Struct_3(vec2<bool>(arg_1.a, true))))), arg_1).a, arg_1, arg_1.a);
    return ~firstTrailingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(~u_input.a, 1467u, firstTrailingBit(arg_1.b.x), 39292u), vec4<u32>(0u, u_input.a, ~72913u, _wgslsmith_sub_u32(4294967295u, arg_1.b.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(_wgslsmith_mod_i32(-1i, _wgslsmith_mod_i32(-(~u_input.b), -4189i)), func_1(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(593f, -802f, 2681f)), vec3<f32>(1f, 1f, 1f)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1325f, 1221f, 2434f)))))), -reverseBits(~vec4<i32>(u_input.b, u_input.b, u_input.b, -2147483647i))));
    var var_1 = Struct_2(Struct_1(!all(func_2(Struct_3(vec2<bool>(global0.a.x, false))).a), ~(~vec3<u32>(61171u, 27605u, 26203u)), _wgslsmith_mod_u32(u_input.a, abs(_wgslsmith_clamp_u32(1u, var_0.x, 1778u)))), Struct_1(select(true, !global0.a.x & func_3(vec4<u32>(u_input.a, 1u, 68555u, 0u), global0.a.x, vec2<i32>(-53895i, u_input.b)).x, !func_4(Struct_3(vec2<bool>(global0.a.x, true)), Struct_1(global0.a.x, var_0.xxz, var_0.x)).b.a), ~var_0.yzy, _wgslsmith_sub_u32(_wgslsmith_mult_u32(u_input.a << (u_input.a % 32u), u_input.a), ~_wgslsmith_add_u32(0u, 102310u))), global0.a.x);
    var_1 = Struct_2(var_1.a, Struct_1(select(abs(var_0.x), 1u, all(vec4<bool>(global0.a.x, global0.a.x, true, false))) <= var_1.b.c, ~vec3<u32>(1u, 57309u, u_input.a) >> (~(var_1.b.b ^ vec3<u32>(u_input.a, var_1.b.b.x, 25659u)) % vec3<u32>(32u)), 0u), !any(vec3<bool>(false, true, true)) & (_wgslsmith_clamp_u32(_wgslsmith_mod_u32(var_0.x, 8516u), ~u_input.a, var_0.x) == _wgslsmith_div_u32(_wgslsmith_mult_u32(11313u, 0u), 52595u | u_input.a)));
    var_1 = Struct_2(Struct_1(17955u > ~abs(var_0.x), _wgslsmith_mult_vec3_u32(var_0.www, select(vec3<u32>(4294967295u, 68573u, u_input.a), vec3<u32>(46418u, 49705u, var_0.x), global0.a.x) & var_0.xxy), _wgslsmith_add_u32(~_wgslsmith_mod_u32(var_1.a.b.x, var_0.x), _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.b.b.x, u_input.a, 24919u, 4294967295u), ~vec4<u32>(79752u, 26969u, 4294967295u, var_0.x)))), func_4(Struct_3(vec2<bool>(all(vec3<bool>(var_1.a.a, false, var_1.c)), true)), func_4(func_2(Struct_3(vec2<bool>(true, var_1.a.a))), var_1.a).a).b, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -293f), _wgslsmith_f_op_f32(f32(-1f) * -1760f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-408f - -1290f))) <= _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(349f))))));
    let var_2 = u_input.b;
    let var_3 = Struct_3(select(global0.a, !(!select(global0.a, vec2<bool>(true, false), true)), vec2<bool>(!(!var_1.c), any(vec3<bool>(var_1.a.a, var_1.b.a, true)))));
    var_1 = func_4(var_3, Struct_1(var_3.a.x, vec3<u32>(4294967295u, ~(~0u), ~(~var_0.x)), _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(var_1.b.b.xx, vec2<u32>(7453u, 36617u)), _wgslsmith_mod_u32(0u, 68289u), ~var_0.x, var_0.x), vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 0u), var_1.a.b.xz), ~0u, var_0.x ^ var_1.b.c, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 47403u), var_0.zw)))));
    let var_4 = select(-_wgslsmith_sub_vec2_i32(vec2<i32>(~var_2, _wgslsmith_sub_i32(var_2, -22163i)), min(select(vec2<i32>(u_input.b, var_2), vec2<i32>(-2147483647i, -19027i), var_3.a), -vec2<i32>(42625i, -2147483647i))), max(_wgslsmith_sub_vec2_i32(reverseBits(vec2<i32>(-12902i, -4558i)) | max(vec2<i32>(var_2, var_2), vec2<i32>(var_2, u_input.b)), firstLeadingBit(firstLeadingBit(vec2<i32>(var_2, -1i)))), -min(vec2<i32>(-30926i, -2147483647i), vec2<i32>(1i, 7255i)) >> (_wgslsmith_mult_vec2_u32(~vec2<u32>(var_1.b.c, 14996u), ~var_1.a.b.zx) % vec2<u32>(32u))), func_3(abs(vec4<u32>(var_1.b.b.x, 42414u, var_1.a.b.x, 0u)) | firstLeadingBit(vec4<u32>(u_input.a, 4294967295u, 4294967295u, 18793u)), all(vec4<bool>(select(true, true, true), !var_1.c, select(true, var_1.b.a, var_3.a.x), func_3(vec4<u32>(u_input.a, var_1.a.c, var_1.a.c, u_input.a), false, vec2<i32>(-2147483647i, -913i)).x)), _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.b, 26515i) >> (vec2<u32>(0u, 1u) % vec2<u32>(32u)), ~vec2<i32>(8348i, -1i), vec2<i32>(2147483647i, u_input.b)) | ~min(vec2<i32>(-1i, u_input.b), vec2<i32>(-27937i, var_2))));
    let var_5 = _wgslsmith_f_op_f32(-916f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(521f, _wgslsmith_f_op_f32(sign(678f)), !var_1.b.a)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-243f - -211f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_i32(~(~(-vec4<i32>(var_2, u_input.b, 17257i, 51580i))), -_wgslsmith_mod_vec4_i32(vec4<i32>(26981i, -12770i, 1137i, var_4.x), select(vec4<i32>(37605i, var_2, 46181i, var_4.x), vec4<i32>(var_4.x, u_input.b, -1i, -21807i), vec4<bool>(true, var_3.a.x, var_3.a.x, true)))), ~var_2, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_5, var_5, -419f, 804f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-855f, var_5, -836f, var_5) - vec4<f32>(1000f, var_5, var_5, var_5))) * vec4<f32>(1053f, _wgslsmith_f_op_f32(1000f + var_5), _wgslsmith_f_op_f32(exp2(var_5)), _wgslsmith_f_op_f32(trunc(var_5)))) * vec4<f32>(_wgslsmith_f_op_f32(-var_5), -851f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(var_5)))), 579f)), ~(~vec4<u32>(var_0.x, _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, 9425u), var_1.a.b.yx), var_1.a.b.x, u_input.a)));
}

