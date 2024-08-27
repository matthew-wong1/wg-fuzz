struct Struct_1 {
    a: vec2<i32>,
    b: vec3<u32>,
    c: bool,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 28>;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1) -> f32 {
    var var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-134f, 344f, 438f)) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1369f, 660f, 1059f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(315f, 798f, 550f)), arg_2.c)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-2232f, -1424f, -178f)))))));
    var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(var_0.a, vec3<f32>(var_0.a.x, var_0.a.x, var_0.a.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1087f, var_0.a.x, 777f), vec3<f32>(var_0.a.x, var_0.a.x, 766f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(591f, 1000f, var_0.a.x)))))));
    let var_1 = _wgslsmith_sub_u32(arg_2.b.x, 1u);
    var_0 = Struct_2(_wgslsmith_div_vec3_f32(var_0.a, _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(ceil(var_0.a.x)), _wgslsmith_f_op_f32(max(var_0.a.x, 1447f)), _wgslsmith_f_op_f32(1039f - var_0.a.x)), _wgslsmith_f_op_vec3_f32(var_0.a + var_0.a)))));
    let var_2 = Struct_1(countOneBits(_wgslsmith_add_vec2_i32(vec2<i32>(arg_1, arg_1) ^ global0[_wgslsmith_index_u32(1672u, 28u)], _wgslsmith_clamp_vec2_i32(vec2<i32>(arg_0.a.x, arg_2.a.x), vec2<i32>(-2606i, -2147483647i), vec2<i32>(arg_2.a.x, arg_2.a.x))) & _wgslsmith_sub_vec2_i32(vec2<i32>(1i, 20221i), global0[_wgslsmith_index_u32(4294967295u, 28u)] & global0[_wgslsmith_index_u32(20831u, 28u)])), arg_0.b, true);
    return 1304f;
}

fn func_2() -> vec4<u32> {
    global0 = array<vec2<i32>, 28>();
    global0 = array<vec2<i32>, 28>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_1(firstLeadingBit(select(vec2<i32>(-1i, 59594i), global0[_wgslsmith_index_u32(u_input.a.x, 28u)], true)), firstLeadingBit(~u_input.a), any(vec3<bool>(false, false, false)) || false), -firstLeadingBit(select(0i, -2147483647i, true)), Struct_1(vec2<i32>(_wgslsmith_mod_i32(0i, 2147483647i), 2147483647i), reverseBits(vec3<u32>(u_input.a.x, 0u, 100005u)), true))) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3(Struct_1(_wgslsmith_add_vec2_i32(global0[_wgslsmith_index_u32(u_input.b, 28u)], global0[_wgslsmith_index_u32(u_input.b, 28u)]), ~vec3<u32>(0u, u_input.a.x, 6696u), true), 0i, Struct_1(vec2<i32>(2147483647i, -33335i), firstTrailingBit(vec3<u32>(u_input.b, 1u, 5201u)), true))), 1089f)));
    global0 = array<vec2<i32>, 28>();
    global0 = array<vec2<i32>, 28>();
    return select(max(countOneBits(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, u_input.b, 0u, u_input.b), vec4<u32>(u_input.b, u_input.b, 1u, 0u))), ~select(vec4<u32>(u_input.b, 4294967295u, 29672u, u_input.b), vec4<u32>(606u, u_input.a.x, u_input.a.x, u_input.b), false)), vec4<u32>(~_wgslsmith_clamp_u32(0u, u_input.b, 35725u), u_input.a.x, _wgslsmith_mod_u32(110463u, u_input.a.x) << (~u_input.b % 32u), firstLeadingBit(min(u_input.b, 4294967295u))), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))) << (vec4<u32>(~(select(4294967295u, u_input.b, false) >> ((u_input.a.x << (u_input.a.x % 32u)) % 32u)), u_input.b, u_input.b, 4294967295u) % vec4<u32>(32u));
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: vec2<bool>) -> Struct_1 {
    let var_0 = !(!(!select(!vec3<bool>(arg_1.c, true, arg_3.x), !vec3<bool>(arg_3.x, false, true), vec3<bool>(arg_1.c, true, true))));
    global0 = array<vec2<i32>, 28>();
    var var_1 = _wgslsmith_div_i32(24463i, max(-1i, _wgslsmith_mod_i32(_wgslsmith_mult_i32(-70442i, 24424i), _wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.a.x, 23595i, -2147483647i), vec3<i32>(1i, 18164i, 1i)))) & 1i);
    global0 = array<vec2<i32>, 28>();
    global0 = array<vec2<i32>, 28>();
    return arg_1;
}

