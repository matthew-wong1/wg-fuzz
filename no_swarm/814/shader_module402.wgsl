struct Struct_1 {
    a: u32,
    b: f32,
    c: u32,
    d: vec3<f32>,
    e: u32,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec4<i32>,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec2<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 30>;

var<private> global1: array<bool, 20>;

var<private> global2: array<vec2<u32>, 24> = array<vec2<u32>, 24>(vec2<u32>(39799u, 0u), vec2<u32>(34178u, 0u), vec2<u32>(1824u, 0u), vec2<u32>(36769u, 1u), vec2<u32>(84665u, 1u), vec2<u32>(31721u, 1u), vec2<u32>(1u, 66244u), vec2<u32>(1u, 4294967295u), vec2<u32>(0u, 4294967295u), vec2<u32>(4294967295u, 0u), vec2<u32>(1u, 34095u), vec2<u32>(23670u, 4294967295u), vec2<u32>(34034u, 1u), vec2<u32>(1u, 43745u), vec2<u32>(19560u, 4294967295u), vec2<u32>(4294967295u, 0u), vec2<u32>(27670u, 15289u), vec2<u32>(1524u, 0u), vec2<u32>(1u, 0u), vec2<u32>(35200u, 757u), vec2<u32>(1u, 4294967295u), vec2<u32>(4294967295u, 13130u), vec2<u32>(4294967295u, 37863u), vec2<u32>(25081u, 40218u));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_3) -> vec3<bool> {
    var var_0 = _wgslsmith_div_u32(4294967295u, 4294967295u);
    var var_1 = Struct_2(arg_0.a);
    var var_2 = vec4<u32>(~(~(~min(67382u, u_input.d.x))), u_input.d.x, reverseBits(_wgslsmith_dot_vec4_u32(~_wgslsmith_div_vec4_u32(vec4<u32>(arg_1.a.x, u_input.b, u_input.b, arg_1.a.x), vec4<u32>(97863u, u_input.e.x, 21672u, 25652u)), countOneBits(vec4<u32>(arg_1.a.x, 14993u, 12520u, 17278u)))), arg_1.a.x);
    var_0 = u_input.b;
    var var_3 = arg_1.b.ww;
    return select(vec3<bool>(true, arg_1.b.x != _wgslsmith_add_i32(var_3.x ^ -2147483647i, _wgslsmith_mod_i32(-16745i, arg_1.c.x)), false), var_1.a, any(vec4<bool>(!(var_3.x != u_input.c), true, !global0[_wgslsmith_index_u32(0u, 30u)], global0[_wgslsmith_index_u32(12856u, 30u)])));
}

fn func_4(arg_0: Struct_3, arg_1: i32, arg_2: vec3<bool>) -> vec3<u32> {
    var var_0 = vec3<u32>((~abs(arg_0.a.x) << (~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, arg_0.a.x, 4294967295u, 1u), vec4<u32>(u_input.e.x, u_input.d.x, arg_0.a.x, u_input.e.x)) % 32u)) | 0u, arg_0.a.x, ~(~u_input.b));
    return reverseBits(~arg_0.a);
}

