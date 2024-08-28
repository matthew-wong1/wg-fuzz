struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: bool,
    d: vec3<f32>,
    e: bool,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: u32,
    b: i32,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
    c: vec4<bool>,
    d: vec2<i32>,
}

struct Struct_5 {
    a: vec3<bool>,
    b: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: vec3<u32>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: u32) -> u32 {
    let var_0 = _wgslsmith_div_vec4_u32(~(~arg_0 ^ (min(arg_0, vec4<u32>(arg_2.a, u_input.a.x, global1.x, 24438u)) >> (vec4<u32>(4294967295u, 15856u, arg_3, 15169u) % vec4<u32>(32u)))), abs(_wgslsmith_add_vec4_u32(arg_0, vec4<u32>(43397u, _wgslsmith_add_u32(arg_0.x, 59495u), arg_3 | 20394u, _wgslsmith_sub_u32(1462u, global1.x)))));
    var var_1 = arg_2;
    global1 = ~select(vec3<u32>(~_wgslsmith_clamp_u32(arg_2.a, arg_3, 1u), ~_wgslsmith_clamp_u32(arg_2.a, arg_2.a, 7653u), abs(0u)), vec3<u32>(4294967295u, ~u_input.a.x, ~global1.x), arg_1.x != select(i32(-1i) * -2147483647i, arg_1.x, arg_2.c));
    var var_2 = Struct_4(arg_2.d.x, Struct_3(_wgslsmith_mod_u32(var_1.a, 64937u), _wgslsmith_sub_i32(1i, 10651i)), !arg_2.b, max(_wgslsmith_mod_vec2_i32(-arg_1.wy, arg_1.wz), min(firstTrailingBit(_wgslsmith_div_vec2_i32(vec2<i32>(arg_1.x, -3855i), arg_1.xw)), _wgslsmith_mod_vec2_i32(arg_1.xy, arg_1.xw) >> (countOneBits(vec2<u32>(global1.x, arg_0.x)) % vec2<u32>(32u)))));
    let var_3 = _wgslsmith_dot_vec4_u32(min(arg_0, _wgslsmith_div_vec4_u32(abs(var_0), countOneBits(var_0))) & vec4<u32>(abs(~var_2.b.a), _wgslsmith_mult_u32(u_input.a.x, 4294967295u >> (arg_2.a % 32u)), abs(reverseBits(var_0.x)), 1u), vec4<u32>(abs(global1.x), ~arg_0.x, var_1.a, ~_wgslsmith_clamp_u32(arg_2.a, select(1638u, var_0.x, false), var_1.a)));
    return 4294967295u;
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: vec4<u32>) -> i32 {
    var var_0 = 331f;
    var var_1 = arg_1;
    var var_2 = Struct_5(!select(select(arg_1.b.wyw, !vec3<bool>(var_1.c, false, arg_1.c), !arg_1.c), !(!vec3<bool>(var_1.c, false, false)), true), reverseBits(0u));
    let var_3 = Struct_3(~(~(~(22350u ^ var_1.a))), -1i);
    var var_4 = var_1.d.x;
    return var_3.b;
}

fn func_2(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: u32, arg_3: Struct_4) -> i32 {
    var var_0 = Struct_1(5748u, arg_3.c, true, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_3.a, arg_3.a, arg_3.a)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1270f, arg_3.a, 715f) * vec3<f32>(502f, arg_3.a, arg_3.a)))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -697f), arg_3.a, _wgslsmith_f_op_f32(-1000f * arg_3.a)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-979f, -688f, arg_3.a))) - _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1000f, arg_3.a, arg_3.a))))))), all(arg_1.wy));
    let var_1 = Struct_1(global1.x, arg_3.c, var_0.d.x < var_0.d.x, var_0.d, (true & any(vec2<bool>(false, false))) && true);
    var var_2 = var_1;
    global0 = false;
    let var_3 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-191f * 989f)), arg_3.b, !(!select(select(var_1.b, vec4<bool>(true, arg_0.a, false, false), vec4<bool>(var_1.e, false, false, var_0.c)), var_0.b, !var_2.b)), ~arg_3.d);
    return func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(1132f, var_3.a, -191f, 828f) - vec4<f32>(-778f, var_1.d.x, var_2.d.x, 1012f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3.a, 1028f, 639f, var_0.d.x) * vec4<f32>(arg_3.a, 435f, var_2.d.x, -892f)))) + vec4<f32>(_wgslsmith_f_op_f32(ceil(1350f)), var_3.a, _wgslsmith_f_op_f32(min(736f, var_2.d.x)), var_0.d.x))), Struct_1(max(var_1.a, min(u_input.a.x ^ 4294967295u, ~var_1.a)), var_1.b, true && !arg_0.a, _wgslsmith_f_op_vec3_f32(-var_1.d), all(!arg_1)), ~vec4<u32>(~4294967295u, var_2.a, 1u, arg_3.b.a) << (vec4<u32>(~1u, _wgslsmith_clamp_u32(func_3(vec4<u32>(0u, 11618u, 4294967295u, arg_2), vec4<i32>(var_3.b.b, var_3.d.x, 1i, 5560i), Struct_1(arg_3.b.a, arg_3.c, arg_1.x, var_1.d, var_2.e), global1.x), 24898u, var_3.b.a >> (4271u % 32u)), ~4294967295u, _wgslsmith_mod_u32(~var_2.a, var_1.a)) % vec4<u32>(32u)));
}

