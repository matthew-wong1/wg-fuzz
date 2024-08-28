struct Struct_1 {
    a: vec4<i32>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: bool,
    c: i32,
    d: vec4<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<bool>,
}

struct Struct_5 {
    a: vec2<i32>,
    b: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<i32>,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 7> = array<u32, 7>(4294967295u, 73129u, 42715u, 59574u, 1u, 117082u, 70015u);

var<private> global1: array<vec3<f32>, 10> = array<vec3<f32>, 10>(vec3<f32>(657f, 2489f, 735f), vec3<f32>(1529f, 211f, 2544f), vec3<f32>(895f, -1722f, 905f), vec3<f32>(414f, 463f, -1000f), vec3<f32>(615f, -1120f, 809f), vec3<f32>(170f, -206f, 314f), vec3<f32>(-716f, -2793f, -1051f), vec3<f32>(-1557f, 1402f, 1018f), vec3<f32>(-1047f, 885f, -976f), vec3<f32>(-1054f, -1087f, -1707f));

var<private> global2: array<vec2<u32>, 30>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> u32 {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-939f * _wgslsmith_f_op_f32(f32(-1f) * -799f))), 535f, all(vec4<bool>(true, any(vec3<bool>(false, true, true)), any(vec4<bool>(false, true, false, true)), false)))), Struct_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1000f, 401f), vec2<f32>(1000f, -511f)) - vec2<f32>(-108f, 1000f)), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1237f, -112f))))), global0[_wgslsmith_index_u32(countOneBits(_wgslsmith_div_u32(126703u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 7u)], 7u)])), 7u)] == 1u, -15275i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2079f, -1504f, 1079f, 1250f))))), Struct_1((u_input.e | vec4<i32>(u_input.d, u_input.c.x, 0i, u_input.e.x)) & _wgslsmith_clamp_vec4_i32(u_input.b, vec4<i32>(u_input.e.x, 62768i, u_input.b.x, 34659i), vec4<i32>(u_input.e.x, -2147483647i, u_input.a, 55879i)), ~(~vec3<u32>(global0[_wgslsmith_index_u32(0u, 7u)], global0[_wgslsmith_index_u32(3528u, 7u)], 4294967295u)))), Struct_1(select(u_input.e, _wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(u_input.c, vec4<i32>(0i, -2063i, 2147483647i, -24214i)), u_input.c), select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true))), max(reverseBits(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(7865u, 7u)], 7u)], 1u, global0[_wgslsmith_index_u32(0u, 7u)])), vec3<u32>(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 7u)], 7u)], global0[_wgslsmith_index_u32(0u, 7u)] ^ global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(42197u, 7u)], 7u)], 7u)], 7u)], ~1u))));
    let var_1 = Struct_4(Struct_3(667f, Struct_2(vec2<f32>(_wgslsmith_f_op_f32(988f - -157f), _wgslsmith_div_f32(var_0.a, 1149f)), true, select(i32(-1i) * -1i, _wgslsmith_dot_vec4_i32(var_0.c.a, vec4<i32>(-13112i, -2147483647i, -2147483647i, -38588i)), false), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.d.x, -1610f, var_0.b.a.x, var_0.a)), var_0.c), Struct_1(var_0.b.e.a ^ (var_0.b.e.a & vec4<i32>(var_0.b.e.a.x, var_0.b.e.a.x, u_input.e.x, -41355i)), countOneBits(abs(var_0.b.e.b)))), !vec3<bool>(var_0.b.b, var_0.b.b, all(!vec3<bool>(false, var_0.b.b, true))));
    let var_2 = Struct_1(min(-max(vec4<i32>(0i, 2147483647i, var_0.c.a.x, 35648i), _wgslsmith_sub_vec4_i32(vec4<i32>(var_0.c.a.x, -2147483647i, 0i, 2147483647i), var_1.a.c.a)), vec4<i32>((i32(-1i) * -2147483647i) ^ ~u_input.c.x, -var_1.a.c.a.x, ~var_1.a.b.e.a.x, var_0.b.c)), min(select(~max(var_1.a.c.b, vec3<u32>(var_0.b.e.b.x, var_0.b.e.b.x, 0u)), var_1.a.c.b, !var_0.b.b), vec3<u32>(var_0.b.e.b.x, _wgslsmith_add_u32(var_1.a.c.b.x, var_1.a.b.e.b.x), ~_wgslsmith_mult_u32(var_0.b.e.b.x, 103790u))));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.a) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1261f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a - var_0.b.d.x) * _wgslsmith_f_op_f32(-var_1.a.a))) + _wgslsmith_f_op_f32(-var_1.a.a)));
    var var_4 = Struct_2(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1747f, _wgslsmith_f_op_f32(f32(-1f) * -950f)))), var_1.b.x, 1i, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-var_1.a.b.d))), var_0.b.e);
    return ~0u;
}

