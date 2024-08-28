struct Struct_1 {
    a: vec4<u32>,
    b: vec3<bool>,
    c: u32,
    d: u32,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: bool,
    d: u32,
    e: bool,
}

struct Struct_3 {
    a: bool,
    b: vec4<f32>,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: u32,
    b: Struct_4,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<f32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 15>;

var<private> global1: array<vec2<bool>, 6>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec2<bool>, arg_1: bool, arg_2: Struct_4, arg_3: vec2<i32>) -> vec2<i32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(935f, _wgslsmith_f_op_f32(ceil(209f)))), _wgslsmith_f_op_f32(f32(-1f) * -842f))))));
    global0 = array<vec4<u32>, 15>();
    var var_1 = arg_2;
    var_1 = Struct_4(arg_2.a);
    var var_2 = _wgslsmith_dot_vec4_u32(global0[_wgslsmith_index_u32(~var_1.a.a.x & 0u, 15u)], global0[_wgslsmith_index_u32(45194u | ~(~52488u | ~var_1.a.d), 15u)]);
    return _wgslsmith_clamp_vec2_i32(arg_3, countOneBits(_wgslsmith_add_vec2_i32(vec2<i32>(~u_input.b, _wgslsmith_mod_i32(arg_3.x, u_input.a)), -arg_3)), arg_3);
}

fn func_4(arg_0: vec2<i32>, arg_1: i32, arg_2: vec4<u32>, arg_3: Struct_2) -> f32 {
    global1 = array<vec2<bool>, 6>();
    var var_0 = _wgslsmith_f_op_f32(ceil(-334f));
    let var_1 = ~min(arg_3.d, arg_3.d);
    global0 = array<vec4<u32>, 15>();
    let var_2 = -58382i;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1165f)) - 1513f), _wgslsmith_f_op_f32(453f * _wgslsmith_f_op_f32(sign(-173f))), false))) - 1057f);
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_3, arg_2: f32) -> vec2<bool> {
    var var_0 = Struct_2(~(-70949i), ~_wgslsmith_mult_u32(24688u, arg_0.x), arg_1.a, arg_0.x, !(any(vec2<bool>(true, true)) && !arg_1.a));
    global1 = array<vec2<bool>, 6>();
    var var_1 = Struct_1(select(~abs(_wgslsmith_div_vec4_u32(vec4<u32>(38067u, 24099u, 68699u, 23780u), global0[_wgslsmith_index_u32(7005u, 15u)])), ~vec4<u32>(1u, ~1u, countOneBits(875u), arg_0.x), vec4<bool>(true, true, true, (arg_0.x | arg_0.x) < var_0.b)), select(!vec3<bool>(arg_1.a, false, true), !(!vec3<bool>(true, true, arg_1.a)), !select(!vec3<bool>(true, arg_1.a, arg_1.a), vec3<bool>(var_0.c, true, true), true)), _wgslsmith_add_u32(~(~0u), 98937u), 4294967295u & reverseBits(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(arg_0, arg_0), ~vec3<u32>(var_0.b, 4294967295u, var_0.d))));
    var var_2 = 1818f;
    global0 = array<vec4<u32>, 15>();
    return vec2<bool>(select(any(global1[_wgslsmith_index_u32(firstTrailingBit(4294967295u), 6u)]), !(all(vec4<bool>(false, var_0.e, var_0.e, var_0.c)) & var_1.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_2, 1495f, var_1.b.x)) - -794f) <= 789f), false);
}

fn func_2(arg_0: bool) -> Struct_3 {
    var var_0 = u_input.a;
    global1 = array<vec2<bool>, 6>();
    global1 = array<vec2<bool>, 6>();
    var_0 = -u_input.a;
    global0 = array<vec4<u32>, 15>();
    return Struct_3(any(func_5(vec3<u32>(_wgslsmith_mod_u32(77126u, 22468u), 1u, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 69245u), vec2<u32>(0u, 97079u))), Struct_3(true, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1360f, 1342f, 1002f, 790f))), _wgslsmith_f_op_f32(func_4(func_3(global1[_wgslsmith_index_u32(4294967295u, 6u)], arg_0, Struct_4(Struct_1(global0[_wgslsmith_index_u32(1u, 15u)], vec3<bool>(true, arg_0, false), 52446u, 0u)), vec2<i32>(-41846i, 2147483647i)), firstTrailingBit(u_input.a), global0[_wgslsmith_index_u32(reverseBits(71809u), 15u)], Struct_2(u_input.a, 4889u, arg_0, 0u, arg_0))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(1427f)), _wgslsmith_div_f32(-1754f, 1015f), 167f, _wgslsmith_f_op_f32(307f * -1117f))) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(249f, -190f, -594f, 1752f))))))));
}

