struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: bool,
    d: u32,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: bool,
    c: vec3<u32>,
    d: bool,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec3<u32>,
}

struct Struct_5 {
    a: vec4<f32>,
    b: vec4<f32>,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(true, false);

var<private> global1: Struct_1 = Struct_1(0i, vec2<f32>(281f, 328f), true, 78375u, 1u);

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec3<i32>, arg_1: bool, arg_2: f32) -> u32 {
    var var_0 = ~global1.e;
    var var_1 = _wgslsmith_mult_u32(u_input.c, global1.d);
    let var_2 = select(select(!(!(!vec3<bool>(true, arg_1, false))), !vec3<bool>(global0.x || false, false, arg_1), !(!arg_1)), !select(!vec3<bool>(arg_1, arg_1, false), vec3<bool>(true, true, select(true, true, global0.x)), !vec3<bool>(global0.x, true, true)), !(!select(vec3<bool>(true, true, true), select(vec3<bool>(arg_1, global0.x, global0.x), vec3<bool>(arg_1, true, false), true), select(arg_1, true, global0.x))));
    var var_3 = ~select(4294967295u, global1.d, false);
    var_3 = select(~min(~21240u, 1u), ~_wgslsmith_div_u32(0u, ~(4294967295u >> (1u % 32u))), var_2.x);
    return u_input.b.x;
}

fn func_2(arg_0: bool) -> vec2<bool> {
    var var_0 = Struct_1(~(-_wgslsmith_div_i32(-1i, -23391i)) | u_input.d.x, global1.b, true, u_input.b.x, ~4294967295u);
    var_0 = Struct_1(~(-2147483647i), _wgslsmith_f_op_vec2_f32(global1.b * global1.b), false, 4294967295u, ~(~func_3(_wgslsmith_sub_vec3_i32(vec3<i32>(1i, var_0.a, u_input.e), vec3<i32>(-89495i, var_0.a, global1.a)), global0.x, 1000f)));
    var var_1 = Struct_1(_wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(u_input.d.x, u_input.d.x, 2147483647i, -2147483647i) >> (~vec4<u32>(1u, u_input.a, u_input.b.x, u_input.b.x) % vec4<u32>(32u))), vec4<i32>(1i, var_0.a ^ min(u_input.e, 70136i), 1i, ~(u_input.d.x & 0i))), var_0.b, all(select(vec3<bool>(true, global1.c, all(vec3<bool>(false, global0.x, true))), select(!vec3<bool>(var_0.c, global1.c, global1.c), !vec3<bool>(true, var_0.c, true), !global1.c), _wgslsmith_f_op_f32(max(global1.b.x, global1.b.x)) < _wgslsmith_f_op_f32(min(495f, var_0.b.x)))), 150135u, min(countOneBits(global1.d), global1.d));
    var var_2 = select(u_input.d.zw ^ firstLeadingBit(reverseBits(vec2<i32>(-21874i, 8064i))), abs(select(firstTrailingBit(u_input.d.yy & u_input.d.yz), vec2<i32>(_wgslsmith_mod_i32(var_0.a, -13745i), ~global1.a), select(select(vec2<bool>(global1.c, var_0.c), vec2<bool>(global0.x, true), false), select(vec2<bool>(true, global0.x), vec2<bool>(global0.x, false), true), vec2<bool>(true, true)))), select(select(select(select(vec2<bool>(true, false), vec2<bool>(global1.c, false), vec2<bool>(arg_0, false)), vec2<bool>(var_0.c, arg_0), !vec2<bool>(true, var_1.c)), vec2<bool>(true, true), vec2<bool>(select(global0.x, var_0.c, arg_0), var_0.c)), vec2<bool>((4294967295u & u_input.b.x) < _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.d, var_1.e, 481u, u_input.b.x), vec4<u32>(var_0.d, 9032u, global1.d, global1.e)), select(false, global1.a < var_1.a, true)), arg_0));
    let var_3 = Struct_3(u_input.d.zz, !(35281i > _wgslsmith_dot_vec3_i32(-vec3<i32>(76630i, u_input.d.x, u_input.e), firstTrailingBit(vec3<i32>(-1i, u_input.d.x, var_0.a)))), ~vec3<u32>(~0u, var_0.d, var_0.d), false);
    return vec2<bool>(true, all(select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, global1.c)), vec2<bool>(arg_0, false), vec2<bool>(true, true))) || all(select(vec2<bool>(global1.c, global0.x), vec2<bool>(true, true), 0u < u_input.a)));
}