fn func_4(arg_0: u32, arg_1: u32, arg_2: vec3<f32>, arg_3: f32) -> u32 {
    var var_0 = Struct_3(arg_3, Struct_2(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(494f, -859f))))), true, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, _wgslsmith_mod_i32(u_input.e.x, u_input.a), -u_input.b.x, u_input.b.x | -83148i), vec4<i32>(u_input.a & 14784i, _wgslsmith_div_i32(u_input.b.x, 2147483647i), -u_input.b.x, _wgslsmith_dot_vec4_i32(u_input.e, u_input.b))), _wgslsmith_div_vec4_f32(vec4<f32>(arg_2.x, _wgslsmith_div_f32(arg_2.x, -309f), _wgslsmith_f_op_f32(sign(-902f)), _wgslsmith_f_op_f32(f32(-1f) * -721f)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(350f, -1215f, -113f, arg_2.x)))), Struct_1(u_input.b, min(reverseBits(vec3<u32>(global0[_wgslsmith_index_u32(arg_1, 7u)], 36745u, arg_0)), _wgslsmith_mod_vec3_u32(vec3<u32>(arg_1, arg_0, global0[_wgslsmith_index_u32(4294967295u, 7u)]), vec3<u32>(4058u, global0[_wgslsmith_index_u32(1u, 7u)], arg_0))))), Struct_1(u_input.b, ~reverseBits(~vec3<u32>(1u, 1u, global0[_wgslsmith_index_u32(4294967295u, 7u)]))));
    var_0 = Struct_3(_wgslsmith_f_op_f32(min(arg_3, arg_3)), Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_2.x, -1690f))))) + _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(arg_2.yy - vec2<f32>(arg_2.x, arg_2.x))))), var_0.b.b, _wgslsmith_dot_vec4_i32(u_input.c, firstLeadingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(var_0.c.a.x, 0i, u_input.b.x, -45428i), vec4<i32>(var_0.c.a.x, -2147483647i, 0i, 2147483647i)))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(var_0.b.d, var_0.b.d))), var_0.c), var_0.c);
    var var_1 = var_0.b.b;
    global0 = array<u32, 7>();
    let var_2 = 1u;
    return 25223u;
}

fn func_2(arg_0: Struct_4) -> i32 {
    global2 = array<vec2<u32>, 30>();
    let var_0 = _wgslsmith_dot_vec2_i32(vec2<i32>(~(-38948i), -(i32(-1i) * -44379i)), _wgslsmith_sub_vec2_i32(countOneBits(-arg_0.a.c.a.zz), _wgslsmith_mod_vec2_i32(u_input.e.xx, vec2<i32>(select(-343i, 2147483647i, true), -u_input.a))));
    let var_1 = func_4(_wgslsmith_clamp_u32(0u << ((0u | global0[_wgslsmith_index_u32(func_3(), 7u)]) % 32u), 17436u, arg_0.a.c.b.x), max(_wgslsmith_dot_vec3_u32(vec3<u32>(15223u, arg_0.a.c.b.x, global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(arg_0.a.c.b.x, 1u), 7u)]), ~(~arg_0.a.c.b)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, global0[_wgslsmith_index_u32(23386u, 7u)], 0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_0.a.c.b.x, 7u)], 7u)]) & vec4<u32>(arg_0.a.c.b.x, 127u, 4294967295u, 26400u), _wgslsmith_clamp_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(1u, 7u)], 12021u, global0[_wgslsmith_index_u32(7218u, 7u)], 1u), vec4<u32>(arg_0.a.c.b.x, arg_0.a.b.e.b.x, global0[_wgslsmith_index_u32(4294967295u, 7u)], 80135u), vec4<u32>(0u, arg_0.a.c.b.x, arg_0.a.c.b.x, global0[_wgslsmith_index_u32(4294967295u, 7u)])))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(arg_0.a.b.d.yxx, _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_0.a.a, arg_0.a.b.a.x, 2249f))))), arg_0.a.b.d.zzy, any(arg_0.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a.b.d.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-655f, arg_0.a.b.a.x)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_0.a.a)))));
    return arg_0.a.c.a.x;
}