fn func_2() -> bool {
    global0 = array<bool, 30>();
    let var_0 = Struct_3(max(func_4(Struct_3(vec3<u32>(u_input.d.x, 1u, 1u), vec4<i32>(-27357i, -1i, 7714i, 2147483647i), _wgslsmith_add_vec4_i32(vec4<i32>(1i, u_input.c, u_input.c, u_input.c), vec4<i32>(u_input.c, 42773i, u_input.a, 1i)), func_3(Struct_2(vec3<bool>(global1[_wgslsmith_index_u32(u_input.e.x, 20u)], global1[_wgslsmith_index_u32(0u, 20u)], true)), Struct_3(vec3<u32>(u_input.d.x, 4294967295u, u_input.d.x), vec4<i32>(-26306i, u_input.a, -28584i, -2147483647i), vec4<i32>(u_input.a, 0i, 9697i, 2147483647i), vec3<bool>(false, global1[_wgslsmith_index_u32(52166u, 20u)], global1[_wgslsmith_index_u32(u_input.e.x, 20u)])))), ~8192i, func_3(Struct_2(vec3<bool>(false, true, global0[_wgslsmith_index_u32(u_input.e.x, 30u)])), Struct_3(vec3<u32>(59237u, 4294967295u, u_input.d.x), vec4<i32>(10222i, u_input.c, -43379i, u_input.a), vec4<i32>(u_input.a, -31295i, u_input.a, u_input.a), vec3<bool>(true, global1[_wgslsmith_index_u32(1u, 20u)], global1[_wgslsmith_index_u32(u_input.e.x, 20u)])))), ((vec3<u32>(u_input.d.x, u_input.e.x, u_input.e.x) >> (vec3<u32>(u_input.e.x, 0u, u_input.e.x) % vec3<u32>(32u))) ^ vec3<u32>(u_input.b, 73940u, 32657u)) & vec3<u32>(countOneBits(57451u), _wgslsmith_add_u32(u_input.d.x, u_input.b), ~u_input.e.x)), -_wgslsmith_mult_vec4_i32(~_wgslsmith_sub_vec4_i32(vec4<i32>(33929i, u_input.a, u_input.a, u_input.a), vec4<i32>(u_input.a, u_input.c, u_input.a, -2147483647i)), vec4<i32>(u_input.a, u_input.a, u_input.c, u_input.c) ^ min(vec4<i32>(-2147483647i, u_input.c, 2147483647i, u_input.c), vec4<i32>(-58341i, u_input.a, 0i, -2147483647i))), firstTrailingBit(-firstLeadingBit(countOneBits(vec4<i32>(23112i, -20243i, -9614i, u_input.c)))), vec3<bool>(global1[_wgslsmith_index_u32(u_input.e.x, 20u)], -(13123i & u_input.c) <= u_input.a, true));
    var var_1 = Struct_1(~(~_wgslsmith_sub_u32(57618u, var_0.a.x) | 33670u), -783f, ~select(reverseBits(var_0.a.x | var_0.a.x), u_input.d.x, true), vec3<f32>(1f, 1f, 1f), _wgslsmith_mult_u32(16233u, _wgslsmith_div_u32(abs(var_0.a.x), 12436u)) & 4294967295u);
    let var_2 = global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_sub_u32(~0u, ~_wgslsmith_add_u32(1u, u_input.e.x)) ^ _wgslsmith_dot_vec3_u32(vec3<u32>(18670u, ~u_input.d.x, 1u), ~(vec3<u32>(var_0.a.x, u_input.b, 6160u) | vec3<u32>(0u, 4294967295u, 46160u))), 0u), 20u)];
    let var_3 = Struct_2(!vec3<bool>(true, select(func_3(Struct_2(var_0.d), var_0).x, any(var_0.d.yz), global0[_wgslsmith_index_u32(var_1.c, 30u)]), true));
    return 0u < ~(~(~var_1.e) << (max(countOneBits(0u), var_1.a) % 32u));
}

