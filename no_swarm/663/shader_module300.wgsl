struct Struct_1 {
    a: vec3<bool>,
    b: vec3<bool>,
    c: u32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec3<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_2,
    c: Struct_1,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<bool>,
    c: bool,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: u32,
    d: u32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 29> = array<i32, 29>(63100i, -14701i, 1i, 39098i, -23045i, 2147483647i, 0i, i32(-2147483648), -42180i, 0i, -1i, i32(-2147483648), 0i, i32(-2147483648), 34164i, 19851i, 2832i, 1i, 1i, -1i, 20977i, -16301i, 66093i, -1i, -87344i, 12887i, -9394i, -7556i, -29506i);

var<private> global1: f32;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec2<i32>, arg_2: vec2<u32>) -> f32 {
    var var_0 = Struct_5(Struct_2(vec2<u32>(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, arg_2.x, 109495u, 69480u), vec4<u32>(4294967295u, 4294967295u, arg_2.x, u_input.b))), firstLeadingBit(0u)), _wgslsmith_add_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(arg_1.x, 2147483647i, arg_1.x), ~vec3<i32>(-1i, global0[_wgslsmith_index_u32(61806u, 29u)], global0[_wgslsmith_index_u32(arg_2.x, 29u)])), Struct_1(select(vec3<bool>(true, true, true), select(vec3<bool>(arg_0.x, arg_0.x, false), vec3<bool>(arg_0.x, true, arg_0.x), arg_0.x), vec3<bool>(true, arg_0.x, arg_0.x)), !select(vec3<bool>(arg_0.x, true, true), vec3<bool>(arg_0.x, false, true), arg_0.x), 1u)));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(1518f * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1253f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-286f - -1648f), 576f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -723f)), _wgslsmith_f_op_f32(629f - 1f)));
}

fn func_2(arg_0: vec3<bool>) -> vec3<u32> {
    global1 = _wgslsmith_f_op_f32(func_3(!arg_0.zx, vec2<i32>(_wgslsmith_add_i32(u_input.c, min(global0[_wgslsmith_index_u32(1u, 29u)], 1i)), 1i), u_input.d));
    var var_0 = Struct_1(arg_0, arg_0, 9612u);
    var var_1 = true;
    var var_2 = select(!select(var_0.a, !vec3<bool>(var_0.a.x, false, arg_0.x), var_0.b), !arg_0, false);
    var var_3 = !(var_0.b.x || true);
    return _wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(~(~_wgslsmith_add_vec3_u32(vec3<u32>(var_0.c, 4294967295u, 17050u), vec3<u32>(4294967295u, 1u, var_0.c))), firstTrailingBit(~vec3<u32>(1u, u_input.d.x, u_input.b) | vec3<u32>(58652u, 262u, u_input.b))), abs(vec3<u32>(u_input.d.x & 4294967295u, reverseBits(1u), 4294967295u)) | vec3<u32>(var_0.c, min(14369u, var_0.c), u_input.d.x));
}

fn func_4(arg_0: vec3<u32>, arg_1: u32, arg_2: Struct_2, arg_3: vec3<i32>) -> Struct_5 {
    global0 = array<i32, 29>();
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-670f, _wgslsmith_f_op_f32(877f * 214f))))));
    global0 = array<i32, 29>();
    let var_0 = Struct_2(arg_2.a, -firstLeadingBit(arg_2.b) << (arg_0 % vec3<u32>(32u)), arg_2.c);
    global0 = array<i32, 29>();
    return Struct_5(Struct_2(~reverseBits(abs(vec2<u32>(18732u, 22032u))), -vec3<i32>(_wgslsmith_mod_i32(8194i, 46752i), i32(-1i) * -1i, -2147483647i), Struct_1(arg_2.c.b, !arg_2.c.a, 4294967295u)));
}

