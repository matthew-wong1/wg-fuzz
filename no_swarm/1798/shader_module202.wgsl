struct Struct_1 {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: i32;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: u32, arg_1: vec4<bool>, arg_2: u32) -> f32 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1319f * -241f), _wgslsmith_div_f32(758f, -2069f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1000f)) - _wgslsmith_f_op_f32(sign(101f))) - -168f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -705f), 1975f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1158f * 593f) - _wgslsmith_f_op_f32(151f - -839f))))), -783f);
    var var_1 = (~(_wgslsmith_sub_vec2_i32(u_input.d.zy, vec2<i32>(u_input.d.x, u_input.c)) & u_input.d.xx) ^ ~(~vec2<i32>(u_input.c, u_input.d.x))) | firstLeadingBit(u_input.d.zz);
    var var_2 = u_input.a.yy;
    let var_3 = _wgslsmith_div_i32(countOneBits(-44209i), -33493i);
    var var_4 = Struct_3(Struct_2(Struct_1(abs(u_input.d), ~_wgslsmith_sub_u32(0u, arg_2), ~_wgslsmith_sub_u32(22995u, 0u), arg_1.x, var_1.x)));
    return 1f;
}

fn func_2(arg_0: i32) -> u32 {
    global1 = abs(arg_0);
    global0 = _wgslsmith_f_op_f32(func_3(reverseBits(~_wgslsmith_mult_u32(firstLeadingBit(4661u), 8222u)), vec4<bool>(true, true, true, false), 6868u));
    let var_0 = any(select(vec2<bool>(any(vec3<bool>(true, true, true)), any(select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true)))), select(select(select(vec2<bool>(false, true), vec2<bool>(false, true), false), select(vec2<bool>(true, true), vec2<bool>(true, true), true), false), vec2<bool>(all(vec2<bool>(false, false)), all(vec3<bool>(false, true, true))), !all(vec4<bool>(true, true, true, false))), vec2<bool>(true, select(any(vec4<bool>(true, true, false, true)), true, false))));
    global0 = 551f;
    global1 = reverseBits(firstTrailingBit(-1i | _wgslsmith_dot_vec3_i32(u_input.d.wzx, _wgslsmith_mod_vec3_i32(vec3<i32>(9971i, -39811i, -1i), vec3<i32>(35215i, u_input.d.x, u_input.c)))));
    return 0u;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_2) -> Struct_1 {
    global0 = -1977f;
    global0 = -514f;
    let var_0 = _wgslsmith_mult_vec4_u32(vec4<u32>(abs(0u), arg_1.a.a.b, arg_0.c, arg_0.c), ~(vec4<u32>(~55138u, u_input.b, 1u, u_input.a.x) << (firstTrailingBit(reverseBits(vec4<u32>(arg_1.a.a.c, arg_0.c, 0u, arg_0.c))) % vec4<u32>(32u))));
    var var_1 = !any(vec2<bool>(all(vec4<bool>(arg_0.d, true, arg_0.d, arg_2.a.d)), true || any(vec3<bool>(arg_0.d, true, false))));
    return arg_1.a.a;
}