fn func_5(arg_0: vec2<i32>, arg_1: vec3<f32>, arg_2: vec3<i32>) -> u32 {
    let var_0 = Struct_2(!(!any(vec4<bool>(false, true, false, false))));
    var var_1 = arg_0;
    global1 = ~min(vec3<u32>(global1.x, global1.x, _wgslsmith_mod_u32(1u, 46318u >> (u_input.a.x % 32u))), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 42691u, 25719u, u_input.a.x), reverseBits(vec4<u32>(9968u, 40834u, global1.x, 23966u))), u_input.a.x, ~max(4052u, 1u)));
    var var_2 = _wgslsmith_f_op_f32(arg_1.x * 640f);
    var var_3 = Struct_1(1794u, select(select(select(vec4<bool>(true, true, var_0.a, var_0.a), !vec4<bool>(var_0.a, var_0.a, false, var_0.a), vec4<bool>(true, false, var_0.a, true)), select(vec4<bool>(true, false, false, var_0.a), vec4<bool>(true, true, false, false), vec4<bool>(true, var_0.a, false, true)), (var_0.a && true) && all(vec4<bool>(false, false, true, var_0.a))), select(select(select(vec4<bool>(false, var_0.a, true, true), vec4<bool>(var_0.a, true, true, true), false), select(vec4<bool>(false, true, var_0.a, false), vec4<bool>(var_0.a, var_0.a, var_0.a, true), true), !vec4<bool>(var_0.a, var_0.a, var_0.a, var_0.a)), vec4<bool>(arg_1.x != arg_1.x, var_0.a & var_0.a, false, true), !vec4<bool>(false, var_0.a, false, true)), true), any(!select(vec4<bool>(var_0.a, false, var_0.a, var_0.a), select(vec4<bool>(var_0.a, var_0.a, true, true), vec4<bool>(var_0.a, false, true, var_0.a), false), select(var_0.a, false, var_0.a))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_1)), !var_0.a);
    return 9756u;
}

fn func_1(arg_0: f32, arg_1: i32, arg_2: Struct_3, arg_3: u32) -> bool {
    let var_0 = vec3<u32>(func_5(_wgslsmith_clamp_vec2_i32(~max(vec2<i32>(arg_2.b, arg_1), vec2<i32>(-7508i, -53939i)), vec2<i32>(func_2(Struct_2(true), vec4<bool>(true, true, false, false), 4294967295u, Struct_4(arg_0, Struct_3(19746u, 2147483647i), vec4<bool>(true, true, true, true), vec2<i32>(arg_1, -11374i))), _wgslsmith_clamp_i32(arg_2.b, arg_1, arg_2.b)), vec2<i32>(func_4(vec4<f32>(1357f, -1293f, -432f, arg_0), Struct_1(4294967295u, vec4<bool>(false, true, false, true), true, vec3<f32>(1416f, arg_0, arg_0), true), vec4<u32>(global1.x, global1.x, global1.x, global1.x)), firstTrailingBit(arg_1))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(arg_0, 576f, arg_0), vec3<f32>(arg_0, -1346f, arg_0))))), select(~_wgslsmith_mod_vec3_i32(vec3<i32>(arg_2.b, -22343i, 1i), vec3<i32>(0i, arg_1, arg_1)), _wgslsmith_div_vec3_i32(vec3<i32>(arg_1, arg_2.b, arg_2.b) | vec3<i32>(arg_1, arg_2.b, arg_1), -vec3<i32>(arg_1, -11309i, -2147483647i)), false)), 1u | arg_2.a, select(~reverseBits(global1.x) >> (~(arg_2.a << (72521u % 32u)) % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(arg_2.a, u_input.a.x), arg_2.a & 4294967295u, 41361u, ~4294967295u), ~min(vec4<u32>(1u, u_input.a.x, global1.x, arg_2.a), vec4<u32>(121926u, 85253u, u_input.a.x, arg_2.a))), any(vec4<bool>(false, true, true, any(vec2<bool>(true, false))))));
    var var_1 = vec4<u32>(u_input.a.x & _wgslsmith_dot_vec2_u32(reverseBits(~var_0.xy), abs(vec2<u32>(global1.x, var_0.x))), ~var_0.x, firstLeadingBit(0u), 20062u);
    var var_2 = arg_2;
    var_1 = abs(~vec4<u32>(var_0.x, ~var_0.x, reverseBits(~82370u), firstLeadingBit(arg_2.a)));
    var var_3 = Struct_5(!vec3<bool>(true && all(vec2<bool>(true, true)), false, false), var_0.x);
    return var_3.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(83637u, 23462u, 1u)), vec3<u32>(~(~u_input.a.x), 24384u, _wgslsmith_dot_vec2_u32(vec2<u32>(~u_input.a.x, u_input.a.x >> (u_input.a.x % 32u)), vec2<u32>(countOneBits(u_input.a.x), ~1u))));
    global0 = any(vec3<bool>(false, true, false));
    let var_1 = !(!select(select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false)), func_1(866f, -2147483647i, Struct_3(u_input.a.x, -58935i), var_0)), !select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), true), select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), false))));
    var var_2 = Struct_3(~_wgslsmith_clamp_u32(93298u, ~1u, global1.x), 26898i);
    global1 = ~(~abs(~vec3<u32>(global1.x, 4294967295u, var_0)) & ~vec3<u32>(u_input.a.x, ~1u, var_2.a));
    var_2 = Struct_3((_wgslsmith_mod_u32(1u | var_2.a, func_5(vec2<i32>(var_2.b, var_2.b), vec3<f32>(752f, -1016f, -557f), vec3<i32>(-2147483647i, var_2.b, var_2.b))) << (_wgslsmith_clamp_u32(~65964u, 33119u, global1.x & u_input.a.x) % 32u)) >> (min(26768u, global1.x) % 32u), 14683i);
    let x = u_input.a;
    s_output = StorageBuffer(var_0, _wgslsmith_f_op_f32(-2105f + -274f));
}

