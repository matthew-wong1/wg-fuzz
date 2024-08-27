struct Struct_1 {
    a: i32,
    b: i32,
    c: i32,
    d: i32,
    e: vec4<u32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: vec3<f32> = vec3<f32>(-610f, 596f, -738f);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: i32) -> f32 {
    let var_0 = Struct_2(!vec2<bool>(true, select(false, true, all(vec2<bool>(true, true)))), vec4<bool>(true, true, true, true));
    var var_1 = var_0.b.x;
    var var_2 = 526f;
    var var_3 = Struct_1(select(-1i, -_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0, 0i, arg_0, 8046i), vec4<i32>(arg_0, arg_0, -67089i, 53634i)), true), arg_0 >> (~u_input.b % 32u), ~arg_0, abs(abs(select(min(arg_0, arg_0), 1i, var_0.a.x))), ~min(vec4<u32>(u_input.c, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 4294967295u), vec2<u32>(0u, u_input.a)), abs(0u), 4294967295u), ~_wgslsmith_mod_vec4_u32(vec4<u32>(1u, u_input.b, 4294967295u, u_input.d), vec4<u32>(4294967295u, 1u, u_input.c, u_input.b))));
    let var_4 = _wgslsmith_clamp_u32(u_input.b, ~0u, 31670u);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(global1.x))))));
}

fn func_4(arg_0: vec4<u32>, arg_1: f32, arg_2: Struct_2, arg_3: vec2<f32>) -> bool {
    var var_0 = Struct_2(select(!(!arg_2.a), arg_2.b.yx, select(arg_2.b.zw, !select(vec2<bool>(false, arg_2.b.x), arg_2.b.yz, true), !select(vec2<bool>(true, arg_2.a.x), vec2<bool>(false, arg_2.b.x), vec2<bool>(false, arg_2.a.x)))), !select(!arg_2.b, !vec4<bool>(arg_2.b.x, false, arg_2.b.x, true), arg_2.b.x));
    var var_1 = arg_3.x;
    let var_2 = abs(0i) >> (1u % 32u);
    var var_3 = Struct_1(_wgslsmith_add_i32(var_2, ~2147483647i), ~(~_wgslsmith_add_i32(2147483647i, 0i)), firstLeadingBit(var_2) ^ 1i, var_2, _wgslsmith_add_vec4_u32(firstTrailingBit(arg_0), firstTrailingBit(_wgslsmith_clamp_vec4_u32(arg_0, arg_0, _wgslsmith_clamp_vec4_u32(arg_0, vec4<u32>(21996u, u_input.b, 1542u, arg_0.x), vec4<u32>(50084u, arg_0.x, 1u, arg_0.x))))));
    var_3 = Struct_1(reverseBits(-1i), ~(~_wgslsmith_clamp_i32(var_2, var_3.a, 1i)), var_2, select(~var_3.a, _wgslsmith_dot_vec2_i32(-vec2<i32>(-1i, 2147483647i), vec2<i32>(var_2, 0i) >> ((vec2<u32>(47063u, arg_0.x) >> (var_3.e.zx % vec2<u32>(32u))) % vec2<u32>(32u))), all(select(vec3<bool>(false, false, var_0.b.x), vec3<bool>(true, false, true), vec3<bool>(false, false, arg_2.a.x)))), max(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, var_3.e.x, 68670u), vec3<u32>(u_input.d, 0u, u_input.d)), select(4294967295u, ~u_input.b, true), 4294967295u, 36621u), arg_0));
    return all(select(var_0.b.xxy, select(vec3<bool>(747f == global1.x, arg_2.a.x, arg_2.b.x), !vec3<bool>(true, false, arg_2.a.x), false), !(!select(arg_2.b.yyx, vec3<bool>(true, true, arg_2.b.x), false))));
}

fn func_2() -> u32 {
    global0 = !any(select(select(vec4<bool>(false, false, true, false), select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false), true), true), vec4<bool>(true, all(vec2<bool>(false, false)), true, false), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true)), true)));
    global0 = func_4(~abs(_wgslsmith_div_vec4_u32(vec4<u32>(1u, 4294967295u, u_input.b, 1u), vec4<u32>(4294967295u, 1u, 4294967295u, 4294967295u))) << (vec4<u32>(u_input.c, _wgslsmith_mod_u32(u_input.b, 1u), u_input.b << (~24833u % 32u), 31306u) % vec4<u32>(32u)), -489f, Struct_2(vec2<bool>(!any(vec4<bool>(false, true, false, false)), true), vec4<bool>(true, true, true, true)), vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3(1i)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-396f + global1.x)))));
    var var_0 = ~1i;
    var_0 = min(~53109i, ~_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(1i, reverseBits(-2147483647i))));
    let var_1 = ~vec2<u32>(_wgslsmith_add_u32(max(27952u, 32811u), 28788u), u_input.a);
    return u_input.c;
}

