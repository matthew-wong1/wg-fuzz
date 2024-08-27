struct Struct_1 {
    a: u32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: i32,
    d: i32,
}

struct Struct_3 {
    a: u32,
    b: vec2<bool>,
    c: vec3<f32>,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: array<vec3<i32>, 5>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_2(arg_0: f32, arg_1: i32, arg_2: vec2<i32>) -> Struct_2 {
    global1 = array<vec3<i32>, 5>();
    let var_0 = select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, all(vec3<bool>(true, true, false))), vec2<bool>(true, true))), any(!(!select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false)))));
    global1 = array<vec3<i32>, 5>();
    global0 = ~(~vec2<u32>(38142u, ~(~40488u)));
    var var_1 = ~_wgslsmith_add_vec2_u32(select(u_input.c.yz, u_input.c.zy, false), u_input.c.zx);
    return Struct_2(~global0.x, Struct_1(_wgslsmith_mod_u32(29065u << (u_input.b % 32u), u_input.b), vec3<f32>(arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 * 1000f) + _wgslsmith_f_op_f32(arg_0 * arg_0)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0))))), -1i, ~_wgslsmith_dot_vec3_i32(-firstLeadingBit(global1[_wgslsmith_index_u32(54514u, 5u)]), vec3<i32>(i32(-1i) * -1i, 31133i, -2147483647i)));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: vec3<u32>) -> vec2<bool> {
    var var_0 = 1017f;
    let var_1 = ~u_input.c.x;
    let var_2 = arg_1;
    global1 = array<vec3<i32>, 5>();
    let var_3 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-arg_0)));
    return vec2<bool>(true, true);
}

fn func_4(arg_0: u32, arg_1: Struct_3, arg_2: vec4<i32>, arg_3: vec4<bool>) -> bool {
    var var_0 = -2147483647i | _wgslsmith_dot_vec2_i32(max(arg_2.xz, vec2<i32>(30437i, arg_1.d)), vec2<i32>(0i, _wgslsmith_dot_vec3_i32(~global1[_wgslsmith_index_u32(2409u, 5u)], max(arg_2.xyx, vec3<i32>(u_input.a, -11753i, -10569i)))));
    global0 = vec2<u32>(firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(36579u, ~u_input.c.x), ~u_input.c.yy)), min(28442u >> (global0.x % 32u), ~arg_0));
    let var_1 = arg_2.x;
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-432f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_1.c.x), _wgslsmith_f_op_f32(select(arg_1.c.x, arg_1.c.x, false)), arg_3.x)))), arg_1.c.x);
    let var_3 = global0.x | 23805u;
    return ~firstLeadingBit(global0.x) >= arg_0;
}

