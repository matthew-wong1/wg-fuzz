struct Struct_1 {
    a: vec3<f32>,
    b: vec4<i32>,
    c: i32,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 15> = array<i32, 15>(17601i, 37223i, -1i, -4401i, 40905i, -1i, -39166i, 0i, 21437i, i32(-2147483648), 26788i, i32(-2147483648), -1i, 1i, 0i);

var<private> global1: u32;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: f32) -> u32 {
    global1 = firstTrailingBit(countOneBits(min(min(abs(4294967295u), ~1u), 1u)));
    let var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-259f, arg_0.a.x, arg_0.a.x) + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(arg_0.a.x)), arg_0.a.x, arg_1)))));
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(step(var_0, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-149f, -303f, arg_1)))))), ~vec4<i32>(_wgslsmith_div_i32(_wgslsmith_div_i32(u_input.c, arg_0.c), u_input.a), _wgslsmith_add_i32(u_input.a, global0[_wgslsmith_index_u32(34243u, 15u)]) ^ global0[_wgslsmith_index_u32(countOneBits(29735u), 15u)], ~arg_0.c >> (~4294967295u % 32u), _wgslsmith_sub_i32(abs(global0[_wgslsmith_index_u32(3426u, 15u)]), 2147483647i)), -1i, _wgslsmith_add_i32(arg_0.d, u_input.a));
    var_1 = Struct_1(var_1.a, select(select(~vec4<i32>(u_input.c, 1629i, u_input.a, u_input.b.x), var_1.b, select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true), false), select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true), false), any(vec4<bool>(true, true, true, true)))), firstTrailingBit(vec4<i32>(-2429i, _wgslsmith_sub_i32(var_1.d, arg_0.d), -1i, global0[_wgslsmith_index_u32(4294967295u, 15u)] << (64595u % 32u))), !all(select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), true))), _wgslsmith_add_i32(_wgslsmith_clamp_i32(_wgslsmith_sub_i32(global0[_wgslsmith_index_u32(1u, 15u)] >> (30168u % 32u), 69549i), ~abs(-1i), ~global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(79158u, 13076u), 15u)]), _wgslsmith_mod_i32(i32(-1i) * -2147483647i, global0[_wgslsmith_index_u32(firstLeadingBit(1u), 15u)])), arg_0.c);
    global1 = 48441u;
    return firstLeadingBit(_wgslsmith_mult_u32(firstLeadingBit(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(10156u, 4294967295u, 4294967295u, 1u), vec4<u32>(18194u, 1u, 4294967295u, 0u)), _wgslsmith_add_u32(0u, 4294967295u))), _wgslsmith_dot_vec3_u32(~vec3<u32>(4192u, 4808u, 56218u), vec3<u32>(~68224u, ~0u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 6941u, 1u, 37996u), vec4<u32>(9432u, 0u, 4294u, 1u))))));
}

fn func_2(arg_0: u32, arg_1: Struct_1) -> Struct_1 {
    let var_0 = select(~(_wgslsmith_add_i32(arg_1.c, -u_input.d.x) ^ 1i), select(0i, -countOneBits(global0[_wgslsmith_index_u32(22784u, 15u)]), -arg_1.b.x >= u_input.c) ^ 1i, true);
    let var_1 = ~1u;
    global1 = arg_0;
    global1 = func_3(arg_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(arg_1.a.x, 338f))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.x))));
    var var_2 = vec2<i32>(-1i, _wgslsmith_add_i32(_wgslsmith_sub_i32(-65871i, 1i), _wgslsmith_div_i32(34696i, _wgslsmith_mult_i32(firstTrailingBit(58080i), ~2147483647i))));
    return Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(arg_1.a.x, arg_1.a.x), 397f, 1032f)), arg_1.b, -18606i, -2147483647i);
}

fn func_4(arg_0: f32, arg_1: vec2<f32>, arg_2: vec4<f32>, arg_3: Struct_1) -> f32 {
    var var_0 = all(select(select(vec3<bool>(all(vec3<bool>(false, true, false)), true, any(vec3<bool>(true, false, true))), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), true), true), vec3<bool>(true, true, true), !(!select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), true))));
    global1 = ~(~abs(_wgslsmith_sub_u32(18211u, 1u)));
    let var_1 = 76626u;
    var var_2 = vec4<u32>(abs(firstLeadingBit(1u)), 90840u, _wgslsmith_mod_u32(var_1, func_3(Struct_1(arg_3.a, arg_3.b << (vec4<u32>(var_1, 36765u, 4294967295u, var_1) % vec4<u32>(32u)), ~global0[_wgslsmith_index_u32(1u, 15u)], abs(arg_3.d)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(605f - arg_3.a.x))))), _wgslsmith_dot_vec3_u32(vec3<u32>(firstTrailingBit(max(4294967295u, 4294967295u)), _wgslsmith_add_u32(~var_1, 5128u << (var_1 % 32u)), 1u), max(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(51857u, 4294967295u, var_1), vec3<u32>(49988u, 25022u, var_1)), _wgslsmith_dot_vec2_u32(vec2<u32>(var_1, var_1), vec2<u32>(4294967295u, 0u)), 45889u), ~(~vec3<u32>(var_1, 1u, 31631u)))));
    global0 = array<i32, 15>();
    return arg_1.x;
}

