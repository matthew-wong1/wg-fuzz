struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 2>;

var<private> global1: array<f32, 1>;

var<private> global2: array<Struct_2, 17> = array<Struct_2, 17>(Struct_2(true), Struct_2(true), Struct_2(false), Struct_2(false), Struct_2(false), Struct_2(false), Struct_2(false), Struct_2(false), Struct_2(true), Struct_2(false), Struct_2(false), Struct_2(true), Struct_2(false), Struct_2(true), Struct_2(false), Struct_2(false), Struct_2(false));

var<private> global3: array<vec2<f32>, 27> = array<vec2<f32>, 27>(vec2<f32>(273f, 1674f), vec2<f32>(-408f, 252f), vec2<f32>(472f, -850f), vec2<f32>(-893f, 162f), vec2<f32>(115f, -228f), vec2<f32>(1118f, 1047f), vec2<f32>(337f, -721f), vec2<f32>(3243f, -590f), vec2<f32>(438f, -1550f), vec2<f32>(652f, -745f), vec2<f32>(-1012f, -591f), vec2<f32>(-1558f, 1546f), vec2<f32>(-688f, -127f), vec2<f32>(173f, -115f), vec2<f32>(-971f, -756f), vec2<f32>(1378f, 1169f), vec2<f32>(382f, 453f), vec2<f32>(2886f, 322f), vec2<f32>(1372f, -1000f), vec2<f32>(1000f, 1110f), vec2<f32>(117f, 348f), vec2<f32>(-347f, 1063f), vec2<f32>(1472f, -688f), vec2<f32>(-161f, -379f), vec2<f32>(580f, -456f), vec2<f32>(1126f, 724f), vec2<f32>(218f, -274f));

var<private> global4: array<vec3<bool>, 28> = array<vec3<bool>, 28>(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> u32 {
    global1 = array<f32, 1>();
    var var_0 = countOneBits(-max(abs(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), u_input.a.zz)), vec2<i32>(u_input.a.x, 0i)));
    var var_1 = ~_wgslsmith_mod_i32(var_0.x << (~_wgslsmith_mod_u32(1u, 27886u) % 32u), u_input.a.x);
    global1 = array<f32, 1>();
    global0 = array<i32, 2>();
    return firstLeadingBit(~_wgslsmith_div_u32(_wgslsmith_clamp_u32(4294967295u, 84821u, 4294967295u) << (_wgslsmith_sub_u32(1u, 1u) % 32u), ~2030u));
}

fn func_2() -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1406f, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(max(78857u, 0u), 1u)]))) + 1f);
    var var_1 = _wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(abs(global0[_wgslsmith_index_u32(1u, 2u)] ^ -15301i), global0[_wgslsmith_index_u32(~0u & func_3(), 2u)]), -2147483647i), u_input.a.yx);
    let var_2 = 1u;
    let var_3 = _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(abs(var_2), 1u)] - -1208f) > global1[_wgslsmith_index_u32(0u, 1u)];
    var var_4 = reverseBits(_wgslsmith_mult_u32(countOneBits(~(~var_2)), abs(1u)));
    return Struct_2(any(vec4<bool>(!(var_3 && false), var_3, true, true)));
}

