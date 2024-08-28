struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: vec3<i32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec4<f32>,
    d: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 28>;

var<private> global1: array<Struct_2, 13>;

var<private> global2: array<Struct_1, 13>;

var<private> global3: i32 = 24357i;

var<private> global4: vec4<bool>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_3, arg_2: Struct_3, arg_3: vec3<f32>) -> vec4<f32> {
    var var_0 = Struct_2(all(select(vec2<bool>(arg_2.b.a, global0[_wgslsmith_index_u32(u_input.b.x, 28u)]), select(global4.yz, vec2<bool>(arg_1.a.a, global4.x), global4.xx), u_input.a.x == u_input.a.x)) | (!(arg_0.c.x < arg_3.x) && (u_input.b.x >= 26311u)));
    let var_1 = false;
    let var_2 = _wgslsmith_dot_vec3_i32(vec3<i32>(~(-arg_1.d) | firstTrailingBit(arg_2.d), 1i, firstLeadingBit(firstLeadingBit(arg_0.d ^ arg_0.d))), ~firstTrailingBit(select(select(vec3<i32>(2147483647i, arg_0.d, -16677i), vec3<i32>(arg_0.d, arg_1.d, 0i), vec3<bool>(arg_1.a.a, global4.x, false)), -vec3<i32>(arg_1.d, arg_1.d, -61441i), arg_1.b.a)));
    var var_3 = _wgslsmith_div_u32(_wgslsmith_mod_u32(66766u, ~_wgslsmith_dot_vec2_u32(u_input.a.yw, u_input.b << (vec2<u32>(u_input.a.x, 18041u) % vec2<u32>(32u)))), 1u);
    var var_4 = 14610u;
    return vec4<f32>(arg_1.c.x, arg_2.c.x, arg_3.x, _wgslsmith_f_op_f32(exp2(arg_0.c.x)));
}

fn func_2(arg_0: vec4<i32>, arg_1: vec3<f32>) -> i32 {
    global3 = firstTrailingBit(firstTrailingBit(~arg_0.x));
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, arg_1.x, -428f, arg_1.x) * _wgslsmith_div_vec4_f32(vec4<f32>(arg_1.x, 1835f, 812f, -499f), vec4<f32>(1115f, arg_1.x, -1309f, 604f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-113f, -2027f, -849f, 1000f)) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(func_3(Struct_3(global1[_wgslsmith_index_u32(135188u, 13u)], global1[_wgslsmith_index_u32(u_input.a.x, 13u)], vec4<f32>(478f, arg_1.x, 1951f, arg_1.x), 11666i), Struct_3(Struct_2(global4.x), Struct_2(true), vec4<f32>(474f, arg_1.x, arg_1.x, arg_1.x), arg_0.x), Struct_3(Struct_2(true), Struct_2(false), vec4<f32>(arg_1.x, -1520f, 653f, arg_1.x), arg_0.x), arg_1)))))), true, ~vec3<i32>(arg_0.x, (-27844i << (u_input.a.x % 32u)) ^ -30906i, min(arg_0.x, abs(-4766i))));
    let var_1 = Struct_2(true || var_0.b);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.x + arg_1.x));
    var var_3 = var_1;
    return -abs(-_wgslsmith_sub_i32(var_0.c.x, arg_0.x)) ^ arg_0.x;
}

fn func_1() -> i32 {
    global1 = array<Struct_2, 13>();
    let var_0 = ~_wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(func_2(vec4<i32>(-1i, -1i, 2147483647i, -52402i), vec3<f32>(1352f, -903f, 1596f)), select(-1i, -49653i, true)), -1i, -_wgslsmith_dot_vec3_i32(vec3<i32>(-12235i, 39114i, 0i), vec3<i32>(8567i, -8509i, 21235i)), -(~(-2147483647i))), reverseBits(_wgslsmith_add_vec4_i32(vec4<i32>(7712i, 0i, 2104i, -2147483647i), vec4<i32>(-46750i, 2147483647i, -1i, 1i))) << (~u_input.a % vec4<u32>(32u)));
    var var_1 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1566f))), _wgslsmith_f_op_f32(1f - -209f), -1000f, -604f)))));
    var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(2572f, var_1.x, 194f, _wgslsmith_f_op_f32(ceil(var_1.x))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-827f, var_1.x, var_1.x, -2106f) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-984f, 557f, var_1.x, var_1.x))))) - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-816f, var_1.x, 617f, -806f)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1795f, var_1.x, 1235f, var_1.x))), any(vec4<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 28u)], false, false, global0[_wgslsmith_index_u32(u_input.a.x, 28u)])))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, -1713f, var_1.x, var_1.x)))))));
    let var_2 = _wgslsmith_add_vec4_u32(vec4<u32>(~countOneBits(u_input.b.x) | 106024u, u_input.a.x, ~(~u_input.b.x | u_input.a.x), _wgslsmith_mult_u32(firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), u_input.a.yw)), 82392u)), u_input.a);
    return 11566i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = countOneBits(select(select(_wgslsmith_add_vec4_i32(vec4<i32>(-19247i, 1i, 1i, -2748i), vec4<i32>(1i, 1i, 1i, 1i)), vec4<i32>(46762i, i32(-1i) * -1919i, 1i, 59951i), vec4<bool>(true, true, u_input.a.x > 1u, true)), abs(vec4<i32>(func_1(), -2147483647i << (u_input.a.x % 32u), 1i, ~57697i)), vec4<bool>(false, all(global4.xz), all(vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 28u)], true, false)), 888u > u_input.b.x)));
    var var_1 = 0i;
    global0 = array<bool, 28>();
    let var_2 = reverseBits(vec3<i32>(8716i << (abs(firstLeadingBit(u_input.b.x)) % 32u), 0i, abs(var_0.x)));
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 865f) - vec2<f32>(1000f, -1000f))), vec2<f32>(_wgslsmith_f_op_f32(step(157f, -830f)), -139f))))));
    global1 = array<Struct_2, 13>();
    var_0 = vec4<i32>(_wgslsmith_div_i32(_wgslsmith_add_i32(var_0.x, 28962i), var_2.x & (~(-1i) ^ firstLeadingBit(var_2.x))), _wgslsmith_mult_i32(~var_2.x, max(23487i, var_0.x)), var_2.x, 63103i);
    var var_4 = ~vec2<u32>(~_wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, u_input.a.x), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 0u), abs(u_input.a.wx))) | vec2<u32>(u_input.a.x, 20716u);
    let var_5 = Struct_2(all(global4.yzx));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_dot_vec3_i32(var_2, -vec3<i32>(var_2.x, 2147483647i, var_0.x)), _wgslsmith_dot_vec2_i32(var_2.yy >> (vec2<u32>(4294967295u, u_input.b.x) % vec2<u32>(32u)), ~var_2.yy), _wgslsmith_sub_i32(-32152i, var_0.x) ^ 0i), var_0.wzz));
}

