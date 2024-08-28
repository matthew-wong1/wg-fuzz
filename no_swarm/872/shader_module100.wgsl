struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: bool,
    c: Struct_1,
    d: Struct_2,
    e: vec3<i32>,
}

struct Struct_4 {
    a: u32,
    b: vec3<f32>,
}

struct Struct_5 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<f32>,
    c: vec3<f32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 18>;

var<private> global1: array<vec3<i32>, 7>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: u32) -> bool {
    var var_0 = _wgslsmith_dot_vec2_u32(u_input.a.yy, u_input.a.yx);
    let var_1 = ~vec2<u32>(u_input.a.x, _wgslsmith_sub_u32(4294967295u, arg_0));
    let var_2 = Struct_2(_wgslsmith_clamp_i32(u_input.c, select(-_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, 26013i), vec2<i32>(-2147483647i, -48547i)), _wgslsmith_add_i32(-59794i, u_input.c >> (16816u % 32u)), false), _wgslsmith_add_i32(u_input.c, u_input.c) << (_wgslsmith_add_u32(40999u << (arg_0 % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, var_1.x, var_1.x, 14063u), vec4<u32>(4294967295u, 1u, 10514u, 39238u))) % 32u)));
    global0 = array<vec4<bool>, 18>();
    let var_3 = Struct_2(-_wgslsmith_sub_i32(-2147483647i | var_2.a, ~2147483647i));
    return !(-39531i < _wgslsmith_sub_i32(69568i, select(~(-48815i), -var_2.a, false)));
}

fn func_2(arg_0: f32) -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, arg_0, -236f, 1786f) * vec4<f32>(1091f, arg_0, arg_0, arg_0)))) + _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1844f, _wgslsmith_f_op_f32(f32(-1f) * -815f), arg_0, _wgslsmith_f_op_f32(arg_0 - arg_0))))));
    var var_1 = Struct_5(vec2<bool>(func_3(_wgslsmith_div_u32(74526u, u_input.e)) || true, true));
    let var_2 = Struct_1(u_input.e);
    var var_3 = var_0.wy;
    let var_4 = select(!vec4<bool>(var_1.a.x, !var_1.a.x || true, all(global0[_wgslsmith_index_u32(reverseBits(4294967295u), 18u)]), var_1.a.x), global0[_wgslsmith_index_u32(~(~var_2.a), 18u)], !select(!select(vec4<bool>(var_1.a.x, var_1.a.x, var_1.a.x, var_1.a.x), vec4<bool>(true, true, var_1.a.x, false), vec4<bool>(var_1.a.x, true, var_1.a.x, true)), !global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.d, var_2.a, 66249u), vec4<u32>(32617u, 4294967295u, 0u, 1u)), 18u)], false));
    return _wgslsmith_f_op_f32(step(var_0.x, var_3.x));
}

fn func_1(arg_0: i32) -> bool {
    let var_0 = Struct_4(1u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 891f, 1822f) + vec3<f32>(132f, 2096f, -913f))))) * vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(257f)), 1843f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(136f * 1938f) + _wgslsmith_f_op_f32(select(-1537f, 248f, true))), _wgslsmith_f_op_f32(1869f * _wgslsmith_f_op_f32(floor(-147f))))));
    let var_1 = _wgslsmith_add_vec2_u32(~vec2<u32>(~(~2022u), var_0.a), vec2<u32>(73782u, 18515u));
    global1 = array<vec3<i32>, 7>();
    global1 = array<vec3<i32>, 7>();
    var var_2 = Struct_2(_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(~vec2<i32>(u_input.c, u_input.c), vec2<i32>(arg_0, arg_0) ^ vec2<i32>(arg_0, arg_0)), vec2<i32>(i32(-1i) * -9184i, -arg_0)) & arg_0);
    return false;
}

fn func_4(arg_0: vec4<i32>, arg_1: bool, arg_2: Struct_1) -> Struct_1 {
    let var_0 = -firstTrailingBit(vec3<i32>(~(i32(-1i) * -27413i), 0i, u_input.c));
    global0 = array<vec4<bool>, 18>();
    var var_1 = reverseBits(u_input.e << ((arg_2.a << (_wgslsmith_clamp_u32(58818u, countOneBits(33813u), 1u) % 32u)) % 32u));
    var var_2 = !global0[_wgslsmith_index_u32(~1u, 18u)];
    let var_3 = true;
    return Struct_1(~(~(max(50125u, arg_2.a) >> (u_input.e % 32u))));
}

