struct Struct_1 {
    a: f32,
    b: vec3<u32>,
    c: vec4<u32>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: u32,
    c: vec2<bool>,
    d: Struct_1,
    e: vec2<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: vec4<i32>,
    d: Struct_1,
    e: u32,
}

struct Struct_4 {
    a: i32,
    b: vec2<bool>,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 9> = array<vec4<f32>, 9>(vec4<f32>(-426f, -251f, -757f, 441f), vec4<f32>(-911f, -915f, 561f, 606f), vec4<f32>(-1170f, -1888f, 255f, -370f), vec4<f32>(-397f, 1284f, 974f, -210f), vec4<f32>(-1161f, -1678f, -164f, 207f), vec4<f32>(747f, 139f, 388f, -551f), vec4<f32>(222f, 1601f, -1291f, 2297f), vec4<f32>(880f, 1806f, -292f, -647f), vec4<f32>(-1170f, -350f, 675f, 565f));

var<private> global1: array<Struct_2, 21>;

var<private> global2: vec4<f32> = vec4<f32>(1178f, 1000f, -560f, 814f);

var<private> global3: array<vec2<bool>, 3> = array<vec2<bool>, 3>(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true));

var<private> global4: vec3<bool> = vec3<bool>(true, false, true);

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_1) -> vec2<bool> {
    let var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.a, -1402f) * global2.yz), global2.wz)) + vec2<f32>(arg_0.a, global2.x)), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(step(-399f, 130f)), _wgslsmith_f_op_f32(floor(arg_0.a))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, -1030f)))), _wgslsmith_f_op_vec2_f32(-global2.yw)));
    global3 = array<vec2<bool>, 3>();
    global4 = vec3<bool>(true, false, ~_wgslsmith_mult_u32(1u, u_input.a ^ u_input.b) == ~arg_0.c.x);
    global3 = array<vec2<bool>, 3>();
    var var_1 = global4.x;
    return select(vec2<bool>(all(select(select(vec4<bool>(global4.x, global4.x, true, false), vec4<bool>(true, global4.x, global4.x, global4.x), vec4<bool>(global4.x, false, global4.x, global4.x)), select(vec4<bool>(global4.x, global4.x, false, false), vec4<bool>(global4.x, global4.x, global4.x, false), vec4<bool>(false, true, false, false)), all(vec4<bool>(false, global4.x, true, global4.x)))), any(vec2<bool>(true, global4.x))), global3[_wgslsmith_index_u32(17031u, 3u)], false);
}

fn func_2(arg_0: vec3<bool>, arg_1: vec2<u32>, arg_2: vec3<i32>) -> vec4<u32> {
    var var_0 = select(select(global4.xz, select(!select(vec2<bool>(true, false), global4.xz, global4.x), select(func_3(Struct_1(global2.x, vec3<u32>(4294967295u, arg_1.x, arg_1.x), vec4<u32>(4294967295u, 4294967295u, arg_1.x, 4989u), vec4<u32>(u_input.a, 29942u, u_input.a, arg_1.x))), vec2<bool>(arg_0.x, arg_0.x), func_3(Struct_1(210f, vec3<u32>(1u, arg_1.x, u_input.a), vec4<u32>(0u, 16909u, arg_1.x, 1u), vec4<u32>(arg_1.x, 57686u, arg_1.x, 2860u)))), !global4.zz), (_wgslsmith_mod_u32(u_input.a, arg_1.x) == 4294967295u) | global4.x), vec2<bool>(global4.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(global2.x)))) <= _wgslsmith_f_op_f32(-global2.x)), 0u == ~(_wgslsmith_div_u32(u_input.b, arg_1.x) >> (4294967295u % 32u)));
    global1 = array<Struct_2, 21>();
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.x * _wgslsmith_f_op_f32(floor(1444f))) - -1140f);
    let var_2 = arg_2.x;
    var var_3 = var_0.x;
    return ~min(~vec4<u32>(u_input.b, arg_1.x, ~0u, ~arg_1.x), vec4<u32>(0u, select(45340u, arg_1.x, false) >> ((u_input.a << (1u % 32u)) % 32u), reverseBits(~4294967295u), ~abs(29126u)));
}

fn func_4(arg_0: Struct_1, arg_1: i32) -> i32 {
    var var_0 = ~(_wgslsmith_mod_i32(_wgslsmith_mult_i32(i32(-1i) * -21039i, -5924i), -1i >> (u_input.b % 32u)) | countOneBits(arg_1));
    let var_1 = vec3<i32>(~(-2147483647i), -(~(~2192i)), _wgslsmith_div_i32(arg_1, ~_wgslsmith_clamp_i32(-45754i, _wgslsmith_dot_vec3_i32(vec3<i32>(1i, arg_1, 24016i), vec3<i32>(15647i, arg_1, arg_1)), arg_1 << (4294967295u % 32u))));
    var var_2 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-310f, arg_0.a), vec2<f32>(global2.x, -423f), vec2<bool>(true, true))), global2.xx)) + _wgslsmith_f_op_vec2_f32(min(global2.zw, vec2<f32>(global2.x, 1313f)))) * global2.wx)));
    global3 = array<vec2<bool>, 3>();
    var_2 = _wgslsmith_f_op_vec2_f32(-global2.xy);
    return ~(-45535i);
}

