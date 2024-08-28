struct Struct_1 {
    a: vec3<u32>,
    b: vec4<bool>,
    c: vec3<bool>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: vec4<f32>,
    e: vec2<u32>,
}

struct Struct_3 {
    a: i32,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<u32>,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec3<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 24> = array<u32, 24>(32429u, 16567u, 0u, 38333u, 1u, 47514u, 4294967295u, 55401u, 32415u, 4294967295u, 4591u, 0u, 4294967295u, 0u, 1u, 0u, 0u, 4294967295u, 83617u, 108577u, 146820u, 23315u, 3318u, 11377u);

var<private> global1: i32;

var<private> global2: array<Struct_3, 22>;

var<private> global3: vec4<bool>;

var<private> global4: array<Struct_3, 10>;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<bool>) -> u32 {
    global2 = array<Struct_3, 22>();
    var var_0 = vec4<u32>(global0[_wgslsmith_index_u32(~arg_0.a.a.x, 24u)], 112975u, _wgslsmith_mult_u32(~arg_0.b.a.x, (firstTrailingBit(4294967295u) ^ countOneBits(20954u)) ^ (_wgslsmith_add_u32(0u, 4294967295u) & global0[_wgslsmith_index_u32(11911u, 24u)])), 1u);
    global3 = select(arg_0.b.b, arg_0.a.b, select(arg_0.a.b, arg_0.b.b, true));
    global4 = array<Struct_3, 10>();
    let var_1 = arg_0.b.d;
    return arg_0.e.x;
}

fn func_2(arg_0: f32, arg_1: vec2<f32>, arg_2: vec3<bool>) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-arg_1);
    let var_1 = u_input.d;
    global1 = var_1.x & _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -(-12736i | u_input.d.x)), vec2<i32>(-abs(u_input.d.x), reverseBits(41875i & u_input.d.x)));
    global3 = vec4<bool>(false, true, any(global3.zww), false);
    let var_2 = Struct_1(vec3<u32>(~func_3(Struct_2(Struct_1(u_input.c, vec4<bool>(arg_2.x, global3.x, false, global3.x), vec3<bool>(true, global3.x, false), -1000f), Struct_1(u_input.c, vec4<bool>(true, false, false, false), vec3<bool>(false, global3.x, global3.x), 781f), var_1.x, vec4<f32>(784f, arg_0, var_0.x, var_0.x), u_input.b), vec3<bool>(global3.x, global3.x, global3.x)), global0[_wgslsmith_index_u32(~(~(~u_input.e)), 24u)], ~reverseBits(u_input.e)), vec4<bool>(u_input.d.x >= var_1.x, all(!select(vec4<bool>(false, global3.x, false, arg_2.x), vec4<bool>(true, arg_2.x, global3.x, arg_2.x), vec4<bool>(false, true, false, global3.x))), (~var_1.x < _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -44235i, u_input.d.x, u_input.a), vec4<i32>(u_input.d.x, 48996i, -7477i, var_1.x))) & all(select(vec4<bool>(true, global3.x, false, false), vec4<bool>(arg_2.x, true, arg_2.x, global3.x), vec4<bool>(global3.x, global3.x, true, true))), !(!global3.x) | (u_input.d.x > var_1.x)), vec3<bool>(false, false, !((u_input.e << (global0[_wgslsmith_index_u32(22535u, 24u)] % 32u)) != 46984u)), _wgslsmith_f_op_f32(arg_0 + _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.x)) + _wgslsmith_f_op_f32(trunc(-1474f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1614f)) - -144f))));
    return Struct_2(var_2, var_2, _wgslsmith_mult_i32(u_input.a, -1i ^ -_wgslsmith_clamp_i32(var_1.x, 2668i, -2779i)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_2.d, 185f, var_0.x, 470f), vec4<f32>(var_0.x, arg_1.x, arg_1.x, -402f)))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, var_2.d, 439f, -579f) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(337f, var_0.x, 1707f, var_2.d), vec4<f32>(arg_0, 1441f, var_2.d, -839f))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, -189f, -950f)) * _wgslsmith_div_vec4_f32(vec4<f32>(arg_1.x, var_0.x, -1139f, 1178f), vec4<f32>(-2690f, var_0.x, arg_1.x, 2286f))))), vec2<u32>(func_3(Struct_2(Struct_1(vec3<u32>(11739u, 4294967295u, 1806u), var_2.b, vec3<bool>(arg_2.x, true, true), 1000f), Struct_1(vec3<u32>(u_input.b.x, u_input.c.x, var_2.a.x), var_2.b, vec3<bool>(arg_2.x, true, arg_2.x), arg_0), max(46215i, u_input.d.x), _wgslsmith_div_vec4_f32(vec4<f32>(-1983f, 430f, arg_1.x, arg_0), vec4<f32>(arg_1.x, arg_0, var_0.x, arg_0)), vec2<u32>(1u, 70475u)), select(!global3.yyw, vec3<bool>(true, var_2.b.x, var_2.b.x), arg_2)), 1u));
}

