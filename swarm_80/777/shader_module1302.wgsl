struct Struct_1 {
    a: f32,
    b: f32,
}

struct Struct_2 {
    a: i32,
    b: vec3<f32>,
    c: Struct_1,
    d: vec3<bool>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<u32>,
    d: vec2<u32>,
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

var<private> global0: array<vec3<i32>, 20> = array<vec3<i32>, 20>(vec3<i32>(-25847i, i32(-2147483648), 1i), vec3<i32>(-23915i, -1i, 5102i), vec3<i32>(-44720i, 25889i, 18729i), vec3<i32>(2147483647i, 0i, -14690i), vec3<i32>(-38390i, -1i, -22080i), vec3<i32>(-41819i, -19081i, 12613i), vec3<i32>(-1i, -31382i, -1i), vec3<i32>(0i, 0i, 32412i), vec3<i32>(0i, 20672i, -73507i), vec3<i32>(74299i, 37026i, 20563i), vec3<i32>(28513i, -1i, 0i), vec3<i32>(i32(-2147483648), i32(-2147483648), 30487i), vec3<i32>(38528i, 2147483647i, -2809i), vec3<i32>(12334i, -19153i, -27806i), vec3<i32>(1i, 0i, -39452i), vec3<i32>(-1i, -2833i, 2147483647i), vec3<i32>(2147483647i, -1i, 19078i), vec3<i32>(-1i, 13527i, -1i), vec3<i32>(-24961i, 2147483647i, -109650i), vec3<i32>(-1150i, i32(-2147483648), i32(-2147483648)));

var<private> global1: array<vec2<u32>, 25> = array<vec2<u32>, 25>(vec2<u32>(1u, 0u), vec2<u32>(4427u, 4294967295u), vec2<u32>(31789u, 0u), vec2<u32>(1u, 4294967295u), vec2<u32>(1080u, 4294967295u), vec2<u32>(1u, 1u), vec2<u32>(23445u, 18446u), vec2<u32>(0u, 10305u), vec2<u32>(8692u, 53805u), vec2<u32>(0u, 0u), vec2<u32>(11535u, 0u), vec2<u32>(4294967295u, 56476u), vec2<u32>(888u, 28405u), vec2<u32>(30596u, 33657u), vec2<u32>(4294967295u, 1u), vec2<u32>(1u, 4294967295u), vec2<u32>(42990u, 2046u), vec2<u32>(32100u, 73021u), vec2<u32>(0u, 1448u), vec2<u32>(0u, 1u), vec2<u32>(0u, 1u), vec2<u32>(31851u, 1u), vec2<u32>(0u, 59319u), vec2<u32>(0u, 2141u), vec2<u32>(4294967295u, 0u));

var<private> global2: array<vec3<bool>, 12>;

var<private> global3: array<u32, 15>;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2) -> u32 {
    global3 = array<u32, 15>();
    let var_0 = firstLeadingBit(_wgslsmith_add_i32(~(-_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.a, -17869i, arg_1.a, arg_0.a), vec4<i32>(2147483647i, arg_0.a, arg_0.a, arg_0.a))), min(arg_1.a | arg_0.a, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.a, -2147483647i, 5222i, 15173i), u_input.a)) | (_wgslsmith_sub_i32(arg_0.a, u_input.a.x) >> (57025u % 32u))));
    let var_1 = Struct_3(vec4<f32>(1497f, 1f, _wgslsmith_f_op_f32(arg_0.c.a - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -133f))), _wgslsmith_f_op_f32(sign(arg_1.b.x))), u_input.c);
    var var_2 = ~1u;
    return 78273u >> (_wgslsmith_dot_vec3_u32(~u_input.c, ~vec3<u32>(u_input.b | 4294967295u, ~var_1.b.x, firstTrailingBit(global3[_wgslsmith_index_u32(var_1.b.x, 15u)]))) % 32u);
}

fn func_2(arg_0: bool) -> vec4<u32> {
    global1 = array<vec2<u32>, 25>();
    var var_0 = Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1732f))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -576f)))));
    var var_1 = abs(_wgslsmith_add_vec2_i32(u_input.a.yy, u_input.a.yx & vec2<i32>(_wgslsmith_add_i32(1i, 73897i), u_input.a.x)));
    var_0 = Struct_1(-1709f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.b))) * var_0.b));
    global2 = array<vec3<bool>, 12>();
    return ~vec4<u32>(_wgslsmith_add_u32(~func_3(Struct_2(-2147483647i, vec3<f32>(2114f, 375f, 116f), Struct_1(-872f, -762f), vec3<bool>(true, false, false)), Struct_2(54417i, vec3<f32>(var_0.a, 1681f, 703f), Struct_1(535f, -1520f), vec3<bool>(true, arg_0, false))), ~max(global3[_wgslsmith_index_u32(4422u, 15u)], 0u)), global3[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(global1[_wgslsmith_index_u32(firstTrailingBit(2998u), 25u)], _wgslsmith_div_vec2_u32(global1[_wgslsmith_index_u32(u_input.b, 25u)], global1[_wgslsmith_index_u32(1u, 25u)])), 15u)], ~(~u_input.b << (select(u_input.c.x, u_input.d.x, true) % 32u)), 1u);
}

