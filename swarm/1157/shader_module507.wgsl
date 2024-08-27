struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: vec3<f32>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: bool,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec2<u32>,
    c: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 1> = array<Struct_3, 1>(Struct_3(vec2<bool>(false, true), vec2<u32>(4294967295u, 4294967295u), false));

var<private> global1: array<vec2<bool>, 6> = array<vec2<bool>, 6>(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: u32, arg_1: Struct_3, arg_2: vec3<f32>, arg_3: vec4<i32>) -> vec2<f32> {
    var var_0 = 1310f;
    let var_1 = Struct_3(!global1[_wgslsmith_index_u32(arg_1.b.x, 6u)], vec2<u32>(1u, 29870u), _wgslsmith_sub_u32(1u, ~27770u | u_input.a) > 4294967295u);
    global0 = array<Struct_3, 1>();
    let var_2 = arg_1;
    var var_3 = arg_1;
    return _wgslsmith_f_op_vec2_f32(step(arg_2.xy, arg_2.zy));
}

fn func_2(arg_0: Struct_3, arg_1: Struct_3, arg_2: vec2<f32>, arg_3: f32) -> f32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.x, -840f)) - _wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_sub_u32(max(4294967295u, arg_0.b.x), _wgslsmith_sub_u32(u_input.a, 79474u)), arg_1, _wgslsmith_f_op_vec3_f32(vec3<f32>(464f, -376f, arg_3) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_3, -275f, arg_3)))), _wgslsmith_clamp_vec4_i32(vec4<i32>(25790i, 1295i, 2147483647i, -40794i), _wgslsmith_div_vec4_i32(vec4<i32>(13416i, -32591i, -2147483647i, 2147483647i), vec4<i32>(-32585i, 2147483647i, 9871i, -26283i)), select(vec4<i32>(13336i, -2147483647i, 0i, 11144i), vec4<i32>(1i, 2147483647i, 43660i, -57137i), false))))) * _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_3, 2571f))), arg_2)));
    let var_1 = Struct_1(reverseBits(~vec4<u32>(~arg_0.b.x, arg_1.b.x, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.b.x, 49334u, 33327u), vec3<u32>(75251u, u_input.a, 1u)), ~u_input.a)), ~(~(~arg_1.b.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(arg_3 * 926f), arg_2.x, -820f)))), !select(!arg_0.c || true, (1000f < arg_3) | arg_1.c, !(arg_0.a.x || true)));
    var var_2 = Struct_1(vec4<u32>(_wgslsmith_mult_u32(~4294967295u, var_1.b), arg_0.b.x, 1u, var_1.a.x), _wgslsmith_mult_u32(0u, 0u), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-416f * var_1.c.x))), -159f, _wgslsmith_f_op_f32(round(var_1.c.x))), (-1i < _wgslsmith_sub_i32(_wgslsmith_clamp_i32(-1i, -1i, 8771i), 2147483647i)) & true);
    let var_3 = Struct_2(Struct_1(_wgslsmith_sub_vec4_u32(select(abs(var_1.a), ~vec4<u32>(28046u, 4294967295u, arg_0.b.x, arg_0.b.x), !vec4<bool>(true, false, true, var_1.d)), reverseBits(reverseBits(vec4<u32>(0u, 1u, var_1.b, 1u)))), u_input.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1929f, -2300f, -2865f))), true), 522f, all(!(!vec4<bool>(false, false, false, arg_0.a.x))), 2147483647i >> (var_1.a.x % 32u), var_1);
    var var_4 = Struct_1(var_2.a, reverseBits(abs(var_2.a.x)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(241f, var_0.x, -1070f))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(var_1.c + vec3<f32>(var_0.x, var_1.c.x, -839f))))), true);
    return -128f;
}