fn func_4(arg_0: Struct_2) -> Struct_1 {
    var var_0 = _wgslsmith_mod_i32(~(-u_input.d.x), _wgslsmith_dot_vec4_i32(reverseBits(u_input.d), u_input.d));
    var var_1 = vec3<u32>(min(abs(~arg_0.a.a.x), ~_wgslsmith_add_u32(arg_0.e.x, u_input.c.x)), 1u << (func_2(arg_0.d.x, _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.a.d, arg_0.a.d) * arg_0.d.wy), global3.xzz).e.x % 32u), _wgslsmith_mult_u32(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(9572u, 24u)], 24u)], 58448u), 24u)], min(global0[_wgslsmith_index_u32(18955u, 24u)], 28301u)) | u_input.c.x) & (_wgslsmith_mod_vec3_u32(u_input.c, (vec3<u32>(arg_0.b.a.x, 1u, arg_0.e.x) >> (u_input.c % vec3<u32>(32u))) ^ _wgslsmith_mult_vec3_u32(u_input.c, arg_0.a.a)) >> (~arg_0.a.a % vec3<u32>(32u)));
    global2 = array<Struct_3, 22>();
    var var_2 = func_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1071f * arg_0.d.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(arg_0.a.d, arg_0.a.d), arg_0.d.yx) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_0.d.yw - vec2<f32>(-1279f, -1000f))))), global3.ywx).a.b.x;
    let var_3 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-arg_0.d), vec4<f32>(arg_0.a.d, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(-384f, -590f, -261f > arg_0.d.x)))), -1588f, arg_0.b.d), !arg_0.b.b));
    return Struct_1(u_input.c, arg_0.b.b, func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1184f + var_3.x) * 629f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1968f, 709f), vec2<f32>(585f, arg_0.b.d))), vec3<bool>(any(arg_0.a.b.zyw) & true, any(select(arg_0.a.b, vec4<bool>(false, false, arg_0.b.b.x, global3.x), arg_0.a.b.x)), all(vec4<bool>(true, global3.x, true, false)) && !arg_0.a.b.x)).a.b.xwz, _wgslsmith_f_op_f32(-1195f * _wgslsmith_f_op_f32(307f + arg_0.d.x)));
}

