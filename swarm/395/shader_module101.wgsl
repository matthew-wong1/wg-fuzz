struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: vec2<f32>,
    d: vec3<u32>,
    e: bool,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: vec4<u32>,
    b: Struct_2,
    c: f32,
    d: vec3<i32>,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: f32,
    d: vec3<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(534i, 0i, -17720i, i32(-2147483648));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
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

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> i32 {
    var var_0 = vec2<u32>(_wgslsmith_sub_u32(u_input.a.x, _wgslsmith_mod_u32(select(_wgslsmith_div_u32(1u, u_input.a.x), 20479u, true), countOneBits(abs(1u)))), 87673u << (u_input.b % 32u));
    let var_1 = all(vec3<bool>(true, true, select(select(false, u_input.a.x == u_input.a.x, -12535i < global0.x), true, true)));
    let var_2 = Struct_5(~firstTrailingBit(_wgslsmith_add_vec4_u32(~vec4<u32>(92398u, 1u, u_input.b, u_input.a.x), ~vec4<u32>(var_0.x, var_0.x, u_input.a.x, var_0.x))), Struct_2(vec4<u32>(_wgslsmith_mod_u32(3360u, ~var_0.x), u_input.b, select(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 52806u, u_input.b, 1u), vec4<u32>(4294967295u, var_0.x, 50081u, 0u)), ~1u, any(vec4<bool>(false, var_1, var_1, true))), ~2454u)), 1f, ~_wgslsmith_div_vec3_i32(global0.zzz ^ firstLeadingBit(vec3<i32>(-1i, global0.x, global0.x)), _wgslsmith_add_vec3_i32(min(vec3<i32>(-2761i, 2147483647i, global0.x), vec3<i32>(-1i, global0.x, global0.x)), vec3<i32>(0i, global0.x, global0.x))), (-(~vec3<i32>(global0.x, 1i, -41866i)) >> (u_input.a % vec3<u32>(32u))) | global0.wxw);
    var_0 = select(vec2<u32>(_wgslsmith_mod_u32(_wgslsmith_div_u32(var_0.x, 1u), u_input.a.x), countOneBits(~u_input.b) << (select(u_input.b << (var_2.b.a.x % 32u), u_input.a.x << (var_0.x % 32u), -36266i >= global0.x) % 32u)), reverseBits(var_2.b.a.yy | max(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.b, 1u), var_2.b.a.yz), min(u_input.a.yy, var_2.a.zw))), select(select(!(!vec2<bool>(var_1, false)), vec2<bool>(all(vec4<bool>(var_1, true, var_1, true)), var_1), false), !select(select(vec2<bool>(false, var_1), vec2<bool>(true, false), var_1), !vec2<bool>(var_1, var_1), vec2<bool>(false, false)), false));
    var_0 = (((u_input.a.xx | ~vec2<u32>(var_2.a.x, 42320u)) ^ _wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(u_input.a.xx, vec2<u32>(14380u, var_0.x)), var_2.b.a.xy)) << (u_input.a.xx % vec2<u32>(32u))) & ~firstTrailingBit(u_input.a.yy);
    return _wgslsmith_add_i32(-((reverseBits(global0.x) << (~u_input.b % 32u)) >> (21592u % 32u)), ~var_2.e.x);
}

fn func_2(arg_0: vec4<f32>, arg_1: f32) -> Struct_5 {
    let var_0 = Struct_3((u_input.b & ~u_input.a.x) < countOneBits(~(~57681u)));
    let var_1 = 1000f;
    let var_2 = global0.yy;
    var var_3 = Struct_3(func_3() != _wgslsmith_dot_vec3_i32(vec3<i32>(var_2.x, 17245i, global0.x) ^ _wgslsmith_div_vec3_i32(vec3<i32>(11000i, var_2.x, -35979i), vec3<i32>(27981i, 40003i, -2147483647i)), min(vec3<i32>(var_2.x, global0.x, var_2.x) ^ vec3<i32>(0i, global0.x, global0.x), global0.wzz)));
    let var_4 = _wgslsmith_f_op_f32(arg_1 + -189f);
    return Struct_5(select(_wgslsmith_mult_vec4_u32(~countOneBits(vec4<u32>(u_input.b, 1u, 68274u, 0u)), _wgslsmith_sub_vec4_u32(~vec4<u32>(1u, 30872u, u_input.b, 4294967295u), max(vec4<u32>(u_input.b, u_input.a.x, 94263u, u_input.b), vec4<u32>(u_input.b, u_input.a.x, u_input.b, u_input.b)))), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, 1u, 96249u, 4294967295u) & select(vec4<u32>(96539u, 4294967295u, u_input.a.x, 4294967295u), vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.a.x), var_3.a), abs(countOneBits(vec4<u32>(32692u, 43267u, 68595u, u_input.a.x)))), any(vec4<bool>(true, true, var_0.a | var_3.a, var_0.a))), Struct_2(~(~select(vec4<u32>(24100u, 3134u, 69938u, u_input.a.x), vec4<u32>(28411u, 13971u, u_input.a.x, u_input.b), true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-312f * var_4))) - _wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(1000f - var_4)))), -(~vec3<i32>(1i, 2294i, 1i) ^ global0.xwx), global0.zwy);
}

