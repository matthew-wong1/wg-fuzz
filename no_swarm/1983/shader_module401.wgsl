struct Struct_1 {
    a: vec4<bool>,
    b: vec4<f32>,
    c: f32,
    d: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<f32>,
    c: vec3<u32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 30> = array<f32, 30>(-1000f, -1794f, -229f, 980f, 838f, 478f, -1875f, 626f, -556f, -696f, 1110f, -629f, -1212f, -1563f, -1101f, -1000f, 992f, -442f, 246f, -242f, -629f, 328f, 769f, 641f, 1181f, 573f, -1136f, 640f, 448f, -1262f);

var<private> global1: u32;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: f32) -> bool {
    let var_0 = Struct_1(vec4<bool>(false == any(vec3<bool>(true, true, true)), true, true, false), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 30u)], 1015f, arg_0, -1354f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, global0[_wgslsmith_index_u32(1u, 30u)], global0[_wgslsmith_index_u32(0u, 30u)], arg_0) + vec4<f32>(250f, -1284f, -2255f, -1593f))))), global0[_wgslsmith_index_u32(~(~1u), 30u)], 1i);
    global1 = ~11650u;
    var var_1 = vec3<i32>(var_0.d, 8590i, 8957i);
    var var_2 = Struct_1(var_0.a, vec4<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.b.x, 114f, false))) + 887f), _wgslsmith_f_op_f32(round(arg_0)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + -269f)), var_0.c))), _wgslsmith_f_op_f32(f32(-1f) * -1600f), _wgslsmith_clamp_i32(var_1.x >> (1u % 32u), var_1.x, 1i) << (abs(_wgslsmith_mod_u32(59790u, ~38234u)) % 32u));
    let var_3 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(-420f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(-1076f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1000f)) * var_2.c)))));
    return true;
}

fn func_3(arg_0: vec4<i32>) -> u32 {
    var var_0 = -(~u_input.a) | _wgslsmith_mult_i32(u_input.a ^ reverseBits(arg_0.x), 20860i);
    global1 = abs(1u);
    var var_1 = Struct_1(vec4<bool>(!select(true, any(vec3<bool>(true, false, false)), any(vec2<bool>(false, true))), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u, 1u), vec3<u32>(1u, 1u, 0u)) <= 36561u, any(select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), true)), all(vec3<bool>(true, any(vec4<bool>(false, true, true, true)), any(vec2<bool>(false, false))))), vec4<f32>(470f, 1205f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~1u, 30u)]), 1079f), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~abs(vec2<u32>(12791u, 0u)), _wgslsmith_mult_vec2_u32(vec2<u32>(1u, 1u), ~vec2<u32>(1u, 20734u))), 30u)] * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(241f + global0[_wgslsmith_index_u32(94590u, 30u)])) - -2519f)), -_wgslsmith_mult_i32(min(firstTrailingBit(-26395i), ~arg_0.x), arg_0.x));
    var_1 = Struct_1(select(select(select(select(vec4<bool>(true, var_1.a.x, false, false), vec4<bool>(var_1.a.x, false, true, true), true), select(vec4<bool>(false, false, var_1.a.x, var_1.a.x), var_1.a, var_1.a.x), func_2(global0[_wgslsmith_index_u32(0u, 30u)])), vec4<bool>(all(var_1.a.xx), var_1.a.x, false, true), all(var_1.a.xyx)), !vec4<bool>(var_1.a.x || var_1.a.x, var_1.a.x, true, var_1.a.x), var_1.a.x), var_1.b, 1062f, _wgslsmith_div_i32(-var_1.d, arg_0.x));
    global1 = 40559u;
    return ~0u;
}

