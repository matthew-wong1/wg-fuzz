struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: i32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: f32,
    c: f32,
    d: f32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec2<u32>,
    b: vec2<bool>,
    c: vec4<i32>,
    d: u32,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 10>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_4, arg_1: f32) -> u32 {
    let var_0 = arg_0;
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(409f, -641f)))), vec2<f32>(-1753f, global0[_wgslsmith_index_u32(~var_0.d, 10u)])) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(vec2<f32>(arg_1, -819f), vec2<f32>(arg_1, -1000f)))))));
    let var_2 = var_0.c.xzw;
    return 4294967295u;
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: f32) -> Struct_2 {
    let var_0 = vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_mult_i32(-14031i, 1i), ~(-_wgslsmith_div_i32(arg_1.c, -1i))), u_input.b << (((_wgslsmith_div_u32(arg_2.x, 1u) << (arg_2.x % 32u)) | (arg_2.x << (5103u % 32u))) % 32u), ~u_input.b, _wgslsmith_mod_i32(-59067i, _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(0i, 25335i, u_input.b), vec3<i32>(u_input.a, -8091i, u_input.b)), ~vec3<i32>(u_input.b, u_input.a, 0i)), vec3<i32>(arg_1.c, arg_1.c, u_input.b) | firstLeadingBit(vec3<i32>(arg_1.c, arg_1.c, -40382i)))));
    var var_1 = -2147483647i;
    var var_2 = arg_1.b.xz;
    var var_3 = ~_wgslsmith_mod_u32(min((arg_2.x | 109497u) >> (37837u % 32u), _wgslsmith_add_u32(_wgslsmith_sub_u32(arg_2.x, 4294967295u), ~0u)), func_3(Struct_4(vec2<u32>(41923u, arg_2.x), select(vec2<bool>(arg_1.a, true), arg_1.b.xz, arg_1.b.xy), var_0, _wgslsmith_add_u32(1u, 0u), Struct_1(false, arg_1.b, 0i)), _wgslsmith_f_op_f32(f32(-1f) * -546f)));
    global0 = array<f32, 10>();
    return Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(1u, 10u)], _wgslsmith_f_op_f32(floor(935f)), -848f, _wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(3435u, 10u)]))))), global0[_wgslsmith_index_u32(~(~1u), 10u)], global0[_wgslsmith_index_u32(54109u, 10u)], _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1598f * _wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(0u, 10u)], 401f)))))));
}