fn func_5(arg_0: i32, arg_1: i32, arg_2: Struct_4) -> vec2<f32> {
    global1 = array<vec3<f32>, 10>();
    let var_0 = arg_2.a.b.e.a.yzz;
    var var_1 = arg_2.a.c;
    var_1 = Struct_1(vec4<i32>(max(_wgslsmith_div_i32(0i, ~49384i), _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-15005i, -2147483647i), var_0.zz), -1i)), i32(-1i) * -2147483647i, arg_2.a.b.c ^ (_wgslsmith_clamp_i32(2147483647i, 1i, -419i) << (52558u % 32u)), max(i32(-1i) * -10333i, -2147483647i)), _wgslsmith_div_vec3_u32(~(abs(vec3<u32>(15573u, global0[_wgslsmith_index_u32(4294967295u, 7u)], global0[_wgslsmith_index_u32(1u, 7u)])) >> (_wgslsmith_clamp_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(1u, 7u)], var_1.b.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_2.a.b.e.b.x, 7u)], 7u)]), var_1.b, vec3<u32>(var_1.b.x, 53817u, 3971u)) % vec3<u32>(32u))), min(~_wgslsmith_mult_vec3_u32(vec3<u32>(68934u, 25652u, 4294967295u), vec3<u32>(4294967295u, arg_2.a.b.e.b.x, global0[_wgslsmith_index_u32(var_1.b.x, 7u)])), ~vec3<u32>(14914u, arg_2.a.c.b.x, 5546u))));
    var var_2 = arg_2.a.b.a.x;
    return arg_2.a.b.d.zz;
}

