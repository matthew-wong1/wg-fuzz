struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: vec3<f32>,
    d: vec3<u32>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: f32,
    d: Struct_1,
    e: vec2<i32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec3<bool>,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<f32>,
    d: u32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

var<private> global1: i32 = 101500i;

var<private> global2: u32 = 53937u;

var<private> global3: array<vec2<f32>, 31>;

var<private> global4: array<vec2<i32>, 25> = array<vec2<i32>, 25>(vec2<i32>(2147483647i, -1i), vec2<i32>(0i, -29532i), vec2<i32>(80621i, i32(-2147483648)), vec2<i32>(1i, -29403i), vec2<i32>(i32(-2147483648), -15690i), vec2<i32>(-28855i, 1633i), vec2<i32>(2147483647i, -5254i), vec2<i32>(0i, 93213i), vec2<i32>(i32(-2147483648), 29906i), vec2<i32>(2147483647i, -33883i), vec2<i32>(-24171i, -26518i), vec2<i32>(-32356i, 0i), vec2<i32>(0i, 9808i), vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(9320i, 2147483647i), vec2<i32>(-45040i, -43931i), vec2<i32>(1i, -1952i), vec2<i32>(-1i, 2147483647i), vec2<i32>(-1i, 28813i), vec2<i32>(0i, -1i), vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(2147483647i, 0i), vec2<i32>(-1i, -1i), vec2<i32>(1i, i32(-2147483648)), vec2<i32>(-8313i, 1i));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> f32 {
    let var_0 = vec4<bool>(false, any(vec4<bool>(true, all(vec2<bool>(true, true)), any(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false))), true)), false, (_wgslsmith_add_i32(-1i, _wgslsmith_dot_vec2_i32(vec2<i32>(4120i, -1i), global4[_wgslsmith_index_u32(u_input.d, 25u)])) ^ ((80i << (u_input.c.x % 32u)) << (~u_input.a % 32u))) <= -countOneBits(-1i));
    let var_1 = Struct_2(Struct_1(!select(!var_0, var_0, var_0.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1526f, -1000f) * -105f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-340f, 543f, -382f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-297f, -1182f, -1797f) - vec3<f32>(1170f, -590f, -878f)))), vec3<u32>(u_input.b, ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.a, 7918u, u_input.c.x), vec4<u32>(u_input.c.x, u_input.b, 101528u, u_input.d)), select(firstTrailingBit(15899u), u_input.a, all(var_0.wzw))), var_0), -select(min(~vec4<i32>(1i, -12527i, 0i, 1i), vec4<i32>(2147483647i, 0i, 2147483647i, -2147483647i)), vec4<i32>(1i, 2147483647i, _wgslsmith_clamp_i32(-1i, -11246i, 2147483647i), 18989i), !var_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-384f)))), Struct_1(vec4<bool>(false, false, var_0.x, all(!vec3<bool>(var_0.x, true, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -558f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)), _wgslsmith_add_vec3_u32(~(u_input.c | u_input.c), u_input.c), !(!(!var_0))), _wgslsmith_sub_vec2_i32(-_wgslsmith_sub_vec2_i32(reverseBits(vec2<i32>(-14728i, -16171i)), global4[_wgslsmith_index_u32(~u_input.b, 25u)]), global4[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(reverseBits(abs(vec3<u32>(u_input.c.x, u_input.d, 19294u))), vec3<u32>(~u_input.b, 1u, firstTrailingBit(u_input.b))), 25u)]));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global3[_wgslsmith_index_u32(59927u, 31u)] * vec2<f32>(var_1.d.b, var_1.a.c.x)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-144f, var_1.d.b) * vec2<f32>(-1340f, -1116f))))))));
    var var_3 = -(~vec4<i32>(_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.e.x, var_1.e.x, 9987i, var_1.e.x), vec4<i32>(var_1.b.x, var_1.b.x, 45719i, var_1.b.x)), 2147483647i), firstTrailingBit(_wgslsmith_sub_i32(var_1.b.x, 50018i)), 10330i, abs(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 17913i), vec2<i32>(var_1.b.x, var_1.e.x)))));
    global3 = array<vec2<f32>, 31>();
    return _wgslsmith_f_op_f32(sign(var_2.x));
}

fn func_2(arg_0: bool) -> f32 {
    let var_0 = all(vec2<bool>(-1158f >= _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -248f))), true || (~31206u < u_input.d)));
    global1 = reverseBits(_wgslsmith_dot_vec2_i32(global4[_wgslsmith_index_u32(53600u, 25u)], _wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(global4[_wgslsmith_index_u32(4294967295u, 25u)], vec2<i32>(1i, 0i)), _wgslsmith_mult_vec2_i32(global4[_wgslsmith_index_u32(0u, 25u)], global4[_wgslsmith_index_u32(0u, 25u)])) | global4[_wgslsmith_index_u32(max(169362u, _wgslsmith_mult_u32(90318u, 31413u)), 25u)]));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(func_3()), -301f, _wgslsmith_f_op_f32(189f * _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -563f), _wgslsmith_f_op_f32(f32(-1f) * -319f)) * _wgslsmith_f_op_f32(max(1343f, _wgslsmith_f_op_f32(-631f - 767f))))));
    var var_2 = ~u_input.c.x;
    let var_3 = Struct_3(select(vec3<bool>(any(!vec4<bool>(var_0, false, arg_0, false)), false, arg_0), !vec3<bool>(all(vec4<bool>(true, var_0, true, false)), var_0, var_0), select(!vec3<bool>(arg_0, true, arg_0), !select(vec3<bool>(true, var_0, true), vec3<bool>(arg_0, arg_0, false), vec3<bool>(var_0, false, false)), !(!vec3<bool>(arg_0, true, arg_0)))), !(!(!vec3<bool>(arg_0, arg_0, false))), ~vec2<u32>(u_input.c.x, 48976u));
    return _wgslsmith_div_f32(1113f, -1000f);
}