fn func_1(arg_0: f32) -> Struct_1 {
    var var_0 = Struct_2(Struct_1(u_input.c, !vec4<bool>(true, arg_0 > 1595f, !global3.x, any(vec4<bool>(global3.x, global3.x, false, true))), global3.xyy, arg_0), func_4(func_2(arg_0, vec2<f32>(_wgslsmith_div_f32(arg_0, arg_0), _wgslsmith_f_op_f32(max(-123f, 485f))), select(global3.www, vec3<bool>(global3.x, global3.x, global3.x), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 24u)], 24u)] < 22838u))), _wgslsmith_mult_i32(u_input.d.x, ~_wgslsmith_sub_i32(min(-1i, -1i), _wgslsmith_dot_vec4_i32(u_input.d, u_input.d))), vec4<f32>(_wgslsmith_f_op_f32(round(arg_0)), _wgslsmith_f_op_f32(f32(-1f) * -227f), -1186f, _wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(arg_0 * 768f))), u_input.c.zz);
    var var_1 = !(!var_0.b.b);
    global4 = array<Struct_3, 10>();
    global4 = array<Struct_3, 10>();
    var var_2 = Struct_3(var_0.c, vec4<i32>(~(~var_0.c), ~(~(-18528i)), 1i, _wgslsmith_add_i32(var_0.c & 1i, u_input.a)));
    return func_2(_wgslsmith_f_op_f32(max(113f, 1f)), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.d.x, arg_0))))), select(select(global3.xwy, !vec3<bool>(var_1.x, true, var_1.x), !(!vec3<bool>(true, global3.x, global3.x))), global3.yyw, abs(u_input.a) == ~_wgslsmith_mult_i32(-33209i, var_0.c))).a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 24>();
    var var_0 = global3.xw;
    var var_1 = func_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-1230f, -442f))))))));
    var var_2 = min(_wgslsmith_mod_vec4_u32(firstTrailingBit(_wgslsmith_div_vec4_u32(~vec4<u32>(28307u, var_1.a.x, 45595u, 0u), vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 24u)], 70723u, 7030u, global0[_wgslsmith_index_u32(59994u, 24u)]))), reverseBits(~max(vec4<u32>(u_input.e, u_input.c.x, 2221u, global0[_wgslsmith_index_u32(u_input.c.x, 24u)]), vec4<u32>(var_1.a.x, 6456u, global0[_wgslsmith_index_u32(u_input.e, 24u)], 35399u)))), ~vec4<u32>(reverseBits(_wgslsmith_sub_u32(u_input.e, 1u)), _wgslsmith_sub_u32(func_2(200f, vec2<f32>(var_1.d, var_1.d), var_1.b.ywz).b.a.x, _wgslsmith_mult_u32(10730u, 47747u)), var_1.a.x ^ 49404u, reverseBits(u_input.e)));
    var_1 = func_2(_wgslsmith_f_op_f32(-134f - _wgslsmith_f_op_f32(-var_1.d)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(sign(var_1.d)), _wgslsmith_f_op_f32(var_1.d - 1690f)))), vec3<bool>(true, func_2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(var_1.d)), _wgslsmith_f_op_f32(var_1.d - 783f))), vec2<f32>(_wgslsmith_f_op_f32(-var_1.d), var_1.d), select(var_1.b.www, global3.yxy, vec3<bool>(true, true, var_0.x))).a.c.x, true)).a;
    global1 = 2147483647i;
    var var_3 = Struct_3(~(~(-func_2(var_1.d, vec2<f32>(var_1.d, var_1.d), var_1.b.xyx).c)), -u_input.d << (countOneBits(~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.c.x, 11226u, global0[_wgslsmith_index_u32(var_1.a.x, 24u)], var_1.a.x), vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 24u)], var_2.x, global0[_wgslsmith_index_u32(var_1.a.x, 24u)], 1u))) % vec4<u32>(32u)));
    var var_4 = var_1.b;
    global3 = var_1.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(func_4(Struct_2(func_2(var_1.d, vec2<f32>(522f, -1000f), vec3<bool>(var_0.x, true, var_0.x)).a, func_1(var_1.d), u_input.a, _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-131f, var_1.d, 2276f, var_1.d))), _wgslsmith_add_vec2_u32(vec2<u32>(60278u, var_2.x), var_1.a.xx))).d, _wgslsmith_f_op_f32(var_1.d + -675f)), 60734u & _wgslsmith_sub_u32(4294967295u, reverseBits(func_4(Struct_2(Struct_1(vec3<u32>(49199u, global0[_wgslsmith_index_u32(0u, 24u)], var_2.x), var_1.b, vec3<bool>(true, var_1.c.x, global3.x), var_1.d), Struct_1(u_input.c, var_1.b, vec3<bool>(true, true, true), var_1.d), 20258i, vec4<f32>(var_1.d, var_1.d, 569f, var_1.d), var_2.yx)).a.x)), vec3<i32>(abs(~(-u_input.a)), -_wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(0i, u_input.a, var_3.b.x)), reverseBits(u_input.d.wwx)), u_input.d.x >> (1u % 32u)), _wgslsmith_dot_vec4_u32(select(select(~vec4<u32>(var_2.x, var_2.x, global0[_wgslsmith_index_u32(1u, 24u)], 4294967295u), ~vec4<u32>(6897u, 0u, u_input.b.x, var_2.x), var_1.c.x), ~vec4<u32>(18107u, 0u, var_2.x, var_2.x), vec4<bool>(var_1.b.x & var_4.x, true, var_0.x, var_1.d < 1088f)), max(abs(vec4<u32>(var_1.a.x, 1u, 11316u, 38978u) ^ vec4<u32>(var_1.a.x, global0[_wgslsmith_index_u32(61221u, 24u)], 0u, var_1.a.x)), vec4<u32>(26801u, _wgslsmith_mult_u32(u_input.b.x, u_input.b.x), 1u & global0[_wgslsmith_index_u32(var_2.x, 24u)], 40241u >> (var_2.x % 32u)))));
}

