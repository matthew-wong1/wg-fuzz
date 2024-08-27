struct Struct_1 {
    a: vec3<i32>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: vec2<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
    c: vec3<bool>,
    d: Struct_2,
    e: u32,
}

struct Struct_5 {
    a: vec4<i32>,
    b: Struct_4,
    c: vec3<i32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 21>;

var<private> global1: array<vec3<bool>, 3> = array<vec3<bool>, 3>(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true));

var<private> global2: Struct_2;

var<private> global3: Struct_5 = Struct_5(vec4<i32>(0i, 9710i, -19431i, -12007i), Struct_4(1i, Struct_2(19133i, -144f, vec2<i32>(-1i, -77400i), Struct_1(vec3<i32>(-5820i, 19316i, 2147483647i), vec4<bool>(false, true, true, true))), vec3<bool>(true, true, false), Struct_2(1i, -1979f, vec2<i32>(-19846i, -3811i), Struct_1(vec3<i32>(0i, 21608i, 34324i), vec4<bool>(false, false, true, true))), 1u), vec3<i32>(-41225i, 31608i, -1i), Struct_1(vec3<i32>(-10526i, 1i, -1i), vec4<bool>(false, false, false, false)));

var<private> global4: array<vec3<u32>, 13> = array<vec3<u32>, 13>(vec3<u32>(1u, 4294967295u, 6425u), vec3<u32>(0u, 57116u, 4294967295u), vec3<u32>(18533u, 595u, 4294967295u), vec3<u32>(46537u, 11150u, 4294967295u), vec3<u32>(95085u, 1765u, 63377u), vec3<u32>(14893u, 59685u, 1u), vec3<u32>(31272u, 45732u, 9783u), vec3<u32>(0u, 0u, 0u), vec3<u32>(4294967295u, 1u, 4294967295u), vec3<u32>(98270u, 69263u, 77510u), vec3<u32>(84251u, 0u, 77415u), vec3<u32>(60418u, 13696u, 1u), vec3<u32>(4294967295u, 0u, 4294967295u));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: f32) -> vec3<bool> {
    global1 = array<vec3<bool>, 3>();
    global1 = array<vec3<bool>, 3>();
    var var_0 = (global2.d.a >> (_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b.x, 1158u, global3.b.e) ^ _wgslsmith_mod_vec3_u32(vec3<u32>(44733u, 0u, global3.b.e), vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x)), u_input.b) % vec3<u32>(32u))) >> (abs(_wgslsmith_div_vec3_u32(min(vec3<u32>(1u, global3.b.e, 3140u), vec3<u32>(1u, 1u, 25113u)), _wgslsmith_clamp_vec3_u32(_wgslsmith_mult_vec3_u32(global4[_wgslsmith_index_u32(4294967295u, 13u)], u_input.b), vec3<u32>(47895u, u_input.b.x, 5081u), ~vec3<u32>(28352u, global3.b.e, 16684u)))) % vec3<u32>(32u));
    var var_1 = Struct_1(firstTrailingBit(_wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, -21789i, 6526i), vec3<i32>(arg_0, global2.c.x, 3107i)), global2.d.a) << (vec3<u32>(u_input.b.x, ~global3.b.e, ~u_input.b.x) % vec3<u32>(32u))), select(select(global2.d.b, select(select(global2.d.b, vec4<bool>(false, true, global2.d.b.x, true), true), vec4<bool>(global2.d.b.x, false, true, global2.d.b.x), false), select(select(vec4<bool>(true, false, true, global2.d.b.x), global2.d.b, global2.d.b), vec4<bool>(false, true, global3.b.d.d.b.x, true), vec4<bool>(false, global2.d.b.x, global2.d.b.x, true))), vec4<bool>(!(1i != global2.a), (13279u << (global3.b.e % 32u)) < (u_input.b.x ^ u_input.b.x), global3.d.b.x, any(vec3<bool>(global3.b.b.d.b.x, global2.d.b.x, global3.d.b.x))), select(global2.d.b, global2.d.b, vec4<bool>(global3.d.b.x, any(vec3<bool>(true, true, global2.d.b.x)), false, global2.d.b.x & false))));
    var_1 = global2.d;
    return vec3<bool>(global2.d.b.x, any(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(countOneBits(~u_input.b.x), firstLeadingBit(min(86800u, 4294967295u))), 3u)]), global2.d.b.x);
}