fn func_1(arg_0: vec4<bool>, arg_1: vec3<f32>, arg_2: bool, arg_3: vec4<f32>) -> i32 {
    let var_0 = u_input.b;
    var var_1 = vec2<u32>(~_wgslsmith_clamp_u32(4294967295u, u_input.b, ~(u_input.c & 41216u)), func_2());
    let var_2 = Struct_1(firstLeadingBit(1i), select(~_wgslsmith_sub_i32(1i, _wgslsmith_div_i32(-27968i, -2147483647i)), (_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 2147483647i, 2147483647i), vec3<i32>(8298i, 46507i, 1i)) >> (0u % 32u)) >> (_wgslsmith_sub_u32(var_1.x, max(4294967295u, var_0)) % 32u), false), _wgslsmith_mult_i32(select(-1i, ~(i32(-1i) * -3623i), arg_0.x), max(2147483647i, 43993i << (min(u_input.c, var_0) % 32u))), _wgslsmith_dot_vec2_i32(abs(-vec2<i32>(1i, -2147483647i)), ~(-countOneBits(vec2<i32>(0i, 9843i)))), ~(~countOneBits(vec4<u32>(11293u, 41984u, 79791u, u_input.b))) | (select(vec4<u32>(38412u, 0u, 1u, 25074u), vec4<u32>(var_0, var_0, var_0, u_input.c), arg_0) & vec4<u32>(reverseBits(u_input.b), abs(22205u), var_1.x, 1u << (1u % 32u))));
    let var_3 = Struct_2(select(vec2<bool>(all(arg_0), func_4(~vec4<u32>(u_input.a, var_0, 13633u, 34800u), _wgslsmith_f_op_f32(f32(-1f) * -1000f), Struct_2(vec2<bool>(false, arg_2), vec4<bool>(false, false, arg_2, arg_2)), vec2<f32>(arg_1.x, arg_1.x))), !arg_0.zz, select(!arg_0.zz, !arg_0.wx, !all(arg_0))), arg_0);
    let var_4 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -490f), _wgslsmith_f_op_f32(exp2(arg_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1317f + arg_3.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1383f * arg_3.x))))));
    return _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(var_2.d, ~var_2.c, -15028i, -1i), abs(vec4<i32>(-1i, var_2.a, var_2.b, var_2.a)) << (~vec4<u32>(var_0, var_1.x, 4294967295u, 1u) % vec4<u32>(32u))), vec4<i32>(0i, _wgslsmith_mult_i32(_wgslsmith_add_i32(1i, 21561i), 1i), ~_wgslsmith_sub_i32(var_2.a, 0i), reverseBits(2147483647i) ^ var_2.a)), _wgslsmith_mod_vec4_i32(max(vec4<i32>(var_2.a, var_2.d, 0i, var_2.c), firstLeadingBit(vec4<i32>(var_2.d, -4064i, var_2.d, var_2.b))) | vec4<i32>(0i, 1i, -1005i >> (0u % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(-18563i, 2147483647i, -10326i, 0i), vec4<i32>(var_2.c, var_2.b, 986i, var_2.b))), vec4<i32>(_wgslsmith_mod_i32(2147483647i, var_2.c), var_2.c, _wgslsmith_dot_vec3_i32(vec3<i32>(-29457i, var_2.b, -1i), vec3<i32>(var_2.c, var_2.a, var_2.d) | vec3<i32>(var_2.d, 2147483647i, var_2.b)), firstLeadingBit(var_2.c))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(1i, min(35110i, reverseBits(-2147483647i | func_1(vec4<bool>(true, true, true, true), vec3<f32>(global1.x, global1.x, global1.x), true, vec4<f32>(1260f, -795f, global1.x, -530f)))), -max(1i, min(1i, 21945i)), ~select(-1i, -(~(-31928i)), all(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true)))), abs(vec4<u32>(1u, u_input.a | 1u, _wgslsmith_mod_u32(~u_input.d, u_input.c >> (0u % 32u)), ~u_input.c)));
    var var_1 = ~vec4<u32>(~_wgslsmith_clamp_u32(34971u, _wgslsmith_add_u32(0u, 10939u), u_input.c), abs(65598u), countOneBits(~0u) >> (_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(var_0.e.x, 4294967295u, u_input.d, var_0.e.x), vec4<u32>(var_0.e.x, u_input.c, var_0.e.x, 41566u)), ~var_0.e) % 32u), func_2());
    let x = u_input.a;
    s_output = StorageBuffer(-194f, _wgslsmith_f_op_f32(func_3(countOneBits(-var_0.b))));
}

