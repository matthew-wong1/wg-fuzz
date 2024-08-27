struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: vec3<bool>,
    d: bool,
    e: vec2<i32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<u32>,
    c: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: vec2<u32>,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 5> = array<vec2<u32>, 5>(vec2<u32>(1u, 1u), vec2<u32>(5047u, 1u), vec2<u32>(19376u, 32124u), vec2<u32>(50170u, 94483u), vec2<u32>(12335u, 0u));

var<private> global1: array<vec2<i32>, 21>;

var<private> global2: array<vec2<bool>, 26>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec4<f32>, arg_2: Struct_4, arg_3: vec2<u32>) -> u32 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(294f + arg_1.x), _wgslsmith_f_op_f32(sign(631f)), arg_1.x, -146f);
    let var_1 = ~select(~firstLeadingBit(arg_0.x ^ arg_0.x), 28420i, true);
    var_0 = _wgslsmith_f_op_vec4_f32(trunc(arg_1));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(679f, -246f, var_0.x, arg_1.x), vec4<f32>(var_0.x, -1000f, arg_1.x, arg_1.x)) - _wgslsmith_f_op_vec4_f32(-arg_1))))));
    var var_2 = -2147483647i;
    return u_input.a;
}

fn func_2() -> vec4<f32> {
    let var_0 = 1u;
    global1 = array<vec2<i32>, 21>();
    global2 = array<vec2<bool>, 26>();
    var var_1 = Struct_2(vec3<u32>(4294967295u, 0u, _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_add_u32(4294967295u, var_0), func_3(vec4<i32>(u_input.b, 16657i, u_input.b, 10448i), vec4<f32>(-195f, 2239f, -1000f, 949f), Struct_4(50191u, global0[_wgslsmith_index_u32(var_0, 5u)], u_input.b), global0[_wgslsmith_index_u32(u_input.a, 5u)]), ~var_0), _wgslsmith_div_vec3_u32(vec3<u32>(24495u, 1u, 8668u), vec3<u32>(var_0, 4294967295u, u_input.a)) ^ (vec3<u32>(11063u, u_input.a, 1u) << (vec3<u32>(95956u, u_input.a, u_input.a) % vec3<u32>(32u))))), Struct_1(max(2147483647i, u_input.b), -vec4<i32>(~u_input.b, _wgslsmith_add_i32(1i, u_input.b), -u_input.b, ~u_input.b), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), any(vec4<bool>(true, var_0 > 9183u, true, true)), vec2<i32>(_wgslsmith_sub_i32(_wgslsmith_mod_i32(u_input.b, u_input.b), -26994i), -u_input.b)));
    var var_2 = _wgslsmith_dot_vec4_i32(~(vec4<i32>(_wgslsmith_sub_i32(u_input.b, 0i), ~var_1.b.b.x, 2147483647i, -43712i) & vec4<i32>(~u_input.b, u_input.b, u_input.b, u_input.b << (u_input.a % 32u))), ~(abs(var_1.b.b << (vec4<u32>(33443u, u_input.a, var_0, 24873u) % vec4<u32>(32u))) << (vec4<u32>(~u_input.a, ~var_1.a.x, var_0, ~var_0) % vec4<u32>(32u))));
    return vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -3197f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(720f - _wgslsmith_f_op_f32(1079f + -1091f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1000f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-520f)))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-311f + _wgslsmith_f_op_f32(f32(-1f) * -1094f))))), _wgslsmith_f_op_f32(-553f * _wgslsmith_f_op_f32(-1224f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1746f, 153f)) + _wgslsmith_f_op_f32(max(1947f, -249f))))));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec4<i32>, arg_3: vec3<bool>) -> vec3<bool> {
    global2 = array<vec2<bool>, 26>();
    var var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1928f)))), 676f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-759f - 991f) * 167f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -916f), _wgslsmith_f_op_f32(652f - 192f), arg_1.b.d))), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1255f * 1000f), _wgslsmith_f_op_f32(sign(250f)))))) - _wgslsmith_f_op_vec4_f32(func_2()));
    let var_1 = reverseBits(abs(_wgslsmith_div_i32(arg_1.b.b.x, abs(-16387i)))) < (-_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 2147483647i, arg_2.x, u_input.b), arg_1.b.b), _wgslsmith_sub_i32(-1i, 0i)) >> (1u % 32u));
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -452f))))), 637f, var_0.x, -1216f);
    let var_3 = vec3<i32>(arg_0.a, arg_1.b.e.x, abs(-25798i));
    return arg_1.b.c;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec2<bool>, 26>();
    global0 = array<vec2<u32>, 5>();
    global0 = array<vec2<u32>, 5>();
    var var_0 = Struct_3(Struct_2(vec3<u32>(~1u, 0u & _wgslsmith_mod_u32(u_input.a, u_input.a), ~(~u_input.a)), Struct_1(u_input.b, max(vec4<i32>(u_input.b, 0i, 1i, -1i), vec4<i32>(u_input.b, -27663i, u_input.b, u_input.b)) & vec4<i32>(-31316i, -1i, u_input.b, u_input.b), select(select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), true), vec3<bool>(true, true, true), func_1(Struct_1(6967i, vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b), vec3<bool>(false, false, false), true, global1[_wgslsmith_index_u32(u_input.a, 21u)]), Struct_2(vec3<u32>(u_input.a, u_input.a, u_input.a), Struct_1(-8188i, vec4<i32>(u_input.b, -1i, u_input.b, -63946i), vec3<bool>(true, true, false), true, vec2<i32>(1i, u_input.b))), vec4<i32>(2147483647i, 2147483647i, 63447i, u_input.b), vec3<bool>(true, true, true))), !any(global2[_wgslsmith_index_u32(u_input.a, 26u)]), firstLeadingBit(vec2<i32>(u_input.b, 34581i)) | vec2<i32>(u_input.b, u_input.b))), global0[_wgslsmith_index_u32(~1u, 5u)], Struct_1(-(u_input.b << (~11387u % 32u)), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.b, -28797i, 13195i, -1i), _wgslsmith_add_vec4_i32(select(vec4<i32>(0i, 12759i, 18342i, 2147483647i), vec4<i32>(2147483647i, u_input.b, u_input.b, u_input.b), vec4<bool>(true, true, false, false)), min(vec4<i32>(-19236i, u_input.b, 2147483647i, 16781i), vec4<i32>(22648i, -2147483647i, 2147483647i, u_input.b)))), select(!select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true)), vec3<bool>(func_1(Struct_1(1i, vec4<i32>(2147483647i, -1i, u_input.b, u_input.b), vec3<bool>(true, true, true), false, vec2<i32>(u_input.b, u_input.b)), Struct_2(vec3<u32>(u_input.a, 75971u, u_input.a), Struct_1(-26587i, vec4<i32>(2147483647i, 1781i, u_input.b, u_input.b), vec3<bool>(false, true, false), false, global1[_wgslsmith_index_u32(6768u, 21u)])), vec4<i32>(75164i, 0i, -19171i, u_input.b), vec3<bool>(false, false, false)).x, true, true), false), true, ~(~(-vec2<i32>(u_input.b, u_input.b)))));
    var var_1 = _wgslsmith_clamp_vec3_i32(var_0.c.b.wyz ^ var_0.c.b.xzz, ~vec3<i32>(-1i, 1i, 0i), vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(31005i, var_0.c.a, -u_input.b), vec3<i32>(-u_input.b, select(u_input.b, var_0.c.a, var_0.a.b.d), ~u_input.b)), -2147483647i, var_0.a.b.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-671f, _wgslsmith_div_f32(-709f, -1386f), _wgslsmith_f_op_f32(598f + -124f), 1155f), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(269f, 1477f, 570f, -438f)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(558f, -1684f, 1071f, -1262f)))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(2047f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(288f, -551f)), _wgslsmith_f_op_f32(f32(-1f) * -2414f)) * _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1559f, 260f, -2014f)))))));
}