fn func_1(arg_0: Struct_3, arg_1: bool, arg_2: vec4<f32>, arg_3: vec3<u32>) -> i32 {
    let var_0 = select(!(!(any(global2[_wgslsmith_index_u32(139039u, 12u)]) | (true || arg_1))), all(select(select(vec2<bool>(true, arg_1), select(vec2<bool>(arg_1, true), vec2<bool>(false, true), arg_1), !vec2<bool>(arg_1, arg_1)), select(vec2<bool>(arg_1, arg_1), vec2<bool>(true, arg_1), all(global2[_wgslsmith_index_u32(u_input.c.x, 12u)])), select(vec2<bool>(arg_1, false), select(vec2<bool>(false, arg_1), vec2<bool>(false, false), false), true))), true);
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) - _wgslsmith_f_op_f32(select(arg_0.a.x, arg_0.a.x, arg_1))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1007f + arg_0.a.x)));
    let var_2 = _wgslsmith_mod_vec3_u32(vec3<u32>(~select(u_input.b, _wgslsmith_sub_u32(48880u, 48314u), true), u_input.c.x, 4294967295u), ~(~(~(vec3<u32>(arg_0.b.x, arg_0.b.x, arg_3.x) << (arg_0.b % vec3<u32>(32u))))));
    var var_3 = ~(~vec4<u32>(select(42431u, 16943u, -1088f == arg_2.x), _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(var_2.x, 0u, u_input.b, 3917u)), func_2(true)), func_2(arg_1 == arg_1).x, 96544u));
    var var_4 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b, 1000f, arg_2.x)), arg_2.xxw)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, var_1.b, var_1.b) - _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1140f, arg_0.a.x, arg_0.a.x))))))), _wgslsmith_f_op_vec3_f32(arg_2.yzx * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_2.zyz + vec3<f32>(var_1.b, arg_2.x, -1000f)) + arg_0.a.xzx) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.a.yzy) * vec3<f32>(-961f, -563f, -1000f)))), !select(vec3<bool>(var_0 | var_0, all(vec4<bool>(false, var_0, false, true)), true), !(!global2[_wgslsmith_index_u32(23952u, 12u)]), vec3<bool>(arg_1, any(vec4<bool>(true, var_0, true, true)), true))));
    return abs(1i);
}

fn func_4(arg_0: i32, arg_1: vec3<f32>) -> vec3<f32> {
    let var_0 = -104f;
    global3 = array<u32, 15>();
    var var_1 = Struct_2(_wgslsmith_mult_i32(_wgslsmith_clamp_i32(-arg_0, ~14227i, _wgslsmith_add_i32(~(-1i), 1i >> (u_input.d.x % 32u))), -(~arg_0)), vec3<f32>(arg_1.x, var_0, var_0), Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1005f - _wgslsmith_f_op_f32(abs(arg_1.x))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_1.x))), !select(true, true, true))), _wgslsmith_f_op_f32(f32(-1f) * -572f)), global2[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, func_2(true).x), 12u)]);
    var var_2 = min(_wgslsmith_add_vec3_i32(~_wgslsmith_mod_vec3_i32(vec3<i32>(arg_0, 8385i, -2147483647i), global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 15u)] >> (18855u % 32u), 20u)]), vec3<i32>(var_1.a, _wgslsmith_mult_i32(-27903i, reverseBits(var_1.a)), -1i)), -global0[_wgslsmith_index_u32(u_input.c.x << (~u_input.d.x % 32u), 20u)] | (vec3<i32>(-1i) * -countOneBits(vec3<i32>(-22378i, var_1.a, arg_0))));
    var_1 = Struct_2(-2147483647i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_1)), Struct_1(_wgslsmith_f_op_f32(var_1.c.b - 140f), -872f), global2[_wgslsmith_index_u32(~abs(_wgslsmith_mod_u32(u_input.d.x, global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.d, vec2<u32>(global3[_wgslsmith_index_u32(1u, 15u)], global3[_wgslsmith_index_u32(u_input.b, 15u)])), 15u)])), 12u)]);
    return _wgslsmith_f_op_vec3_f32(-arg_1);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(_wgslsmith_mod_i32(-2147483647i, -countOneBits(_wgslsmith_div_i32(u_input.a.x, -2147483647i))), _wgslsmith_f_op_vec3_f32(func_4(_wgslsmith_mod_i32(max(1i, 57121i), _wgslsmith_add_i32(func_1(Struct_3(vec4<f32>(1603f, 331f, -299f, 428f), u_input.c), true, vec4<f32>(1772f, 938f, -677f, 2085f), vec3<u32>(global3[_wgslsmith_index_u32(u_input.d.x, 15u)], u_input.b, global3[_wgslsmith_index_u32(10974u, 15u)])), -1i)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(702f, _wgslsmith_f_op_f32(1429f * 299f), -722f))))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1200f - 500f)) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_vec3_f32(func_4(1i, vec3<f32>(-829f, -1430f, -1995f))).x, -126f))), _wgslsmith_f_op_f32(floor(956f))), vec3<bool>(true, all(!select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), global2[_wgslsmith_index_u32(79333u, 12u)])), (any(vec3<bool>(false, false, false)) & true) != !all(vec3<bool>(false, false, true))));
    global0 = array<vec3<i32>, 20>();
    var var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.x, -1265f, 1000f, var_0.b.x) - vec4<f32>(1289f, 145f, var_0.c.b, var_0.b.x)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.b.x, -160f, 434f, 221f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.a, 1000f, -933f, 352f)))) + _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.a, var_0.c.b, var_0.b.x, var_0.b.x))))), ~u_input.c);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(313f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.x)), all(vec3<bool>(false, true, true)))))) - _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(var_0.c.a, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(-1000f, var_1.a.x))))))));
    global2 = array<vec3<bool>, 12>();
    global2 = array<vec3<bool>, 12>();
    global0 = array<vec3<i32>, 20>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b);
}

