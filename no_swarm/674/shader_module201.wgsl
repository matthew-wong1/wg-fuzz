struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: f32,
    d: i32,
    e: vec4<f32>,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
    d: u32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 23>;

var<private> global1: array<bool, 7> = array<bool, 7>(false, true, false, false, true, true, false);

var<private> global2: array<i32, 4>;

var<private> global3: u32;

var<private> global4: f32 = -405f;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec4<u32>, arg_2: Struct_1) -> vec2<bool> {
    var var_0 = Struct_3(global1[_wgslsmith_index_u32(11517u, 7u)], global2[_wgslsmith_index_u32(14905u, 4u)], 1f, 25215i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 720f, 1835f, -212f) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1152f, -547f, -597f, 420f)))))));
    var var_1 = Struct_2(arg_0);
    let var_2 = firstTrailingBit(max(vec4<i32>(min(_wgslsmith_mod_i32(-2147483647i, global2[_wgslsmith_index_u32(31418u, 4u)]), 1i), _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.b, 0i, global2[_wgslsmith_index_u32(1u, 4u)], -2147483647i), vec4<i32>(38912i, var_0.b, var_0.d, global2[_wgslsmith_index_u32(0u, 4u)])), 0i, -40908i), max(select(-vec4<i32>(global2[_wgslsmith_index_u32(arg_1.x, 4u)], 2147483647i, global2[_wgslsmith_index_u32(u_input.a.x, 4u)], global2[_wgslsmith_index_u32(0u, 4u)]), vec4<i32>(var_0.b, var_0.d, var_0.d, 10539i), select(vec4<bool>(var_0.a, var_1.a.x, global1[_wgslsmith_index_u32(1340u, 7u)], false), vec4<bool>(true, arg_0.x, var_0.a, false), var_1.a.x)), vec4<i32>(max(global2[_wgslsmith_index_u32(31610u, 4u)], var_0.b), global2[_wgslsmith_index_u32(firstTrailingBit(u_input.b.x), 4u)], _wgslsmith_add_i32(global2[_wgslsmith_index_u32(1u, 4u)], -1i), 18889i))));
    var var_3 = var_0.d;
    let var_4 = var_0.e;
    return vec2<bool>(!any(select(select(arg_0, arg_0, vec3<bool>(false, false, false)), vec3<bool>(var_1.a.x, global1[_wgslsmith_index_u32(arg_1.x, 7u)], true), arg_0)), ~u_input.a.x > ~_wgslsmith_div_u32(_wgslsmith_div_u32(arg_1.x, u_input.b.x), _wgslsmith_clamp_u32(u_input.b.x, u_input.a.x, u_input.a.x)));
}

fn func_2(arg_0: bool, arg_1: vec2<u32>, arg_2: vec3<u32>, arg_3: u32) -> i32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(521f, -1949f) + vec2<f32>(-743f, -783f)) + vec2<f32>(1971f, -609f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -744f) + vec2<f32>(1434f, 360f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1179f, -765f) * vec2<f32>(1170f, 674f)) + vec2<f32>(392f, -780f))))));
    var var_1 = Struct_1(func_3(!(!(!vec3<bool>(true, arg_0, global1[_wgslsmith_index_u32(125284u, 7u)]))), _wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(~u_input.b, vec4<u32>(arg_2.x, arg_1.x, 0u, u_input.a.x) & vec4<u32>(arg_1.x, arg_1.x, arg_2.x, 4042u), u_input.b), u_input.b ^ min(u_input.b, u_input.b)), Struct_1(vec2<bool>(true, true))));
    global1 = array<bool, 7>();
    var var_2 = vec4<u32>(~reverseBits(_wgslsmith_dot_vec4_u32(u_input.b, u_input.b)), min(_wgslsmith_add_u32(27095u, ~(~arg_2.x)), ~abs(u_input.b.x & 4294967295u)), ~countOneBits(u_input.b.x), ~(~_wgslsmith_dot_vec4_u32(~u_input.b, vec4<u32>(arg_1.x, arg_2.x, arg_1.x, arg_3))));
    let var_3 = Struct_1(vec2<bool>(any(select(select(vec2<bool>(true, global1[_wgslsmith_index_u32(arg_3, 7u)]), vec2<bool>(global1[_wgslsmith_index_u32(0u, 7u)], var_1.a.x), global1[_wgslsmith_index_u32(u_input.a.x, 7u)]), vec2<bool>(true, true), select(var_1.a, vec2<bool>(false, global1[_wgslsmith_index_u32(11676u, 7u)]), vec2<bool>(false, true)))), false));
    return 2147483647i;
}

