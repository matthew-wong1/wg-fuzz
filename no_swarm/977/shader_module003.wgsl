struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: vec4<i32>,
    d: vec4<i32>,
    e: i32,
}

struct Struct_3 {
    a: i32,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 11>;

var<private> global1: array<vec3<i32>, 21> = array<vec3<i32>, 21>(vec3<i32>(2147483647i, 1i, 2147483647i), vec3<i32>(9030i, 2147483647i, i32(-2147483648)), vec3<i32>(50167i, 2147483647i, 16071i), vec3<i32>(-10827i, 0i, i32(-2147483648)), vec3<i32>(-5575i, 14370i, -40710i), vec3<i32>(34853i, 2147483647i, 2147483647i), vec3<i32>(-34271i, 2147483647i, -67843i), vec3<i32>(32245i, 0i, -20813i), vec3<i32>(-68748i, 645i, 0i), vec3<i32>(19245i, -49203i, -27715i), vec3<i32>(2147483647i, 2147483647i, -2487i), vec3<i32>(1i, 0i, 1i), vec3<i32>(29751i, 20881i, -26973i), vec3<i32>(i32(-2147483648), -1813i, -1i), vec3<i32>(48038i, -71933i, 2147483647i), vec3<i32>(415i, 232i, -19390i), vec3<i32>(-1i, 1i, 32675i), vec3<i32>(i32(-2147483648), 1i, 1i), vec3<i32>(i32(-2147483648), 46773i, 19562i), vec3<i32>(-1i, -31788i, 40529i), vec3<i32>(i32(-2147483648), 1i, -2533i));

var<private> global2: array<vec4<bool>, 10>;

var<private> global3: f32 = 1241f;

var<private> global4: vec2<f32>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2() -> bool {
    return any(vec2<bool>(true, true));
}

fn func_3(arg_0: bool, arg_1: bool, arg_2: vec3<bool>) -> bool {
    global1 = array<vec3<i32>, 21>();
    var var_0 = reverseBits(select(1861u, ~(u_input.a | ~24693u), false));
    global0 = array<Struct_3, 11>();
    global0 = array<Struct_3, 11>();
    global2 = array<vec4<bool>, 10>();
    return true;
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: vec3<bool>) -> vec4<f32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_1, arg_1, 2155f, arg_1))) - vec4<f32>(arg_1, -2175f, 501f, arg_1)))));
    var var_1 = !vec2<bool>(_wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(min(1193f, 655f))) > global4.x, true);
    var var_2 = Struct_2(arg_0, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1f)) - 1229f), 346f, arg_1), _wgslsmith_mult_vec4_i32(vec4<i32>(arg_0.c, arg_0.d, -9909i | -arg_0.d, 8008i), vec4<i32>(countOneBits(_wgslsmith_dot_vec2_i32(arg_0.b, vec2<i32>(-13880i, arg_0.c))), _wgslsmith_div_i32(arg_0.d, 2147483647i), -1i, arg_0.b.x)), vec4<i32>(firstTrailingBit(min(arg_0.d, arg_0.c) >> (~10299u % 32u)), countOneBits(~(-2147483647i)), -2147483647i, -1i), _wgslsmith_dot_vec2_i32(firstLeadingBit(_wgslsmith_add_vec2_i32(vec2<i32>(1i, arg_0.d), select(vec2<i32>(arg_0.d, arg_0.c), arg_0.b, var_1.x))), arg_0.b));
    global4 = var_2.b.zz;
    var var_3 = _wgslsmith_dot_vec3_i32(select(-var_2.d.zzy, vec3<i32>(_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(var_2.c.zw, vec2<i32>(var_2.a.b.x, -33517i)), max(-5115i, var_2.e)), ~1i, 1i), select(arg_2, select(vec3<bool>(false, false, false), vec3<bool>(false, true, arg_2.x), arg_2.x), !select(true, false, arg_2.x))), vec3<i32>(max(countOneBits(var_2.c.x), var_2.e & 21038i), ~(-2147483647i) ^ (var_2.c.x & arg_0.c), 2147483647i) | ~(min(var_2.c.ywy, global1[_wgslsmith_index_u32(4405u, 21u)]) ^ max(vec3<i32>(var_2.a.d, -92361i, var_2.e), global1[_wgslsmith_index_u32(arg_0.a, 21u)])));
    return var_0;
}

fn func_1() -> f32 {
    let var_0 = vec3<f32>(637f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(162f)), _wgslsmith_f_op_f32(-global4.x), all(select(select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), false), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), true), func_2())))), _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -764f), global4.x))));
    global3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f + var_0.x)));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(-233f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(global4.x * 572f), _wgslsmith_f_op_f32(1862f * global4.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1173f - -534f), _wgslsmith_f_op_f32(exp2(global4.x))), 1952f);
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_4(Struct_1(~57031u << (min(14679u, 0u) % 32u), vec2<i32>(1i, 2147483647i), 5813i, -13650i), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.x))))), vec3<bool>(!any(vec4<bool>(false, true, true, true)), !func_3(true, true, vec3<bool>(true, true, false)), true))));
    var var_3 = !vec4<bool>(!any(vec3<bool>(true, false, true)), true, true, false);
    return -613f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_1()))))));
    let var_1 = ~_wgslsmith_clamp_vec3_i32(firstTrailingBit(firstTrailingBit(-vec3<i32>(1i, 2147483647i, 2147483647i))), global1[_wgslsmith_index_u32(~u_input.a, 21u)], -_wgslsmith_sub_vec3_i32(~global1[_wgslsmith_index_u32(u_input.a, 21u)], min(global1[_wgslsmith_index_u32(4294967295u, 21u)], global1[_wgslsmith_index_u32(4294967295u, 21u)])));
    let var_2 = select(false, all(vec3<bool>(true, !any(vec2<bool>(false, true)), true)), true);
    let var_3 = any(vec3<bool>(var_2, var_2, var_2));
    global0 = array<Struct_3, 11>();
    global2 = array<vec4<bool>, 10>();
    var var_4 = all(!select(select(!vec3<bool>(true, var_2, var_3), vec3<bool>(false, true, var_3), var_1.x > 101209i), select(!vec3<bool>(var_2, var_2, var_3), select(vec3<bool>(var_3, false, var_2), vec3<bool>(false, var_3, var_3), vec3<bool>(false, var_3, var_3)), true), var_2));
    let var_5 = _wgslsmith_clamp_u32(u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(~22718u, ~4294967295u), reverseBits(abs(vec2<u32>(0u, u_input.a)))) ^ u_input.a, u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(1u);
}

