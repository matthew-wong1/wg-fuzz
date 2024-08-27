struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: vec2<i32>,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 6> = array<vec3<bool>, 6>(vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false));

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> vec4<i32> {
    let var_0 = Struct_1(select(-arg_0.a, vec4<i32>(22077i, firstTrailingBit(arg_2.c.x), ~(-arg_2.b), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, -29567i, u_input.a), _wgslsmith_mod_vec4_i32(arg_0.a, vec4<i32>(-39587i, arg_2.a.x, 18863i, -23795i)))), select(vec4<bool>(true, true, true, true), !select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true), false), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), false), vec4<bool>(true, true, true, true)))), 0i, vec2<i32>(~(~(33320i << (u_input.b.x % 32u))), -8842i), _wgslsmith_add_vec3_u32(abs(arg_0.d), arg_1.d));
    var var_1 = arg_0;
    var var_2 = vec3<i32>(~max(-(~var_0.c.x), -u_input.a), 1i, _wgslsmith_mod_i32(2147483647i, max(0i, var_1.a.x)));
    var_2 = ~var_1.a.yyx;
    let var_3 = Struct_1(vec4<i32>(var_2.x, _wgslsmith_add_i32(_wgslsmith_clamp_i32(select(arg_1.b, u_input.a, false), max(2147483647i, 1i), ~var_1.c.x), abs(4096i)), -31263i, ~(-arg_0.b)), -var_0.c.x | arg_2.c.x, vec2<i32>(-arg_0.a.x, abs(_wgslsmith_add_i32(-38953i, u_input.a | 2147483647i))), vec3<u32>(arg_0.d.x, arg_2.d.x, arg_0.d.x));
    return ~vec4<i32>(~(~(-14877i)), -2147483647i, 24430i, arg_2.c.x << (u_input.b.x % 32u));
}

fn func_2() -> u32 {
    var var_0 = Struct_1(max(func_3(Struct_1(vec4<i32>(-28356i, u_input.a, u_input.a, -24318i), u_input.a, vec2<i32>(1i, u_input.a) | vec2<i32>(24014i, -2147483647i), firstTrailingBit(vec3<u32>(88633u, u_input.b.x, 18947u))), Struct_1(vec4<i32>(u_input.a, 0i, -2147483647i, 0i), u_input.a, -vec2<i32>(-44776i, u_input.a), ~vec3<u32>(u_input.b.x, 114372u, u_input.b.x)), Struct_1(~vec4<i32>(0i, u_input.a, -1i, -39814i), ~(-12296i), vec2<i32>(u_input.a, u_input.a), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b.x, 2209u, u_input.b.x), vec3<u32>(4706u, u_input.b.x, u_input.b.x)))), vec4<i32>(_wgslsmith_div_i32(-2147483647i, 1i), u_input.a, i32(-1i) * -28645i, _wgslsmith_div_i32(22644i, 33792i)) | min(select(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<i32>(u_input.a, -5678i, -40385i, u_input.a), vec4<bool>(false, false, true, true)), max(vec4<i32>(0i, -84539i, 1i, 24308i), vec4<i32>(-2448i, u_input.a, u_input.a, u_input.a)))), u_input.a, vec2<i32>(abs(max(max(u_input.a, -1i), u_input.a)), u_input.a), (vec3<u32>(reverseBits(u_input.b.x), 37346u, u_input.b.x) | ~vec3<u32>(0u, u_input.b.x, u_input.b.x)) | vec3<u32>(59003u, _wgslsmith_sub_u32(u_input.b.x, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.b.x, 0u), vec3<u32>(0u, u_input.b.x, u_input.b.x))), _wgslsmith_mod_u32(1u, ~35694u)));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-166f + 1097f) - -695f) * -485f) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1000f + 317f))), _wgslsmith_div_f32(-228f, _wgslsmith_f_op_f32(ceil(1203f))), _wgslsmith_div_i32(-2147483647i, u_input.a) >= (u_input.a & 44442i)))) <= _wgslsmith_f_op_f32(-298f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-1812f, -1140f)))));
    var_0 = Struct_1(vec4<i32>(_wgslsmith_clamp_i32(u_input.a, func_3(Struct_1(var_0.a, 20841i, vec2<i32>(var_0.b, 923i), vec3<u32>(var_0.d.x, 1u, 8667u)), Struct_1(vec4<i32>(2147483647i, var_0.a.x, u_input.a, 11391i), 18530i, var_0.c, vec3<u32>(63799u, 34522u, var_0.d.x)), Struct_1(var_0.a, -1i, var_0.a.xw, var_0.d)).x, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, var_0.c.x, -11374i), vec3<i32>(var_0.c.x, -362i, 58762i))), firstTrailingBit(u_input.a | u_input.a), u_input.a, u_input.a ^ -1i) | var_0.a, 2147483647i, abs(vec2<i32>(_wgslsmith_clamp_i32(var_0.b, u_input.a, -23293i), select(-1i, -47214i, true)) | vec2<i32>(max(var_0.a.x, var_0.c.x), 6743i)), reverseBits(var_0.d));
    let var_2 = -var_0.b;
    var var_3 = 0u;
    return ~(~(~_wgslsmith_dot_vec3_u32(abs(vec3<u32>(17882u, u_input.b.x, u_input.b.x)), _wgslsmith_add_vec3_u32(var_0.d, vec3<u32>(44436u, 35482u, 44106u)))));
}