fn func_1(arg_0: i32) -> Struct_2 {
    let var_0 = func_4(func_2(), Struct_1(((global0[_wgslsmith_index_u32(24772u, 28u)] ^ global0[_wgslsmith_index_u32(1u, 28u)]) ^ vec2<i32>(-27149i, -11413i)) | abs(vec2<i32>(-1i, -2147483647i)), vec3<u32>(u_input.b, 1u, ~u_input.b), true), _wgslsmith_clamp_vec3_i32(vec3<i32>(1i, arg_0 | -27564i, -firstTrailingBit(arg_0)), _wgslsmith_mult_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(arg_0, arg_0, arg_0), abs(vec3<i32>(arg_0, arg_0, arg_0)), vec3<i32>(-33051i, arg_0, arg_0)), vec3<i32>(_wgslsmith_add_i32(arg_0, -25471i), arg_0, countOneBits(2577i))), vec3<i32>(arg_0, arg_0, _wgslsmith_mod_i32(arg_0 << (0u % 32u), -arg_0))), select(!vec2<bool>(true, any(vec4<bool>(true, false, false, false))), vec2<bool>(all(vec4<bool>(true, true, true, true)), true), !all(vec2<bool>(true, true))));
    let var_1 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1000f, 1000f))), vec2<f32>(1542f, -289f))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-697f, -1000f), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-298f, -464f), vec2<f32>(-530f, 1130f), vec2<bool>(var_0.c, var_0.c))), true)), false))))));
    let var_2 = func_4(~min(func_2(), firstLeadingBit(~vec4<u32>(u_input.b, 0u, u_input.b, var_0.b.x))), var_0, vec3<i32>(2147483647i, min(func_4(firstTrailingBit(vec4<u32>(1u, u_input.b, var_0.b.x, var_0.b.x)), var_0, -vec3<i32>(var_0.a.x, arg_0, var_0.a.x), vec2<bool>(var_0.c, false)).a.x, countOneBits(var_0.a.x)), _wgslsmith_div_i32(_wgslsmith_sub_i32(min(arg_0, var_0.a.x), arg_0), 2147483647i)), select(vec2<bool>(false, var_0.c), vec2<bool>(any(vec4<bool>(var_0.c, var_0.c, var_0.c, var_0.c)), var_0.c), var_0.c));
    let var_3 = vec2<u32>(~_wgslsmith_dot_vec4_u32(abs(select(vec4<u32>(u_input.b, u_input.b, var_2.b.x, 22387u), vec4<u32>(u_input.b, var_2.b.x, var_0.b.x, 4294967295u), false)), _wgslsmith_div_vec4_u32(vec4<u32>(var_2.b.x, var_2.b.x, 56160u, var_0.b.x) | vec4<u32>(4294967295u, 4294967295u, 4294967295u, 1u), countOneBits(vec4<u32>(20798u, 4294967295u, 12157u, 61459u)))), var_2.b.x);
    var var_4 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(514f, 1643f, var_1.x), vec3<f32>(-387f, -574f, var_1.x)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(1416f, var_1.x, var_1.x) * vec3<f32>(var_1.x, var_1.x, -1106f))), vec3<f32>(_wgslsmith_f_op_f32(step(939f, var_1.x)), _wgslsmith_f_op_f32(abs(var_1.x)), _wgslsmith_f_op_f32(round(121f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_1.x, var_1.x, -1644f), vec3<f32>(var_1.x, -1965f, var_1.x))))));
    return Struct_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_1.x - var_4.a.x), -1012f, _wgslsmith_f_op_f32(sign(var_1.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, var_4.a.x, var_1.x)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, var_1.x, var_1.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(1i);
    var var_1 = Struct_1(vec2<i32>(2147483647i, -2147483647i), u_input.a, func_4(vec4<u32>(~1u, firstLeadingBit(28314u) << (u_input.b % 32u), 27731u, ~u_input.a.x), func_4(vec4<u32>(_wgslsmith_mod_u32(6622u, u_input.b), 90614u, _wgslsmith_div_u32(u_input.b, u_input.b), u_input.b), Struct_1(vec2<i32>(-56144i, -2147483647i), func_4(vec4<u32>(u_input.a.x, 0u, u_input.a.x, u_input.b), Struct_1(global0[_wgslsmith_index_u32(4294967295u, 28u)], vec3<u32>(u_input.b, u_input.a.x, 1u), true), vec3<i32>(-5167i, -18846i, 88958i), vec2<bool>(false, true)).b, all(vec2<bool>(true, false))), vec3<i32>(1i, 1i, 1i) >> (u_input.a % vec3<u32>(32u)), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true))), _wgslsmith_clamp_vec3_i32(vec3<i32>(-61694i, _wgslsmith_add_i32(16369i, 31755i), ~(-17139i)), abs(_wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, 15788i, 1i), vec3<i32>(-1i, -24764i, -1i))), vec3<i32>(~17470i, 20983i, _wgslsmith_mod_i32(26757i, 62827i))), select(vec2<bool>(any(vec4<bool>(false, false, false, true)), true), vec2<bool>(true, true), true)).c);
    let var_2 = _wgslsmith_f_op_f32(var_0.a.x * -602f);
    var var_3 = Struct_1(~_wgslsmith_sub_vec2_i32(-vec2<i32>(-9635i, -2891i), global0[_wgslsmith_index_u32(1u, 28u)]), max(firstLeadingBit(var_1.b | ~u_input.a), func_4(reverseBits(vec4<u32>(29098u, var_1.b.x, u_input.a.x, u_input.b)), func_4(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, var_1.b.x), vec4<u32>(1u, u_input.a.x, var_1.b.x, var_1.b.x)), func_4(vec4<u32>(var_1.b.x, 4294967295u, u_input.a.x, 7533u), Struct_1(var_1.a, vec3<u32>(1u, 12661u, u_input.b), var_1.c), vec3<i32>(5413i, 0i, var_1.a.x), vec2<bool>(var_1.c, false)), -vec3<i32>(917i, var_1.a.x, 1i), select(vec2<bool>(false, true), vec2<bool>(var_1.c, var_1.c), true)), -(vec3<i32>(-1i, 40481i, var_1.a.x) >> (u_input.a % vec3<u32>(32u))), !select(vec2<bool>(false, true), vec2<bool>(var_1.c, true), false)).b), !(_wgslsmith_div_f32(var_0.a.x, _wgslsmith_div_f32(1747f, 1554f)) > 1000f));
    let var_4 = vec2<bool>(any(select(select(!vec4<bool>(var_3.c, var_3.c, var_1.c, false), select(vec4<bool>(var_3.c, var_1.c, true, var_1.c), vec4<bool>(false, var_1.c, false, false), vec4<bool>(false, var_3.c, true, var_3.c)), vec4<bool>(false, false, var_1.c, var_1.c)), vec4<bool>(all(vec3<bool>(var_1.c, false, var_1.c)), true, false, !var_1.c), vec4<bool>(var_1.c, !var_3.c, true, var_1.c))), any(!(!select(vec4<bool>(false, var_1.c, var_1.c, false), vec4<bool>(var_1.c, false, var_1.c, true), var_3.c))));
    let var_5 = ~(~1u | _wgslsmith_mod_u32(func_4(vec4<u32>(var_1.b.x, 4294967295u, var_3.b.x, 1854u), func_4(vec4<u32>(40157u, u_input.a.x, var_1.b.x, u_input.a.x), Struct_1(vec2<i32>(-2147483647i, var_3.a.x), var_3.b, var_4.x), vec3<i32>(var_3.a.x, 1i, 2147483647i), var_4), -vec3<i32>(1i, 0i, var_3.a.x), vec2<bool>(true, true)).b.x, var_3.b.x));
    global0 = array<vec2<i32>, 28>();
    var_1 = func_4(~vec4<u32>(5103u, abs(~9784u), ~u_input.a.x, ~(~84900u)), Struct_1(vec2<i32>(-17055i, var_1.a.x), u_input.a, var_3.c && !(!var_3.c)), firstLeadingBit(vec3<i32>(min(-32643i, var_3.a.x), -2147483647i, _wgslsmith_dot_vec2_i32(var_3.a, vec2<i32>(-1i, 2147483647i)))) & -vec3<i32>(var_1.a.x, ~var_1.a.x, _wgslsmith_div_i32(var_1.a.x, var_1.a.x)), vec2<bool>(var_1.c, false));
    let var_6 = var_0.a;
    let x = u_input.a;
    s_output = StorageBuffer(var_6.yx, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1358f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_2, var_0.a.x)) * var_0.a.x))), _wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(~var_1.a.x, var_3.a.x << (22816u % 32u), -1i), ~(vec3<i32>(-29053i, var_1.a.x, var_1.a.x) ^ vec3<i32>(var_1.a.x, 16038i, var_3.a.x))), -_wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, 2147483647i, -15250i), vec3<i32>(var_3.a.x, -29323i, -16286i) >> (u_input.a % vec3<u32>(32u)))));
}