fn func_4(arg_0: i32) -> vec3<i32> {
    global2 = array<i32, 4>();
    global0 = array<Struct_4, 23>();
    var var_0 = select(vec3<bool>(any(vec4<bool>(true, select(false, global1[_wgslsmith_index_u32(u_input.b.x, 7u)], global1[_wgslsmith_index_u32(54177u, 7u)]), false, true)), any(select(select(vec3<bool>(false, global1[_wgslsmith_index_u32(1u, 7u)], global1[_wgslsmith_index_u32(u_input.b.x, 7u)]), vec3<bool>(global1[_wgslsmith_index_u32(1u, 7u)], false, false), vec3<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 7u)], global1[_wgslsmith_index_u32(0u, 7u)], global1[_wgslsmith_index_u32(73433u, 7u)])), !vec3<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 7u)], true, global1[_wgslsmith_index_u32(46795u, 7u)]), any(vec4<bool>(false, global1[_wgslsmith_index_u32(0u, 7u)], global1[_wgslsmith_index_u32(4294967295u, 7u)], global1[_wgslsmith_index_u32(u_input.a.x, 7u)])))), !all(!vec2<bool>(false, global1[_wgslsmith_index_u32(u_input.b.x, 7u)]))), vec3<bool>(false, !(global1[_wgslsmith_index_u32(~21469u, 7u)] && true), any(!vec2<bool>(false, global1[_wgslsmith_index_u32(4647u, 7u)])) != !(!global1[_wgslsmith_index_u32(u_input.b.x, 7u)])), max(firstLeadingBit(u_input.a.x ^ 43463u), 4294967295u) < ~(~_wgslsmith_div_u32(4294967295u, u_input.a.x)));
    var var_1 = Struct_2(select(vec3<bool>(true, var_0.x, var_0.x), select(vec3<bool>(!global1[_wgslsmith_index_u32(u_input.a.x, 7u)], !global1[_wgslsmith_index_u32(1u, 7u)], true), vec3<bool>(any(var_0.yx), var_0.x, true), var_0.x), !var_0.x));
    global2 = array<i32, 4>();
    return abs(select(vec3<i32>(_wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(85955i, arg_0)), ~vec2<i32>(-12208i, 53945i)), -max(28561i, arg_0), -1i), ~(~firstLeadingBit(vec3<i32>(global2[_wgslsmith_index_u32(u_input.b.x, 4u)], 38811i, -2147483647i))), var_0.x));
}

fn func_1(arg_0: vec2<i32>, arg_1: f32, arg_2: Struct_2, arg_3: bool) -> vec3<i32> {
    var var_0 = 2138f;
    var var_1 = -vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.x, global2[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.b.x, 0u), 4u)], arg_0.x), vec3<i32>(402i, global2[_wgslsmith_index_u32(0u, 4u)] >> (22003u % 32u), _wgslsmith_mult_i32(arg_0.x, 45400i))), ~(-4864i), -44286i);
    var_1 = -func_4(func_2(!arg_3, _wgslsmith_mod_vec2_u32(countOneBits(vec2<u32>(41644u, 35542u)), ~u_input.b.wx), vec3<u32>(1u, 0u, ~u_input.b.x), reverseBits(firstTrailingBit(21017u))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 * -1190f));
    var var_3 = ~54271u;
    return vec3<i32>(_wgslsmith_div_i32(arg_0.x, _wgslsmith_mod_i32(var_1.x, -_wgslsmith_mult_i32(arg_0.x, arg_0.x))), var_1.x, abs(var_1.x));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = _wgslsmith_f_op_f32(f32(-1f) * -160f);
    global0 = array<Struct_4, 23>();
    var var_0 = min(reverseBits(-vec3<i32>(_wgslsmith_add_i32(global2[_wgslsmith_index_u32(1u, 4u)], -48943i), ~global2[_wgslsmith_index_u32(1u, 4u)], abs(30477i))), max(_wgslsmith_sub_vec3_i32(func_1(firstLeadingBit(vec2<i32>(global2[_wgslsmith_index_u32(u_input.b.x, 4u)], 34013i)), -494f, Struct_2(vec3<bool>(true, true, true)), false), min(vec3<i32>(-2177i, -18823i, global2[_wgslsmith_index_u32(90401u, 4u)]) >> (u_input.b.yzy % vec3<u32>(32u)), vec3<i32>(global2[_wgslsmith_index_u32(13667u, 4u)], global2[_wgslsmith_index_u32(u_input.b.x, 4u)], 0i) & vec3<i32>(2470i, global2[_wgslsmith_index_u32(u_input.b.x, 4u)], global2[_wgslsmith_index_u32(1u, 4u)]))), vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_mod_i32(global2[_wgslsmith_index_u32(u_input.a.x, 4u)], -16714i), global2[_wgslsmith_index_u32(0u, 4u)]), 2147483647i, abs(1i))));
    var var_1 = select(func_3(vec3<bool>(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.b.yw, u_input.a.xx), 7u)], u_input.a.x >= 39814u, !global1[_wgslsmith_index_u32(25877u, 7u)]), select(vec4<u32>(u_input.b.x, 41816u, u_input.a.x, 20929u), u_input.b, true), Struct_1(vec2<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 7u)], global1[_wgslsmith_index_u32(u_input.a.x, 7u)]))).x || any(vec3<bool>(true, true, true)), global1[_wgslsmith_index_u32(~select(u_input.a.x, ~1u | firstLeadingBit(u_input.a.x), true), 7u)], false);
    global4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1315f)));
    global3 = _wgslsmith_clamp_u32(u_input.a.x, 9685u, ~(~(~4294967295u)));
    var var_2 = global0[_wgslsmith_index_u32(0u, 23u)];
    let var_3 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1209f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2952f - -1464f)))))));
    var var_4 = var_2.a;
    let x = u_input.a;
    s_output = StorageBuffer(-global2[_wgslsmith_index_u32(u_input.b.x, 4u)], 1i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_3, -919f))), countOneBits(u_input.a.x & _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 46739u, u_input.a.x), ~u_input.a)), vec4<i32>(1i, 1i, countOneBits(global2[_wgslsmith_index_u32(u_input.b.x, 4u)]) | 1i, ~global2[_wgslsmith_index_u32(0u, 4u)]) & (vec4<i32>(-1i) * -vec4<i32>(2147483647i, var_0.x, var_0.x, 60566i)));
}