fn func_1() -> u32 {
    global0 = array<vec3<bool>, 6>();
    var var_0 = _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1032f - _wgslsmith_f_op_f32(f32(-1f) * -785f)))));
    var var_1 = countOneBits(func_2());
    var_1 = 1u;
    var_1 = ~(firstTrailingBit(_wgslsmith_mod_u32(u_input.b.x, 34916u)) | ((u_input.b.x & _wgslsmith_sub_u32(u_input.b.x, 0u)) | u_input.b.x));
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b;
    var var_1 = _wgslsmith_add_vec2_u32(u_input.b, u_input.b);
    var var_2 = vec3<u32>(9303u, 24537u, select(firstTrailingBit(~func_1()), (_wgslsmith_add_u32(36692u, var_0.x) << (u_input.b.x % 32u)) << (var_1.x % 32u), all(vec4<bool>(true, true, false, false))));
    var_2 = ~vec3<u32>(u_input.b.x, abs(var_1.x), u_input.b.x | _wgslsmith_div_u32(countOneBits(9408u), _wgslsmith_sub_u32(var_1.x, 103257u)));
    var var_3 = Struct_1(-vec4<i32>(u_input.a, -4046i, abs(u_input.a), -2147483647i), ~1i | firstLeadingBit(u_input.a), firstTrailingBit(~(~_wgslsmith_sub_vec2_i32(vec2<i32>(38375i, u_input.a), vec2<i32>(-2147483647i, 2147483647i)))), vec3<u32>(1u, u_input.b.x, ~(~_wgslsmith_mult_u32(2985u, 1u))));
    var var_4 = Struct_1(var_3.a, -39805i | u_input.a, _wgslsmith_sub_vec2_i32(-var_3.a.wx, var_3.a.zy << ((_wgslsmith_div_vec2_u32(vec2<u32>(0u, var_0.x), var_2.yx) | abs(vec2<u32>(4294967295u, var_2.x))) % vec2<u32>(32u))), ~var_3.d);
    let var_5 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(827f, 1000f, -1406f, 714f))))), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(139f * 1794f), 852f, _wgslsmith_div_f32(-412f, -410f), _wgslsmith_f_op_f32(482f * 389f)), vec4<f32>(1f, -1000f, _wgslsmith_f_op_f32(f32(-1f) * -175f), _wgslsmith_f_op_f32(round(1494f))))))));
    let var_6 = var_4.b;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(_wgslsmith_sub_i32(-62615i, var_4.b << (9850u % 32u)), ~(~var_3.b >> ((var_3.d.x << (var_4.d.x % 32u)) % 32u)), func_3(Struct_1(vec4<i32>(-8326i, -12898i, var_4.a.x, var_3.a.x), _wgslsmith_div_i32(u_input.a, -11384i), vec2<i32>(var_4.c.x, 664i) | vec2<i32>(var_4.a.x, 1i), var_4.d), Struct_1(vec4<i32>(u_input.a, -37225i, u_input.a, u_input.a), reverseBits(2147483647i), var_3.a.yy >> (var_2.zy % vec2<u32>(32u)), var_4.d & vec3<u32>(var_2.x, u_input.b.x, u_input.b.x)), Struct_1(vec4<i32>(var_4.c.x, -5813i, var_4.c.x, var_4.b), _wgslsmith_clamp_i32(1751i, u_input.a, 21755i), ~vec2<i32>(-1i, 2147483647i), var_3.d)).x), 0i, -(~_wgslsmith_mult_i32(var_4.c.x, -20796i)) >> (4294967295u % 32u), vec4<u32>(0u, 16679u, u_input.b.x, 32069u));
}

