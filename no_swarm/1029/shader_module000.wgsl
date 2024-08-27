struct Struct_1 {
    a: u32,
    b: i32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<u32>,
    c: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: i32,
    c: i32,
    d: vec2<f32>,
}

struct Struct_5 {
    a: Struct_1,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(false, false);

var<private> global1: vec3<i32>;

var<private> global2: array<vec4<u32>, 4> = array<vec4<u32>, 4>(vec4<u32>(21418u, 1u, 42298u, 4810u), vec4<u32>(19239u, 49736u, 4294967295u, 0u), vec4<u32>(59294u, 0u, 35117u, 4294967295u), vec4<u32>(62289u, 10313u, 65150u, 40459u));

var<private> global3: array<Struct_1, 10> = array<Struct_1, 10>(Struct_1(35637u, -10321i), Struct_1(4294967295u, -1i), Struct_1(4294967295u, 2147483647i), Struct_1(18444u, -48504i), Struct_1(69052u, 48668i), Struct_1(1u, -4452i), Struct_1(0u, 5171i), Struct_1(74608u, 2706i), Struct_1(30504u, 2147483647i), Struct_1(0u, 1i));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2(arg_0: f32) -> i32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(612f, -2496f, -103f))) * _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-375f, arg_0, 418f), vec3<f32>(arg_0, arg_0, -741f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, -1298f, 1072f)))))));
    global3 = array<Struct_1, 10>();
    var var_1 = Struct_2(-2147483647i, global3[_wgslsmith_index_u32(19466u, 10u)]);
    global0 = vec2<bool>(var_0.x <= _wgslsmith_f_op_f32(-arg_0), var_1.b.b > u_input.b.x);
    return max(_wgslsmith_mod_i32(~(-2147483647i), u_input.a), firstTrailingBit(-u_input.b.x)) ^ 0i;
}

fn func_1(arg_0: vec2<u32>, arg_1: vec4<i32>, arg_2: vec2<u32>, arg_3: Struct_3) -> f32 {
    let var_0 = -abs(_wgslsmith_sub_vec4_i32(vec4<i32>(0i, ~u_input.a, global1.x, arg_3.c.b.b), vec4<i32>(_wgslsmith_sub_i32(0i, 0i), func_2(-1729f), 1i, arg_1.x)));
    return -1241f;
}

fn func_3() -> f32 {
    var var_0 = vec2<u32>(~u_input.c.x, ~_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.c.x, 1u, 38879u), _wgslsmith_mod_vec4_u32(u_input.c, global2[_wgslsmith_index_u32(0u, 4u)])), ~(~u_input.c.x)));
    var_0 = ~_wgslsmith_sub_vec2_u32(u_input.c.zw, ~_wgslsmith_mult_vec2_u32(u_input.c.yx ^ vec2<u32>(u_input.c.x, 4294967295u), _wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, u_input.c.x), vec2<u32>(u_input.c.x, u_input.c.x), vec2<u32>(u_input.c.x, 44711u))));
    var var_1 = Struct_3(Struct_1(0u, reverseBits(firstTrailingBit(_wgslsmith_dot_vec3_i32(u_input.b.wyz, vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x))))), u_input.c.zxw, Struct_2(countOneBits(abs(-1i)), Struct_1(4294967295u, u_input.b.x)));
    global2 = array<vec4<u32>, 4>();
    var_0 = u_input.c.yx;
    return 1858f;
}

