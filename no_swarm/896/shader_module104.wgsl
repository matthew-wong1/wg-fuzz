struct Struct_1 {
    a: u32,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec2<i32>, 17>;

var<private> global2: array<vec4<bool>, 22> = array<vec4<bool>, 22>(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true));

var<private> global3: vec4<i32>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> bool {
    let var_0 = Struct_1(global0.a, global0.b);
    let var_1 = global0.b;
    let var_2 = var_0;
    global1 = array<vec2<i32>, 17>();
    global1 = array<vec2<i32>, 17>();
    return global3.x == -2147483647i;
}

fn func_4(arg_0: bool, arg_1: vec2<bool>, arg_2: vec2<f32>) -> bool {
    var var_0 = Struct_1(firstLeadingBit(global0.a), _wgslsmith_f_op_f32(f32(-1f) * -549f));
    let var_1 = !select(vec3<bool>(true, true, true), !select(!vec3<bool>(false, arg_0, true), vec3<bool>(true, false, true), !vec3<bool>(true, arg_1.x, true)), vec3<bool>(false, !arg_0, select(arg_1.x, arg_1.x, arg_0) | arg_0));
    var var_2 = !(!any(select(vec2<bool>(false, true), arg_1, true)));
    var var_3 = -44580i;
    let var_4 = Struct_1(~(~6520u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(arg_2.x)), _wgslsmith_f_op_f32(select(arg_2.x, -1339f, arg_0)), all(vec3<bool>(arg_1.x, true, true)))))));
    return true;
}

fn func_2(arg_0: vec3<f32>, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: u32) -> bool {
    let var_0 = _wgslsmith_dot_vec3_u32(vec3<u32>(abs(~u_input.b), ~_wgslsmith_add_u32(8051u, global0.a), arg_2.a) << (vec3<u32>(91457u, ~_wgslsmith_add_u32(arg_2.a, u_input.b), _wgslsmith_add_u32(global0.a, 1u)) % vec3<u32>(32u)), ~vec3<u32>(_wgslsmith_div_u32(10094u, global0.a), global0.a, 20627u) & ~_wgslsmith_mult_vec3_u32(vec3<u32>(1u, arg_3, global0.a), ~vec3<u32>(global0.a, arg_2.a, 14628u)));
    global0 = arg_2;
    global0 = arg_2;
    let var_1 = _wgslsmith_f_op_f32(ceil(-376f));
    return func_4(false, select(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false)), true), vec2<bool>(false, func_3()), all(select(global2[_wgslsmith_index_u32(63869u, 22u)], vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false)))), arg_0.xy) != true;
}

fn func_5(arg_0: f32, arg_1: vec4<bool>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(1u, _wgslsmith_f_op_f32(-1087f + 921f));
    return Struct_1(_wgslsmith_add_u32(0u | u_input.b, min(~countOneBits(64294u), _wgslsmith_dot_vec2_u32(~vec2<u32>(23615u, 0u), vec2<u32>(1u, 53726u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(448f, arg_2.b))));
}

fn func_1(arg_0: i32, arg_1: bool, arg_2: Struct_1) -> Struct_1 {
    global1 = array<vec2<i32>, 17>();
    global0 = func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(936f, _wgslsmith_f_op_f32(-arg_2.b))) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(435f, arg_2.b)))))), !vec4<bool>(true, false, select(true, arg_1, true) & true, func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.b, -423f, arg_2.b) - vec3<f32>(1822f, arg_2.b, arg_2.b)), vec4<i32>(global3.x, arg_0, 0i, 0i), Struct_1(4294967295u, -980f), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, global0.a), vec2<u32>(u_input.b, 0u)))), Struct_1(arg_2.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1309f)) + arg_2.b), global0.b)));
    global3 = vec4<i32>(global3.x, -1500i, -(~(~1i)), arg_0);
    var var_0 = !select(!(!vec3<bool>(true, true, arg_1)), vec3<bool>(true & (16878i != arg_0), arg_1 == arg_1, !func_2(vec3<f32>(-185f, arg_2.b, global0.b), vec4<i32>(u_input.a, u_input.a, arg_0, 0i), Struct_1(u_input.b, 511f), u_input.b)), select(!select(vec3<bool>(true, false, arg_1), vec3<bool>(arg_1, arg_1, true), vec3<bool>(arg_1, false, arg_1)), select(vec3<bool>(arg_1, false, arg_1), vec3<bool>(false, true, arg_1), arg_1), true));
    let var_1 = 40741i;
    return Struct_1(arg_2.a, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-685f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(526f + arg_2.b), _wgslsmith_f_op_f32(trunc(global0.b))))) * 538f));
}