fn func_4(arg_0: bool, arg_1: vec2<i32>) -> i32 {
    var var_0 = Struct_1(countOneBits(-vec3<i32>(arg_1.x, u_input.a & u_input.a, select(0i, 13592i, true))), global3.d.b);
    var var_1 = ~_wgslsmith_mod_u32(72917u, ~abs(abs(1u)));
    var var_2 = Struct_1(-var_0.a, global2.d.b);
    var var_3 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(global2.b))));
    var var_4 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.b.d.b, global3.b.b.b)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-406f, global3.b.d.b))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-748f, global2.b))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.b, global3.b.d.b) + vec2<f32>(1000f, -392f))), func_3(var_0.a.x << (30182u % 32u), _wgslsmith_f_op_f32(-global3.b.b.b)).zz)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global3.b.b.b, global2.b))) * _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(293f, 1652f))))))));
    return ~min(abs(_wgslsmith_add_i32(var_0.a.x, -2147483647i)) << (max(u_input.b.x, 5615u) % 32u), -17974i);
}

fn func_2() -> Struct_1 {
    global2 = Struct_2(~func_4(all(func_3(-1293i, -1000f)), -global3.a.yw), _wgslsmith_f_op_f32(floor(-465f)), _wgslsmith_add_vec2_i32(vec2<i32>(~1i, -global3.c.x), firstTrailingBit(vec2<i32>(global2.c.x, -58518i)) ^ global3.c.xx), Struct_1(vec3<i32>(37976i, -20248i, -10196i), global2.d.b));
    var var_0 = ~(~abs((global3.b.e >> (56261u % 32u)) & 1u));
    var var_1 = max(~_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(-vec4<i32>(16029i, global3.c.x, 0i, 2147483647i), global3.a), -(-1i >> (1u % 32u))), 1i);
    global1 = array<vec3<bool>, 3>();
    global1 = array<vec3<bool>, 3>();
    return global3.b.d.d;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_5, arg_2: Struct_4, arg_3: f32) -> vec4<bool> {
    return arg_0.b;
}

fn func_1(arg_0: Struct_4, arg_1: Struct_5) -> vec2<u32> {
    var var_0 = Struct_1(-_wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, -1i, arg_1.b.a), vec3<i32>(20314i, -10144i, 37909i)) & ~vec3<i32>(global2.d.a.x, -64038i, arg_0.a), vec3<i32>(-30991i, firstTrailingBit(global2.c.x), _wgslsmith_mult_i32(-40393i, u_input.a))), select(func_5(func_2(), arg_1, arg_0, global3.b.d.b), !arg_1.b.d.d.b, vec4<bool>(arg_0.d.d.b.x, !select(false, arg_0.d.d.b.x, false), _wgslsmith_add_u32(1288u, u_input.b.x) == ~0u, true)));
    global2 = arg_0.b;
    global3 = arg_1;
    let var_1 = global3.b.b.d.b.x;
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1191f)) * _wgslsmith_f_op_f32(f32(-1f) * -1197f)), -520f);
    return reverseBits(_wgslsmith_sub_vec2_u32(max(vec2<u32>(4294967295u, 19611u), vec2<u32>(global3.b.e, arg_0.e)), abs(u_input.b.yx) << (~u_input.b.zz % vec2<u32>(32u))) << (u_input.b.xy % vec2<u32>(32u)));
}