fn func_5(arg_0: vec4<i32>, arg_1: Struct_5, arg_2: Struct_1, arg_3: Struct_1) -> Struct_4 {
    global0 = array<vec4<bool>, 18>();
    var var_0 = vec2<i32>(_wgslsmith_clamp_i32(_wgslsmith_mod_i32(u_input.c, u_input.c), reverseBits(~(u_input.c >> (u_input.d % 32u))), firstLeadingBit(_wgslsmith_mult_i32(-u_input.c, max(-2147483647i, 2196i)))), (u_input.c & arg_0.x) & u_input.c);
    let var_1 = Struct_3(_wgslsmith_div_vec2_f32(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(875f, -1382f))), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1060f, 1008f))), vec2<bool>(false, arg_1.a.x))))), true, Struct_1(arg_3.a), Struct_2(-85117i), firstLeadingBit(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u >> (select(arg_3.a, 16449u, arg_1.a.x) % 32u), _wgslsmith_mult_u32(arg_2.a, u_input.d) | firstTrailingBit(arg_3.a)), 7u)]));
    let var_2 = arg_1.a;
    var var_3 = arg_0.zy;
    return Struct_4(63013u >> (((4294967295u | arg_3.a) | ~arg_3.a) % 32u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(var_1.a.x)), var_1.a.x, -366f) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1124f, var_1.a.x, var_1.a.x)) + _wgslsmith_div_vec3_f32(vec3<f32>(var_1.a.x, 788f, -1000f), vec3<f32>(var_1.a.x, 139f, 256f)))) + _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1468f, -159f, var_1.a.x), vec3<f32>(var_1.a.x, var_1.a.x, 1045f))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a.x, var_1.a.x, 1500f) + vec3<f32>(var_1.a.x, var_1.a.x, var_1.a.x))), vec3<f32>(var_1.a.x, var_1.a.x, 1f)))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<i32>, 7>();
    global0 = array<vec4<bool>, 18>();
    let var_0 = func_5(vec4<i32>(1i, _wgslsmith_div_i32(~u_input.c, _wgslsmith_mult_i32(84384i, u_input.c)), -u_input.c | u_input.c, countOneBits(firstTrailingBit(1i))) ^ -vec4<i32>(0i, -6958i, 2147483647i, -1i), Struct_5(select(vec2<bool>(true, true), select(select(vec2<bool>(false, false), vec2<bool>(true, false), true), vec2<bool>(false, false), vec2<bool>(false, false)), false)), func_4(vec4<i32>(~(-1691i), _wgslsmith_dot_vec4_i32(vec4<i32>(-13495i, u_input.c, u_input.c, u_input.c), vec4<i32>(1i, -3781i, 2147483647i, u_input.c) >> (vec4<u32>(u_input.b, u_input.a.x, u_input.a.x, 0u) % vec4<u32>(32u))), u_input.c, _wgslsmith_dot_vec3_i32(vec3<i32>(39058i, u_input.c, u_input.c), global1[_wgslsmith_index_u32(u_input.e, 7u)])), select(true, func_1(reverseBits(u_input.c)), all(vec4<bool>(true, true, true, true))), Struct_1(u_input.e)), func_4(abs(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.c, -11661i, 1i, -11296i), vec4<i32>(-1i, u_input.c, 18650i, 63127i))), true, Struct_1(_wgslsmith_div_u32(4294967295u, ~u_input.d))));
    global1 = array<vec3<i32>, 7>();
    var var_1 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-958f, 710f), vec2<f32>(1000f, -433f))))), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.b.x + 182f), -101f), var_0.b.x))));
    let var_2 = func_5(~abs(vec4<i32>(u_input.c, u_input.c, -56345i, 2147483647i)) | vec4<i32>(max(45890i, ~u_input.c), u_input.c, _wgslsmith_dot_vec3_i32(-vec3<i32>(2147483647i, 4988i, 1i), global1[_wgslsmith_index_u32(4294967295u, 7u)] & global1[_wgslsmith_index_u32(u_input.b, 7u)]), i32(-1i) * -u_input.c), Struct_5(select(select(vec2<bool>(true, false), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true)), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true))), vec2<bool>(true, func_3(var_0.a)), select(select(vec2<bool>(true, false), vec2<bool>(false, false), true), vec2<bool>(false, false), vec2<bool>(false, false)))), func_4(vec4<i32>(u_input.c, ~50744i, 1895i, ~1i), true, Struct_1(_wgslsmith_mod_u32(_wgslsmith_div_u32(0u, var_0.a), _wgslsmith_div_u32(u_input.e, var_0.a)))), func_4(_wgslsmith_div_vec4_i32(firstTrailingBit(~vec4<i32>(u_input.c, u_input.c, 56186i, u_input.c)), ~vec4<i32>(2147483647i, 2147483647i, -2147483647i, u_input.c)), all(select(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(4294967295u, 1u), 18u)], !global0[_wgslsmith_index_u32(4294967295u, 18u)], all(vec2<bool>(true, true)))), func_4(reverseBits(vec4<i32>(u_input.c, u_input.c, 2147483647i, u_input.c)), true | func_1(u_input.c), func_4(vec4<i32>(u_input.c, u_input.c, -1i, u_input.c), true, Struct_1(316u)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(2147483647i, ~u_input.c, ~u_input.c, -firstTrailingBit(_wgslsmith_add_i32(1i, 0i))), _wgslsmith_f_op_vec2_f32(var_0.b.yy - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(464f, 671f) + var_2.b.zy), vec2<f32>(var_1.x, var_0.b.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b.x, -1464f) - vec2<f32>(704f, var_2.b.x))), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(var_2.b, vec3<f32>(-273f, -283f, var_1.x))) - vec3<f32>(_wgslsmith_f_op_f32(trunc(var_2.b.x)), 1259f, 1243f))), vec4<u32>(max(abs(~var_0.a), var_2.a), ~(~(~0u)), 1u, countOneBits(u_input.b)));
}

