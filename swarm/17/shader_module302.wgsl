struct Struct_1 {
    a: vec4<u32>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: u32,
    b: vec2<f32>,
    c: i32,
    d: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: i32,
    c: Struct_3,
    d: vec3<u32>,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec3<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 19>;

var<private> global1: array<f32, 16> = array<f32, 16>(1520f, 352f, -416f, 354f, 1000f, 2250f, -1000f, -2433f, -169f, 1054f, 681f, -1327f, 496f, 985f, -1974f, -1851f);

var<private> global2: array<Struct_4, 2> = array<Struct_4, 2>(Struct_4(true, 2147483647i, Struct_3(0u, vec2<f32>(-1000f, 157f), i32(-2147483648), Struct_1(vec4<u32>(16353u, 19326u, 47063u, 1518u), vec2<u32>(1u, 0u))), vec3<u32>(4294967295u, 4294967295u, 19372u), 7323i), Struct_4(false, 0i, Struct_3(54786u, vec2<f32>(480f, -1085f), 1i, Struct_1(vec4<u32>(0u, 0u, 4294967295u, 0u), vec2<u32>(6183u, 1u))), vec3<u32>(1u, 12467u, 4294967295u), 2147483647i));

var<private> global3: array<vec2<u32>, 23>;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: bool, arg_1: i32, arg_2: vec2<f32>) -> bool {
    global3 = array<vec2<u32>, 23>();
    global0 = array<bool, 19>();
    global0 = array<bool, 19>();
    global1 = array<f32, 16>();
    global3 = array<vec2<u32>, 23>();
    return -(_wgslsmith_add_i32(u_input.b << (1u % 32u), arg_1) ^ -arg_1) < u_input.c;
}

fn func_3(arg_0: u32, arg_1: bool) -> u32 {
    var var_0 = Struct_4(arg_1, -11100i, Struct_3(arg_0, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(4294967295u, 16u)], global1[_wgslsmith_index_u32(arg_0, 16u)]) * vec2<f32>(global1[_wgslsmith_index_u32(arg_0, 16u)], 935f)))), 1i, Struct_1(_wgslsmith_div_vec4_u32(abs(vec4<u32>(arg_0, arg_0, arg_0, 0u)), ~vec4<u32>(arg_0, 4294967295u, 6683u, 23889u)), min(vec2<u32>(arg_0, 4294967295u), ~vec2<u32>(25930u, arg_0)))), vec3<u32>(15256u, abs(4294967295u), _wgslsmith_sub_u32(4294967295u, arg_0)), _wgslsmith_add_i32(_wgslsmith_mult_i32(0i, -_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, u_input.a, 1i), vec3<i32>(-2147483647i, u_input.a, 71987i))), u_input.a | ~min(u_input.a, u_input.a)));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.c.b.x, _wgslsmith_f_op_f32(-var_0.c.b.x))));
    let var_2 = -vec4<i32>(reverseBits(var_0.c.c), _wgslsmith_mod_i32(36314i, i32(-1i) * -2147483647i), -1i, var_0.e);
    var var_3 = select(select(select(!(!vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 19u)], var_0.a)), select(vec2<bool>(false, false), vec2<bool>(true, global0[_wgslsmith_index_u32(var_0.d.x, 19u)]), vec2<bool>(false, arg_1)), select(select(vec2<bool>(false, true), vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 19u)], true), vec2<bool>(global0[_wgslsmith_index_u32(var_0.c.a, 19u)], global0[_wgslsmith_index_u32(var_0.d.x, 19u)])), vec2<bool>(true, true), arg_1)), !select(select(vec2<bool>(var_0.a, false), vec2<bool>(false, false), vec2<bool>(global0[_wgslsmith_index_u32(var_0.d.x, 19u)], var_0.a)), vec2<bool>(var_0.a, arg_1), vec2<bool>(true, true)), select(vec2<bool>(all(vec3<bool>(var_0.a, var_0.a, false)), false), select(vec2<bool>(arg_1, true), !vec2<bool>(true, global0[_wgslsmith_index_u32(42190u, 19u)]), select(vec2<bool>(false, global0[_wgslsmith_index_u32(arg_0, 19u)]), vec2<bool>(true, true), vec2<bool>(global0[_wgslsmith_index_u32(var_0.c.d.b.x, 19u)], global0[_wgslsmith_index_u32(var_0.d.x, 19u)]))), select(!vec2<bool>(global0[_wgslsmith_index_u32(arg_0, 19u)], true), !vec2<bool>(true, global0[_wgslsmith_index_u32(var_0.d.x, 19u)]), select(vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 19u)], true), vec2<bool>(false, true), var_0.a)))), select(!vec2<bool>(var_2.x > -2147483647i, true), !vec2<bool>(arg_1, true), !vec2<bool>(true, arg_1)), !vec2<bool>(!func_2(false, var_2.x, vec2<f32>(global1[_wgslsmith_index_u32(6969u, 16u)], global1[_wgslsmith_index_u32(arg_0, 16u)])), arg_1));
    global1 = array<f32, 16>();
    return var_0.c.a;
}

