struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: i32,
    d: i32,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: i32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool) -> u32 {
    var var_0 = Struct_1(true, max(vec3<u32>(~reverseBits(u_input.a), abs(~u_input.c), u_input.a), firstTrailingBit(vec3<u32>(_wgslsmith_div_u32(u_input.a, 80802u), u_input.c, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.c), vec2<u32>(u_input.a, 74920u))))), -u_input.b.x, _wgslsmith_dot_vec4_i32(~max(abs(vec4<i32>(u_input.d, 16392i, -5562i, -49319i)), vec4<i32>(u_input.d, 1i, 1i, 2147483647i)), vec4<i32>(u_input.d, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, u_input.b.x), _wgslsmith_add_vec2_i32(u_input.b, u_input.b)), 46426i, _wgslsmith_dot_vec2_i32(u_input.b >> (vec2<u32>(881u, 35734u) % vec2<u32>(32u)), u_input.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(129f - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(477f))))) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1569f, 709f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(152f, -139f) * _wgslsmith_f_op_f32(-2075f + 538f))))));
    var var_1 = Struct_1(all(!vec3<bool>(var_0.b.x <= 29648u, false, var_0.a)), ~var_0.b, -(~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d, 2147483647i, 45386i, -2147483647i), vec4<i32>(var_0.c, -1i, u_input.d, 3762i))), var_0.c, _wgslsmith_f_op_f32(var_0.e + 547f));
    var_0 = Struct_1(arg_0, max(_wgslsmith_div_vec3_u32(~var_1.b ^ vec3<u32>(21071u, 1u, 1u), vec3<u32>(var_1.b.x | 0u, var_0.b.x, select(u_input.a, var_0.b.x, false))), reverseBits(_wgslsmith_sub_vec3_u32(vec3<u32>(var_1.b.x, 95039u, var_1.b.x), vec3<u32>(u_input.a, 1u, var_0.b.x))) >> (~var_0.b % vec3<u32>(32u))), ~firstLeadingBit(firstLeadingBit(var_0.c)), _wgslsmith_clamp_i32(-1i, _wgslsmith_div_i32(_wgslsmith_sub_i32(u_input.d & var_1.d, _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.c, -27453i, 0i), vec3<i32>(-8658i, u_input.d, u_input.b.x))), firstTrailingBit(var_1.d ^ -2147483647i)), 1i), var_1.e);
    let var_2 = Struct_1(any(!(!select(vec4<bool>(var_0.a, var_1.a, var_1.a, var_0.a), vec4<bool>(var_1.a, var_0.a, var_0.a, false), arg_0))), var_0.b ^ vec3<u32>(max(~0u, min(var_1.b.x, 48367u)), reverseBits(~4294967295u), ~var_1.b.x), -16536i, -73080i, var_1.e);
    var_0 = var_2;
    return 83262u;
}

fn func_2(arg_0: Struct_3) -> Struct_1 {
    let var_0 = false;
    let var_1 = func_3(true);
    let var_2 = arg_0.a;
    let var_3 = firstTrailingBit(-vec3<i32>(~(-839i >> (var_2.b.x % 32u)), arg_0.a.d, abs(-2147483647i)));
    let var_4 = min(-17328i, ~(-u_input.d));
    return var_2;
}

fn func_4(arg_0: vec4<u32>, arg_1: i32, arg_2: Struct_3) -> Struct_1 {
    let var_0 = firstTrailingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, abs(-12984i), 56963i, ~13634i | arg_1), vec4<i32>(func_2(arg_2).c, 34440i, _wgslsmith_div_i32(1i, u_input.b.x), u_input.b.x) >> (((vec4<u32>(51395u, 4294967295u, 0u, arg_0.x) << (vec4<u32>(u_input.c, u_input.c, 34857u, arg_0.x) % vec4<u32>(32u))) << (select(vec4<u32>(arg_2.a.b.x, arg_0.x, arg_2.a.b.x, u_input.c), vec4<u32>(0u, arg_0.x, u_input.a, arg_2.a.b.x), vec4<bool>(false, arg_2.a.a, true, false)) % vec4<u32>(32u))) % vec4<u32>(32u)), abs(_wgslsmith_clamp_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(38502i, -10952i, u_input.d, -6835i), vec4<i32>(0i, -1i, 46149i, arg_1), vec4<i32>(u_input.d, u_input.d, 0i, 0i)), vec4<i32>(-17455i, u_input.b.x, 24088i, arg_1), ~vec4<i32>(10761i, -45676i, u_input.d, u_input.d)))));
    let var_1 = _wgslsmith_add_vec3_i32(var_0.zwx, select(var_0.xyz, -var_0.xxz, !all(!vec2<bool>(false, arg_2.a.a))));
    return arg_2.a;
}