fn func_4(arg_0: i32, arg_1: Struct_2) -> u32 {
    var var_0 = vec4<i32>(31821i | ~_wgslsmith_mult_i32(2147483647i, arg_0), 1i, 19351i, -arg_0) & (vec4<i32>(-1i) * -firstTrailingBit(vec4<i32>(1i, -59572i, 13296i, 0i)));
    var var_1 = Struct_3(Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_1.a.x), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(65582u, 10u)] * 628f), _wgslsmith_f_op_f32(arg_1.d * global0[_wgslsmith_index_u32(1u, 10u)]), global0[_wgslsmith_index_u32(1u, 10u)]) + arg_1.a), 1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(4294967295u, 10u)] + global0[_wgslsmith_index_u32(func_3(Struct_4(vec2<u32>(103656u, 23269u), vec2<bool>(false, true), vec4<i32>(u_input.b, -49644i, var_0.x, -113099i), 1u, Struct_1(false, vec3<bool>(true, false, false), var_0.x)), 1283f), 10u)]) * func_2(u_input.a <= arg_0, Struct_1(true, vec3<bool>(true, true, false), arg_0), ~vec4<u32>(135080u, 4294967295u, 0u, 0u), -990f).b), 665f));
    var_0 = ~vec4<i32>(1501i, 84108i, i32(-1i) * -1i, abs(arg_0 >> (1085u % 32u)));
    let var_2 = _wgslsmith_f_op_vec3_f32(-var_1.a.a.yyy);
    var var_3 = Struct_3(func_2(true, Struct_1(true, select(select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false)), vec3<bool>(true, true, true), vec3<bool>(false, true, true)), ~arg_0), firstTrailingBit(vec4<u32>(1u, ~1u, 1u, _wgslsmith_mod_u32(42436u, 4294967295u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 10u)]))) - var_1.a.c)));
    return 1581u;
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: bool) -> f32 {
    global0 = array<f32, 10>();
    var var_0 = select(vec3<bool>(all(select(arg_0, arg_0, true)) == (all(vec4<bool>(arg_0.x, arg_2, false, arg_1.a)) && !arg_0.x), arg_2, ((i32(-1i) * -6621i) <= (arg_1.c & u_input.a)) || (~1u < _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, 4294967295u, 101492u), vec4<u32>(41211u, 1u, 1u, 0u)))), vec3<bool>(!(arg_1.c >= 27585i), false, firstLeadingBit(_wgslsmith_div_u32(32289u, 81656u)) >= func_4(-32794i, func_2(false, arg_1, vec4<u32>(1u, 72690u, 49191u, 21621u), -1368f))), vec3<bool>(false, !arg_1.a, false));
    var var_1 = Struct_1(true, select(!select(vec3<bool>(arg_2, true, var_0.x), select(arg_1.b, arg_1.b, arg_0.zzy), vec3<bool>(arg_0.x, false, true)), vec3<bool>(var_0.x, !any(vec4<bool>(arg_1.b.x, false, arg_0.x, true)), true), true), -2147483647i);
    let var_2 = Struct_1(arg_2, arg_1.b, arg_1.c);
    let var_3 = max(min(vec2<i32>(_wgslsmith_mod_i32(_wgslsmith_mod_i32(23975i, u_input.b), 1i), var_2.c), select(vec2<i32>(var_1.c | var_1.c, -1i), vec2<i32>(abs(arg_1.c), _wgslsmith_clamp_i32(0i, 7894i, -2147483647i)), !arg_2)), ~(-(vec2<i32>(arg_1.c, 11076i) & vec2<i32>(0i, -2147483647i)) | vec2<i32>(max(8502i, var_2.c), var_2.c)));
    return _wgslsmith_f_op_f32(-2053f * _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(77220u, 10u)] * -1000f));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 10>();
    let var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(0u, 10u)] - -412f), _wgslsmith_f_op_f32(func_1(vec4<bool>(true, false, false, false), Struct_1(true, vec3<bool>(false, false, false), 1i), false)), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(36110u, 0u, 4294967295u, 4294967295u), vec4<u32>(2565u, 0u, 1u, 6266u)), 10u)], global0[_wgslsmith_index_u32(~4294967295u, 10u)]), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-823f, global0[_wgslsmith_index_u32(0u, 10u)], -400f, global0[_wgslsmith_index_u32(0u, 10u)]))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(476f, global0[_wgslsmith_index_u32(4294967295u, 10u)], global0[_wgslsmith_index_u32(0u, 10u)], global0[_wgslsmith_index_u32(0u, 10u)])), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(45848u, 10u)], global0[_wgslsmith_index_u32(1u, 10u)], -370f, 568f))))), global0[_wgslsmith_index_u32(func_3(Struct_4(firstTrailingBit(reverseBits(vec2<u32>(0u, 15296u))), !select(vec2<bool>(true, true), vec2<bool>(true, false), false), -_wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, 11327i, -37702i, u_input.a), vec4<i32>(1765i, 54083i, -2147483647i, 0i), vec4<i32>(1i, 0i, 18393i, u_input.a)), _wgslsmith_mod_u32(~69376u, ~1u), Struct_1(true, vec3<bool>(false, true, true), 2723i)), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(1u, 1u)), vec2<u32>(1u, 1u)), 10u)]), 10u)], _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 10u)]), func_2(false, Struct_1(true, vec3<bool>(true, any(vec3<bool>(false, false, true)), true), -1i), max(countOneBits(vec4<u32>(0u, 50997u, 1u, 31021u)), vec4<u32>(~82161u, _wgslsmith_div_u32(0u, 6517u), ~3031u, 1u)), global0[_wgslsmith_index_u32(~abs(~4294967295u), 10u)]).b);
    var var_1 = _wgslsmith_f_op_f32(-1354f + 1168f);
    var_1 = _wgslsmith_f_op_f32(max(-145f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(-1102f * global0[_wgslsmith_index_u32(6782u, 10u)]))) + global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), ~vec2<u32>(4294967295u, 0u)), 10u)])));
    global0 = array<f32, 10>();
    var var_2 = firstLeadingBit(~(~_wgslsmith_add_i32(u_input.b, u_input.a))) & u_input.b;
    var_2 = u_input.a << (countOneBits(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 1u), select(vec2<u32>(82431u, 120285u), vec2<u32>(4294967295u, 4294967295u), vec2<bool>(false, true)), vec2<u32>(1u, 1u)), vec2<u32>(1u, 1u))) % 32u);
    let var_3 = Struct_3(func_2(true != (false || select(false, false, true)), Struct_1(true, select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), false), any(vec3<bool>(false, false, false))), min(1i, 12567i)), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(~20223u, 4294967295u, firstLeadingBit(3723u), 1u)), -1003f));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_3.a.b, -148f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.a.a.x - -297f) + 1047f)), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(50707u, 45196u), 10u)]), vec3<i32>(-(_wgslsmith_sub_i32(10563i, 70743i) ^ u_input.b), u_input.a, ~_wgslsmith_mod_i32(i32(-1i) * -23307i, u_input.a)), u_input.a);
}

