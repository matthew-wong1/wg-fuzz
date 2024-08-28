struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: vec2<u32>,
    d: f32,
    e: u32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: i32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 32>;

var<private> global1: array<vec3<i32>, 9> = array<vec3<i32>, 9>(vec3<i32>(-14537i, 2147483647i, i32(-2147483648)), vec3<i32>(i32(-2147483648), -18048i, -10612i), vec3<i32>(-11612i, 0i, -38057i), vec3<i32>(-7385i, 2147483647i, 0i), vec3<i32>(17596i, -58458i, -24536i), vec3<i32>(28239i, 1i, 19428i), vec3<i32>(2147483647i, 0i, 4045i), vec3<i32>(-1i, 34641i, -1i), vec3<i32>(-31853i, -37573i, i32(-2147483648)));

var<private> global2: array<vec4<bool>, 32> = array<vec4<bool>, 32>(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false));

var<private> global3: array<Struct_1, 7>;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: Struct_2) -> Struct_2 {
    global1 = array<vec3<i32>, 9>();
    var var_0 = arg_2;
    let var_1 = !global2[_wgslsmith_index_u32(1u, 32u)];
    var var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_1.yxx * vec3<f32>(-793f, arg_0.d, -754f))))) + vec3<f32>(arg_1.x, arg_1.x, 883f)), vec3<f32>(_wgslsmith_f_op_f32(arg_0.d * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_0.d)) - _wgslsmith_f_op_f32(f32(-1f) * -778f))), arg_0.d, 1f));
    var var_3 = Struct_1(arg_0.a, true, _wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(firstLeadingBit(arg_0.c) ^ ~vec2<u32>(0u, 16423u), ~vec2<u32>(u_input.a.x, 4294967295u)), arg_0.c, arg_0.c), -1186f, ~reverseBits(47865u));
    return arg_2;
}

fn func_3(arg_0: Struct_2, arg_1: i32, arg_2: bool) -> i32 {
    global0 = array<i32, 32>();
    let var_0 = arg_0;
    global0 = array<i32, 32>();
    global2 = array<vec4<bool>, 32>();
    var var_1 = var_0;
    return -var_1.b;
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: bool) -> i32 {
    var var_0 = func_2(Struct_1(vec3<bool>(arg_0.b == true, false || any(arg_0.a), all(vec2<bool>(false, arg_0.a.x))), arg_2 & (18914u != max(u_input.a.x, arg_0.e)), vec2<u32>(_wgslsmith_add_u32(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, arg_0.e), arg_0.c)), _wgslsmith_div_u32(22300u, firstTrailingBit(5555u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.d) - -346f), firstLeadingBit(~arg_0.c.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_0.d, arg_0.d, 1701f, arg_0.d))))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.d, 846f, arg_0.d, arg_0.d) + vec4<f32>(arg_0.d, arg_0.d, -2305f, arg_0.d)), vec4<f32>(-919f, arg_0.d, arg_0.d, 1117f))))), func_2(Struct_1(arg_0.a, true, vec2<u32>(0u, select(23613u, arg_0.c.x, arg_2)), _wgslsmith_f_op_f32(f32(-1f) * -602f), arg_0.e | _wgslsmith_mult_u32(arg_0.e, 0u)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(608f, -997f, 780f, -658f) * vec4<f32>(arg_0.d, arg_0.d, -534f, arg_0.d)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-732f, 1378f, arg_0.d, arg_0.d))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1373f, 325f, 293f, arg_0.d)))))), Struct_2(!func_2(Struct_1(arg_0.a, arg_2, vec2<u32>(51481u, arg_0.c.x), 2520f, arg_0.e), vec4<f32>(-1000f, -657f, arg_0.d, arg_0.d), Struct_2(arg_0.a.zz, 2147483647i)).a, -_wgslsmith_add_i32(global0[_wgslsmith_index_u32(50285u, 32u)], -7414i))));
    var var_1 = vec4<u32>(arg_0.e, ~(0u << (arg_0.e % 32u)), countOneBits(4294967295u), 4294967295u);
    let var_2 = _wgslsmith_dot_vec2_u32(u_input.a, max(var_1.xw, vec2<u32>(_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(u_input.a.x, arg_0.e, var_1.x, 68667u)), ~vec4<u32>(8990u, 26966u, 1u, 0u)), ~arg_0.c.x)));
    var var_3 = (_wgslsmith_mod_i32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(arg_0.e, 33268u), vec2<u32>(arg_0.e, arg_0.c.x)), _wgslsmith_mod_vec2_u32(var_1.zw, vec2<u32>(var_2, 72754u))), 32u)], global0[_wgslsmith_index_u32(~(~var_1.x), 32u)]) & -45890i) & abs(_wgslsmith_mult_i32(var_0.b, reverseBits(var_0.b)) >> (u_input.a.x % 32u));
    let var_4 = _wgslsmith_mod_vec2_i32(~_wgslsmith_mod_vec2_i32(_wgslsmith_mult_vec2_i32(-vec2<i32>(var_0.b, arg_1), select(vec2<i32>(0i, 1i), vec2<i32>(-40461i, global0[_wgslsmith_index_u32(var_2, 32u)]), vec2<bool>(arg_2, arg_0.a.x))), ~firstTrailingBit(vec2<i32>(-2147483647i, arg_1))), vec2<i32>(1i, countOneBits(arg_1) << (_wgslsmith_sub_u32(abs(arg_0.c.x), u_input.a.x) % 32u)));
    return -var_0.b;
}

