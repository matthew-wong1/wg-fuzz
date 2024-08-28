struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 17> = array<vec4<bool>, 17>(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false));

var<private> global1: array<vec3<i32>, 18>;

var<private> global2: array<vec3<i32>, 18> = array<vec3<i32>, 18>(vec3<i32>(i32(-2147483648), 1i, -44635i), vec3<i32>(2147483647i, 6074i, i32(-2147483648)), vec3<i32>(-1969i, 1i, -1i), vec3<i32>(12175i, 2147483647i, 21715i), vec3<i32>(14570i, 17547i, 13208i), vec3<i32>(2147483647i, 1i, -30854i), vec3<i32>(17169i, -9442i, -1i), vec3<i32>(0i, -32279i, 78927i), vec3<i32>(47533i, 28565i, -9666i), vec3<i32>(-1i, 1i, 47977i), vec3<i32>(11694i, -15627i, 27640i), vec3<i32>(-30067i, 0i, 2147483647i), vec3<i32>(2147483647i, 59545i, 33644i), vec3<i32>(1i, 3924i, 2147483647i), vec3<i32>(-34327i, 2147483647i, i32(-2147483648)), vec3<i32>(-1i, -1i, -1i), vec3<i32>(2147483647i, 31595i, 23349i), vec3<i32>(1i, 6867i, 14002i));

var<private> global3: bool;

var<private> global4: vec4<u32> = vec4<u32>(9922u, 1u, 39776u, 1u);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: f32) -> bool {
    let var_0 = firstTrailingBit(u_input.c);
    global4 = vec4<u32>(max(1u, u_input.c.x), _wgslsmith_sub_u32(10640u, ~_wgslsmith_mult_u32(34423u, var_0.x)), ~u_input.c.x, global4.x) ^ vec4<u32>(~(reverseBits(var_0.x) & _wgslsmith_sub_u32(global4.x, 83235u)), _wgslsmith_mult_u32(62152u, _wgslsmith_mult_u32(0u, 23214u)) | u_input.c.x, 0u, _wgslsmith_mod_u32(1u, _wgslsmith_mult_u32(96743u, var_0.x) & _wgslsmith_dot_vec3_u32(global4.yyx, vec3<u32>(global4.x, 5427u, global4.x))));
    var var_1 = Struct_2(arg_0.a, _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-116f, -214f, arg_2, -1798f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_1.b.x, 1000f, arg_2, arg_0.b.x))))), _wgslsmith_f_op_vec4_f32(-arg_1.b)));
    var var_2 = Struct_2(_wgslsmith_sub_vec4_i32(vec4<i32>(-22349i ^ max(arg_1.a.x, arg_0.a.x), 2147483647i, 1i, _wgslsmith_sub_i32(52455i, 1i)), countOneBits(_wgslsmith_add_vec4_i32(-vec4<i32>(14128i, 1i, 0i, -946i), _wgslsmith_div_vec4_i32(vec4<i32>(arg_1.a.x, arg_0.a.x, 59848i, 53905i), var_1.a)))), _wgslsmith_f_op_vec4_f32(round(arg_0.b)));
    global4 = select(max(_wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.e, 35084u), global4.wz), 0u, _wgslsmith_mult_u32(28730u, 18091u), ~0u), reverseBits(_wgslsmith_mod_vec4_u32(u_input.c, u_input.c))), vec4<u32>(~4294967295u, var_0.x, ~u_input.e, reverseBits(44611u)) >> (var_0 % vec4<u32>(32u))), vec4<u32>(~65346u, ~global4.x, var_0.x, var_0.x) >> ((_wgslsmith_div_vec4_u32(~var_0, ~vec4<u32>(global4.x, global4.x, global4.x, var_0.x)) & vec4<u32>(~global4.x, 1u, min(global4.x, 62936u), u_input.c.x >> (var_0.x % 32u))) % vec4<u32>(32u)), vec4<bool>(any(!select(vec4<bool>(true, true, false, false), global0[_wgslsmith_index_u32(37296u, 17u)], false)), _wgslsmith_dot_vec4_i32(vec4<i32>(var_2.a.x, arg_1.a.x, 1i, var_1.a.x), _wgslsmith_sub_vec4_i32(var_2.a, vec4<i32>(2147483647i, 53706i, var_2.a.x, arg_1.a.x))) != u_input.a, true, !all(vec2<bool>(true, true))));
    return all(!vec2<bool>(false, ~var_1.a.x >= _wgslsmith_dot_vec3_i32(arg_1.a.wwz, vec3<i32>(0i, arg_0.a.x, arg_0.a.x))));
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: i32) -> bool {
    let var_0 = 16654i;
    let var_1 = _wgslsmith_f_op_f32(246f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(809f, -1074f)) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-2306f * 1000f)))), _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(324f))))));
    var var_2 = firstTrailingBit(global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.e, _wgslsmith_dot_vec3_u32(~global4.wxy << (vec3<u32>(u_input.c.x, u_input.c.x, 18856u) % vec3<u32>(32u)), firstLeadingBit(~global4.xyw)), 72055u), 18u)]);
    global1 = array<vec3<i32>, 18>();
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(var_1 - 574f), true)), 1000f) - _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(419f * 2227f))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(959f, var_1, true)), -986f) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, var_1)) + _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_1, 260f)))))));
    return _wgslsmith_clamp_i32(_wgslsmith_sub_i32(0i, var_2.x), ~u_input.b.x | -var_2.x, u_input.b.x) > _wgslsmith_sub_i32(5424i, ~(~var_2.x) & -_wgslsmith_mod_i32(arg_1.a.x, var_2.x));
}

