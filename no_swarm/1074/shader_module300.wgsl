struct Struct_1 {
    a: bool,
    b: vec2<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec2<i32>,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 31> = array<vec2<i32>, 31>(vec2<i32>(-1i, 1i), vec2<i32>(-12698i, 0i), vec2<i32>(-1i, -46947i), vec2<i32>(2147483647i, 11346i), vec2<i32>(i32(-2147483648), 0i), vec2<i32>(28378i, -29531i), vec2<i32>(13838i, 0i), vec2<i32>(0i, -1i), vec2<i32>(7064i, 2147483647i), vec2<i32>(3612i, 32303i), vec2<i32>(15612i, i32(-2147483648)), vec2<i32>(-56668i, 42730i), vec2<i32>(-1i, 0i), vec2<i32>(0i, 31037i), vec2<i32>(62505i, i32(-2147483648)), vec2<i32>(i32(-2147483648), 50563i), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(i32(-2147483648), 34949i), vec2<i32>(38171i, 16896i), vec2<i32>(-42762i, 0i), vec2<i32>(-30900i, -15073i), vec2<i32>(-13020i, -27565i), vec2<i32>(-1i, i32(-2147483648)), vec2<i32>(-2080i, 2147483647i), vec2<i32>(-36237i, 47454i), vec2<i32>(-14610i, 2147483647i), vec2<i32>(i32(-2147483648), -17305i), vec2<i32>(23988i, i32(-2147483648)), vec2<i32>(32208i, -67377i), vec2<i32>(2147483647i, 33837i), vec2<i32>(2147483647i, -1i));

var<private> global1: vec4<i32> = vec4<i32>(-1i, 24689i, 65457i, -22585i);

var<private> global2: array<u32, 3>;

var<private> global3: array<vec2<bool>, 13>;

var<private> global4: vec2<f32> = vec2<f32>(-415f, -1201f);

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: vec3<f32>) -> u32 {
    let var_0 = vec3<bool>(true, any(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~13371u, 3u)], 13u)]), true);
    return 46153u >> (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 7019u, abs(0u)), u_input.a.zyx) % 32u);
}

fn func_4(arg_0: u32, arg_1: bool, arg_2: f32) -> vec2<i32> {
    let var_0 = 1152f;
    global3 = array<vec2<bool>, 13>();
    let var_1 = vec4<i32>(_wgslsmith_dot_vec3_i32(select(max(-vec3<i32>(-2147483647i, -2147483647i, global1.x), min(vec3<i32>(global1.x, -25562i, u_input.c.x), vec3<i32>(global1.x, u_input.c.x, global1.x))), vec3<i32>(firstTrailingBit(u_input.c.x), u_input.c.x, firstLeadingBit(1i)), vec3<bool>(all(vec3<bool>(arg_1, true, false)), true && arg_1, arg_1)), _wgslsmith_clamp_vec3_i32(~(-global1.zxw), vec3<i32>(-6775i, 57476i, _wgslsmith_add_i32(55301i, 1i)), ~global1.wwz)), -40405i, u_input.c.x, 1i);
    var var_2 = Struct_1(10374u == ~(~arg_0 << (firstLeadingBit(88841u) % 32u)), !vec2<bool>(arg_1, arg_1));
    global2 = array<u32, 3>();
    return abs(_wgslsmith_add_vec2_i32(vec2<i32>(-17648i, abs(_wgslsmith_div_i32(-4582i, u_input.c.x))), global1.yx ^ u_input.c));
}

fn func_2() -> f32 {
    let var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-458f, 258f, 285f) + vec3<f32>(global4.x, global4.x, global4.x)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 1374f, global4.x))) - vec3<f32>(global4.x, global4.x, _wgslsmith_f_op_f32(global4.x - global4.x)))), firstLeadingBit(_wgslsmith_div_vec2_i32(func_4(func_3(vec3<f32>(-958f, global4.x, -183f)), true, _wgslsmith_f_op_f32(round(-381f))), _wgslsmith_add_vec2_i32(vec2<i32>(0i, -12430i), u_input.c) | vec2<i32>(global1.x, -2147483647i))));
    let var_1 = i32(-1i) * -_wgslsmith_mod_i32(u_input.c.x, ~countOneBits(-2147483647i));
    var var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1330f)), global4.x, -694f)), _wgslsmith_div_vec2_i32(~global1.wx, vec2<i32>(_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(var_0.b, u_input.c), _wgslsmith_dot_vec2_i32(var_0.b, vec2<i32>(-9731i, 14023i)), -14897i), 35219i)));
    global0 = array<vec2<i32>, 31>();
    global0 = array<vec2<i32>, 31>();
    return var_0.a.x;
}

fn func_1(arg_0: i32) -> Struct_1 {
    let var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(func_2()), 1f, global4.x)), ~_wgslsmith_div_vec2_i32(vec2<i32>(1i, i32(-1i) * -18059i), vec2<i32>(arg_0 | -2147483647i, ~(-15906i))));
    var var_1 = var_0;
    let var_2 = Struct_1((_wgslsmith_f_op_f32(round(373f)) < _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(1000f)), _wgslsmith_f_op_f32(round(-812f)))) & (true || (arg_0 >= (i32(-1i) * -1i))), !global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(0u >> (abs(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(58631u, 3u)], 3u)]) % 32u), ~5559u), 13u)]);
    let var_3 = !(!select(select(vec4<bool>(false, true, true, var_2.a), vec4<bool>(true, var_2.a, var_2.a, true), vec4<bool>(true, var_2.a, false, true)), select(!vec4<bool>(true, var_2.a, false, var_2.a), !vec4<bool>(var_2.a, false, true, false), select(vec4<bool>(true, var_2.b.x, var_2.b.x, false), vec4<bool>(var_2.a, true, var_2.a, false), var_2.a)), vec4<bool>(var_2.a, var_2.a, var_2.a, var_2.b.x != var_2.a)));
    var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(var_1.a, vec3<f32>(_wgslsmith_f_op_f32(-var_0.a.x), -827f, _wgslsmith_f_op_f32(max(-988f, var_1.a.x)))))), _wgslsmith_sub_vec2_i32(var_1.b, _wgslsmith_mod_vec2_i32(abs(vec2<i32>(u_input.c.x, -10177i)), vec2<i32>(global1.x, var_1.b.x)) | global0[_wgslsmith_index_u32(~firstTrailingBit(4294967295u), 31u)]));
    return Struct_1(true, global3[_wgslsmith_index_u32(45458u, 13u)]);
}

