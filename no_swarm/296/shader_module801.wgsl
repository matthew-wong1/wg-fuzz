struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec3<f32>,
    c: f32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_1,
    c: vec3<bool>,
    d: vec4<i32>,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: f32,
    b: i32,
    c: f32,
    d: bool,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: i32,
    d: f32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
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

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> vec3<u32> {
    let var_0 = Struct_2(vec4<u32>(min(1u, ~abs(4294967295u)), 1u, _wgslsmith_mod_u32(~max(47376u, 19778u), _wgslsmith_add_u32(firstTrailingBit(0u), _wgslsmith_dot_vec2_u32(vec2<u32>(16582u, 1u), vec2<u32>(42120u, 43877u)))), countOneBits(~_wgslsmith_sub_u32(1u, 1u))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-402f, -1051f, 175f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(385f, -1554f, 100f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-328f))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-493f * _wgslsmith_f_op_f32(-567f - -1873f)))));
    var var_1 = Struct_1(-max(u_input.a.x, _wgslsmith_mult_i32(2147483647i, u_input.a.x) | 1i));
    let var_2 = !any(vec4<bool>(true, !(var_0.a.x != 1u), false, false));
    var_1 = Struct_1(abs(-1i));
    var var_3 = var_0;
    return vec3<u32>((firstLeadingBit(1u) >> (var_0.a.x % 32u)) >> (max(~(~var_0.a.x), var_3.a.x) % 32u), var_0.a.x, firstLeadingBit(_wgslsmith_clamp_u32(~var_3.a.x, 20823u, _wgslsmith_mult_u32(_wgslsmith_add_u32(var_3.a.x, var_3.a.x), 31014u))));
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_5) -> u32 {
    var var_0 = firstLeadingBit(~(_wgslsmith_mult_vec3_u32(vec3<u32>(38308u, arg_1.e.x, 4294967295u), vec3<u32>(arg_1.e.x, arg_1.e.x, arg_1.e.x)) ^ abs(vec3<u32>(53334u, arg_1.e.x, 1u))) & ~(~countOneBits(vec3<u32>(arg_1.e.x, arg_1.e.x, 27534u))));
    var_0 = func_3();
    var var_1 = Struct_2(~(~vec4<u32>(0u, ~0u, var_0.x >> (var_0.x % 32u), select(var_0.x, arg_1.e.x, arg_1.d))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(1259f, arg_1.c)), _wgslsmith_f_op_f32(trunc(-525f)), arg_1.c) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.c, arg_1.a, arg_1.a) + vec3<f32>(arg_1.c, arg_1.a, -432f)))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(arg_1.a)), 1476f, _wgslsmith_div_f32(arg_1.c, arg_1.c)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_1.a, arg_1.a, -1366f), _wgslsmith_f_op_vec3_f32(vec3<f32>(803f, arg_1.c, arg_1.c) * vec3<f32>(arg_1.c, -825f, -632f))))), select(vec3<bool>(arg_1.d, all(vec2<bool>(arg_1.d, false)), true), vec3<bool>(false, all(vec2<bool>(arg_1.d, false)), true), vec3<bool>(arg_1.d, true, arg_1.d)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_1.c)) - _wgslsmith_f_op_f32(-1465f + arg_1.c)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1000f, 959f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1202f + -1853f)))))));
    var var_2 = Struct_3(arg_0, Struct_1(_wgslsmith_add_i32(-arg_0.x, 48501i) & u_input.a.x), select(!(!vec3<bool>(arg_1.d, true, arg_1.d)), !(!(!vec3<bool>(false, arg_1.d, arg_1.d))), true), _wgslsmith_div_vec4_i32(abs(_wgslsmith_mult_vec4_i32(-vec4<i32>(arg_1.b, arg_1.b, u_input.a.x, 0i), vec4<i32>(u_input.a.x, arg_1.b, 0i, arg_0.x))), vec4<i32>(arg_0.x, 51482i, countOneBits(~arg_0.x), arg_1.b << (abs(var_1.a.x) % 32u))));
    let var_3 = var_2.c.xy;
    return 46723u;
}