fn func_4(arg_0: f32, arg_1: Struct_2) -> vec4<f32> {
    var var_0 = -reverseBits(arg_1.b.x);
    let var_1 = -2776i;
    global0 = ~4294967295u;
    global3 = array<vec2<f32>, 31>();
    let var_2 = ~u_input.c.x;
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(517f, arg_0, 229f, 836f), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(347f, -703f, 1731f, arg_0)))), vec4<f32>(_wgslsmith_f_op_f32(-1458f - 672f), -670f, _wgslsmith_f_op_f32(round(arg_1.c)), -1381f)))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(arg_1.a.b)), _wgslsmith_f_op_f32(-1017f - -285f)), arg_1.d.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())), arg_0) - vec4<f32>(_wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(791f * arg_1.c)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0, 1061f) - _wgslsmith_f_op_f32(sign(1242f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_1.a.b))), _wgslsmith_f_op_f32(-1f))));
}

fn func_1() -> vec3<bool> {
    var var_0 = vec3<bool>(4294967295u == u_input.c.x, true, true);
    global4 = array<vec2<i32>, 25>();
    var var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-587f, -1714f, -426f, -381f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1116f, -1365f, -685f, 352f) - vec4<f32>(1000f, -625f, 648f, -611f)))) + vec4<f32>(135f, -1916f, 414f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1590f - -1000f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(var_0.x))), Struct_2(Struct_1(vec4<bool>(var_0.x, true, var_0.x, var_0.x), 1790f, vec3<f32>(241f, 328f, -439f), u_input.c, vec4<bool>(var_0.x, false, var_0.x, false)), vec4<i32>(-15929i, 1i, 0i, 5767i), _wgslsmith_f_op_f32(f32(-1f) * -2662f), Struct_1(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), 202f, vec3<f32>(455f, -1000f, -890f), u_input.c, vec4<bool>(true, true, false, var_0.x)), global4[_wgslsmith_index_u32(u_input.a, 25u)]))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1289f, _wgslsmith_f_op_f32(1437f + -423f), _wgslsmith_div_f32(-489f, 528f), -1226f) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-536f, 1227f, 384f, -1000f)), any(vec4<bool>(false, true, true, var_0.x)))))));
    var var_2 = _wgslsmith_add_u32(1u, ~abs(countOneBits(1u) & u_input.d));
    let var_3 = ~(-2147483647i);
    return !select(!select(!vec3<bool>(var_0.x, var_0.x, var_0.x), !vec3<bool>(false, var_0.x, var_0.x), true), vec3<bool>(any(vec4<bool>(var_0.x, false, true, var_0.x)), true, var_0.x | all(vec4<bool>(true, var_0.x, var_0.x, var_0.x))), true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = all(select(func_1(), !select(vec3<bool>(true, true, true), func_1(), func_1()), all(vec3<bool>(all(vec4<bool>(true, false, false, true)), true, all(vec3<bool>(false, false, true))))));
    let var_1 = ~_wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(88544u, u_input.d), u_input.c.yx) << ((u_input.c.yx | u_input.c.yy) % vec2<u32>(32u)), u_input.c.yz) ^ _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.d, 48972u), _wgslsmith_sub_vec2_u32(~u_input.c.yz, vec2<u32>(u_input.b, u_input.c.x)), abs(vec2<u32>(1u, _wgslsmith_mod_u32(u_input.d, 19507u))));
    global3 = array<vec2<f32>, 31>();
    var var_2 = u_input.a;
    var var_3 = select(abs(_wgslsmith_dot_vec2_u32(u_input.c.yx, ~u_input.c.yx)), _wgslsmith_dot_vec4_u32(vec4<u32>(~var_1.x, firstTrailingBit(1u), ~4294967295u, ~var_1.x), ~(~vec4<u32>(4294967295u, var_1.x, u_input.d, var_1.x))) & var_1.x, !var_0);
    let x = u_input.a;
    s_output = StorageBuffer(abs(u_input.c.yy), -abs(abs(abs(0i))), vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -354f), _wgslsmith_f_op_f32(1485f - -864f), all(vec4<bool>(false, var_0, true, var_0)))))), _wgslsmith_f_op_f32(sign(-347f)), _wgslsmith_f_op_f32(min(-490f, 215f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(695f + -1197f)))), var_1.x, _wgslsmith_sub_vec4_i32(-vec4<i32>(1i, 1i, ~35836i, _wgslsmith_mult_i32(1i, -2147483647i)), -_wgslsmith_mod_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), select(vec4<i32>(-2147483647i, 50539i, -9935i, -13432i), vec4<i32>(-32935i, -14408i, -1i, 44175i), vec4<bool>(var_0, true, true, true)))));
}

