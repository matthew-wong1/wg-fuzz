struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: vec4<f32>,
    d: bool,
    e: vec2<f32>,
}

struct Struct_2 {
    a: u32,
    b: vec3<i32>,
    c: Struct_1,
    d: vec2<i32>,
    e: f32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec2<bool>,
}

struct Struct_4 {
    a: bool,
    b: vec3<u32>,
    c: vec2<i32>,
}

struct Struct_5 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec3<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 30>;

var<private> global1: array<vec3<i32>, 28> = array<vec3<i32>, 28>(vec3<i32>(9916i, 0i, -1i), vec3<i32>(9809i, i32(-2147483648), 22622i), vec3<i32>(i32(-2147483648), -1i, 0i), vec3<i32>(10984i, 0i, 2147483647i), vec3<i32>(-9713i, -36450i, 2147483647i), vec3<i32>(77813i, 59484i, -9442i), vec3<i32>(-1i, 2147483647i, -6026i), vec3<i32>(-10479i, 0i, i32(-2147483648)), vec3<i32>(-1i, 7431i, 1i), vec3<i32>(1i, 2147483647i, 1i), vec3<i32>(i32(-2147483648), 40905i, i32(-2147483648)), vec3<i32>(-4346i, -1i, 18114i), vec3<i32>(-32252i, 47225i, 2147483647i), vec3<i32>(-1i, -11482i, -1i), vec3<i32>(0i, -23256i, -60160i), vec3<i32>(16843i, 1i, 4030i), vec3<i32>(-1i, 63182i, -18569i), vec3<i32>(-4948i, -15827i, 27991i), vec3<i32>(-26544i, 1i, 0i), vec3<i32>(1i, -26265i, 2147483647i), vec3<i32>(i32(-2147483648), 1i, i32(-2147483648)), vec3<i32>(-1i, -25060i, 2147483647i), vec3<i32>(0i, 2147483647i, 1i), vec3<i32>(2147483647i, i32(-2147483648), -1i), vec3<i32>(-1i, 55037i, 2802i), vec3<i32>(3686i, 1i, 1i), vec3<i32>(24640i, 17968i, 0i), vec3<i32>(1i, 1i, 11448i));

var<private> global2: u32 = 0u;

var<private> global3: array<vec4<f32>, 4> = array<vec4<f32>, 4>(vec4<f32>(-1230f, -915f, -401f, 140f), vec4<f32>(-1000f, 2041f, -1000f, -339f), vec4<f32>(-637f, 192f, -1079f, -838f), vec4<f32>(161f, 1000f, -182f, -1540f));

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec4<f32>) -> bool {
    global3 = array<vec4<f32>, 4>();
    var var_0 = Struct_1(abs(~firstLeadingBit(u_input.c)), vec3<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 30u)]), -1307f, -1000f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(54948u, 30u)], _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.x), arg_0.x), _wgslsmith_f_op_f32(991f + 1044f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(132f)))))), !(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.e.x, 44545u, u_input.c), vec3<u32>(u_input.a, u_input.e.x, u_input.a)), ~u_input.e.xxw), 30u)] <= -176f), _wgslsmith_f_op_vec2_f32(-arg_0.xw));
    var var_1 = Struct_2(_wgslsmith_mult_u32(min(~u_input.a, ~var_0.a), ~_wgslsmith_sub_u32(1u, 0u)), ~firstTrailingBit(~(-u_input.d)), Struct_1(u_input.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-860f, 144f, arg_0.x) + vec3<f32>(arg_0.x, 595f, global0[_wgslsmith_index_u32(var_0.a, 30u)])))) * vec3<f32>(_wgslsmith_f_op_f32(-var_0.e.x), _wgslsmith_f_op_f32(-1151f - global0[_wgslsmith_index_u32(u_input.a, 30u)]), _wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(var_0.a, 30u)], -294f)))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-global3[_wgslsmith_index_u32(var_0.a, 4u)]))), !any(vec2<bool>(var_0.d, var_0.d)) && (var_0.a <= min(89467u, 0u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2161f, -496f)), vec2<f32>(-1000f, -253f))))), vec2<i32>(u_input.d.x, -1i) & min(countOneBits(_wgslsmith_clamp_vec2_i32(u_input.d.xy, vec2<i32>(u_input.d.x, -7474i), vec2<i32>(-24081i, u_input.b))), u_input.d.yx), _wgslsmith_f_op_f32(-arg_0.x));
    var var_2 = Struct_1(var_0.a, _wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_0.a << (0u % 32u), ~u_input.e.x), 30u)], -1525f, var_1.c.b.x) - _wgslsmith_div_vec3_f32(vec3<f32>(-2520f, _wgslsmith_f_op_f32(round(407f)), _wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0.c.x, 750f, -1233f), arg_0.wzw))))), arg_0, all(vec3<bool>(false, false, select(!var_1.c.d, var_0.d, false))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -951f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0.x)))));
    global2 = ~_wgslsmith_clamp_u32(1u, ~(~var_1.a), select(abs(reverseBits(1u)), var_0.a, select(any(vec3<bool>(var_2.d, false, false)), true, var_2.d)));
    return !var_0.d;
}

