struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<i32>,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<f32>) -> vec4<i32> {
    let var_0 = Struct_2(vec4<i32>(u_input.d, select(abs(u_input.a), min(0i, arg_0.a.x), u_input.a >= u_input.b), _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(arg_0.a.wyw, arg_0.a.wzx), countOneBits(arg_0.a.zxx)), arg_0.a.x), Struct_1(arg_0.e.a), Struct_1(~arg_0.e.a), arg_0.e, arg_0.e);
    var var_1 = arg_0.b.a.x;
    var_1 = u_input.c.x;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1028f) + _wgslsmith_f_op_f32(-arg_1.x));
    var_1 = abs(_wgslsmith_dot_vec3_u32(~min(vec3<u32>(arg_0.d.a.x, 0u, 0u), abs(var_0.e.a.zxz)), var_0.e.a.yww));
    return var_0.a;
}

fn func_2(arg_0: i32) -> i32 {
    var var_0 = Struct_2(func_3(Struct_2(min(-vec4<i32>(u_input.b, -27440i, 7954i, arg_0), vec4<i32>(1i, u_input.d, arg_0, u_input.b) | vec4<i32>(0i, arg_0, u_input.a, u_input.d)), Struct_1(~vec4<u32>(82190u, u_input.c.x, u_input.c.x, u_input.c.x)), Struct_1(select(vec4<u32>(63844u, 0u, u_input.c.x, u_input.c.x), vec4<u32>(u_input.c.x, 11002u, 1u, u_input.c.x), vec4<bool>(true, true, false, true))), Struct_1(vec4<u32>(u_input.c.x, 41330u, u_input.c.x, u_input.c.x)), Struct_1(abs(vec4<u32>(u_input.c.x, 22504u, u_input.c.x, u_input.c.x)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(1000f)), _wgslsmith_f_op_f32(abs(-402f)), -381f) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1240f, 1388f, -501f)))))), Struct_1(~(~vec4<u32>(u_input.c.x, 0u, u_input.c.x, 4294967295u))), Struct_1(~vec4<u32>(~151951u, _wgslsmith_div_u32(u_input.c.x, u_input.c.x), u_input.c.x, 1u)), Struct_1(~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c.x, 1u, u_input.c.x, 0u), vec4<u32>(u_input.c.x, 6765u, u_input.c.x, u_input.c.x)) << (_wgslsmith_add_vec4_u32(abs(vec4<u32>(16153u, 1u, u_input.c.x, u_input.c.x)), ~vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 50708u)) % vec4<u32>(32u))), Struct_1(~vec4<u32>(4294967295u, _wgslsmith_add_u32(u_input.c.x, 1u), _wgslsmith_dot_vec3_u32(u_input.c, u_input.c), ~u_input.c.x)));
    var_0 = Struct_2(countOneBits(var_0.a << (vec4<u32>(firstTrailingBit(1u), ~0u, ~0u, 49610u) % vec4<u32>(32u))), var_0.d, Struct_1(var_0.e.a), Struct_1(var_0.d.a), var_0.d);
    let var_1 = Struct_2(vec4<i32>(arg_0, _wgslsmith_div_i32(-(~arg_0), ~u_input.a), _wgslsmith_sub_i32(_wgslsmith_add_i32(-44113i, arg_0), 2147483647i) ^ 1i, _wgslsmith_sub_i32(arg_0, ~(-2147483647i)) & (26984i & firstTrailingBit(u_input.a))), Struct_1(select(vec4<u32>(reverseBits(1u), u_input.c.x, var_0.d.a.x >> (1u % 32u), ~0u), ~var_0.b.a, !any(vec2<bool>(true, true)))), Struct_1(vec4<u32>(~countOneBits(u_input.c.x), _wgslsmith_mod_u32(_wgslsmith_mult_u32(u_input.c.x, 1u), 47056u), 0u, _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.c.x, u_input.c.x), var_0.d.a.xx, u_input.c.xy), _wgslsmith_add_vec2_u32(u_input.c.xz, var_0.e.a.yw)))), Struct_1(firstTrailingBit(_wgslsmith_mod_vec4_u32(var_0.b.a, var_0.d.a))), Struct_1(_wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(59089u, u_input.c.x, 47674u, 3789u), vec4<u32>(1u, 1u, 1u, u_input.c.x)), _wgslsmith_mod_u32(var_0.b.a.x, 0u), ~74286u, u_input.c.x), select(select(var_0.b.a, var_0.e.a, true), ~var_0.e.a, 6317u > u_input.c.x))));
    let var_2 = 14694u;
    var_0 = Struct_2(abs(select(firstLeadingBit(abs(var_1.a)), vec4<i32>(arg_0, _wgslsmith_sub_i32(-1i, u_input.d), firstLeadingBit(var_0.a.x), 1i), vec4<bool>(true, true, true, true))), Struct_1(firstTrailingBit(~vec4<u32>(1121u, var_0.c.a.x, 0u, 108654u))), Struct_1(vec4<u32>(~0u, firstLeadingBit(_wgslsmith_sub_u32(var_2, var_2)), var_0.b.a.x, 1u & var_1.b.a.x)), var_0.c, var_1.e);
    return -31932i;
}