fn func_4(arg_0: vec2<i32>, arg_1: vec2<f32>, arg_2: vec3<f32>, arg_3: Struct_2) -> i32 {
    var var_0 = vec2<bool>(global0.x, !select(any(select(vec3<bool>(global0.x, global0.x, true), vec3<bool>(global0.x, false, global0.x), vec3<bool>(false, false, false))), all(!vec3<bool>(global0.x, global0.x, global0.x)), !global0.x));
    var var_1 = _wgslsmith_sub_i32(arg_3.b.b, 2147483647i);
    let var_2 = Struct_4(_wgslsmith_sub_i32(-1i, ~max(1i, global1.x)) >> (u_input.c.x % 32u), arg_0.x, countOneBits(-7183i), vec2<f32>(_wgslsmith_f_op_f32(-arg_1.x), -1000f));
    global0 = !vec2<bool>(global0.x, any(vec3<bool>(true, global0.x & true, var_0.x)));
    var var_3 = Struct_4(_wgslsmith_sub_i32(global1.x, ~(-u_input.a)) << (_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(~u_input.c.zzy, u_input.c.yyx), ~(arg_3.b.a & u_input.c.x), ~(~13476u)) % 32u), arg_3.b.b, arg_0.x, _wgslsmith_f_op_vec2_f32(var_2.d * _wgslsmith_f_op_vec2_f32(arg_1 * _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_2.d.x, 117f), arg_1)))));
    return 1i ^ -var_2.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-694f, _wgslsmith_f_op_f32(ceil(1045f)), _wgslsmith_f_op_f32(func_1(vec2<u32>(u_input.c.x, u_input.c.x), u_input.b, u_input.c.zy, Struct_3(Struct_1(25830u, u_input.b.x), vec3<u32>(1u, u_input.c.x, u_input.c.x), Struct_2(u_input.a, global3[_wgslsmith_index_u32(1u, 10u)]))))))))));
    let var_1 = u_input.b.wzz;
    var var_2 = func_4(u_input.b.xz, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(ceil(var_0.x)), 690f), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-276f, var_0.x)))), vec2<bool>(true, global0.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(-548f * var_0.x), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(1447f, -544f), _wgslsmith_f_op_f32(-502f * var_0.x))))), Struct_2(_wgslsmith_div_i32(_wgslsmith_add_i32(var_1.x, u_input.b.x), _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(33925i, 1i, -4623i), vec3<i32>(u_input.a, u_input.a, 26850i)), select(vec3<i32>(-59989i, u_input.b.x, -17339i), var_1, vec3<bool>(true, global0.x, global0.x)))), Struct_1(9402u, func_2(_wgslsmith_f_op_f32(select(-174f, var_0.x, global0.x))))));
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(600f - var_0.x) - _wgslsmith_f_op_f32(-var_0.x))))) * vec2<f32>(-1020f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1000f)) * var_0.x)));
    let var_4 = select(select(select(vec4<bool>(!global0.x, !global0.x, false, var_3.x >= -1735f), select(select(vec4<bool>(true, false, global0.x, global0.x), vec4<bool>(true, false, false, global0.x), true), select(vec4<bool>(global0.x, true, global0.x, global0.x), vec4<bool>(false, true, global0.x, global0.x), vec4<bool>(true, global0.x, global0.x, global0.x)), true), global1.x == global1.x), !select(vec4<bool>(global0.x, global0.x, global0.x, true), !vec4<bool>(global0.x, false, global0.x, true), vec4<bool>(false, false, global0.x, global0.x)), !(!vec4<bool>(global0.x, global0.x, false, false))), vec4<bool>(global0.x, global0.x, !global0.x, true), select(!select(!vec4<bool>(false, global0.x, global0.x, false), vec4<bool>(false, global0.x, false, true), true), select(select(select(vec4<bool>(global0.x, global0.x, global0.x, global0.x), vec4<bool>(true, global0.x, global0.x, false), global0.x), !vec4<bool>(true, global0.x, true, true), select(vec4<bool>(false, global0.x, global0.x, true), vec4<bool>(global0.x, global0.x, global0.x, global0.x), vec4<bool>(global0.x, global0.x, true, true))), vec4<bool>(true, global0.x, global0.x, global0.x && true), select(!vec4<bool>(true, global0.x, global0.x, false), !vec4<bool>(true, global0.x, global0.x, global0.x), false)), !vec4<bool>(global0.x != global0.x, global0.x, false, true)));
    var var_5 = false;
    global3 = array<Struct_1, 10>();
    let x = u_input.a;
    s_output = StorageBuffer(abs(select(u_input.c, u_input.c, select(var_4, var_4, global0.x)) | ((u_input.c & vec4<u32>(u_input.c.x, u_input.c.x, 1u, u_input.c.x)) | vec4<u32>(u_input.c.x, u_input.c.x, 0u, u_input.c.x))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_3.x), _wgslsmith_f_op_f32(157f * var_0.x))))));
}