fn func_1() -> Struct_3 {
    global2 = array<vec2<u32>, 30>();
    let var_0 = _wgslsmith_f_op_vec2_f32(func_5(u_input.e.x, ~(~(_wgslsmith_sub_i32(33672i, u_input.e.x) | func_2(Struct_4(Struct_3(124f, Struct_2(vec2<f32>(-1422f, 472f), true, 1i, vec4<f32>(-660f, -187f, 1000f, 249f), Struct_1(vec4<i32>(u_input.c.x, u_input.a, -30651i, u_input.e.x), vec3<u32>(26304u, 1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 7u)], 7u)], 7u)]))), Struct_1(u_input.b, vec3<u32>(global0[_wgslsmith_index_u32(3107u, 7u)], 0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 7u)], 7u)], 7u)], 7u)], 7u)]))), vec3<bool>(true, true, false))))), Struct_4(Struct_3(1362f, Struct_2(_wgslsmith_div_vec2_f32(vec2<f32>(-557f, -1000f), vec2<f32>(-2169f, 403f)), true, func_2(Struct_4(Struct_3(481f, Struct_2(vec2<f32>(-1099f, -1000f), true, u_input.c.x, vec4<f32>(1657f, -787f, 278f, 948f), Struct_1(u_input.b, vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 7u)], 7u)], 7u)], global0[_wgslsmith_index_u32(0u, 7u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 7u)], 7u)]))), Struct_1(u_input.c, vec3<u32>(4294967295u, 4294967295u, 4294967295u))), vec3<bool>(false, true, true))), vec4<f32>(-1338f, -1486f, -401f, -987f), Struct_1(vec4<i32>(u_input.b.x, -44902i, u_input.d, u_input.a), vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(11371u, 7u)], 7u)], 7u)], 7u)], 7u)], 7u)], 7u)], 32775u, 1u))), Struct_1(_wgslsmith_add_vec4_i32(u_input.c, vec4<i32>(u_input.e.x, u_input.e.x, -20384i, -2147483647i)), select(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(15020u, 7u)], 7u)], 7u)], 66584u, 44246u), vec3<u32>(4294967295u, global0[_wgslsmith_index_u32(58787u, 7u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 7u)], 7u)]), true))), select(vec3<bool>(true, true, false), vec3<bool>(true, all(vec3<bool>(true, true, true)), true), true || any(vec3<bool>(true, false, true))))));
    global2 = array<vec2<u32>, 30>();
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1018f);
    let var_2 = _wgslsmith_mult_vec2_i32(_wgslsmith_sub_vec2_i32(_wgslsmith_clamp_vec2_i32(u_input.b.zw, u_input.c.xz ^ firstLeadingBit(u_input.e.wx), vec2<i32>(_wgslsmith_dot_vec3_i32(u_input.c.zxy, vec3<i32>(u_input.e.x, 27311i, 1i)), u_input.a)), -vec2<i32>(func_2(Struct_4(Struct_3(906f, Struct_2(vec2<f32>(-1240f, var_1), false, u_input.d, vec4<f32>(var_0.x, 604f, var_1, var_1), Struct_1(vec4<i32>(u_input.d, 2147483647i, 1i, u_input.e.x), vec3<u32>(1u, 4294967295u, 59430u))), Struct_1(vec4<i32>(2147483647i, -1i, u_input.c.x, -20584i), vec3<u32>(1u, 32214u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(56362u, 7u)], 7u)]))), vec3<bool>(false, false, true))), select(u_input.d, 2147483647i, true))), vec2<i32>(u_input.b.x, -_wgslsmith_dot_vec4_i32(max(vec4<i32>(38788i, u_input.d, -2147483647i, -1i), vec4<i32>(-1i, u_input.d, -2147483647i, u_input.c.x)), abs(vec4<i32>(1i, u_input.a, u_input.e.x, 37743i)))));
    return Struct_3(_wgslsmith_f_op_f32(-var_1), Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -606f) + _wgslsmith_f_op_vec2_f32(var_0 - vec2<f32>(var_1, var_0.x))) + var_0), !(select(true, false, true) && (u_input.e.x != 4628i)), var_2.x >> (_wgslsmith_div_u32(global0[_wgslsmith_index_u32(~47158u, 7u)], 0u) % 32u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-784f, 1018f, var_1, 1000f) - vec4<f32>(-334f, -220f, var_1, 432f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1, 2374f, -1241f, var_1), vec4<f32>(965f, -332f, 938f, var_0.x), false)))), Struct_1(u_input.e, ~(vec3<u32>(global0[_wgslsmith_index_u32(0u, 7u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 7u)], 7u)], 7u)], 7u)], 4294967295u) >> (vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 7u)], 7u)], 22871u, 19653u) % vec3<u32>(32u))))), Struct_1(vec4<i32>(-2147483647i, -u_input.c.x, 1i, 2147483647i) & ((u_input.b ^ u_input.b) << (_wgslsmith_add_vec4_u32(vec4<u32>(18724u, 45128u, global0[_wgslsmith_index_u32(40798u, 7u)], global0[_wgslsmith_index_u32(492u, 7u)]), vec4<u32>(global0[_wgslsmith_index_u32(133368u, 7u)], 4294967295u, global0[_wgslsmith_index_u32(4294967295u, 7u)], 26023u)) % vec4<u32>(32u))), _wgslsmith_div_vec3_u32(~vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(30390u, 7u)], 7u)], global0[_wgslsmith_index_u32(97757u, 7u)], 70113u) | _wgslsmith_mod_vec3_u32(vec3<u32>(68419u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(39362u, 7u)], 7u)], 7u)], global0[_wgslsmith_index_u32(18542u, 7u)]), vec3<u32>(4294967295u, 4294967295u, global0[_wgslsmith_index_u32(35830u, 7u)])), ~select(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 7u)], 7u)], 7u)], global0[_wgslsmith_index_u32(9286u, 7u)], global0[_wgslsmith_index_u32(0u, 7u)]), vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 7u)], 7u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(46234u, 7u)], 7u)], 7u)], 24939u), vec3<bool>(true, true, true)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 7>();
    let var_0 = Struct_5(-_wgslsmith_sub_vec2_i32(-vec2<i32>(-2147483647i, -2147483647i), u_input.c.wy), Struct_4(func_1(), vec3<bool>(false, true, true)));
    var var_1 = Struct_4(func_1(), var_0.b.b);
    var var_2 = _wgslsmith_f_op_f32(trunc(-546f));
    global1 = array<vec3<f32>, 10>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(var_1.a.b.e.b.x, global0[_wgslsmith_index_u32(~44167u | global0[_wgslsmith_index_u32(21213u, 7u)], 7u)] & _wgslsmith_sub_u32(1u, var_0.b.a.c.b.x ^ var_1.a.b.e.b.x)), ~(~vec4<i32>(0i, 1i, var_0.b.a.c.a.x, 0i)) << (~abs(~vec4<u32>(var_1.a.b.e.b.x, 81709u, var_0.b.a.b.e.b.x, var_1.a.c.b.x)) % vec4<u32>(32u)));
}

