struct Struct_1 {
    a: f32,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec4<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: vec3<f32>,
    d: Struct_2,
}

struct Struct_5 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: f32,
    d: vec3<f32>,
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

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2() -> bool {
    var var_0 = select(~firstLeadingBit(~vec3<u32>(u_input.b, u_input.c.x, 0u)) | ~vec3<u32>(u_input.b >> (u_input.b % 32u), u_input.c.x, ~u_input.c.x), ~(vec3<u32>(4294967295u, 45649u, u_input.b) | _wgslsmith_clamp_vec3_u32(vec3<u32>(22749u, u_input.b, 12947u), vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<u32>(1u, 1u, u_input.c.x))) >> (vec3<u32>(~u_input.b, _wgslsmith_mod_u32(1u & u_input.b, u_input.b), ~1u) % vec3<u32>(32u)), !select(vec3<bool>(true, true, true), vec3<bool>(false, true, all(vec2<bool>(false, true))), vec3<bool>(true, true, true)));
    var_0 = _wgslsmith_mult_vec3_u32(min(vec3<u32>(~25681u, ~(~u_input.b), _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, u_input.c.x, u_input.b, var_0.x), vec4<u32>(25333u, 4294967295u, var_0.x, var_0.x)), vec4<u32>(26227u, var_0.x, var_0.x, var_0.x) ^ vec4<u32>(u_input.b, 22830u, 4294967295u, 37320u))), ~min(firstLeadingBit(vec3<u32>(u_input.c.x, u_input.c.x, 23532u)), vec3<u32>(7147u, var_0.x, var_0.x))), vec3<u32>(u_input.b, firstTrailingBit(~firstTrailingBit(var_0.x)), 1u));
    var_0 = vec3<u32>(~5914u, u_input.c.x, u_input.b);
    var_0 = min(firstLeadingBit(~(~(~vec3<u32>(1u, 38488u, 1u)))), ~select(~vec3<u32>(42895u, var_0.x, var_0.x), vec3<u32>(abs(var_0.x), ~u_input.b, u_input.c.x), reverseBits(u_input.a.x) >= u_input.a.x));
    let var_1 = vec3<u32>(1u, ~var_0.x, 1u);
    return false;
}

fn func_3(arg_0: vec4<f32>, arg_1: vec4<f32>, arg_2: u32, arg_3: Struct_3) -> u32 {
    var var_0 = -35618i;
    var_0 = _wgslsmith_sub_i32(min(_wgslsmith_mod_i32((u_input.a.x | u_input.a.x) >> (~4294967295u % 32u), u_input.a.x), -(~(-56379i))), 53919i);
    var var_1 = arg_1.x;
    var_1 = -680f;
    var var_2 = vec3<i32>(_wgslsmith_mod_i32(u_input.a.x, _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 5093i), vec4<i32>(u_input.a.x, u_input.a.x, 1i, u_input.a.x)), firstTrailingBit(vec4<i32>(29245i, 0i, u_input.a.x, 21095i))), u_input.a.x)), -1i, -1i);
    return arg_3.b.x;
}

fn func_1(arg_0: vec3<u32>) -> vec3<f32> {
    var var_0 = u_input.a.x;
    var_0 = 2147483647i;
    let var_1 = any(vec4<bool>(true, true, !func_2(), true));
    let var_2 = firstLeadingBit(~vec4<u32>(arg_0.x, u_input.b, func_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(-738f, 612f, 1000f, -788f) + vec4<f32>(-803f, 2208f, -141f, -165f)), vec4<f32>(704f, -1024f, 1641f, -1000f), u_input.c.x, Struct_3(vec3<bool>(var_1, var_1, var_1), vec4<u32>(24522u, u_input.c.x, arg_0.x, 0u))), ~func_3(vec4<f32>(145f, -262f, -640f, -1000f), vec4<f32>(-322f, -908f, -2086f, 228f), 1u, Struct_3(vec3<bool>(false, var_1, false), vec4<u32>(68679u, u_input.b, u_input.b, u_input.b)))));
    let var_3 = !(!vec3<bool>(all(select(vec4<bool>(var_1, false, false, true), vec4<bool>(var_1, var_1, false, var_1), vec4<bool>(var_1, false, false, var_1))), true, func_2()));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(290f, -1509f, false)), -1442f, _wgslsmith_f_op_f32(415f * 522f)))));
}