fn func_5(arg_0: bool, arg_1: i32, arg_2: Struct_2) -> bool {
    var var_0 = func_4(~global4.x >= ~_wgslsmith_dot_vec4_u32(u_input.c, u_input.c), Struct_1(firstLeadingBit(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.d, arg_2.a.x), vec2<i32>(arg_1, arg_2.a.x)))), _wgslsmith_mod_i32(61889i, 29993i)) && any(select(vec3<bool>(true, true, true), select(!vec3<bool>(false, arg_0, true), select(vec3<bool>(false, true, true), vec3<bool>(arg_0, arg_0, true), false), arg_0), select(select(vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(false, arg_0, false), arg_0), select(vec3<bool>(arg_0, arg_0, false), vec3<bool>(true, true, arg_0), arg_0), !vec3<bool>(false, true, arg_0))));
    global3 = !(arg_0 & any(vec3<bool>(true, arg_0, true)));
    let var_1 = global2[_wgslsmith_index_u32(u_input.c.x, 18u)] | min(select(~(global2[_wgslsmith_index_u32(global4.x, 18u)] & vec3<i32>(u_input.b.x, 2147483647i, u_input.a)), select(global1[_wgslsmith_index_u32(31670u, 18u)] << (vec3<u32>(4294967295u, 9836u, 56373u) % vec3<u32>(32u)), _wgslsmith_sub_vec3_i32(arg_2.a.yzy, global2[_wgslsmith_index_u32(u_input.e, 18u)]), select(vec3<bool>(arg_0, true, true), vec3<bool>(false, false, arg_0), false)), ~global4.x <= 0u), -firstTrailingBit(global2[_wgslsmith_index_u32(global4.x, 18u)]));
    var var_2 = !select(vec3<bool>(arg_0, true, !arg_0), !(!vec3<bool>(arg_0, arg_0, arg_0)), false);
    let var_3 = !select(vec3<bool>(var_2.x, ~global4.x == 16200u, true), select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, var_2.x, var_2.x), vec3<bool>(false, arg_0, var_2.x), false), vec3<bool>(true, false, var_2.x), vec3<bool>(false, arg_0, var_2.x)), (false && var_2.x) || (u_input.a >= var_1.x)), !(!(!vec3<bool>(true, false, arg_0))));
    return any(!select(vec3<bool>(true, true, false), vec3<bool>(var_3.x, var_3.x, true), !select(var_3, var_3, false)));
}