fn func_5(arg_0: vec4<bool>, arg_1: vec3<i32>, arg_2: vec3<i32>, arg_3: i32) -> Struct_2 {
    var var_0 = Struct_3(countOneBits(~_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.e.x, u_input.d.x, 1u), vec3<u32>(u_input.d.x, u_input.d.x, u_input.d.x)) & vec3<u32>(~0u, countOneBits(4294967295u), countOneBits(u_input.b))), ~vec4<i32>(_wgslsmith_sub_i32(~arg_1.x, arg_2.x), ~(~arg_2.x), arg_1.x << (47140u % 32u), -1i), ~vec4<i32>(arg_3 << (~30097u % 32u), firstTrailingBit(arg_2.x & arg_1.x), 44319i & select(22161i, arg_1.x, true), -firstLeadingBit(-12662i)), vec3<bool>(global1[_wgslsmith_index_u32(firstLeadingBit(reverseBits(_wgslsmith_div_u32(40272u, 3769u))), 20u)], true, false));
    let var_1 = Struct_3(var_0.a, _wgslsmith_mult_vec4_i32(var_0.b, _wgslsmith_div_vec4_i32(~var_0.c, var_0.b)), vec4<i32>(-1i, 13220i, -2147483647i, firstLeadingBit(var_0.c.x)), select(select(func_3(Struct_2(vec3<bool>(true, false, true)), Struct_3(vec3<u32>(var_0.a.x, var_0.a.x, 85808u), vec4<i32>(0i, -1i, arg_1.x, arg_1.x), var_0.c, arg_0.wwx)), vec3<bool>(true, select(false, var_0.d.x, false), u_input.d.x < 4294967295u), arg_0.x && var_0.d.x), !vec3<bool>(false, true, all(vec3<bool>(false, false, arg_0.x))), arg_0.wyy));
    return Struct_2(select(vec3<bool>(any(func_3(Struct_2(vec3<bool>(global1[_wgslsmith_index_u32(0u, 20u)], false, true)), Struct_3(var_1.a, vec4<i32>(arg_3, arg_3, -2147483647i, var_1.c.x), vec4<i32>(11957i, -29100i, 10458i, arg_2.x), var_0.d))), false, any(arg_0)), arg_0.zxw, false));
}