fn func_4(arg_0: u32, arg_1: vec4<bool>, arg_2: vec3<u32>) -> Struct_3 {
    let var_0 = countOneBits(_wgslsmith_clamp_vec4_i32(firstTrailingBit(~u_input.a), vec4<i32>(abs(u_input.a.x), countOneBits(5239i), abs(-33764i), u_input.a.x), ~_wgslsmith_add_vec4_i32(u_input.a, vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x))) | (u_input.a | _wgslsmith_clamp_vec4_i32(firstTrailingBit(u_input.a), vec4<i32>(u_input.a.x, -2147483647i, 2147483647i, 1i), vec4<i32>(2147483647i, u_input.a.x, u_input.a.x, u_input.a.x) >> (vec4<u32>(33817u, 21261u, arg_0, 1u) % vec4<u32>(32u)))));
    let var_1 = Struct_5(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1266f - -297f)))), _wgslsmith_sub_i32(~(-2147483647i), ~_wgslsmith_clamp_i32(-2147483647i, ~(-1i), var_0.x)), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(128f)) * -676f), 871f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-791f + _wgslsmith_f_op_f32(1008f - -1555f)) * 1517f), !(all(arg_1.yw) != true))), !arg_1.x, ~arg_2.yz);
    var var_2 = 48193u;
    let var_3 = Struct_1(min(u_input.a.x, -1i));
    let var_4 = min(var_0.yyz, _wgslsmith_sub_vec3_i32(~(vec3<i32>(var_3.a, -2147483647i, 2147483647i) >> (arg_2 % vec3<u32>(32u))), u_input.a.wwy)) << (abs(~vec3<u32>(1u, 1u, 34727u)) % vec3<u32>(32u));
    return Struct_3(-vec3<i32>(_wgslsmith_add_i32(reverseBits(var_0.x), countOneBits(var_3.a)), _wgslsmith_dot_vec2_i32(reverseBits(var_0.wx), min(u_input.a.xz, vec2<i32>(-1i, -1i))), abs(_wgslsmith_mult_i32(var_0.x, 17407i))), var_3, vec3<bool>(all(arg_1.zw) & all(arg_1.zww), true, var_1.d), ~(-countOneBits(vec4<i32>(30626i, 11764i, u_input.a.x, var_4.x) << (vec4<u32>(0u, var_1.e.x, 4294967295u, arg_2.x) % vec4<u32>(32u)))));
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: f32) -> Struct_4 {
    var var_0 = func_4(func_2(-vec3<i32>(arg_1.a, ~arg_1.a, ~(-50088i)), Struct_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-177f)) + -1512f), -3440i, _wgslsmith_f_op_f32(-arg_3), false, countOneBits(~vec2<u32>(1u, 28500u)))), vec4<bool>(true, arg_0.x, false, !(!arg_2.x)), vec3<u32>(1u, select(~1u, 66745u, any(vec2<bool>(arg_2.x, false))), func_2(_wgslsmith_mult_vec3_i32(u_input.a.yyy, u_input.a.zww), Struct_5(_wgslsmith_f_op_f32(round(arg_3)), 2147483647i & arg_1.a, arg_3, true, vec2<u32>(0u, 1u)))));
    var var_1 = func_4(28249u, !select(vec4<bool>(false, !arg_0.x, any(vec4<bool>(arg_0.x, var_0.c.x, arg_0.x, true)), all(vec4<bool>(true, arg_2.x, true, arg_0.x))), select(select(vec4<bool>(var_0.c.x, var_0.c.x, false, arg_0.x), vec4<bool>(false, true, true, false), arg_0.x), !vec4<bool>(false, var_0.c.x, false, true), !vec4<bool>(var_0.c.x, false, false, arg_0.x)), !func_4(0u, vec4<bool>(arg_0.x, arg_0.x, true, false), vec3<u32>(1u, 0u, 4294967295u)).c.x), ~(~_wgslsmith_mult_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(35551u, 1u, 1u))));
    let var_2 = _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_3), arg_3)), -1061f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(1000f, arg_3))), _wgslsmith_f_op_f32(trunc(-1000f))))));
    var var_3 = vec4<f32>(arg_3, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(1131f, 577f), _wgslsmith_f_op_f32(var_2.x + -226f)) * var_2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-519f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_3), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3) - arg_3))));
    let var_4 = _wgslsmith_f_op_vec3_f32(var_3.yyz + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_2.x, -187f)))), _wgslsmith_f_op_f32(-var_2.x), 1125f));
    return Struct_4(arg_2.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(select(vec3<bool>(true, all(vec3<bool>(false, false, true)), true | all(vec4<bool>(false, true, false, false))), vec3<bool>(true, true, true), false), Struct_1(u_input.a.x), !(!(!select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true)))), 2543f);
    let var_1 = Struct_3(~(~(-vec3<i32>(-1i, 1i, 30964i))) ^ (~min(u_input.a.zzy, u_input.a.zzy) ^ vec3<i32>(_wgslsmith_mod_i32(-1i, -5327i), _wgslsmith_clamp_i32(28772i, -55043i, u_input.a.x), 12553i)), Struct_1(~u_input.a.x), select(select(func_4(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 11904u), vec2<u32>(71031u, 59712u)), vec4<bool>(var_0.a, false, var_0.a, var_0.a), select(vec3<u32>(1u, 25556u, 1u), vec3<u32>(54574u, 15049u, 4294967295u), vec3<bool>(var_0.a, var_0.a, var_0.a))).c, !func_4(4294967295u, vec4<bool>(false, var_0.a, var_0.a, var_0.a), vec3<u32>(4294967295u, 14352u, 1u)).c, u_input.a.x == _wgslsmith_dot_vec2_i32(vec2<i32>(1i, u_input.a.x), vec2<i32>(1i, u_input.a.x))), !(!vec3<bool>(var_0.a, false, var_0.a)), select(!select(vec3<bool>(false, false, false), vec3<bool>(true, false, var_0.a), false), select(select(vec3<bool>(var_0.a, false, var_0.a), vec3<bool>(false, true, var_0.a), vec3<bool>(var_0.a, false, true)), vec3<bool>(true, true, false), false), !(!vec3<bool>(true, true, var_0.a)))), vec4<i32>(u_input.a.x, _wgslsmith_add_i32(-1i, u_input.a.x), ~select(-1i, u_input.a.x, true), u_input.a.x | -1i) ^ (((vec4<i32>(3544i, u_input.a.x, u_input.a.x, 2147483647i) << (vec4<u32>(9351u, 0u, 53525u, 4294967295u) % vec4<u32>(32u))) >> (~vec4<u32>(0u, 2560u, 36111u, 108660u) % vec4<u32>(32u))) | select(vec4<i32>(u_input.a.x, 15433i, u_input.a.x, 31616i), -vec4<i32>(-42570i, 1i, u_input.a.x, u_input.a.x), select(vec4<bool>(var_0.a, true, false, false), vec4<bool>(true, var_0.a, true, false), false))));
    var_0 = func_1(var_1.c, var_1.b, var_1.c.zz, 494f);
    let var_2 = max(-12643i, u_input.a.x);
    let var_3 = _wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, ~select(reverseBits(0u), ~4700u, var_0.a), _wgslsmith_mult_u32(1u & select(14141u, 1u, true), _wgslsmith_div_u32(~1u, ~6979u))), vec3<u32>(1u, _wgslsmith_sub_u32(1u, 0u), func_2(u_input.a.wwx, Struct_5(709f, ~(-5701i), _wgslsmith_f_op_f32(702f - 1000f), true, countOneBits(vec2<u32>(1u, 106036u))))), ~vec3<u32>(1u, 19726u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), firstTrailingBit(vec2<u32>(4294967295u, 52714u)))));
    var var_4 = var_1.b;
    var var_5 = Struct_4(false);
    let x = u_input.a;
    s_output = StorageBuffer(~(~var_3.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1658f, 1000f, -577f)), vec3<f32>(1087f, 1702f, -1226f), true)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-760f, 1602f, 1063f) * vec3<f32>(1996f, 2722f, 322f)) - vec3<f32>(1149f, 1069f, -1769f)))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-156f + -562f), -1644f, _wgslsmith_f_op_f32(select(1515f, 538f, var_1.c.x))) + vec3<f32>(1f, 1f, 1f))), _wgslsmith_sub_i32(select(44169i | u_input.a.x, -32560i, true) >> (~_wgslsmith_div_u32(22861u, var_3.x) % 32u), var_2), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), reverseBits(vec4<u32>(29066u, _wgslsmith_mult_u32(45964u, var_3.x), var_3.x, var_3.x | ~var_3.x)));
}