fn func_2(arg_0: f32) -> vec4<u32> {
    var var_0 = vec4<bool>(func_5(func_4(func_3(Struct_2(vec4<i32>(-12734i, u_input.b.x, u_input.b.x, u_input.d), vec4<f32>(-605f, 1017f, arg_0, 795f)), Struct_2(vec4<i32>(1i, u_input.b.x, 64700i, u_input.a), vec4<f32>(arg_0, arg_0, -1024f, -140f)), arg_0), Struct_1(u_input.b), ~(-10926i)) & false, 2147483647i, Struct_2(-(~vec4<i32>(u_input.a, -25159i, 11463i, 3458i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1000f, arg_0, 514f, arg_0), vec4<f32>(arg_0, arg_0, arg_0, -358f)))))), true, true, true);
    let var_1 = 5678u;
    let var_2 = Struct_2(_wgslsmith_mult_vec4_i32(~vec4<i32>(23402i, ~u_input.a, 0i, u_input.a << (39224u % 32u)), abs(max(vec4<i32>(-45621i, u_input.a, 2147483647i, u_input.d), vec4<i32>(22430i, u_input.d, 1i, u_input.d)))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_0, _wgslsmith_f_op_f32(-arg_0), arg_0, arg_0), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_0, arg_0, 1413f, arg_0), vec4<f32>(-615f, arg_0, 106f, 251f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, 851f, 786f)))))));
    return u_input.c;
}

fn func_1(arg_0: vec4<u32>) -> vec3<i32> {
    global4 = _wgslsmith_add_vec4_u32(func_2(_wgslsmith_f_op_f32(-1f)), _wgslsmith_sub_vec4_u32(~(~vec4<u32>(global4.x, global4.x, u_input.c.x, arg_0.x)), ~(u_input.c | ~vec4<u32>(27968u, arg_0.x, arg_0.x, global4.x))));
    global0 = array<vec4<bool>, 17>();
    let var_0 = Struct_2(firstTrailingBit(vec4<i32>(0i, abs(abs(u_input.d)), 16148i, u_input.a)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(633f, 467f, -1227f, -1736f) - vec4<f32>(427f, -828f, 481f, -750f)) - vec4<f32>(1000f, 161f, 498f, -1406f)) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-2013f, -704f, -557f, 265f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(270f, -731f, 1353f, -229f))))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(619f, -337f, 120f, 1889f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(738f, -438f, -1700f, -558f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-718f, -285f, -1282f, 600f)))));
    let var_1 = Struct_1(u_input.b);
    global0 = array<vec4<bool>, 17>();
    return var_0.a.wzx;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_i32(u_input.d, u_input.d);
    global3 = u_input.d != -_wgslsmith_dot_vec3_i32(select(func_1(u_input.c), global1[_wgslsmith_index_u32(0u ^ global4.x, 18u)], true), -vec3<i32>(u_input.b.x, u_input.d, u_input.a));
    let var_1 = !global0[_wgslsmith_index_u32(~(global4.x & 0u), 17u)];
    var var_2 = u_input.b.x;
    global4 = u_input.c;
    let var_3 = u_input.c;
    global1 = array<vec3<i32>, 18>();
    let var_4 = var_1.x;
    var_2 = u_input.d;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(round(1000f)), _wgslsmith_f_op_f32(-498f + 165f), _wgslsmith_div_f32(-620f, -697f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(313f, 441f, -340f, 367f)))) + vec4<f32>(_wgslsmith_div_f32(-152f, 206f), 1725f, _wgslsmith_f_op_f32(726f - -149f), -1446f)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -276f, 1000f, 511f) + vec4<f32>(-1387f, -381f, -441f, -323f)) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-194f, -635f, 1394f, 830f), vec4<f32>(985f, 2313f, 2378f, -104f), global0[_wgslsmith_index_u32(0u, 17u)]))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1377f, -322f, 1071f, 825f), vec4<f32>(-560f, -1000f, 1297f, 160f)) - vec4<f32>(1045f, 456f, 296f, 460f)))));
}