fn func_1(arg_0: Struct_3) -> i32 {
    var var_0 = Struct_1(arg_0.a, vec3<f32>(1589f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -866f)), 1839f), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1529f * 253f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(958f + -501f))))), _wgslsmith_add_vec3_u32(u_input.a, vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_add_u32(u_input.b, u_input.a.x), max(1u, u_input.a.x)), 1u, ~1u)), !(!all(select(vec2<bool>(false, true), vec2<bool>(false, false), false))));
    var_0 = Struct_1(true | (false == var_0.e), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-397f, var_0.c.x, 1000f)), vec3<f32>(var_0.b.x, _wgslsmith_f_op_f32(var_0.b.x + var_0.c.x), var_0.c.x))) + vec3<f32>(_wgslsmith_f_op_f32(abs(1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0.c.x, var_0.b.x)) * 993f))), _wgslsmith_f_op_vec2_f32(exp2(var_0.b.yx)), u_input.a, var_0.e & false);
    var var_1 = func_2(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0.c.x + var_0.c.x))), var_0.c.x, 307f, 1f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-275f))));
    var var_2 = Struct_5(var_1.b.a, var_1.b, _wgslsmith_f_op_f32(-var_1.c), global0.wxw, vec3<i32>(firstLeadingBit(abs(abs(-52724i))), _wgslsmith_clamp_i32(~firstLeadingBit(29906i), -1i, select(_wgslsmith_mod_i32(33018i, 58424i), min(-27391i, global0.x), var_0.a)), _wgslsmith_sub_i32(-1i & global0.x, -28586i)));
    var var_3 = 35145u;
    return _wgslsmith_sub_i32(var_2.d.x, global0.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~(-vec4<i32>(1i, 36750i, global0.x, select(_wgslsmith_div_i32(2147483647i, global0.x), ~16732i, false)));
    global0 = countOneBits((_wgslsmith_mod_vec4_i32(vec4<i32>(global0.x, -1i, 2921i, 35660i), ~vec4<i32>(17051i, 10899i, global0.x, global0.x)) << (~(vec4<u32>(u_input.a.x, 4294967295u, u_input.b, 4294967295u) & vec4<u32>(u_input.a.x, u_input.a.x, 15093u, 4898u)) % vec4<u32>(32u))) ^ _wgslsmith_clamp_vec4_i32(-(vec4<i32>(global0.x, 2147483647i, global0.x, global0.x) << (vec4<u32>(17338u, 1u, u_input.b, 1u) % vec4<u32>(32u))), _wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, global0.x, global0.x, global0.x), _wgslsmith_sub_vec4_i32(vec4<i32>(-7240i, -2147483647i, global0.x, global0.x), vec4<i32>(1i, global0.x, 0i, global0.x))), vec4<i32>(-1i, _wgslsmith_dot_vec3_i32(vec3<i32>(global0.x, 0i, 1i), vec3<i32>(2147483647i, global0.x, 0i)), 2147483647i, select(-19412i, 1i, false))));
    let var_0 = Struct_2(~vec4<u32>(4294967295u, ~countOneBits(0u), 1u, u_input.b | 30493u));
    global0 = _wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-1i) * -_wgslsmith_add_vec4_i32(vec4<i32>(global0.x, global0.x, global0.x, global0.x), vec4<i32>(global0.x, -1i, 1i, 6506i)), min(vec4<i32>(1i, 2147483647i, global0.x, -2147483647i ^ global0.x), vec4<i32>(-global0.x, firstTrailingBit(global0.x), abs(global0.x), -global0.x))), ~select(vec4<i32>(global0.x, 30592i, func_1(Struct_3(true)), -1i), ~(~vec4<i32>(25125i, global0.x, -2147483647i, global0.x)), vec4<bool>(true, true, true, true)));
    var var_1 = _wgslsmith_f_op_f32(-1714f * func_2(vec4<f32>(_wgslsmith_f_op_f32(-448f - -903f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1602f + 764f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-994f, 1030f) * _wgslsmith_f_op_f32(1000f * -1146f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(899f)), func_2(vec4<f32>(-212f, 1000f, 117f, -282f), -626f).c, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(839f - -849f) * _wgslsmith_f_op_f32(func_2(vec4<f32>(-687f, -1308f, 144f, -1000f), -1000f).c + 1f))).c);
    let x = u_input.a;
    s_output = StorageBuffer(-2114i, 1000f, -1000f, _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)), global0.x);
}