fn func_6(arg_0: vec3<f32>, arg_1: Struct_1) -> vec3<f32> {
    let var_0 = global0.a;
    global1 = array<vec2<i32>, 17>();
    var var_1 = vec2<bool>(func_4(true, !(!select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(arg_0.yz)))))), all(select(!select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false)), !select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true)), true)));
    global2 = array<vec4<bool>, 22>();
    global2 = array<vec4<bool>, 22>();
    return _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b) - func_1(-1i, var_1.x, Struct_1(44941u, arg_1.b)).b), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.x - arg_1.b), _wgslsmith_f_op_f32(-584f + -652f)), -1007f)), arg_0));
}

fn func_7(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: bool) -> vec4<i32> {
    global2 = array<vec4<bool>, 22>();
    global2 = array<vec4<bool>, 22>();
    let var_0 = func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1423f + _wgslsmith_f_op_f32(-global0.b)) - _wgslsmith_f_op_f32(f32(-1f) * -591f)), global2[_wgslsmith_index_u32(~reverseBits(global0.a), 22u)], Struct_1(~(0u & u_input.b), -163f));
    let var_1 = arg_0;
    var var_2 = true;
    return select(vec4<i32>(u_input.a, select(u_input.a, _wgslsmith_dot_vec2_i32(global1[_wgslsmith_index_u32(0u, 17u)], global3.xw), arg_2) | -2147483647i, _wgslsmith_mod_i32(0i, ~2147483647i) >> (1u % 32u), u_input.a), max(~max(max(vec4<i32>(global3.x, global3.x, 2147483647i, global3.x), vec4<i32>(-4364i, global3.x, 23647i, u_input.a)), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, -2147483647i, 25763i, -11188i), vec4<i32>(global3.x, u_input.a, 1i, -2147483647i))), -vec4<i32>(global3.x, firstTrailingBit(global3.x), global3.x, ~u_input.a)), select(global2[_wgslsmith_index_u32(28049u, 22u)], !vec4<bool>(func_3(), arg_2, arg_2, false), select(vec4<bool>(true, true, true, true), !(!vec4<bool>(arg_2, arg_2, true, arg_2)), !global2[_wgslsmith_index_u32(u_input.b << (60549u % 32u), 22u)])));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = _wgslsmith_sub_vec4_i32(func_7(Struct_1(reverseBits(1u), _wgslsmith_f_op_f32(f32(-1f) * -964f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b, global0.b, global0.b))) - _wgslsmith_f_op_vec3_f32(func_6(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-294f, global0.b, global0.b)), func_1(global3.x, false, Struct_1(4294967295u, -614f))))), all(select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec3<bool>(false, true, false))))), vec4<i32>(-1i) * -select(countOneBits(vec4<i32>(2147483647i, 1i, u_input.a, -1i)), -vec4<i32>(u_input.a, 2147483647i, -1284i, u_input.a), true));
    global3 = vec4<i32>(1i, global3.x, -(_wgslsmith_dot_vec2_i32(~vec2<i32>(-2147483647i, 1i), select(vec2<i32>(0i, global3.x), global3.xw, vec2<bool>(true, false))) << (~max(global0.a, global0.a) % 32u)), -19255i);
    var var_0 = firstTrailingBit(global3.x);
    global3 = _wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(select(-global3.x, ~(-46227i), true), u_input.a, abs(~u_input.a), _wgslsmith_dot_vec3_i32(-vec3<i32>(1332i, 54466i, 0i), global3.xwz)), _wgslsmith_mod_vec4_i32(-_wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, 1i, global3.x, 2147483647i), vec4<i32>(-2147483647i, u_input.a, -33586i, -23312i)), abs(vec4<i32>(global3.x, -30428i, -34485i, 2459i)) & ~vec4<i32>(global3.x, 1i, -36430i, 0i))), vec4<i32>(-abs(_wgslsmith_sub_i32(0i, -2147483647i)), u_input.a, max(select(~3791i, -1i, true), (i32(-1i) * -2147483647i) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(global0.a, 1621u, global0.a, 0u), vec4<u32>(u_input.b, u_input.b, 4294967295u, u_input.b)) % 32u)), _wgslsmith_add_i32(_wgslsmith_clamp_i32(67575i, -1i, global3.x) ^ ~global3.x, firstTrailingBit(select(global3.x, 26080i, true)))));
    var var_1 = func_5(global0.b, vec4<bool>(!func_3(), true, func_3(), true), func_1(-u_input.a, 46111u >= ~abs(global0.a), Struct_1(global0.a, _wgslsmith_f_op_f32(-global0.b))));
    let x = u_input.a;
    s_output = StorageBuffer(~max(~vec3<u32>(4294967295u, var_1.a, u_input.b), min(reverseBits(vec3<u32>(global0.a, 4294967295u, u_input.b)), _wgslsmith_add_vec3_u32(vec3<u32>(1u, global0.a, var_1.a), vec3<u32>(var_1.a, var_1.a, u_input.b)))), select(~var_1.a, 1u, func_3() && any(vec3<bool>(true, true, true))));
}

