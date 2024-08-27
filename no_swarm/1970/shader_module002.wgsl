struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: vec4<f32>,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3() -> bool {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f))))) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(-1306f * -170f), _wgslsmith_f_op_f32(ceil(883f)), _wgslsmith_f_op_f32(step(-1439f, -831f)), -199f))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1135f, 264f, -163f, 493f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-242f, -888f, -447f, -1383f) + vec4<f32>(-567f, 914f, -908f, -104f))))))));
    let var_1 = ~(-(~_wgslsmith_sub_i32(_wgslsmith_mod_i32(24515i, -11852i), 1i)));
    let var_2 = -1i;
    return all(select(vec3<bool>(false, false, u_input.a <= ~17810u), select(!select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), false), vec3<bool>(true, true, true), !select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true))), any(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), true), vec3<bool>(true, true, false)))));
}

fn func_2(arg_0: vec2<u32>, arg_1: vec2<u32>) -> Struct_1 {
    var var_0 = true;
    let var_1 = Struct_1(vec4<bool>(any(vec4<bool>(true, true, true, true)), arg_1.x <= 1u, !(true & all(vec4<bool>(false, true, true, false))), true & func_3()), firstTrailingBit(max(-_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -2147483647i, 0i), vec3<i32>(2147483647i, -27167i, 2147483647i)), ~1i)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(491f, _wgslsmith_div_f32(-194f, 158f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -556f) * _wgslsmith_f_op_f32(f32(-1f) * -223f)), _wgslsmith_f_op_f32(max(-299f, _wgslsmith_f_op_f32(sign(583f))))))), vec3<i32>(1i, max(_wgslsmith_mod_i32(-2147483647i, -17256i) ^ _wgslsmith_dot_vec4_i32(vec4<i32>(-794i, -2147483647i, -40303i, -1i), vec4<i32>(-4241i, -23534i, -16118i, 31106i)), 1i), _wgslsmith_add_i32(1i, -12440i)));
    let var_2 = var_1;
    var_0 = func_3();
    var_0 = true;
    return var_2;
}