fn func_6(arg_0: i32, arg_1: Struct_1, arg_2: Struct_3) -> Struct_2 {
    var var_0 = arg_2.b.x;
    let var_1 = ~arg_0;
    let var_2 = arg_2;
    let var_3 = i32(-1i) * -var_1;
    return Struct_2(_wgslsmith_mod_i32(i32(-1i) * -2147483647i, var_3), 54376u, (!(arg_1.c != 0u) && select(!arg_1.b.x, select(arg_2.a, var_2.a, arg_1.b.x), var_2.a)) && true, 0u, true == (arg_1.a.x <= arg_1.c));
}

fn func_1() -> i32 {
    var var_0 = func_6(u_input.b, Struct_1(vec4<u32>(~(~4294967295u), abs(abs(0u)), _wgslsmith_div_u32(12560u, 1u), reverseBits(0u)), vec3<bool>(true, true, true), 1u, ~4294967295u), func_2(any(global1[_wgslsmith_index_u32(1u, 6u)])));
    let var_1 = _wgslsmith_f_op_f32(min(345f, 1149f));
    global0 = array<vec4<u32>, 15>();
    var var_2 = Struct_3(all(!vec4<bool>(select(var_0.e, false, var_0.e), var_1 <= 515f, !var_0.e, all(global1[_wgslsmith_index_u32(4294967295u, 6u)]))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1000f, var_1, 664f, -294f), vec4<f32>(var_1, 1424f, var_1, var_1)))) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-106f, var_1, 188f, var_1), vec4<f32>(var_1, -482f, var_1, var_1))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-410f, -332f, -545f, var_1), vec4<f32>(var_1, -1801f, var_1, -535f)))))))));
    let var_3 = Struct_5(_wgslsmith_dot_vec2_u32(countOneBits(~(~vec2<u32>(90398u, 1u))), ~(~(vec2<u32>(0u, 19627u) << (vec2<u32>(0u, 0u) % vec2<u32>(32u))))), Struct_4(Struct_1(vec4<u32>(8338u, var_0.b, var_0.d, var_0.b), vec3<bool>(true | var_2.a, true, true), var_0.b, 76238u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_2.b.x, var_1, -885f), vec3<f32>(-696f, var_2.b.x, var_2.b.x)) - vec3<f32>(var_1, var_2.b.x, var_2.b.x)), _wgslsmith_f_op_vec3_f32(sign(var_2.b.xzy)), vec3<bool>(true, true, true))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(-var_1), 1848f) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_2.b.wxw + vec3<f32>(var_2.b.x, var_1, var_1))))));
    return _wgslsmith_mult_i32(var_0.a, var_0.a) >> (var_0.d % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<i32>(-u_input.b << (21780u % 32u), -(~(-1i)), _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(func_1(), ~14571i), -1i, -_wgslsmith_mod_i32(0i, -1i)), _wgslsmith_mult_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(u_input.b, 23480i, 21798i), -_wgslsmith_sub_vec3_i32(vec3<i32>(0i, 42457i, 2147483647i), vec3<i32>(1i, u_input.b, -1i)))));
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(-652f, _wgslsmith_f_op_f32(984f * -446f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -317f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1781f, 483f)) - 365f))));
    let var_2 = vec2<bool>(all(vec4<bool>(true, true, !(var_1.x < var_1.x), all(vec2<bool>(true, true)))), true);
    var_0 = _wgslsmith_mod_vec3_i32(select(min(~(~vec3<i32>(u_input.a, u_input.b, u_input.b)), vec3<i32>(countOneBits(u_input.a), -35286i, -46589i)), max(abs(-vec3<i32>(u_input.b, var_0.x, var_0.x)), max(~vec3<i32>(-43495i, u_input.a, var_0.x), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a, u_input.a, var_0.x), vec3<i32>(-1i, 1i, var_0.x), vec3<i32>(u_input.a, u_input.b, 53060i)))), true), vec3<i32>(-var_0.x, 1i, -reverseBits(0i)));
    var var_3 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(957f, var_1.x, 629f) + vec3<f32>(var_1.x, var_1.x, var_1.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1792f, 450f, var_1.x) * vec3<f32>(var_1.x, 538f, 372f)))))));
    var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(843f))), -1000f);
    let var_4 = ~(~(-1i));
    var_0 = vec3<i32>(-_wgslsmith_add_i32(2147483647i, -(i32(-1i) * -2147483647i)), -7166i, firstLeadingBit(u_input.b));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~_wgslsmith_add_u32(~1u, 1u), ~_wgslsmith_mod_u32(40783u, 1u), abs(~func_6(46787i, Struct_1(vec4<u32>(4294967295u, 0u, 6590u, 0u), vec3<bool>(true, false, var_2.x), 4294967295u, 1u), Struct_3(false, vec4<f32>(608f, var_3.x, var_1.x, var_1.x))).b), _wgslsmith_mult_u32(_wgslsmith_mult_u32(0u, 7876u), 1u)), vec3<f32>(var_3.x, -978f, var_1.x), abs(global0[_wgslsmith_index_u32(4544u, 15u)]));
}