fn func_1(arg_0: vec3<u32>, arg_1: u32) -> bool {
    global0 = array<i32, 32>();
    global1 = array<vec3<i32>, 9>();
    let var_0 = _wgslsmith_f_op_f32(round(635f));
    let var_1 = func_4(Struct_1(vec3<bool>(true, true | all(vec2<bool>(true, true)), true), true, ~vec2<u32>(~4294967295u, arg_1), _wgslsmith_f_op_f32(625f - _wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(1000f - var_0)))), ~(arg_1 >> (_wgslsmith_add_u32(arg_0.x, arg_0.x) % 32u))), abs(_wgslsmith_mult_i32(func_3(func_2(global3[_wgslsmith_index_u32(40528u, 7u)], vec4<f32>(var_0, var_0, var_0, 1478f), Struct_2(vec2<bool>(true, false), global0[_wgslsmith_index_u32(30595u, 32u)])), i32(-1i) * -2147483647i, false), ~global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, arg_0.x, 1u, u_input.a.x), vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, u_input.a.x)), 32u)])), true);
    let var_2 = vec2<i32>(max(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(-vec2<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 32u)], 6733i), -vec2<i32>(680i, global0[_wgslsmith_index_u32(18002u, 32u)])), firstTrailingBit(min(-2147483647i, 11739i))), _wgslsmith_dot_vec3_i32(~global1[_wgslsmith_index_u32(17435u, 9u)] << (vec3<u32>(9342u, 1u, 118405u) % vec3<u32>(32u)), global1[_wgslsmith_index_u32(~1u, 9u)])), global0[_wgslsmith_index_u32(arg_1, 32u)]);
    return !(21753u > reverseBits(_wgslsmith_mult_u32(~u_input.a.x, ~arg_1)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global3[_wgslsmith_index_u32(firstTrailingBit(u_input.a.x), 7u)];
    global2 = array<vec4<bool>, 32>();
    let var_1 = _wgslsmith_f_op_f32(ceil(-1029f));
    var var_2 = global3[_wgslsmith_index_u32(var_0.e, 7u)];
    global1 = array<vec3<i32>, 9>();
    var var_3 = Struct_2(!select(!var_2.a.xy, vec2<bool>(false && var_2.a.x, func_1(vec3<u32>(20035u, u_input.a.x, 0u), var_2.e)), false), _wgslsmith_dot_vec4_i32(vec4<i32>(~firstLeadingBit(global0[_wgslsmith_index_u32(var_0.e, 32u)]), -2147483647i, global0[_wgslsmith_index_u32(min(~var_2.e, _wgslsmith_sub_u32(32573u, 0u)), 32u)], global0[_wgslsmith_index_u32(4294967295u, 32u)]), vec4<i32>(global0[_wgslsmith_index_u32(countOneBits(1u), 32u)], ~_wgslsmith_dot_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(1u, 32u)], -2147483647i), vec2<i32>(-1539i, global0[_wgslsmith_index_u32(4294967295u, 32u)])), _wgslsmith_dot_vec3_i32(abs(global1[_wgslsmith_index_u32(1u, 9u)]), ~global1[_wgslsmith_index_u32(3479u, 9u)]), _wgslsmith_add_i32(_wgslsmith_mult_i32(-1i, global0[_wgslsmith_index_u32(var_2.c.x, 32u)]), _wgslsmith_dot_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(0u, 32u)], -2147483647i), vec2<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 32u)], global0[_wgslsmith_index_u32(87175u, 32u)]))))));
    var var_4 = ~(_wgslsmith_mult_u32(_wgslsmith_sub_u32(~53730u, 4990u), u_input.a.x) ^ abs(~u_input.a.x));
    var_3 = Struct_2(vec2<bool>(_wgslsmith_div_f32(-943f, var_0.d) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_2.d, 283f))), !(~4294967295u > ~var_2.c.x)), _wgslsmith_mod_i32(firstLeadingBit(select(2147483647i, var_3.b, false)) ^ _wgslsmith_sub_i32(11626i, abs(global0[_wgslsmith_index_u32(u_input.a.x, 32u)])), -_wgslsmith_dot_vec3_i32(vec3<i32>(var_3.b, 2147483647i, var_3.b) << (vec3<u32>(0u, u_input.a.x, var_0.c.x) % vec3<u32>(32u)), countOneBits(vec3<i32>(-2147483647i, global0[_wgslsmith_index_u32(var_0.e, 32u)], var_3.b)))));
    global1 = array<vec3<i32>, 9>();
    let x = u_input.a;
    s_output = StorageBuffer(~var_0.c, ~(-abs(vec3<i32>(2700i, var_3.b, var_3.b))), -1i, ~(~(~_wgslsmith_clamp_vec3_u32(vec3<u32>(var_0.c.x, var_2.c.x, var_2.e), vec3<u32>(5614u, 90070u, u_input.a.x), vec3<u32>(12749u, 57204u, u_input.a.x)))));
}