fn func_4(arg_0: Struct_2, arg_1: u32) -> u32 {
    global3 = array<vec2<f32>, 27>();
    var var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(_wgslsmith_add_u32(~arg_1, 26009u), 1u)])))));
    let var_1 = _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1, 1u, arg_1, 69778u), ~_wgslsmith_add_vec4_u32(vec4<u32>(arg_1, arg_1, 29536u, 4294967295u), _wgslsmith_mult_vec4_u32(vec4<u32>(arg_1, 45889u, arg_1, arg_1), vec4<u32>(arg_1, arg_1, 68036u, arg_1)))), ~1u);
    let var_2 = 1405f;
    global1 = array<f32, 1>();
    return arg_1;
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_4, arg_2: vec2<u32>, arg_3: Struct_1) -> vec3<i32> {
    let var_0 = _wgslsmith_mod_i32(abs(u_input.a.x), global0[_wgslsmith_index_u32(countOneBits(arg_2.x | 64132u), 2u)]) ^ global0[_wgslsmith_index_u32(~(func_4(func_2(), _wgslsmith_sub_u32(arg_1.a, arg_2.x)) << (_wgslsmith_div_u32(4294967295u ^ arg_2.x, 14492u) % 32u)), 2u)];
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.x, 1000f, -445f, arg_0.x), vec4<f32>(-1275f, arg_0.x, 1002f, global1[_wgslsmith_index_u32(arg_1.a, 1u)])))), arg_0))));
    let var_2 = _wgslsmith_f_op_vec3_f32(ceil(var_1.xwx));
    let var_3 = true;
    var var_4 = all(select(vec4<bool>(false, !(true & var_3), true, !all(vec4<bool>(var_3, var_3, false, true))), !select(select(vec4<bool>(var_3, var_3, false, false), vec4<bool>(arg_3.a.x, false, var_3, arg_3.a.x), vec4<bool>(false, arg_3.a.x, false, false)), select(vec4<bool>(true, true, false, arg_3.a.x), vec4<bool>(var_3, true, arg_3.a.x, true), vec4<bool>(var_3, false, var_3, true)), !vec4<bool>(false, arg_3.a.x, true, var_3)), !var_3));
    return _wgslsmith_add_vec3_i32(u_input.a.ywy, vec3<i32>(u_input.a.x, firstLeadingBit(var_0), abs(~_wgslsmith_dot_vec4_i32(u_input.a, u_input.a))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec2<f32>, 27>();
    global3 = array<vec2<f32>, 27>();
    let var_0 = Struct_2(all(vec2<bool>(true, true)));
    global1 = array<f32, 1>();
    var var_1 = min(vec3<i32>(firstTrailingBit(u_input.a.x ^ -2147483647i), u_input.a.x, u_input.a.x), abs(_wgslsmith_mod_vec3_i32(u_input.a.yzz & func_1(vec4<f32>(-1000f, 304f, -384f, global1[_wgslsmith_index_u32(84379u, 1u)]), Struct_4(61261u), vec2<u32>(4294967295u, 1u), Struct_1(vec2<bool>(var_0.a, var_0.a))), reverseBits(reverseBits(vec3<i32>(u_input.a.x, global0[_wgslsmith_index_u32(65655u, 2u)], u_input.a.x))))));
    let var_2 = vec3<u32>(_wgslsmith_mod_u32(func_3(), ~_wgslsmith_dot_vec3_u32(abs(vec3<u32>(1u, 4294967295u, 305u)), vec3<u32>(1u, 1u, 1u))), _wgslsmith_dot_vec2_u32(~(~select(vec2<u32>(0u, 35515u), vec2<u32>(0u, 0u), vec2<bool>(false, var_0.a))), min(vec2<u32>(1u, func_4(Struct_2(true), 64127u)), vec2<u32>(1u, 50272u))), _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(~_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 11450u), vec2<u32>(47927u, 32480u), vec2<u32>(4294967295u, 0u)), ~select(vec2<u32>(4294967295u, 51865u), vec2<u32>(0u, 4294967295u), true)), 4294967295u));
    let var_3 = ~vec2<u32>(_wgslsmith_sub_u32(~4294967295u, var_2.x), var_2.x);
    let var_4 = any(vec4<bool>(var_0.a, func_2().a, !var_0.a && var_0.a, !(!(!var_0.a))));
    global3 = array<vec2<f32>, 27>();
    let x = u_input.a;
    s_output = StorageBuffer(1f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(4294967295u, 1u)] - 158f))))), -u_input.a.x & (max(var_1.x, i32(-1i) * -87005i) | 0i), abs(firstLeadingBit(vec4<u32>(var_2.x, 8569u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(var_3.x, 0u)), ~var_3.x))));
}