fn func_5(arg_0: f32, arg_1: Struct_1) -> bool {
    let var_0 = arg_1;
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !vec2<bool>(false, ((u_input.a.x >= global2[_wgslsmith_index_u32(4294967295u, 3u)]) | true) && func_5(_wgslsmith_f_op_f32(-global4.x), func_1(global1.x)));
    global4 = _wgslsmith_f_op_vec2_f32(vec2<f32>(global4.x, 1167f) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.x))) + vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4.x * global4.x) + _wgslsmith_f_op_f32(func_2())), 778f)));
    global1 = firstTrailingBit(_wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(-37642i, global1.x), _wgslsmith_sub_i32(u_input.c.x, 1i), _wgslsmith_add_i32(u_input.c.x, 1i), min(-2147483647i, global1.x)), firstLeadingBit(vec4<i32>(u_input.c.x, global1.x, u_input.c.x, -2147483647i))), ~(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c.x, global1.x, u_input.c.x, 23453i), vec4<i32>(1i, 10779i, -2147483647i, u_input.c.x)) ^ reverseBits(vec4<i32>(global1.x, 2147483647i, global1.x, global1.x))), _wgslsmith_mult_vec4_i32(-_wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, global1.x, -1i, 0i), vec4<i32>(global1.x, 12642i, global1.x, global1.x)), vec4<i32>(u_input.c.x << (1u % 32u), func_4(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 3u)], 3u)], var_0.x, -1823f).x, u_input.c.x << (global2[_wgslsmith_index_u32(0u, 3u)] % 32u), 1i))));
    var var_1 = func_1(global1.x);
    global0 = array<vec2<i32>, 31>();
    var_1 = func_1(global1.x & u_input.c.x);
    global1 = _wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c.x, -global1.x, _wgslsmith_sub_i32(global1.x, -1i), global1.x), vec4<i32>(_wgslsmith_mod_i32(global1.x, u_input.c.x), 1i, -1i, _wgslsmith_div_i32(-1i, 64500i))), -vec4<i32>(countOneBits(21974i), 0i, global1.x, 19352i), -abs(vec4<i32>(u_input.c.x, -42265i, global1.x, global1.x))) ^ _wgslsmith_clamp_vec4_i32(~(-vec4<i32>(global1.x, u_input.c.x, 588i, global1.x)) | -_wgslsmith_clamp_vec4_i32(vec4<i32>(8770i, global1.x, 0i, global1.x), vec4<i32>(u_input.c.x, u_input.c.x, -39073i, -1i), vec4<i32>(-27605i, 3475i, 7490i, 1i)), ~(-_wgslsmith_mod_vec4_i32(vec4<i32>(0i, 2147483647i, u_input.c.x, u_input.c.x), vec4<i32>(u_input.c.x, 1i, global1.x, 1i))), ~(~vec4<i32>(u_input.c.x, u_input.c.x, 2147483647i, -1088i)));
    var var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-502f, 549f, global4.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global4.x, -677f, global4.x) * vec3<f32>(893f, -760f, global4.x)) * _wgslsmith_div_vec3_f32(vec3<f32>(-1249f, 1115f, global4.x), vec3<f32>(global4.x, -1100f, -169f)))))), u_input.c & vec2<i32>(countOneBits(global1.x), countOneBits(-global1.x)));
    global0 = array<vec2<i32>, 31>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(i32(-1i) * -8358i, i32(-1i) * -1i, _wgslsmith_add_i32(-u_input.c.x, ~0i), ~u_input.c.x) << ((~(~vec4<u32>(69674u, 0u, 1u, 1u)) >> (_wgslsmith_mult_vec4_u32(~u_input.b, vec4<u32>(global2[_wgslsmith_index_u32(1u, 3u)], 47310u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(69621u, 3u)], 3u)], 94278u)) % vec4<u32>(32u))) % vec4<u32>(32u)), vec2<i32>(1i, firstTrailingBit(_wgslsmith_dot_vec2_i32(global0[_wgslsmith_index_u32(abs(1u), 31u)], vec2<i32>(u_input.c.x, 21431i)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_2.a.x, _wgslsmith_f_op_f32(ceil(global4.x)), _wgslsmith_f_op_f32(global4.x * var_2.a.x), _wgslsmith_f_op_f32(sign(-1000f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-230f, global4.x, 712f, -103f), vec4<f32>(713f, 1344f, 574f, var_2.a.x), var_0.x)))) * _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-517f, var_2.a.x, -403f, global4.x))), vec4<f32>(var_2.a.x, -658f, var_2.a.x, 704f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global4.x, 216f, var_2.a.x, -792f))) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(153f, var_2.a.x, var_2.a.x, global4.x)))))));
}