fn func_5(arg_0: Struct_3, arg_1: Struct_1, arg_2: f32, arg_3: vec3<u32>) -> Struct_1 {
    var var_0 = arg_1.b.x;
    var var_1 = func_2(arg_0);
    let var_2 = any(!vec4<bool>(!(arg_1.b.x > 0u), arg_0.a.a, arg_0.a.a, arg_1.a));
    var_0 = ~max(var_1.b.x, 51149u);
    var var_3 = ~arg_1.d;
    return func_4(~(~_wgslsmith_clamp_vec4_u32(select(vec4<u32>(arg_1.b.x, arg_3.x, arg_0.a.b.x, 0u), vec4<u32>(75629u, var_1.b.x, 60069u, 39791u), true), select(vec4<u32>(var_1.b.x, 67626u, arg_1.b.x, u_input.c), vec4<u32>(arg_0.a.b.x, arg_1.b.x, arg_1.b.x, var_1.b.x), false), vec4<u32>(u_input.a, 16122u, 1u, arg_1.b.x))), -2147483647i, arg_0);
}

fn func_1() -> Struct_1 {
    return func_5(Struct_3(func_4(vec4<u32>(_wgslsmith_clamp_u32(1u, u_input.c, u_input.c), reverseBits(u_input.c), abs(u_input.a), 15670u), i32(-1i) * -34484i, Struct_3(func_2(Struct_3(Struct_1(false, vec3<u32>(80241u, u_input.c, 0u), 21275i, 0i, -402f), 232i)), 1i)), -16521i), Struct_1(all(select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, false, true, false), false)), vec3<u32>(func_3(false), select(max(u_input.c, u_input.a), _wgslsmith_sub_u32(42921u, 10693u), true), select(_wgslsmith_sub_u32(u_input.c, u_input.c), ~u_input.a, true)), -26865i, _wgslsmith_mult_i32(abs(~u_input.d), reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, 24493i, u_input.d), vec3<i32>(1i, -20351i, 0i)))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-306f, _wgslsmith_f_op_f32(f32(-1f) * -1048f)), _wgslsmith_f_op_f32(step(-934f, _wgslsmith_f_op_f32(step(486f, 757f))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(761f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -176f)))), vec3<u32>(4294967295u, 20477u, firstTrailingBit(u_input.a)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(func_1(), func_1());
    var var_1 = Struct_3(var_0.a, var_0.a.c);
    let var_2 = var_0.a.b.x;
    let var_3 = func_5(Struct_3(Struct_1(any(select(vec4<bool>(var_1.a.a, false, var_0.b.a, false), vec4<bool>(false, var_0.a.a, var_1.a.a, true), vec4<bool>(false, true, var_0.b.a, var_1.a.a))), ~func_1().b, -_wgslsmith_dot_vec2_i32(u_input.b, u_input.b), _wgslsmith_mod_i32(firstTrailingBit(var_1.b), -u_input.b.x), _wgslsmith_div_f32(var_1.a.e, 841f)), 0i), var_1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.b.e, -1076f))), vec3<u32>(~_wgslsmith_clamp_u32(var_0.a.b.x << (4294967295u % 32u), _wgslsmith_mult_u32(var_1.a.b.x, 34925u), ~u_input.a), _wgslsmith_dot_vec4_u32(~select(vec4<u32>(var_0.a.b.x, 4294967295u, 1u, u_input.a), vec4<u32>(9518u, 1849u, 1u, 61618u), vec4<bool>(var_0.a.a, true, true, true)), ~(~vec4<u32>(var_0.a.b.x, 0u, var_0.a.b.x, 79091u))), ~func_3(var_0.b.a)));
    var var_4 = var_3.b;
    var var_5 = Struct_2(var_3, var_3);
    var var_6 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_0.a.e, var_3.e))), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b.e, var_3.e) - vec2<f32>(var_1.a.e, 380f)))), vec2<f32>(_wgslsmith_f_op_f32(select(-1000f, var_1.a.e, false)), _wgslsmith_f_op_f32(exp2(var_5.b.e)))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(392f, 2654f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.e, var_0.b.e))) + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.e)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_5.b.e, -1670f) + _wgslsmith_f_op_f32(trunc(-812f))))));
    var var_7 = ~(vec3<u32>(var_1.a.b.x, 1u ^ var_0.b.b.x, 51055u >> (func_4(vec4<u32>(4294967295u, var_3.b.x, 2991u, 38063u), 8924i, Struct_3(Struct_1(true, var_5.a.b, var_5.a.d, 0i, -247f), var_3.d)).b.x % 32u)) >> (_wgslsmith_mod_vec3_u32(~(~var_3.b), (var_5.a.b | var_5.b.b) | ~var_5.b.b) % vec3<u32>(32u)));
    let var_8 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1214f), var_3.e));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.b.x, firstLeadingBit(~countOneBits(vec3<i32>(-8816i, var_0.b.d, 1i)) | vec3<i32>(1i, -18754i, ~2147483647i)), select(-10031i, func_1().c, false), select(_wgslsmith_sub_i32(0i, var_5.b.d & var_0.b.c) ^ _wgslsmith_div_i32(select(var_1.a.d, u_input.d, var_3.a), reverseBits(var_5.b.c)), var_1.a.d, any(select(vec2<bool>(var_3.a, true), vec2<bool>(var_1.a.a, var_1.a.a), vec2<bool>(true, true))) || !var_0.a.a), vec2<f32>(-549f, _wgslsmith_f_op_f32(var_6.x + var_6.x)));
}