fn func_4(arg_0: u32, arg_1: vec3<u32>, arg_2: bool, arg_3: vec3<f32>) -> i32 {
    var var_0 = !select(vec2<bool>(true, any(!vec4<bool>(arg_2, arg_2, true, false))), select(vec2<bool>(!arg_2, arg_2), select(!vec2<bool>(arg_2, false), vec2<bool>(arg_2, true), !vec2<bool>(arg_2, arg_2)), !vec2<bool>(arg_2, false)), false);
    let var_1 = false != var_0.x;
    let var_2 = ~(-2147483647i);
    var var_3 = ~vec2<i32>(-38866i, firstLeadingBit(min(1i, -9667i)));
    let var_4 = select(select(select(!vec2<bool>(arg_2, arg_2), !vec2<bool>(false, var_0.x), (arg_0 << (1u % 32u)) >= 1u), select(select(select(vec2<bool>(true, var_1), vec2<bool>(var_1, false), vec2<bool>(false, true)), vec2<bool>(arg_2, arg_2), arg_2), select(!vec2<bool>(arg_2, arg_2), vec2<bool>(arg_2, true), !vec2<bool>(var_1, false)), _wgslsmith_f_op_f32(trunc(-697f)) != -320f), vec2<bool>(true, arg_2)), vec2<bool>(!var_0.x, var_1), select(vec2<bool>(true, false), vec2<bool>(_wgslsmith_f_op_f32(f32(-1f) * -641f) == _wgslsmith_f_op_f32(max(1874f, arg_3.x)), var_1), !vec2<bool>(!var_1, u_input.a.x < u_input.a.x)));
    return ~max(_wgslsmith_dot_vec2_i32(min(vec2<i32>(var_2, 42972i), _wgslsmith_div_vec2_i32(u_input.a, vec2<i32>(var_2, 50534i))), ~_wgslsmith_div_vec2_i32(u_input.a, u_input.a)), _wgslsmith_clamp_i32(_wgslsmith_div_i32(firstTrailingBit(1773i), _wgslsmith_add_i32(0i, -17771i)), max(1539i, var_3.x), -2147483647i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = any(vec2<bool>(false, true));
    let var_1 = Struct_3(!vec3<bool>(false, false, all(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false)))), vec4<u32>(u_input.c.x, ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, 23105u, u_input.c.x), vec3<u32>(24434u, 1u, u_input.b))), u_input.b, _wgslsmith_dot_vec2_u32(u_input.c ^ vec2<u32>(u_input.b, u_input.b), ~(vec2<u32>(u_input.c.x, 4294967295u) ^ vec2<u32>(u_input.c.x, u_input.b)))));
    var_0 = func_4(_wgslsmith_mult_u32(0u, 1u), _wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.c.x, 77236u, var_1.b.x), var_1.b.wzy, vec3<u32>(var_1.b.x, u_input.b, 9492u)), countOneBits(vec3<u32>(4294967295u, u_input.c.x, 15534u))), var_1.b.wyy), !var_1.a.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-489f, -823f, 954f) + vec3<f32>(108f, 224f, 368f)), _wgslsmith_f_op_vec3_f32(func_1(var_1.b.zyw))) + vec3<f32>(-886f, _wgslsmith_f_op_f32(abs(351f)), _wgslsmith_f_op_f32(-1492f + -921f)))) <= u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(_wgslsmith_div_u32(var_1.b.x, var_1.b.x), 4294967295u), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(1f, 1f))), -623f, vec3<f32>(-463f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1655f))), 1f));
}