fn func_1(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: vec4<bool>, arg_3: u32) -> u32 {
    var var_0 = arg_0;
    let var_1 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-182f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(0u, 16u)]), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(4294967295u, 16u)] - global1[_wgslsmith_index_u32(1u, 16u)])))))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1064f, -354f) + vec2<f32>(733f, global1[_wgslsmith_index_u32(0u, 16u)]))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(28260u, 16u)], 1000f)))))))));
    var var_2 = select(func_2(true, abs(-1i), var_1), true, !any(select(vec2<bool>(global0[_wgslsmith_index_u32(arg_0.b.x, 19u)], global0[_wgslsmith_index_u32(arg_0.a.x, 19u)]), arg_2.zx, arg_2.yw)) | (false && global0[_wgslsmith_index_u32(0u, 19u)]));
    global1 = array<f32, 16>();
    global2 = array<Struct_4, 2>();
    return ~_wgslsmith_sub_u32(arg_1.x, firstLeadingBit(_wgslsmith_mod_u32(func_3(var_0.b.x, false), 4294967295u)));
}

fn func_4(arg_0: Struct_3, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: vec4<bool>) -> u32 {
    global1 = array<f32, 16>();
    global2 = array<Struct_4, 2>();
    var var_0 = Struct_1(select(_wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_0.a, 4294967295u, arg_0.a, 43873u), ~arg_0.d.a), arg_0.d.a ^ (vec4<u32>(arg_0.a, arg_0.a, 4294967295u, 34155u) << (arg_2.a % vec4<u32>(32u)))), arg_2.a, any(vec4<bool>(global0[_wgslsmith_index_u32(arg_2.b.x, 19u)] || true, true, global0[_wgslsmith_index_u32(func_3(129023u, global0[_wgslsmith_index_u32(arg_2.a.x, 19u)]), 19u)], true != global0[_wgslsmith_index_u32(arg_2.a.x, 19u)]))), vec2<u32>(32528u, ~func_3(arg_2.a.x, all(vec3<bool>(true, arg_3.x, arg_3.x)))));
    var_0 = arg_0.d;
    global2 = array<Struct_4, 2>();
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 19>();
    let var_0 = Struct_3(func_4(Struct_3(_wgslsmith_mod_u32(func_1(Struct_1(vec4<u32>(4294967295u, 0u, 48551u, 0u), vec2<u32>(8204u, 1u)), vec4<u32>(83629u, 37862u, 1u, 1u), vec4<bool>(false, false, true, false), 0u), ~0u), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global1[_wgslsmith_index_u32(1u, 16u)], 966f))) * vec2<f32>(global1[_wgslsmith_index_u32(114526u, 16u)], 816f)), u_input.c, Struct_1(vec4<u32>(1u, 1u, 1u, 1u), ~global3[_wgslsmith_index_u32(36440u, 23u)])), _wgslsmith_add_vec4_i32(firstLeadingBit(firstLeadingBit(vec4<i32>(u_input.b, 49943i, -1i, u_input.c))), firstLeadingBit(vec4<i32>(u_input.b, u_input.b, u_input.a, -43229i) << (vec4<u32>(31245u, 90903u, 1u, 8208u) % vec4<u32>(32u)))), Struct_1(vec4<u32>(firstLeadingBit(11249u), _wgslsmith_dot_vec2_u32(vec2<u32>(16037u, 117005u), global3[_wgslsmith_index_u32(0u, 23u)]), 28385u, 1u), _wgslsmith_mult_vec2_u32(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(8581u, 0u, 11094u, 4294967295u), vec4<u32>(83747u, 25033u, 46881u, 1u)), 23u)], vec2<u32>(0u, 35925u) >> (global3[_wgslsmith_index_u32(842u, 23u)] % vec2<u32>(32u)))), vec4<bool>(~57712u != func_3(1u, true), true, true, true != all(vec4<bool>(global0[_wgslsmith_index_u32(72430u, 19u)], global0[_wgslsmith_index_u32(4294967295u, 19u)], global0[_wgslsmith_index_u32(34189u, 19u)], true)))), vec2<f32>(_wgslsmith_f_op_f32(263f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-118f)) - _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(50973u, 16u)]))), _wgslsmith_f_op_f32(812f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(4294967295u, 16u)]))))), _wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(-1i) * -vec4<i32>(-2147483647i, u_input.c, u_input.b, 8362i)), ~vec4<i32>(-u_input.a, u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, u_input.b, -1i, u_input.a), vec4<i32>(u_input.c, 18688i, -38677i, 2147483647i)), -1i)), Struct_1(~vec4<u32>(1u, 1u, _wgslsmith_mult_u32(72339u, 10959u), 0u), vec2<u32>(21927u, func_4(Struct_3(4294967295u, vec2<f32>(global1[_wgslsmith_index_u32(11369u, 16u)], global1[_wgslsmith_index_u32(66231u, 16u)]), u_input.c, Struct_1(vec4<u32>(4294967295u, 26814u, 11327u, 175u), vec2<u32>(45991u, 1u))), vec4<i32>(37473i, u_input.c, u_input.a, 0i), Struct_1(vec4<u32>(9013u, 0u, 13557u, 18233u), vec2<u32>(0u, 28580u)), select(vec4<bool>(true, global0[_wgslsmith_index_u32(19442u, 19u)], false, global0[_wgslsmith_index_u32(4294967295u, 19u)]), vec4<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 19u)], global0[_wgslsmith_index_u32(993u, 19u)], true), global0[_wgslsmith_index_u32(68542u, 19u)])))));
    let var_1 = Struct_3(func_3(0u, true), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.b) - _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b.x, global1[_wgslsmith_index_u32(49158u, 16u)]) * var_0.b)))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(ceil(var_0.b.x)), _wgslsmith_f_op_f32(-1000f * var_0.b.x))))), -(~firstLeadingBit(1i)), Struct_1(vec4<u32>(_wgslsmith_mult_u32(var_0.a, var_0.d.b.x) << (1u % 32u), var_0.d.a.x, _wgslsmith_clamp_u32(3003u, 47120u, var_0.d.b.x) & (var_0.a << (var_0.d.a.x % 32u)), 1600u), var_0.d.b));
    global0 = array<bool, 19>();
    var var_2 = global2[_wgslsmith_index_u32(var_0.d.a.x, 2u)];
    let var_3 = -552f;
    let var_4 = !(!select(vec2<bool>(true, var_0.a <= var_0.a), !select(vec2<bool>(var_2.a, global0[_wgslsmith_index_u32(var_2.d.x, 19u)]), vec2<bool>(false, global0[_wgslsmith_index_u32(0u, 19u)]), vec2<bool>(global0[_wgslsmith_index_u32(1u, 19u)], true)), global0[_wgslsmith_index_u32(var_0.d.a.x, 19u)]));
    let x = u_input.a;
    s_output = StorageBuffer(select(~var_1.d.b.x, ~var_2.c.a, var_2.a), ~global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(countOneBits(_wgslsmith_add_u32(27085u, 36943u)), 0u), 23u)], _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_2.c.b.x, -1740f, -1152f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b.x, var_1.b.x, var_0.b.x)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(917f, global1[_wgslsmith_index_u32(~(~var_2.c.a), 16u)])) * _wgslsmith_f_op_f32(-1001f * var_2.c.b.x)));
}

