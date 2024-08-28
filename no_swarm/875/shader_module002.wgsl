struct Struct_1 {
    a: vec2<bool>,
    b: vec3<bool>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct Struct_4 {
    a: u32,
    b: u32,
    c: Struct_2,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 2>;

var<private> global1: vec4<i32> = vec4<i32>(i32(-2147483648), -46219i, 2147483647i, -37913i);

var<private> global2: i32;

var<private> global3: array<u32, 3>;

var<private> global4: vec4<f32>;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_1(arg_0: vec4<i32>) -> Struct_4 {
    return Struct_4(~global3[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(u_input.c, ~vec3<u32>(global3[_wgslsmith_index_u32(52212u, 3u)], u_input.c.x, global3[_wgslsmith_index_u32(1u, 3u)])), 3u)], ~78661u, Struct_2(vec2<u32>(1u << (global3[_wgslsmith_index_u32(58739u, 3u)] % 32u), firstLeadingBit(firstTrailingBit(52815u)))), Struct_2(vec2<u32>(4294967295u, ~4294967295u) >> (abs(_wgslsmith_add_vec2_u32(u_input.c.zz, u_input.c.zz)) % vec2<u32>(32u))));
}

fn func_3(arg_0: bool, arg_1: Struct_2, arg_2: vec3<i32>) -> vec3<i32> {
    global1 = countOneBits(_wgslsmith_mod_vec4_i32(vec4<i32>(global1.x, -1i, abs(2147483647i) | (global1.x << (arg_1.a.x % 32u)), 48575i), _wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(-51119i, 3783i), _wgslsmith_sub_i32(-15310i, arg_2.x), arg_2.x, -2147483647i), vec4<i32>(global1.x >> (global3[_wgslsmith_index_u32(u_input.c.x, 3u)] % 32u), -2284i, -2147483647i, -1i))));
    let var_0 = _wgslsmith_f_op_f32(-928f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1529f + global4.x) * global4.x));
    var var_1 = Struct_3(_wgslsmith_div_vec4_u32(~vec4<u32>(155667u, global3[_wgslsmith_index_u32(u_input.c.x, 3u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 3u)], 3u)], 7561u) >> (vec4<u32>(arg_1.a.x, arg_1.a.x, 4294967295u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(19528u, 3u)], 3u)]) % vec4<u32>(32u)), _wgslsmith_div_vec4_u32(vec4<u32>(arg_1.a.x, 38743u, global3[_wgslsmith_index_u32(arg_1.a.x, 3u)], 14411u) & vec4<u32>(arg_1.a.x, 22794u, u_input.c.x, arg_1.a.x), _wgslsmith_add_vec4_u32(vec4<u32>(arg_1.a.x, arg_1.a.x, u_input.c.x, arg_1.a.x), vec4<u32>(42140u, 4294967295u, arg_1.a.x, 0u)))) ^ _wgslsmith_sub_vec4_u32(~(vec4<u32>(98615u, 4294967295u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(77901u, 3u)], 3u)], 35656u) & vec4<u32>(arg_1.a.x, arg_1.a.x, 4294967295u, u_input.c.x)), ~countOneBits(vec4<u32>(global3[_wgslsmith_index_u32(93517u, 3u)], global3[_wgslsmith_index_u32(u_input.c.x, 3u)], 33243u, 1u))));
    var_1 = Struct_3(vec4<u32>(_wgslsmith_dot_vec2_u32(firstLeadingBit(~arg_1.a), ~vec2<u32>(global3[_wgslsmith_index_u32(u_input.c.x, 3u)], u_input.c.x) << (arg_1.a % vec2<u32>(32u))), ~(~(~var_1.a.x)), abs(0u) ^ (13390u >> (countOneBits(u_input.c.x) % 32u)), max(20231u, global3[_wgslsmith_index_u32(_wgslsmith_add_u32(~1523u, ~global3[_wgslsmith_index_u32(23222u, 3u)]), 3u)])));
    var var_2 = func_1(_wgslsmith_add_vec4_i32(max(vec4<i32>(arg_2.x >> (var_1.a.x % 32u), -13777i, _wgslsmith_mult_i32(global1.x, arg_2.x), -1i), -vec4<i32>(global1.x, arg_2.x, u_input.b, 1i)), ~(~(vec4<i32>(-1i, u_input.a, 38356i, global1.x) & vec4<i32>(global1.x, -1i, u_input.b, 36368i))))).c;
    return arg_2 & vec3<i32>(0i ^ global1.x, -global1.x, abs(_wgslsmith_dot_vec3_i32(-arg_2, global1.xwz)));
}