fn func_1(arg_0: i32, arg_1: Struct_4, arg_2: f32, arg_3: vec2<i32>) -> vec4<u32> {
    let var_0 = _wgslsmith_mod_vec3_i32(vec3<i32>(~41418i, select(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 2147483647i, 1i) << (vec3<u32>(u_input.a, 4294967295u, 4294967295u) % vec3<u32>(32u)), -vec3<i32>(26904i, 40280i, arg_0)), 1i, ~u_input.a != min(u_input.a, 0u)), func_4(Struct_1(1025f, ~vec3<u32>(u_input.a, u_input.a, 2558u), vec4<u32>(u_input.b, u_input.a, 1u, u_input.b), func_2(vec3<bool>(arg_1.b.x, arg_1.b.x, global4.x), vec2<u32>(4013u, u_input.a), vec3<i32>(-69588i, arg_0, 2147483647i))), -2147483647i)), ~(~vec3<i32>(1i, arg_3.x, -2147483647i)) ^ ((~vec3<i32>(arg_1.a, arg_3.x, arg_0) >> (_wgslsmith_sub_vec3_u32(vec3<u32>(1u, u_input.b, u_input.b), vec3<u32>(u_input.a, 4294967295u, u_input.b)) % vec3<u32>(32u))) | -select(vec3<i32>(-35812i, -1i, -61181i), vec3<i32>(arg_1.a, -8623i, -1i), vec3<bool>(global4.x, false, true))));
    var var_1 = Struct_3(Struct_1(arg_1.c.x, select(max(vec3<u32>(4294967295u, 1u, 69726u) | vec3<u32>(u_input.b, u_input.b, 59424u), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, 47909u, u_input.a), vec3<u32>(0u, 1u, u_input.b))), _wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(1u, u_input.b, u_input.b), vec3<u32>(14163u, 0u, u_input.b)), vec3<u32>(1u, u_input.b, 10820u)), !(!vec3<bool>(true, true, arg_1.b.x))), _wgslsmith_add_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(55740u, u_input.a, u_input.b, u_input.b), vec4<u32>(4294967295u, 42925u, 0u, u_input.a)), ~vec4<u32>(0u, 1u, 84591u, u_input.a) & ~vec4<u32>(u_input.b, 57998u, u_input.b, u_input.a)), vec4<u32>(47934u, ~_wgslsmith_mult_u32(u_input.b, u_input.a), _wgslsmith_sub_u32(~u_input.b, ~4294967295u), ~u_input.b)), arg_2, _wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(var_0.x, arg_0, -37452i, 34056i) >> (vec4<u32>(u_input.a, 30656u, u_input.b, 35140u) % vec4<u32>(32u)), ~vec4<i32>(arg_1.a, 0i, arg_0, var_0.x)) & select(firstLeadingBit(vec4<i32>(var_0.x, arg_0, -33416i, arg_0)), vec4<i32>(arg_3.x, arg_3.x, arg_1.a, 0i), true), -vec4<i32>(-13901i, _wgslsmith_clamp_i32(54794i, var_0.x, -2147483647i), arg_1.a, arg_3.x)), Struct_1(-313f, ~(vec3<u32>(12215u, u_input.a, u_input.b) & vec3<u32>(0u, 4294967295u, 4294967295u)) >> (~select(vec3<u32>(4294967295u, 41215u, u_input.a), vec3<u32>(4294967295u, 4294967295u, u_input.b), vec3<bool>(true, true, global4.x)) % vec3<u32>(32u)), ~(~vec4<u32>(u_input.a, u_input.a, u_input.a, 1u)) | max(func_2(vec3<bool>(global4.x, arg_1.b.x, global4.x), vec2<u32>(u_input.b, u_input.a), var_0), ~vec4<u32>(u_input.a, u_input.b, u_input.a, u_input.b)), select(_wgslsmith_add_vec4_u32(vec4<u32>(11782u, 77803u, 0u, 56119u), vec4<u32>(0u, u_input.b, 34855u, u_input.b)), vec4<u32>(23413u, 0u, u_input.b, u_input.b) >> (vec4<u32>(4294967295u, u_input.b, 4294967295u, 64950u) % vec4<u32>(32u)), !vec4<bool>(true, arg_1.b.x, false, arg_1.b.x)) << (_wgslsmith_add_vec4_u32(~vec4<u32>(u_input.a, 0u, u_input.a, 46555u), firstTrailingBit(vec4<u32>(u_input.b, u_input.a, 4294967295u, u_input.a))) % vec4<u32>(32u))), u_input.b);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x));
    global3 = array<vec2<bool>, 3>();
    var var_3 = global1[_wgslsmith_index_u32(min(~(~(~37939u)), u_input.a), 21u)];
    return ~firstTrailingBit(~_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, u_input.b, var_1.a.d.x, u_input.b) & vec4<u32>(4294967295u, 60571u, var_3.d.b.x, var_1.e), var_1.a.c, var_3.d.d));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_4, arg_3: f32) -> vec3<bool> {
    let var_0 = Struct_2(abs(vec4<i32>(arg_2.a, -103481i, arg_2.a, arg_2.a)), arg_0.c.x, global4.xy, arg_0, select(!vec2<bool>(!arg_2.b.x, arg_2.a >= -23444i), global3[_wgslsmith_index_u32(func_2(!vec3<bool>(global4.x, false, true), ~_wgslsmith_div_vec2_u32(arg_0.c.yz, vec2<u32>(u_input.b, arg_0.b.x)), vec3<i32>(_wgslsmith_sub_i32(2147483647i, arg_2.a), arg_2.a, arg_2.a | arg_2.a)).x, 3u)], func_3(arg_1)));
    let var_1 = 1000f;
    global2 = vec4<f32>(825f, var_1, _wgslsmith_f_op_f32(trunc(933f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0.a), _wgslsmith_f_op_f32(step(-1498f, _wgslsmith_f_op_f32(f32(-1f) * -1636f))))))));
    let var_2 = _wgslsmith_sub_vec2_u32(arg_0.b.xz, vec2<u32>(arg_0.b.x, arg_1.c.x));
    return !vec3<bool>(var_0.c.x, false, true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec3_f32(global2.wzz, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global2.yyz * global2.zwx))));
    var var_1 = !func_5(Struct_1(-336f, vec3<u32>(~7223u, ~0u, ~u_input.b), ~vec4<u32>(u_input.a, 0u, u_input.a, u_input.b) >> (vec4<u32>(u_input.b, 0u, u_input.a, 98111u) % vec4<u32>(32u)), firstTrailingBit(reverseBits(vec4<u32>(u_input.b, u_input.a, u_input.b, u_input.b)))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.x))), ~(~vec3<u32>(u_input.a, 8521u, u_input.b)), func_1(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, 0i, 1i, -10906i), vec4<i32>(-42626i, 2147483647i, -14990i, -2147483647i)), Struct_4(0i, vec2<bool>(true, true), global2.yxy), _wgslsmith_f_op_f32(global2.x * global2.x), _wgslsmith_mod_vec2_i32(vec2<i32>(454i, 0i), vec2<i32>(-51601i, 2147483647i))), reverseBits(~vec4<u32>(52349u, u_input.a, 4294967295u, 34490u))), Struct_4(_wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(2147483647i, 1i, -4146i, -2147483647i)), vec4<i32>(-1i, 0i, -42435i, -7311i)), vec2<bool>(!global4.x, false), global2.ywy), _wgslsmith_f_op_f32(-532f - 117f));
    global0 = array<vec4<f32>, 9>();
    var var_2 = !func_5(Struct_1(global2.x, _wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.a, u_input.b, 18498u), abs(vec3<u32>(u_input.b, u_input.b, 0u))), ~vec4<u32>(u_input.a, 1u, u_input.b, u_input.b), vec4<u32>(_wgslsmith_sub_u32(69685u, u_input.b), 0u, 4294967295u, u_input.a)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-231f, global2.x))), vec3<u32>(u_input.b << (u_input.a % 32u), u_input.b, _wgslsmith_div_u32(u_input.a, 4294967295u)), vec4<u32>(4294967295u, _wgslsmith_div_u32(u_input.a, u_input.a), countOneBits(u_input.a), _wgslsmith_clamp_u32(1u, 20409u, u_input.b)), ~_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 72582u, u_input.b), vec4<u32>(u_input.b, u_input.b, u_input.b, 31066u))), Struct_4(-95735i, vec2<bool>(any(vec4<bool>(var_1.x, false, global4.x, false)), all(vec2<bool>(false, true))), vec3<f32>(_wgslsmith_f_op_f32(min(var_0.x, var_0.x)), _wgslsmith_f_op_f32(var_0.x - global2.x), _wgslsmith_f_op_f32(var_0.x * global2.x))), -850f).zx;
    global3 = array<vec2<bool>, 3>();
    let var_3 = vec4<bool>(true, true, false, false);
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<i32>(1i, 1i, 1i), 2147483647i, vec2<u32>(max(reverseBits(1u), u_input.a), ~max(_wgslsmith_mod_u32(0u, u_input.a), ~u_input.b)));
}