fn func_1() -> Struct_3 {
    var var_0 = func_4(Struct_1(u_input.d, ~(~(~39971u)), ~(0u >> (func_2(1i) % 32u)), true || !all(vec3<bool>(true, true, false)), -u_input.c), Struct_3(Struct_2(Struct_1(u_input.d, _wgslsmith_add_u32(u_input.a.x, 4294967295u), _wgslsmith_clamp_u32(68606u, u_input.b, 4294967295u), true, u_input.c))), Struct_2(Struct_1((vec4<i32>(u_input.d.x, -30985i, u_input.d.x, u_input.d.x) >> (vec4<u32>(u_input.a.x, 1u, 18406u, 4294967295u) % vec4<u32>(32u))) ^ vec4<i32>(u_input.c, u_input.d.x, 26283i, u_input.d.x), u_input.a.x, u_input.a.x, (u_input.a.x > 1u) | all(vec2<bool>(false, false)), u_input.d.x)));
    global0 = -388f;
    let var_1 = _wgslsmith_div_f32(1156f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(1378f))))));
    global1 = 0i;
    global1 = var_0.a.x;
    return Struct_3(Struct_2(Struct_1(select(vec4<i32>(u_input.c, -1i, 0i, 16443i), max(vec4<i32>(var_0.a.x, u_input.d.x, -22230i, 1i), vec4<i32>(0i, 2147483647i, -1i, -75765i)), vec4<bool>(false, true, true, true)), _wgslsmith_add_u32(68119u, select(0u, u_input.a.x, var_0.d)), _wgslsmith_mod_u32(~u_input.a.x, 13810u), all(vec3<bool>(var_0.d, var_0.d, var_0.d)), ~_wgslsmith_div_i32(var_0.e, u_input.d.x))));
}

fn func_5(arg_0: Struct_3) -> Struct_2 {
    let var_0 = -_wgslsmith_clamp_vec2_i32(vec2<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-44589i, arg_0.a.a.e, -51879i), u_input.d.xww), ~vec3<i32>(2147483647i, -41198i, -9301i)), arg_0.a.a.a.x), u_input.d.yx, firstTrailingBit(vec2<i32>(-1i) * -u_input.d.wz));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(1416f - 247f), -1253f);
    var var_2 = Struct_1(_wgslsmith_add_vec4_i32(firstLeadingBit(abs(vec4<i32>(2147483647i, -49826i, -1i, u_input.c))), min(vec4<i32>(-25100i, abs(1i), 1i, _wgslsmith_mult_i32(arg_0.a.a.a.x, -21485i)), _wgslsmith_div_vec4_i32(vec4<i32>(16672i, arg_0.a.a.a.x, arg_0.a.a.e, 1i), arg_0.a.a.a & arg_0.a.a.a))), 1u, ~func_4(func_4(arg_0.a.a, func_1(), func_1().a), Struct_3(func_1().a), arg_0.a).c, (_wgslsmith_dot_vec2_u32(~vec2<u32>(arg_0.a.a.b, 42094u), u_input.a.xz) <= min(8937u, ~2762u)) & true, -abs(reverseBits(-2147483647i)) & -u_input.c);
    let var_3 = ~(~(vec2<u32>(116216u, 47597u & u_input.b) << (select(vec2<u32>(19807u, var_2.b), ~vec2<u32>(14156u, 4294967295u), true) % vec2<u32>(32u))));
    let var_4 = abs(max(64695i, abs(-(~var_2.e))));
    return arg_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_1());
    var var_1 = func_5(Struct_3(Struct_2(var_0.a)));
    let var_2 = vec4<f32>(272f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-2012f, -305f)) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(-325f))))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(191f, -475f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(999f, 1613f) - 1463f), true)), -545f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(351f + -470f) + _wgslsmith_f_op_f32(-589f + _wgslsmith_f_op_f32(func_3(32825u, vec4<bool>(true, true, var_0.a.d, var_0.a.d), var_1.a.c)))), 434f)));
    global1 = _wgslsmith_clamp_i32(-_wgslsmith_dot_vec2_i32(-u_input.d.yx, var_0.a.a.yx), abs(-func_4(var_0.a, Struct_3(Struct_2(var_0.a)), var_0).e ^ 2147483647i), ~_wgslsmith_mod_i32(min(_wgslsmith_mod_i32(2147483647i, 2909i), var_0.a.a.x << (7235u % 32u)), _wgslsmith_mod_i32(var_0.a.e, ~u_input.c)));
    let var_3 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(715f - var_2.x), _wgslsmith_f_op_f32(round(941f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(var_2.x * 239f), _wgslsmith_f_op_f32(sign(var_2.x))))));
}