fn func_1(arg_0: f32, arg_1: bool, arg_2: vec3<u32>) -> bool {
    var var_0 = func_2(227f, abs(abs(u_input.a ^ (0i << (u_input.b % 32u)))), vec2<i32>(2147483647i, -_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 6028i, u_input.a, u_input.a) << (vec4<u32>(79738u, arg_2.x, 29028u, global0.x) % vec4<u32>(32u)), _wgslsmith_add_vec4_i32(vec4<i32>(1i, 1i, u_input.a, 1i), vec4<i32>(13533i, u_input.a, u_input.a, -13803i)))));
    var var_1 = vec3<bool>(!all(!vec4<bool>(false, false, arg_1, arg_1)), func_4(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.b.a, u_input.c.x, ~1u, arg_2.x), select(abs(vec4<u32>(0u, global0.x, 0u, 0u)), _wgslsmith_add_vec4_u32(vec4<u32>(1u, 0u, 14289u, 38021u), vec4<u32>(75293u, 18591u, 62743u, 6829u)), !vec4<bool>(true, arg_1, arg_1, arg_1))), Struct_3(firstLeadingBit(~arg_2.x), func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(581f, arg_0, -159f)), !vec4<bool>(arg_1, false, true, true), var_0.b, firstLeadingBit(u_input.c)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1030f, var_0.b.b.x, arg_0))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-2168f, var_0.b.b.x, var_0.b.b.x)))), _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(global1[_wgslsmith_index_u32(var_0.a, 5u)], global1[_wgslsmith_index_u32(arg_2.x, 5u)]), firstTrailingBit(u_input.a))), _wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(reverseBits(vec4<i32>(var_0.c, -15928i, u_input.a, u_input.a)), abs(vec4<i32>(10035i, u_input.a, 16000i, u_input.a))), _wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, u_input.a, 22249i, var_0.d), -vec4<i32>(-2147483647i, var_0.d, u_input.a, var_0.d))), vec4<bool>(all(select(vec2<bool>(true, true), vec2<bool>(arg_1, false), vec2<bool>(true, arg_1))), any(!vec4<bool>(false, true, arg_1, arg_1)), arg_1, false)), select(!arg_1, _wgslsmith_div_i32(u_input.a, u_input.a) >= var_0.d, true) || true);
    var var_2 = func_2(var_0.b.b.x, var_0.c, reverseBits(vec2<i32>(_wgslsmith_add_i32(-1i, select(var_0.c, 41171i, true)), var_0.d))).b;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(246f)) - func_2(747f, _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 6646i, u_input.a, u_input.a), vec4<i32>(u_input.a, u_input.a, u_input.a, 1i)), 1i) >> (firstLeadingBit(var_2.a) % 32u), vec2<i32>(_wgslsmith_clamp_i32(var_0.c, ~1i, min(-1i, 20542i)), u_input.a)).b.b.x);
    var var_4 = Struct_2(0u, Struct_1(4294967295u, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.b.b))))), _wgslsmith_mult_i32(abs(_wgslsmith_clamp_i32(-2147483647i >> (var_2.a % 32u), _wgslsmith_add_i32(-1i, u_input.a), var_0.d)), -2147483647i), ~_wgslsmith_dot_vec4_i32(-(~vec4<i32>(var_0.c, 17718i, 24380i, -32975i)), firstTrailingBit(vec4<i32>(-3711i, u_input.a, -1i, -58181i) | vec4<i32>(1i, -47496i, var_0.c, u_input.a))));
    return !(!(!any(vec3<bool>(var_1.x, var_1.x, true))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !vec3<bool>(all(vec4<bool>(true, true, func_1(1155f, true, u_input.c), true)), true && (_wgslsmith_sub_u32(u_input.c.x, u_input.b) < 95454u), 1000f == _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(-204f, -455f, true)))));
    let var_1 = !var_0.x;
    var var_2 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -239f)), -54920i, firstTrailingBit(abs(select(vec2<i32>(1i, u_input.a), -vec2<i32>(u_input.a, 0i), !vec2<bool>(true, var_0.x)))));
    global0 = ~(~vec2<u32>(76631u ^ var_2.b.a, countOneBits(global0.x)) << (u_input.c.xz % vec2<u32>(32u)));
    global0 = _wgslsmith_mult_vec2_u32(u_input.c.yx, vec2<u32>(1u, func_2(_wgslsmith_f_op_f32(round(var_2.b.b.x)), 9878i, _wgslsmith_add_vec2_i32(select(vec2<i32>(var_2.c, var_2.c), vec2<i32>(2147483647i, u_input.a), vec2<bool>(true, true)), vec2<i32>(u_input.a, u_input.a) ^ vec2<i32>(28736i, 87232i))).b.a));
    global1 = array<vec3<i32>, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(~_wgslsmith_div_vec4_u32(~vec4<u32>(0u, u_input.c.x, 1u, u_input.c.x), _wgslsmith_mult_vec4_u32(vec4<u32>(global0.x, 4294967295u, 1u, 0u), vec4<u32>(global0.x, 26435u, var_2.a, u_input.c.x)))), ~var_2.c, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1228f - _wgslsmith_f_op_f32(var_2.b.b.x * _wgslsmith_f_op_f32(min(195f, var_2.b.b.x)))))));
}