fn func_1(arg_0: Struct_2, arg_1: bool, arg_2: vec3<f32>, arg_3: Struct_2) -> f32 {
    let var_0 = func_5(select(!vec4<bool>(global0[_wgslsmith_index_u32(u_input.b, 30u)] & arg_0.a.x, func_2(), !arg_3.a.x, true), !vec4<bool>(false, !arg_0.a.x, global0[_wgslsmith_index_u32(u_input.e.x, 30u)], u_input.c >= u_input.a), global1[_wgslsmith_index_u32(1u, 20u)]), vec3<i32>(59414i, 1i, 23918i), countOneBits(select(-vec3<i32>(-1i, -1i, 1i), -vec3<i32>(u_input.a, -2147483647i, 62701i), func_3(arg_3, Struct_3(vec3<u32>(0u, 39757u, 40239u), vec4<i32>(u_input.c, -34285i, -2147483647i, u_input.c), vec4<i32>(u_input.c, 0i, 60738i, -2147483647i), vec3<bool>(false, true, global1[_wgslsmith_index_u32(u_input.e.x, 20u)]))))) | vec3<i32>(u_input.c, u_input.a, u_input.a), ~(-2147483647i));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-109f - arg_2.x) + _wgslsmith_f_op_f32(-arg_2.x)) + arg_2.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-280f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(func_1(Struct_2(vec3<bool>(global0[_wgslsmith_index_u32(28114u, 30u)], true, false)), true, vec3<f32>(1198f, 1455f, 707f), Struct_2(vec3<bool>(false, false, global1[_wgslsmith_index_u32(1u, 20u)]))))) + _wgslsmith_f_op_f32(287f * -644f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1315f)))));
    let var_1 = 1u;
    var var_2 = -355f;
    global0 = array<bool, 30>();
    var var_3 = Struct_3(_wgslsmith_clamp_vec3_u32(~(~(~vec3<u32>(u_input.b, var_1, 4294967295u))), vec3<u32>(_wgslsmith_clamp_u32(countOneBits(var_1), ~20533u, u_input.d.x | var_1), u_input.e.x, ~(~var_1)), ~(~vec3<u32>(22604u, var_1, 46838u) | firstLeadingBit(vec3<u32>(u_input.d.x, 4294967295u, 4294967295u)))), vec4<i32>(1i, ~(-(~2147483647i)), _wgslsmith_sub_i32(2147483647i, u_input.a), ~(-_wgslsmith_dot_vec3_i32(vec3<i32>(17462i, -1i, -8761i), vec3<i32>(u_input.a, -2147483647i, -2147483647i)))), vec4<i32>(_wgslsmith_mult_i32(~u_input.a >> (1u % 32u), ~(~u_input.a)), select(min(u_input.a, u_input.a) >> (67242u % 32u), -73903i, false), -(~u_input.a) & u_input.a, -2147483647i), select(func_3(func_5(vec4<bool>(global0[_wgslsmith_index_u32(u_input.e.x, 30u)], false, global0[_wgslsmith_index_u32(u_input.e.x, 30u)], global1[_wgslsmith_index_u32(4294967295u, 20u)]), reverseBits(vec3<i32>(-2147483647i, -1i, 0i)), vec3<i32>(-19105i, 0i, u_input.c), 0i), Struct_3(~vec3<u32>(var_1, 0u, 1u), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<i32>(52733i, 37366i, u_input.c, u_input.a)), -vec4<i32>(u_input.a, u_input.c, u_input.c, u_input.c), func_5(vec4<bool>(false, false, global0[_wgslsmith_index_u32(4294967295u, 30u)], false), vec3<i32>(-21130i, 0i, u_input.c), vec3<i32>(1i, 7342i, u_input.c), -2147483647i).a)), !(!vec3<bool>(global1[_wgslsmith_index_u32(u_input.b, 20u)], global0[_wgslsmith_index_u32(var_1, 30u)], global0[_wgslsmith_index_u32(var_1, 30u)])), !vec3<bool>(all(vec2<bool>(true, global1[_wgslsmith_index_u32(8816u, 20u)])), global0[_wgslsmith_index_u32(func_4(Struct_3(vec3<u32>(1390u, u_input.b, var_1), vec4<i32>(u_input.a, u_input.a, u_input.c, u_input.a), vec4<i32>(u_input.a, 1i, u_input.a, u_input.a), vec3<bool>(true, global1[_wgslsmith_index_u32(var_1, 20u)], true)), -21829i, vec3<bool>(true, true, global0[_wgslsmith_index_u32(u_input.b, 30u)])).x, 30u)], true)));
    global1 = array<bool, 20>();
    let var_4 = !select(select(select(!var_3.d.yx, !var_3.d.yz, func_5(vec4<bool>(global0[_wgslsmith_index_u32(28331u, 30u)], global0[_wgslsmith_index_u32(var_1, 30u)], global1[_wgslsmith_index_u32(u_input.e.x, 20u)], true), vec3<i32>(-1i, -2147483647i, -2147483647i), var_3.c.yzz, u_input.c).a.zz), vec2<bool>(global1[_wgslsmith_index_u32(1u, 20u)], true), true), vec2<bool>(true, true), select(select(func_5(vec4<bool>(false, true, true, global1[_wgslsmith_index_u32(u_input.b, 20u)]), vec3<i32>(var_3.b.x, u_input.a, -20495i), vec3<i32>(64331i, u_input.c, 47687i), u_input.c).a.zx, vec2<bool>(true, true), global0[_wgslsmith_index_u32(4294967295u, 30u)]), !vec2<bool>(true, global1[_wgslsmith_index_u32(var_1, 20u)]), var_3.d.x != any(vec2<bool>(true, var_3.d.x))));
    let var_5 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-558f, -337f, -704f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-671f, 625f, 396f) * vec3<f32>(520f, 298f, -346f)))))));
    var var_6 = vec4<bool>(global1[_wgslsmith_index_u32(~firstLeadingBit(0u), 20u)], true, true, !all(var_3.d));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec4_i32(~(~var_3.c | _wgslsmith_div_vec4_i32(vec4<i32>(var_3.c.x, -94102i, 1i, 2666i), var_3.b)), vec4<i32>(var_3.c.x, reverseBits(var_3.b.x >> (u_input.b % 32u)), 1i, reverseBits(~u_input.a))), ~var_1);
}