fn func_1() -> vec4<u32> {
    let var_0 = func_2(vec2<u32>(_wgslsmith_clamp_u32(0u, u_input.a, _wgslsmith_mod_u32(~1u, ~u_input.a)), 1u), _wgslsmith_div_vec2_u32(abs(vec2<u32>(u_input.a, u_input.a)), firstTrailingBit(~vec2<u32>(4294967295u, 46423u))) >> (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u)));
    let var_1 = func_2(~_wgslsmith_clamp_vec2_u32(firstTrailingBit(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, u_input.a))), vec2<u32>(_wgslsmith_clamp_u32(0u, 1u, 4294967295u), 1u), vec2<u32>(~1u, ~u_input.a)), select(vec2<u32>(1u & _wgslsmith_div_u32(u_input.a, u_input.a), u_input.a), vec2<u32>(41874u, 721u), vec2<bool>(false, func_3())));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-749f - 680f) + 1f);
    let var_3 = vec4<u32>(~(~13192u), abs(u_input.a), 9238u, _wgslsmith_sub_u32(firstLeadingBit(~(~u_input.a)), select(16702u << (u_input.a % 32u), 67528u, func_2(vec2<u32>(u_input.a, 1u), vec2<u32>(1u, u_input.a)).c.x >= _wgslsmith_f_op_f32(max(var_1.c.x, var_0.c.x)))));
    var var_4 = 1u;
    return abs(~_wgslsmith_sub_vec4_u32(var_3, (var_3 | vec4<u32>(var_3.x, 19991u, 6899u, var_3.x)) | (var_3 | vec4<u32>(u_input.a, var_3.x, u_input.a, var_3.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(_wgslsmith_add_vec4_u32(~(vec4<u32>(u_input.a, u_input.a, u_input.a, 0u) ^ vec4<u32>(u_input.a, 7121u, 53898u, 0u)) << (~(~vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)) % vec4<u32>(32u)), func_1()), firstTrailingBit(vec4<u32>(min(u_input.a, 40508u), 7509u, ~1u, u_input.a)), true);
    var var_1 = ~_wgslsmith_clamp_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(64084u, ~u_input.a), select(vec2<u32>(u_input.a, var_0.x), vec2<u32>(4294967295u, 61307u), all(vec2<bool>(true, false))), ~(~vec2<u32>(6977u, 37376u))), _wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, var_0.x), vec2<u32>(u_input.a, u_input.a)), _wgslsmith_clamp_vec2_u32(firstLeadingBit(var_0.yx), var_0.yy << (var_0.zz % vec2<u32>(32u)), vec2<u32>(var_0.x, var_0.x))), var_0.xw);
    let var_2 = vec2<i32>(_wgslsmith_clamp_i32(~_wgslsmith_dot_vec2_i32(~vec2<i32>(-2147483647i, -32210i), select(vec2<i32>(-10142i, 2147483647i), vec2<i32>(2147483647i, 0i), false)), max(_wgslsmith_mult_i32(~(-2147483647i), func_2(vec2<u32>(0u, var_0.x), var_0.zx).d.x), _wgslsmith_div_i32(i32(-1i) * -27360i, min(-16046i, 0i))), _wgslsmith_mult_i32(_wgslsmith_sub_i32(func_2(vec2<u32>(var_0.x, var_0.x), vec2<u32>(var_1.x, 4294967295u)).b, -35070i), 2147483647i)), countOneBits(_wgslsmith_div_i32(~max(-2147483647i, 0i), 71093i)));
    var_1 = abs(select(_wgslsmith_div_vec2_u32(~vec2<u32>(17033u, var_1.x), vec2<u32>(var_0.x, u_input.a)), select(vec2<u32>(~var_0.x, firstTrailingBit(1u)), select(vec2<u32>(u_input.a, u_input.a), countOneBits(var_0.xy), select(vec2<bool>(false, true), vec2<bool>(false, false), false)), any(vec4<bool>(true, true, true, true))), vec2<bool>(all(vec3<bool>(true, true, true)), true)));
    var var_3 = vec3<bool>(func_2(var_0.ww, func_1().zz).a.x, false, any(select(vec4<bool>(true, true, all(vec2<bool>(false, false)), true), vec4<bool>(var_2.x == var_2.x, true, u_input.a >= 58380u, true), true)));
    var_3 = !func_2(var_0.wy << (var_0.wx % vec2<u32>(32u)), ~vec2<u32>(_wgslsmith_mod_u32(u_input.a, var_0.x), var_1.x >> (var_0.x % 32u))).a.xzx;
    var var_4 = Struct_1(vec4<bool>(var_3.x, var_3.x, true, false), -19483i, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-614f, 1260f, -1012f, -1974f)))) * vec4<f32>(-114f, _wgslsmith_f_op_f32(round(func_2(vec2<u32>(0u, u_input.a), vec2<u32>(var_1.x, 1u)).c.x)), -1600f, -718f)), -vec3<i32>(reverseBits(1i), var_2.x, _wgslsmith_clamp_i32(func_2(var_0.yw, var_0.yw).b, -1i, var_2.x)));
    var_4 = func_2(var_0.zw, var_0.zz);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_i32(vec3<i32>(var_4.d.x, -countOneBits(53737i), _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(var_4.d, var_4.d), _wgslsmith_mod_vec3_i32(vec3<i32>(var_2.x, -7633i, 39307i), vec3<i32>(2147483647i, -31676i, var_2.x)))), select(vec3<i32>(1i, -var_2.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-43153i, var_4.d.x, var_4.d.x, 2147483647i), vec4<i32>(445i, 1i, -27248i, var_4.d.x))), var_4.d, select(var_4.a.wwy, !var_4.a.zxy, select(var_4.a.zyy, var_4.a.wyz, var_4.a.x)))), ~_wgslsmith_mod_vec4_u32(firstLeadingBit(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 5734u, 13927u, 0u), var_0)), firstTrailingBit(_wgslsmith_mult_vec4_u32(var_0, vec4<u32>(91298u, var_0.x, var_1.x, 4064u)))), abs(countOneBits(var_4.d.x)));
}