fn func_1(arg_0: u32, arg_1: i32) -> Struct_3 {
    var var_0 = 2473u;
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(global0[_wgslsmith_index_u32(u_input.a ^ arg_0, 1u)], Struct_3(global1[_wgslsmith_index_u32(u_input.a, 6u)], vec2<u32>(0u, u_input.a), false), _wgslsmith_f_op_vec2_f32(vec2<f32>(1311f, -1368f) - vec2<f32>(510f, 786f)), _wgslsmith_f_op_f32(f32(-1f) * -1823f))) + -1571f))), 1851f);
    let var_2 = -37596i;
    let var_3 = Struct_2(Struct_1(~(~vec4<u32>(0u, 0u, arg_0, arg_0)), _wgslsmith_mod_u32(~0u, min(1u, arg_0) & 1u), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-775f, -168f, -1418f)), vec3<f32>(1613f, -523f, -513f)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1002f, 211f, 1000f), vec3<f32>(-210f, 227f, -1075f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(1310f, -172f, -1061f) + vec3<f32>(-234f, 800f, -1000f)))), all(vec3<bool>(true, all(vec4<bool>(true, false, false, false)), true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(14733u, arg_0, u_input.a)), ~vec3<u32>(1u, 31128u, u_input.a)), global0[_wgslsmith_index_u32(1u, 1u)], vec3<f32>(_wgslsmith_f_op_f32(795f + 966f), _wgslsmith_f_op_f32(1485f * 1000f), -1328f), ~min(vec4<i32>(arg_1, -11531i, -2147483647i, 22844i), vec4<i32>(2147483647i, var_2, -33680i, var_2)))).x * 1658f), any(vec2<bool>(true && all(vec2<bool>(false, true)), all(vec2<bool>(true, false)))), -9642i, Struct_1(~(vec4<u32>(u_input.a, arg_0, arg_0, 33579u) & _wgslsmith_mod_vec4_u32(vec4<u32>(arg_0, arg_0, 1u, 329u), vec4<u32>(0u, u_input.a, 7624u, arg_0))), 364u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(239f, 1773f, -189f)))), any(vec3<bool>(true, true, true)) || all(!global1[_wgslsmith_index_u32(0u, 6u)])));
    let var_4 = Struct_3(vec2<bool>(all(vec4<bool>(select(true, true, var_3.e.d), true | var_3.c, var_3.a.d, var_3.c)), any(!(!vec4<bool>(var_3.a.d, false, var_3.e.d, true)))), var_3.a.a.ww, true);
    return var_4;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 1>();
    var var_0 = func_1(u_input.a, ~(-35643i) >> (select((1u >> (u_input.a % 32u)) >> (~u_input.a % 32u), _wgslsmith_mult_u32(_wgslsmith_mult_u32(0u, u_input.a), u_input.a), all(vec4<bool>(true, true, true, true))) % 32u));
    global0 = array<Struct_3, 1>();
    let var_1 = -_wgslsmith_add_vec4_i32(select(vec4<i32>(firstTrailingBit(-32579i), 1i, _wgslsmith_dot_vec3_i32(vec3<i32>(1i, 2147483647i, 1i), vec3<i32>(-2147483647i, 16750i, -31293i)), ~0i), select(vec4<i32>(-46160i, -5986i, -10871i, -72876i), select(vec4<i32>(-1i, -2147483647i, 4100i, -26529i), vec4<i32>(-2147483647i, -65960i, 1i, 2147483647i), vec4<bool>(var_0.a.x, var_0.c, var_0.c, false)), !vec4<bool>(var_0.c, true, true, true)), !var_0.c), vec4<i32>(1i, 1i, 1i, 1i));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, -1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-658f - -888f) - _wgslsmith_f_op_f32(-619f + 1575f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(977f * -732f) + -463f), 1f)));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b.x, -731f, min(_wgslsmith_dot_vec3_i32(-vec3<i32>(-3871i, -27706i, -12554i), select(_wgslsmith_div_vec3_i32(var_1.xxw, vec3<i32>(var_1.x, var_1.x, 2147483647i)), select(vec3<i32>(-6308i, 0i, 33907i), var_1.zww, vec3<bool>(false, false, var_0.c)), var_0.a.x)), select(-reverseBits(var_1.x), -67364i, all(!vec4<bool>(true, var_0.c, var_0.c, var_0.c)))), ~1u, u_input.a);
}