fn func_1(arg_0: Struct_1, arg_1: vec4<i32>) -> Struct_1 {
    let var_0 = Struct_1(!select(arg_0.a, vec4<bool>(false, false, false, arg_0.a.x | true), func_2(global0[_wgslsmith_index_u32(1u, 30u)])), vec4<f32>(_wgslsmith_f_op_f32(-arg_0.b.x), _wgslsmith_f_op_f32(arg_0.b.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -192f))), arg_0.c, -747f), _wgslsmith_f_op_f32(arg_0.b.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(835f, arg_0.c))))), ~u_input.a);
    var var_1 = 1u;
    global1 = _wgslsmith_mod_u32(~_wgslsmith_mult_u32(func_3(_wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, -28790i, arg_0.d, 2147483647i), vec4<i32>(var_0.d, u_input.a, arg_0.d, u_input.a))), 109355u), ~1u);
    var var_2 = arg_0;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(807f - var_0.b.x));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(Struct_1(vec4<bool>(true, true, true, true), _wgslsmith_f_op_vec4_f32(-vec4<f32>(552f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(58823u, 30u)]), -470f, 274f)), global0[_wgslsmith_index_u32(~(~1u), 30u)], _wgslsmith_mult_i32(u_input.a << (54564u % 32u), -2147483647i) | u_input.a), vec4<i32>(abs(0i), 2147483647i, -_wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, 39766i), vec3<i32>(u_input.a, u_input.a, u_input.a)), 1i, -18244i), 5404i & ~(-u_input.a)));
    var var_1 = func_1(func_1(func_1(Struct_1(select(vec4<bool>(true, false, false, var_0.a.x), vec4<bool>(var_0.a.x, true, true, true), true), _wgslsmith_div_vec4_f32(var_0.b, var_0.b), _wgslsmith_f_op_f32(round(var_0.b.x)), _wgslsmith_mod_i32(u_input.a, -2147483647i)), min(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, 2147483647i, -2147483647i, u_input.a), vec4<i32>(-1i, 1i, -33220i, -16678i)), countOneBits(vec4<i32>(1i, u_input.a, var_0.d, var_0.d)))), vec4<i32>(-35026i, max(-7487i, var_0.d) & -u_input.a, 21343i, -func_1(Struct_1(var_0.a, vec4<f32>(global0[_wgslsmith_index_u32(41859u, 30u)], -826f, global0[_wgslsmith_index_u32(1u, 30u)], -285f), var_0.c, 11288i), vec4<i32>(u_input.a, 0i, var_0.d, var_0.d)).d)), ~(-vec4<i32>(0i << (1u % 32u), u_input.a, u_input.a << (5235u % 32u), -11253i)));
    let var_2 = _wgslsmith_div_f32(var_0.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(154f)) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0[_wgslsmith_index_u32(1u, 30u)], 573f))), -647f));
    global1 = 1u << (_wgslsmith_dot_vec4_u32(vec4<u32>(~(~70627u), 4294967295u, _wgslsmith_div_u32(0u, 1u), firstLeadingBit(1u)), ~select(vec4<u32>(0u, 0u, 1u, 0u), select(vec4<u32>(1u, 0u, 0u, 0u), vec4<u32>(11286u, 74370u, 24470u, 0u), var_0.a.x), func_1(Struct_1(vec4<bool>(var_1.a.x, var_1.a.x, false, true), vec4<f32>(-222f, 165f, -1670f, 904f), -987f, u_input.a), vec4<i32>(var_1.d, 2147483647i, 0i, var_1.d)).a)) % 32u);
    var var_3 = vec4<bool>(var_1.a.x, true, (0u & _wgslsmith_clamp_u32(1u, 1u, 4294967295u)) <= ~_wgslsmith_add_u32(~4294967295u, _wgslsmith_clamp_u32(4294967295u, 17849u, 1u)), !(var_0.a.x || false));
    global1 = _wgslsmith_clamp_u32(_wgslsmith_add_u32(func_3(vec4<i32>(abs(var_0.d), _wgslsmith_add_i32(var_1.d, -2147483647i), var_1.d, abs(-1i))), 0u), ~1u, max(81902u, 0u));
    var var_4 = vec4<i32>(_wgslsmith_div_i32(u_input.a, i32(-1i) * -(~var_1.d)), abs(abs(u_input.a)), -1i, -39676i >> (func_3((vec4<i32>(var_0.d, 30821i, var_0.d, -2147483647i) ^ vec4<i32>(-1i, u_input.a, -1i, 54285i)) << (~vec4<u32>(57297u, 52842u, 10366u, 1u) % vec4<u32>(32u))) % 32u));
    var var_5 = vec4<f32>(var_1.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_2, 152f)) + func_1(Struct_1(vec4<bool>(false, var_3.x, false, true), var_1.b, global0[_wgslsmith_index_u32(17575u, 30u)], -13211i), ~vec4<i32>(0i, var_0.d, 14037i, var_1.d)).b.x) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(1000f)), var_2)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(31209u, 53476u), 30u)], _wgslsmith_f_op_f32(max(-279f, -1000f))), _wgslsmith_f_op_f32(ceil(-1000f)))), var_2);
    var var_6 = var_4.ww;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, _wgslsmith_mod_u32(~3331u, ~51398u)), ~vec2<u32>(firstTrailingBit(6452u), ~1u)), func_1(Struct_1(select(vec4<bool>(true, false, false, false), !var_0.a, select(var_0.a, var_1.a, vec4<bool>(true, var_0.a.x, var_1.a.x, var_0.a.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(382f, global0[_wgslsmith_index_u32(3843u, 30u)], -1366f, var_5.x) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_1.b.x, var_5.x, -1068f, -1002f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_5.x + var_5.x) - -889f), -23641i), _wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-32425i, 14317i, 1i, u_input.a), vec4<i32>(var_4.x, var_6.x, -1i, 65974i)), ~vec4<i32>(-43284i, 2147483647i, u_input.a, -32324i)), vec4<i32>(firstLeadingBit(var_6.x), -13160i, u_input.a | -1660i, ~var_1.d))).b.zyw, _wgslsmith_mod_vec3_u32(~abs(abs(vec3<u32>(69317u, 1u, 9053u))), max(~(~vec3<u32>(39451u, 0u, 1u)), vec3<u32>(1u, 1u, 1u))), ~select(_wgslsmith_mult_vec2_u32(~vec2<u32>(17407u, 78566u), _wgslsmith_clamp_vec2_u32(vec2<u32>(13256u, 0u), vec2<u32>(4294967295u, 27477u), vec2<u32>(38527u, 28826u))), countOneBits(vec2<u32>(29143u, 4294967295u)), func_1(Struct_1(var_1.a, var_1.b, -1019f, 3057i), -vec4<i32>(36178i, var_4.x, var_6.x, -2147483647i)).a.yw));
}