fn func_2(arg_0: i32, arg_1: vec3<bool>) -> vec4<bool> {
    let var_0 = false;
    let var_1 = ~39366u;
    global3 = array<vec4<f32>, 4>();
    global3 = array<vec4<f32>, 4>();
    let var_2 = !(!vec4<bool>(func_3(_wgslsmith_f_op_vec4_f32(global3[_wgslsmith_index_u32(0u, 4u)] + global3[_wgslsmith_index_u32(var_1, 4u)])), any(vec2<bool>(true, true)), !var_0, !func_3(global3[_wgslsmith_index_u32(0u, 4u)])));
    return select(!select(vec4<bool>(any(arg_1.xx), !var_2.x, global0[_wgslsmith_index_u32(1u, 30u)] <= 748f, !var_0), vec4<bool>(true, all(vec2<bool>(true, false)), true, any(vec4<bool>(var_2.x, true, true, var_0))), var_2), !(!vec4<bool>(all(vec2<bool>(true, true)), true, arg_1.x, global0[_wgslsmith_index_u32(var_1, 30u)] <= 478f)), true);
}

fn func_4(arg_0: vec4<bool>, arg_1: vec2<i32>, arg_2: bool, arg_3: i32) -> Struct_4 {
    global0 = array<f32, 30>();
    global0 = array<f32, 30>();
    let var_0 = -122f;
    let var_1 = Struct_4(any(vec2<bool>(any(select(vec4<bool>(arg_0.x, false, false, arg_2), vec4<bool>(false, false, arg_2, arg_2), vec4<bool>(true, false, arg_0.x, false))), arg_0.x)), vec3<u32>(4294967295u, u_input.e.x, ~_wgslsmith_dot_vec2_u32(reverseBits(u_input.e.yz), vec2<u32>(u_input.a, 1u))), arg_1);
    let var_2 = Struct_3(abs(_wgslsmith_mod_vec2_u32(u_input.e.zw, u_input.e.zy)) ^ ~u_input.e.xw, select(!func_2(_wgslsmith_mult_i32(arg_1.x, -17730i), arg_0.www).wz, vec2<bool>(func_3(global3[_wgslsmith_index_u32(70883u, 4u)]), all(select(vec2<bool>(arg_2, true), arg_0.ww, arg_2))), select(!arg_0.zx, arg_0.xx, vec2<bool>(false, !var_1.a))));
    return var_1;
}

fn func_1() -> Struct_4 {
    var var_0 = 0i;
    var var_1 = func_4(select(!func_2(~u_input.b, vec3<bool>(true, true, true)), !vec4<bool>(true, true, global0[_wgslsmith_index_u32(u_input.a, 30u)] > global0[_wgslsmith_index_u32(u_input.c, 30u)], true), select(false, func_2(48574i, select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false))).x, false)), ~vec2<i32>(select(u_input.d.x, -2147483647i, true), -(~u_input.b)), func_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 30u)], -795f, global0[_wgslsmith_index_u32(u_input.c, 30u)], 298f) * global3[_wgslsmith_index_u32(~2634u, 4u)]))), 2147483647i);
    global3 = array<vec4<f32>, 4>();
    global1 = array<vec3<i32>, 28>();
    let var_2 = Struct_5(-min(-vec4<i32>(u_input.b, 21187i, 50006i, -10566i), _wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(10614i, var_1.c.x, -19526i, var_1.c.x), vec4<i32>(var_1.c.x, 10139i, u_input.b, -3429i)), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.d.x, 7128i, 2147483647i, 36738i), vec4<i32>(u_input.d.x, -76846i, -57817i, u_input.d.x)))));
    return Struct_4(any(vec3<bool>(true, true, true)), ~u_input.e.zyy, ~vec2<i32>(~var_2.a.x >> (_wgslsmith_dot_vec2_u32(u_input.e.zy, vec2<u32>(var_1.b.x, u_input.a)) % 32u), firstLeadingBit(var_1.c.x) & (1i ^ u_input.b)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~select(4975i >> (u_input.a % 32u), 20676i, all(vec4<bool>(true, true, true, true)));
    global3 = array<vec4<f32>, 4>();
    var var_1 = Struct_4(true, u_input.e.wzw, vec2<i32>(abs(_wgslsmith_div_i32(0i, 2147483647i) ^ _wgslsmith_mult_i32(u_input.b, 1i)), max(~u_input.d.x, abs(0i))));
    var_1 = func_1();
    let var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2432f - global0[_wgslsmith_index_u32(24699u, 30u)]) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -2507f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(45160u, ~_wgslsmith_mod_u32(1u, countOneBits(var_1.b.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(var_1.b.x, 30u)] - global0[_wgslsmith_index_u32(0u, 30u)]), -119f, global0[_wgslsmith_index_u32(var_1.b.x ^ var_1.b.x, 30u)], -1000f) - vec4<f32>(-1956f, _wgslsmith_div_f32(global0[_wgslsmith_index_u32(4294967295u, 30u)], var_2), var_2, _wgslsmith_f_op_f32(-var_2)))));
}