fn func_1(arg_0: vec3<u32>, arg_1: vec2<bool>, arg_2: vec3<f32>, arg_3: vec3<bool>) -> u32 {
    let var_0 = Struct_2(vec4<i32>(_wgslsmith_mult_i32(u_input.d, 2147483647i), -_wgslsmith_clamp_i32(~u_input.d, -1i, func_2(-7451i)), -32508i, _wgslsmith_add_i32(-3016i, 0i)), Struct_1(vec4<u32>(firstTrailingBit(4294967295u), 4294967295u, _wgslsmith_add_u32(reverseBits(u_input.c.x), 1u >> (arg_0.x % 32u)), arg_0.x)), Struct_1(~firstLeadingBit(reverseBits(vec4<u32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x)))), Struct_1(abs(select(vec4<u32>(44045u, 0u, 61747u, 20756u), vec4<u32>(u_input.c.x, u_input.c.x, arg_0.x, arg_0.x), true))), Struct_1(min(vec4<u32>(u_input.c.x, ~4550u, max(u_input.c.x, u_input.c.x), _wgslsmith_mult_u32(arg_0.x, u_input.c.x)), ~(~vec4<u32>(0u, 38545u, u_input.c.x, 4294967295u)))));
    var var_1 = Struct_1(~_wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(~var_0.c.a, reverseBits(vec4<u32>(arg_0.x, 4294967295u, 61304u, u_input.c.x))), ~(~vec4<u32>(u_input.c.x, 4294967295u, arg_0.x, u_input.c.x)), var_0.c.a));
    let var_2 = Struct_2(-(~(-_wgslsmith_div_vec4_i32(var_0.a, var_0.a))), Struct_1(~var_1.a & select(reverseBits(var_0.b.a), min(vec4<u32>(var_0.b.a.x, 17109u, 4294967295u, 4294967295u), var_0.c.a), vec4<bool>(false, arg_1.x, arg_1.x, arg_1.x))), var_0.e, Struct_1(firstTrailingBit(vec4<u32>(var_0.d.a.x, _wgslsmith_mod_u32(20580u, 25881u), _wgslsmith_div_u32(u_input.c.x, var_0.b.a.x), arg_0.x))), var_0.d);
    var_1 = var_2.e;
    let var_3 = vec4<f32>(-357f, arg_2.x, _wgslsmith_f_op_f32(arg_2.x * arg_2.x), 1061f);
    return _wgslsmith_dot_vec4_u32(abs(vec4<u32>(var_0.c.a.x, _wgslsmith_clamp_u32(~u_input.c.x, _wgslsmith_add_u32(17689u, 0u), ~57231u), var_1.a.x, ~(~7508u))), _wgslsmith_add_vec4_u32(var_1.a, abs(~(vec4<u32>(0u, 33623u, var_1.a.x, var_0.e.a.x) ^ var_1.a))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~func_1(~_wgslsmith_sub_vec3_u32(u_input.c, u_input.c), select(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, false), true), _wgslsmith_f_op_vec3_f32(-vec3<f32>(501f, -684f, -1419f)), select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), 8960u > u_input.c.x)));
    let var_1 = 16310u;
    var var_2 = ~_wgslsmith_sub_vec3_u32(u_input.c, u_input.c);
    var_0 = max(_wgslsmith_dot_vec3_u32(~u_input.c, abs(u_input.c)), u_input.c.x);
    var var_3 = 32047u;
    var_0 = var_2.x;
    var var_4 = var_2.x;
    var var_5 = min(22721i, ~(-_wgslsmith_mod_i32(countOneBits(u_input.d), u_input.b | u_input.a)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(1f, 1f, 1f), -_wgslsmith_mod_vec4_i32(countOneBits(_wgslsmith_mult_vec4_i32(vec4<i32>(44278i, -11709i, -5864i, u_input.d), vec4<i32>(u_input.a, 22349i, 2147483647i, -15696i))), ~select(vec4<i32>(u_input.d, u_input.a, u_input.b, 33903i), vec4<i32>(-54635i, -4615i, u_input.b, u_input.a), vec4<bool>(false, false, true, true))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(691f)))), -572f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-674f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1688f - 1808f), -331f, true)), any(vec3<bool>(true, true, true)) || true)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -572f))));
}