fn func_1() -> Struct_1 {
    global0 = array<i32, 29>();
    global1 = _wgslsmith_f_op_f32(f32(-1f) * -411f);
    var var_0 = func_4(_wgslsmith_clamp_vec3_u32(~(~vec3<u32>(0u, 0u, 0u)) & _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.d.x, u_input.d.x, u_input.b), firstLeadingBit(vec3<u32>(41027u, 14753u, 1u))), ~select(~vec3<u32>(u_input.b, u_input.b, u_input.d.x), func_2(vec3<bool>(true, true, true)), 48313u > u_input.d.x), ~firstTrailingBit(~vec3<u32>(1u, 10294u, u_input.d.x))), _wgslsmith_dot_vec2_u32(max(u_input.d, vec2<u32>(u_input.b, 79215u)) << (u_input.d % vec2<u32>(32u)), ~u_input.d), Struct_2(firstTrailingBit(_wgslsmith_div_vec2_u32(vec2<u32>(20540u, u_input.d.x) >> (vec2<u32>(44354u, 4294967295u) % vec2<u32>(32u)), firstLeadingBit(u_input.d))), vec3<i32>(~(~0i), firstLeadingBit(1i), u_input.a), Struct_1(vec3<bool>(any(vec3<bool>(false, false, true)), true, true), !select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true)), select(_wgslsmith_clamp_u32(u_input.b, 0u, 15163u), u_input.b, true))), vec3<i32>(global0[_wgslsmith_index_u32(u_input.d.x, 29u)], u_input.a ^ min(_wgslsmith_dot_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(u_input.b, 29u)], 2147483647i, global0[_wgslsmith_index_u32(72620u, 29u)]), vec3<i32>(u_input.c, -2147483647i, 2147483647i)), min(2147483647i, 0i)), u_input.a >> (u_input.d.x % 32u)));
    let var_1 = ~var_0.a.a;
    let var_2 = vec4<f32>(-301f, -1517f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1071f))) - _wgslsmith_f_op_f32(f32(-1f) * -1106f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(271f + -1040f)))));
    return func_4(firstLeadingBit(vec3<u32>(u_input.b, ~func_2(var_0.a.c.a).x, ~1u)), 1u, func_4(_wgslsmith_sub_vec3_u32(func_2(var_0.a.c.b), select(vec3<u32>(0u, 11877u, var_0.a.a.x) ^ vec3<u32>(0u, var_1.x, u_input.d.x), firstLeadingBit(vec3<u32>(u_input.b, 8178u, u_input.d.x)), var_0.a.c.b.x)), _wgslsmith_div_u32(var_1.x, ~var_1.x) & var_0.a.c.c, Struct_2(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.b, var_0.a.a.x), u_input.d), _wgslsmith_mult_vec3_i32(vec3<i32>(1i, global0[_wgslsmith_index_u32(26228u, 29u)], global0[_wgslsmith_index_u32(var_1.x, 29u)]), firstTrailingBit(vec3<i32>(var_0.a.b.x, -17090i, 31689i))), var_0.a.c), _wgslsmith_clamp_vec3_i32(vec3<i32>(4089i, var_0.a.b.x, u_input.a ^ u_input.c), vec3<i32>(u_input.a, max(-46089i, var_0.a.b.x), 40460i), vec3<i32>(32203i, 2147483647i, var_0.a.b.x) | var_0.a.b)).a, vec3<i32>(reverseBits(global0[_wgslsmith_index_u32(~71446u, 29u)]), select(max(-3397i, 17396i), global0[_wgslsmith_index_u32(u_input.d.x, 29u)], var_0.a.c.a.x), -global0[_wgslsmith_index_u32(firstTrailingBit(4294967295u), 29u)]) & _wgslsmith_mod_vec3_i32(-abs(var_0.a.b), var_0.a.b)).a.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) * _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1964f, -653f, -1538f), vec3<f32>(1819f, -841f, 1713f)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-934f, -334f, 1493f)) - _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(405f, 204f, 998f))))) * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1666f), _wgslsmith_f_op_f32(2402f - -820f), _wgslsmith_f_op_f32(f32(-1f) * -588f))))));
    global0 = array<i32, 29>();
    var var_2 = var_1.x;
    global0 = array<i32, 29>();
    let x = u_input.a;
    s_output = StorageBuffer(max(_wgslsmith_mod_vec4_u32(vec4<u32>(func_2(var_0.b).x, func_4(vec3<u32>(1u, 0u, 0u), var_0.c, Struct_2(vec2<u32>(474u, var_0.c), vec3<i32>(1i, global0[_wgslsmith_index_u32(1u, 29u)], 10409i), Struct_1(var_0.b, vec3<bool>(true, false, false), u_input.b)), vec3<i32>(-13749i, 47552i, u_input.a)).a.a.x, _wgslsmith_add_u32(var_0.c, 55721u), abs(u_input.d.x)), vec4<u32>(1u, u_input.b, countOneBits(4294967295u), 34003u)), vec4<u32>(4294967295u, ~_wgslsmith_clamp_u32(1u, 0u, 1u), 27463u, ~var_0.c)), max(~(~max(vec2<u32>(u_input.d.x, u_input.d.x), vec2<u32>(u_input.b, 28698u))), u_input.d), _wgslsmith_sub_u32((1u ^ ~var_0.c) | u_input.b, abs(u_input.b)), ~_wgslsmith_mult_u32(~max(1u, 4294967295u), 1u), vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, _wgslsmith_clamp_i32(u_input.a, u_input.c, 0i), -2147483647i), vec3<i32>(0i, global0[_wgslsmith_index_u32(u_input.b, 29u)], global0[_wgslsmith_index_u32(var_0.c, 29u)]) >> ((vec3<u32>(var_0.c, 1u, u_input.d.x) << (vec3<u32>(76234u, 6529u, var_0.c) % vec3<u32>(32u))) % vec3<u32>(32u))), -(firstLeadingBit(7065i) & global0[_wgslsmith_index_u32(~u_input.b, 29u)])));
}