fn func_1(arg_0: Struct_2) -> Struct_1 {
    global0 = select(vec2<bool>(false, true), select(vec2<bool>(global0.x, all(select(vec3<bool>(global0.x, true, true), vec3<bool>(false, false, global0.x), vec3<bool>(true, true, global0.x)))), select(!(!vec2<bool>(false, arg_0.a.c)), select(vec2<bool>(true, global1.c), select(vec2<bool>(arg_0.c.c, global1.c), vec2<bool>(false, arg_0.a.c), vec2<bool>(global1.c, global0.x)), all(vec2<bool>(false, arg_0.a.c))), vec2<bool>(false, true)), arg_0.c.c && !select(arg_0.a.c, true, true)), !select(!select(vec2<bool>(global0.x, global1.c), vec2<bool>(global1.c, arg_0.a.c), global1.c), vec2<bool>(u_input.e == u_input.e, global0.x), func_2(false)));
    var var_0 = Struct_1(arg_0.c.a, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -327f), _wgslsmith_f_op_f32(trunc(-1000f))) + arg_0.c.b.x), arg_0.b.x), (~_wgslsmith_sub_i32(0i, global1.a) <= ~_wgslsmith_sub_i32(18895i, 30494i)) | (585f < arg_0.c.b.x), ~1u, ~(~u_input.c));
    var var_1 = vec4<i32>(46011i, 2147483647i, ~(1i & _wgslsmith_add_i32(var_0.a >> (global1.e % 32u), _wgslsmith_div_i32(u_input.e, global1.a))), _wgslsmith_clamp_i32(firstLeadingBit(arg_0.a.a), countOneBits(0i), _wgslsmith_div_i32(u_input.d.x, 2147483647i)));
    global1 = arg_0.c;
    var var_2 = Struct_4(_wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c, var_0.e, var_0.d, global1.d) ^ vec4<u32>(arg_0.c.e, arg_0.a.e, 0u, u_input.b.x), vec4<u32>(30395u, 23568u, 0u, 0u), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, arg_0.c.d, 4294967295u, 1u), vec4<u32>(var_0.d, 0u, u_input.c, arg_0.c.e), vec4<u32>(u_input.c, var_0.e, var_0.e, 37111u))), vec4<u32>(12349u, 82294u, 35376u, abs(u_input.b.x))) | abs(~(~vec4<u32>(1u, global1.e, 24830u, 10886u))), firstLeadingBit(_wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, var_0.d, u_input.c), ~vec3<u32>(4294967295u, global1.e, 93180u)), ~vec3<u32>(9137u, arg_0.c.e, u_input.c) << (vec3<u32>(global1.d, var_0.e, 0u) % vec3<u32>(32u)), vec3<u32>(~global1.d, ~1u, global1.d ^ 17686u))));
    return Struct_1(var_1.x, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1252f + 361f))), true, 29059u, ~_wgslsmith_mult_u32(1u, ~global1.d) >> (global1.d % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1.a;
    let var_1 = -_wgslsmith_div_i32(u_input.e, abs(u_input.e));
    let var_2 = -65434i;
    global1 = func_1(Struct_2(Struct_1(max(0i, var_2), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1723f, global1.b.x)))), true, 43833u, global1.d ^ 1u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, _wgslsmith_f_op_f32(-global1.b.x), _wgslsmith_f_op_f32(select(global1.b.x, -489f, global0.x)), global1.b.x)), Struct_1(~max(var_2, -6409i), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-760f, -458f), vec2<f32>(global1.b.x, global1.b.x))))), ~var_1 != (var_1 >> (35606u % 32u)), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 128538u, u_input.c) ^ vec3<u32>(u_input.b.x, 4294967295u, u_input.b.x), vec3<u32>(u_input.a, global1.d, 1u)), abs(u_input.a))));
    var var_3 = Struct_1(-(~26133i), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(global1.b.x)), _wgslsmith_f_op_f32(-global1.b.x))))), true, firstTrailingBit(~max(~25148u, 16727u)), global1.e & ~u_input.a);
    let var_4 = select(vec4<bool>(global1.c && (global0.x == global0.x), false, any(select(select(vec3<bool>(var_3.c, true, false), vec3<bool>(var_3.c, global0.x, true), false), !vec3<bool>(false, global0.x, global1.c), vec3<bool>(true, true, true))), !(var_3.b.x <= _wgslsmith_f_op_f32(var_3.b.x - -559f))), select(!vec4<bool>(true, true, var_3.b.x <= 1000f, false), !vec4<bool>(false, global0.x, func_1(Struct_2(Struct_1(var_2, vec2<f32>(global1.b.x, 100f), global1.c, u_input.c, 1u), vec4<f32>(-138f, -1133f, global1.b.x, var_3.b.x), Struct_1(0i, vec2<f32>(global1.b.x, var_3.b.x), global1.c, global1.d, var_3.e))).c, false), true), !(!vec4<bool>(var_3.d < global1.e, false | var_3.c, !global1.c, !global0.x)));
    var var_5 = -1000f;
    global1 = func_1(Struct_2(Struct_1(var_2, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(var_3.b)), var_3.b), !all(vec4<bool>(global1.c, var_3.c, var_3.c, false)), ~(~48894u), select(~u_input.c, u_input.a, false)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.b.x + var_3.b.x)), global1.b.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(var_3.b.x)))), 745f), Struct_1(~(-var_1), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1223f, 1921f), vec2<f32>(var_3.b.x, 689f))), !(-2147483647i > global1.a), 0u, var_3.d)));
    var_5 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.b.x) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.b.x - _wgslsmith_div_f32(var_3.b.x, var_3.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.b.x) * _wgslsmith_f_op_f32(global1.b.x - -538f))))));
    let x = u_input.a;
    s_output = StorageBuffer(func_1(Struct_2(func_1(Struct_2(Struct_1(global1.a, global1.b, true, 50424u, var_3.d), vec4<f32>(-1014f, -211f, global1.b.x, global1.b.x), Struct_1(var_2, vec2<f32>(-156f, -1936f), global1.c, u_input.c, 0u))), vec4<f32>(-573f, _wgslsmith_f_op_f32(max(599f, global1.b.x)), _wgslsmith_f_op_f32(-global1.b.x), _wgslsmith_f_op_f32(var_3.b.x + 875f)), func_1(Struct_2(Struct_1(var_3.a, global1.b, false, 62415u, u_input.c), vec4<f32>(var_3.b.x, global1.b.x, 1156f, global1.b.x), Struct_1(var_1, var_3.b, false, 0u, var_3.e))))).e, abs(func_3(u_input.d.wzw, _wgslsmith_f_op_f32(round(1062f)) < _wgslsmith_f_op_f32(ceil(var_3.b.x)), _wgslsmith_f_op_f32(max(var_3.b.x, global1.b.x)))), vec4<i32>(i32(-1i) * -1i, 0i, select(-1i, 58180i, true | select(var_4.x, var_4.x, var_3.c)), global1.a), ~u_input.c);
}