fn func_1(arg_0: bool) -> f32 {
    let var_0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(func_4(1f, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-671f, -1000f)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(693f, -1226f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-761f, 437f, 1140f, 371f)), func_2(~78642u, Struct_1(vec3<f32>(-532f, 1430f, 942f), vec4<i32>(-2431i, global0[_wgslsmith_index_u32(14145u, 15u)], 23591i, 58025i), global0[_wgslsmith_index_u32(90152u, 15u)], u_input.c)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-990f * -703f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -462f)) * 1485f)), _wgslsmith_add_vec4_i32(vec4<i32>(~_wgslsmith_dot_vec2_i32(u_input.b, vec2<i32>(u_input.a, global0[_wgslsmith_index_u32(4294967295u, 15u)])), -firstLeadingBit(-26549i), -1i, u_input.d.x), firstTrailingBit(firstLeadingBit(-vec4<i32>(2147483647i, global0[_wgslsmith_index_u32(0u, 15u)], -26108i, 2147483647i)))), 0i, 0i);
    let var_1 = firstLeadingBit(vec4<u32>(~1u, ~(~_wgslsmith_mod_u32(27766u, 86919u)), _wgslsmith_div_u32(reverseBits(88919u), 1u), ~reverseBits(_wgslsmith_sub_u32(4294967295u, 0u))));
    global0 = array<i32, 15>();
    let var_2 = Struct_1(var_0.a, _wgslsmith_sub_vec4_i32(countOneBits(vec4<i32>(~2147483647i, u_input.a, ~1i, ~1i)), vec4<i32>(-(~u_input.c), global0[_wgslsmith_index_u32(var_1.x, 15u)], firstTrailingBit(-8178i) | reverseBits(global0[_wgslsmith_index_u32(var_1.x, 15u)]), _wgslsmith_sub_i32(global0[_wgslsmith_index_u32(var_1.x, 15u)] & 7603i, 1i))), global0[_wgslsmith_index_u32(var_1.x, 15u)] ^ -2147483647i, 47403i);
    let var_3 = 1i;
    return var_0.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec3<f32>(215f, _wgslsmith_f_op_f32(func_1(true)), _wgslsmith_f_op_f32(func_4(-1294f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-351f, -264f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(155f, -417f, 182f, -2063f))) + vec4<f32>(1632f, 1000f, -1199f, -133f)), func_2(abs(4619u), Struct_1(vec3<f32>(-901f, 703f, 412f), vec4<i32>(u_input.d.x, 0i, u_input.a, -57592i), -25418i, global0[_wgslsmith_index_u32(0u, 15u)]))))), -_wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(18827i, global0[_wgslsmith_index_u32(0u, 15u)], u_input.d.x, u_input.d.x), ~vec4<i32>(1i, 2147483647i, -13816i, -16240i)), ~(-vec4<i32>(global0[_wgslsmith_index_u32(9232u, 15u)], u_input.a, global0[_wgslsmith_index_u32(34436u, 15u)], global0[_wgslsmith_index_u32(0u, 15u)]))), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, max(_wgslsmith_sub_i32(global0[_wgslsmith_index_u32(66053u, 15u)], -49179i), global0[_wgslsmith_index_u32(~26206u, 15u)]), u_input.a, countOneBits(0i)), select(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.c, 2147483647i, u_input.d.x, global0[_wgslsmith_index_u32(1685u, 15u)]), vec4<i32>(u_input.d.x, -11316i, u_input.a, u_input.c) ^ vec4<i32>(-19325i, global0[_wgslsmith_index_u32(108916u, 15u)], global0[_wgslsmith_index_u32(58188u, 15u)], u_input.b.x)), -vec4<i32>(global0[_wgslsmith_index_u32(4294967295u, 15u)], global0[_wgslsmith_index_u32(72559u, 15u)], -37649i, 40952i), vec4<bool>(true, any(vec2<bool>(false, true)), true, true))), _wgslsmith_dot_vec3_i32(func_2(1u, func_2(0u, Struct_1(vec3<f32>(-1472f, 323f, 500f), vec4<i32>(-2147483647i, 26025i, global0[_wgslsmith_index_u32(5333u, 15u)], -1i), 1i, global0[_wgslsmith_index_u32(0u, 15u)]))).b.wzx << (~vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u)), abs(vec3<i32>(max(-4025i, -1i), global0[_wgslsmith_index_u32(1u, 15u)], _wgslsmith_dot_vec2_i32(u_input.b, u_input.d)))));
    var var_1 = _wgslsmith_dot_vec4_i32(~(-(~vec4<i32>(-30495i, -1i, u_input.b.x, -2147483647i)) << (~(~vec4<u32>(4294967295u, 25879u, 28220u, 19895u)) % vec4<u32>(32u))), ~reverseBits(countOneBits(firstTrailingBit(var_0.b))));
    var var_2 = vec2<bool>(all(select(!select(vec2<bool>(true, true), vec2<bool>(true, true), false), select(vec2<bool>(true, true), vec2<bool>(true, true), true), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true)))), !all(select(select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true)), vec3<bool>(false, false, false), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), true))));
    let var_3 = vec3<u32>(53712u, ~_wgslsmith_dot_vec2_u32(max(~vec2<u32>(5341u, 6478u), firstTrailingBit(vec2<u32>(134670u, 61858u))), vec2<u32>(_wgslsmith_div_u32(1u, 51420u), firstTrailingBit(4294967295u))), ~_wgslsmith_add_u32(1u, ~1u));
    var var_4 = var_2.x;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(var_0.b.xx));
}