fn func_6(arg_0: vec3<i32>, arg_1: vec2<u32>, arg_2: Struct_5, arg_3: vec3<i32>) -> f32 {
    global3 = Struct_5(-global3.a, arg_2.b, ~vec3<i32>(~abs(arg_0.x), _wgslsmith_dot_vec3_i32(-vec3<i32>(0i, -19984i, global3.c.x), countOneBits(arg_3)), arg_0.x), arg_2.d);
    var var_0 = Struct_1(-abs(vec3<i32>(arg_2.b.a, u_input.a, -53417i)) ^ ~(_wgslsmith_mult_vec3_i32(arg_0, vec3<i32>(global3.b.b.c.x, arg_0.x, global3.a.x)) ^ ~arg_2.b.b.d.a), func_5(global3.b.b.d, arg_2, arg_2.b, global2.b));
    var var_1 = _wgslsmith_mod_vec2_u32(max(~vec2<u32>(_wgslsmith_mod_u32(4294967295u, 4294967295u), u_input.b.x), ~func_1(global3.b, arg_2)), firstLeadingBit(vec2<u32>(_wgslsmith_dot_vec3_u32(~global4[_wgslsmith_index_u32(arg_2.b.e, 13u)], u_input.b & vec3<u32>(arg_1.x, global3.b.e, u_input.b.x)), ~(~arg_2.b.e))));
    global1 = array<vec3<bool>, 3>();
    let var_2 = Struct_4(global2.a, Struct_2(-u_input.a, _wgslsmith_f_op_f32(f32(-1f) * -1000f), var_0.a.xz, arg_2.d), !arg_2.b.c, arg_2.b.d, u_input.b.x);
    return _wgslsmith_f_op_f32(-global2.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstLeadingBit(vec2<u32>(6483u, firstLeadingBit(u_input.b.x)));
    global1 = array<vec3<bool>, 3>();
    global0 = array<vec2<i32>, 21>();
    var var_1 = var_0.x;
    global0 = array<vec2<i32>, 21>();
    var var_2 = Struct_4(1i, Struct_2(_wgslsmith_clamp_i32(66519i, global3.d.a.x, ~(11752i >> (var_0.x % 32u))), _wgslsmith_f_op_f32(global2.b * _wgslsmith_f_op_f32(func_6(vec3<i32>(global3.c.x, -2147483647i, 1i), func_1(global3.b, Struct_5(vec4<i32>(0i, u_input.a, -6546i, 0i), Struct_4(-2147483647i, global3.b.b, vec3<bool>(global2.d.b.x, false, global2.d.b.x), Struct_2(-2147483647i, -1921f, global0[_wgslsmith_index_u32(global3.b.e, 21u)], global2.d), 0u), vec3<i32>(global3.d.a.x, -2147483647i, 1i), global2.d)), Struct_5(vec4<i32>(33759i, -1i, u_input.a, -2147483647i), Struct_4(global2.a, global3.b.b, global2.d.b.zww, global3.b.b, global3.b.e), global2.d.a, global2.d), abs(vec3<i32>(u_input.a, 0i, u_input.a))))), firstTrailingBit((vec2<i32>(u_input.a, 0i) | global3.b.d.d.a.xz) ^ (global3.b.d.d.a.zx | global0[_wgslsmith_index_u32(4294967295u, 21u)])), Struct_1(~_wgslsmith_mod_vec3_i32(global2.d.a, global2.d.a), vec4<bool>(true, global2.d.b.x, global2.d.b.x, !global3.b.d.d.b.x))), select(!func_2().b.zyy, vec3<bool>(all(vec2<bool>(global3.d.b.x, true)), _wgslsmith_div_f32(global3.b.b.b, 2555f) >= _wgslsmith_f_op_f32(select(global3.b.b.b, 961f, false)), !global3.b.c.x), !global3.d.b.yzx), Struct_2(-max(_wgslsmith_clamp_i32(1874i, -43625i, u_input.a), 1i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1000f + -1437f)))), vec2<i32>(max(1056i, global3.a.x), ~firstTrailingBit(u_input.a)), Struct_1(_wgslsmith_sub_vec3_i32(global2.d.a, global2.d.a), global3.b.b.d.b)), abs(_wgslsmith_add_u32(_wgslsmith_sub_u32(global3.b.e, _wgslsmith_add_u32(1u, var_0.x)), 4294967295u)));
    var var_3 = Struct_5(-(abs(global3.a) >> (~select(vec4<u32>(var_0.x, 1u, var_2.e, 0u), vec4<u32>(global3.b.e, var_0.x, var_0.x, 0u), true) % vec4<u32>(32u))), global3.b, countOneBits(firstTrailingBit(vec3<i32>(firstLeadingBit(9376i), global3.b.a, -global3.a.x))), func_2());
    let x = u_input.a;
    s_output = StorageBuffer(-firstTrailingBit(u_input.a) | ~reverseBits(_wgslsmith_dot_vec2_i32(global3.d.a.xy, global0[_wgslsmith_index_u32(23886u, 21u)])), -2150f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1218f, -803f, var_2.d.b, var_3.b.b.b)) - vec4<f32>(_wgslsmith_f_op_f32(var_3.b.d.b - 666f), _wgslsmith_f_op_f32(f32(-1f) * -759f), _wgslsmith_f_op_f32(725f + var_3.b.d.b), _wgslsmith_f_op_f32(-var_2.b.b)))));
}