fn func_4(arg_0: Struct_4, arg_1: bool, arg_2: Struct_2) -> bool {
    let var_0 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(862f - _wgslsmith_f_op_f32(min(global4.x, global4.x)))), _wgslsmith_f_op_f32(abs(global4.x))), _wgslsmith_f_op_vec2_f32(min(global4.zx, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(global4.wx, vec2<f32>(global4.x, global4.x))))))));
    global3 = array<u32, 3>();
    global1 = abs(~firstTrailingBit(select(select(vec4<i32>(global1.x, global1.x, -1i, 0i), vec4<i32>(u_input.a, global1.x, u_input.b, global1.x), false), -vec4<i32>(u_input.a, -2147483647i, 764i, global1.x), vec4<bool>(arg_1, arg_1, arg_1, arg_1))));
    global1 = ~vec4<i32>(global1.x, select(-_wgslsmith_clamp_i32(global1.x, 42332i, -36437i), u_input.b, true), ~_wgslsmith_sub_i32(-2147483647i, 12283i & global1.x), global1.x);
    let var_1 = func_1(-(~firstLeadingBit(vec4<i32>(u_input.b, -17028i, u_input.a, u_input.a)) ^ vec4<i32>(abs(global1.x), -33630i, 1i, 1i))).d;
    return (((-41525i >> ((var_1.a.x >> (arg_2.a.x % 32u)) % 32u)) >> (global3[_wgslsmith_index_u32(~1u >> (var_1.a.x % 32u), 3u)] % 32u)) | -21276i) > -_wgslsmith_sub_i32(global1.x, 1i);
}

fn func_2(arg_0: u32, arg_1: vec2<u32>, arg_2: vec2<i32>) -> f32 {
    var var_0 = u_input.c;
    let var_1 = Struct_3(_wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(max(min(vec4<u32>(arg_1.x, u_input.c.x, arg_0, u_input.c.x), vec4<u32>(0u, 6727u, 0u, u_input.c.x)), ~vec4<u32>(28909u, 0u, arg_1.x, 4294967295u)), _wgslsmith_mod_vec4_u32(~vec4<u32>(arg_0, var_0.x, var_0.x, arg_0), ~vec4<u32>(arg_0, u_input.c.x, 10673u, 86323u))), select(vec4<u32>(var_0.x, 81646u, arg_0, 4294967295u), vec4<u32>(0u, u_input.c.x, arg_1.x, 31668u) << (vec4<u32>(0u, 1u, 9132u, arg_1.x) % vec4<u32>(32u)), true) & vec4<u32>(global3[_wgslsmith_index_u32(1u, 3u)], 11845u, ~var_0.x, 1u)));
    let var_2 = vec2<bool>((_wgslsmith_dot_vec2_u32(~vec2<u32>(72276u, 1u), ~u_input.c.zx) & 18469u) < var_1.a.x, (_wgslsmith_div_i32(-global1.x, global1.x ^ -1i) == select(_wgslsmith_clamp_i32(1i, 42508i, global1.x), 1i, true)) == !(_wgslsmith_f_op_f32(global4.x + global4.x) == -1244f));
    let var_3 = func_4(Struct_4(_wgslsmith_clamp_u32(arg_1.x, _wgslsmith_dot_vec2_u32(var_1.a.yy, vec2<u32>(arg_1.x, 35004u)), ~0u), 97513u, func_1(vec4<i32>(~arg_2.x, global1.x, abs(1i), ~u_input.a)).d, Struct_2(var_1.a.zx)), any(vec4<bool>(all(vec2<bool>(true, var_2.x)), true, true, all(var_2))) == var_2.x, func_1(vec4<i32>(-24093i, max(max(-2147483647i, global1.x), ~u_input.b), ~global1.x, _wgslsmith_dot_vec3_i32(func_3(true, Struct_2(vec2<u32>(var_0.x, 8054u)), vec3<i32>(-29313i, -14502i, u_input.b)), -vec3<i32>(4458i, -2147483647i, global1.x)))).d);
    let var_4 = ~(~abs(u_input.c)) >> (var_1.a.yxz % vec3<u32>(32u));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global4.x), 1f) - _wgslsmith_f_op_f32(-global4.x))) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global4.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(vec4<i32>(-(~_wgslsmith_add_i32(u_input.b, u_input.a)), u_input.a, global1.x, u_input.b));
    var var_1 = all(vec3<bool>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_2(1379u, vec2<u32>(var_0.c.a.x, global3[_wgslsmith_index_u32(var_0.b, 3u)]), vec2<i32>(u_input.a, global1.x))), _wgslsmith_f_op_f32(global4.x + global4.x), true)) != 1124f, !(_wgslsmith_f_op_f32(-global4.x) >= _wgslsmith_f_op_f32(global4.x + 152f)), select(true, false, !any(vec2<bool>(false, true)))));
    let x = u_input.a;
    s_output = StorageBuffer(global1.x, ~_wgslsmith_div_vec2_u32(select(vec2<u32>(51362u, global3[_wgslsmith_index_u32(var_0.c.a.x, 3u)]), var_0.d.a, false), u_input.c.yz) | vec2<u32>(var_0.a, 20154u | _wgslsmith_dot_vec3_u32(vec3<u32>(global3[_wgslsmith_index_u32(var_0.d.a.x, 3u)], 30250u, 24968u), u_input.c)));
}

