struct Struct_1 {
    a: u32,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec3<f32>,
    d: vec4<f32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 18> = array<i32, 18>(2147483647i, -1i, i32(-2147483648), 1i, -66046i, i32(-2147483648), -7753i, i32(-2147483648), 20225i, 1i, 1i, i32(-2147483648), -1i, -1i, i32(-2147483648), -1i, i32(-2147483648), 1i);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: u32, arg_1: i32, arg_2: vec4<f32>, arg_3: Struct_1) -> f32 {
    global0 = array<i32, 18>();
    let var_0 = 0i;
    var var_1 = Struct_1(arg_0, u_input.c);
    var_1 = Struct_1(countOneBits(firstLeadingBit(arg_3.a)), select(select(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.c.x, arg_3.b.x, 2147483647i), arg_3.b), vec3<i32>(arg_3.b.x, -2629i, -17275i) & u_input.c, 1u > u_input.a), ~vec3<i32>(39648i, arg_1, var_0), !all(vec2<bool>(true, false))) ^ _wgslsmith_mult_vec3_i32(arg_3.b, _wgslsmith_div_vec3_i32(max(vec3<i32>(8595i, 0i, -2147483647i), vec3<i32>(var_1.b.x, -18729i, 38988i)), vec3<i32>(u_input.b.x, global0[_wgslsmith_index_u32(0u, 18u)], 2147483647i))));
    let var_2 = -(vec4<i32>(-1i) * -vec4<i32>(var_0, -2147483647i, 2147483647i, arg_3.b.x)) << (abs(vec4<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(48186u, u_input.a, var_1.a), _wgslsmith_add_vec3_u32(vec3<u32>(1u, 1u, 18175u), vec3<u32>(34693u, 82071u, 25808u))), ~_wgslsmith_sub_u32(u_input.a, arg_3.a), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_3.a, 0u, 44256u, 1u) << (vec4<u32>(var_1.a, 30296u, 0u, 1u) % vec4<u32>(32u)), select(vec4<u32>(arg_3.a, 14296u, var_1.a, 21350u), vec4<u32>(arg_0, var_1.a, u_input.a, u_input.a), true)), 17179u)) % vec4<u32>(32u));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1954f - arg_2.x))))));
}

fn func_4(arg_0: vec4<f32>) -> vec2<f32> {
    var var_0 = !(_wgslsmith_add_i32(i32(-1i) * -1i, _wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(-14170i, global0[_wgslsmith_index_u32(18675u, 18u)], global0[_wgslsmith_index_u32(u_input.a, 18u)])), abs(u_input.c))) <= firstTrailingBit(abs(min(-1i, global0[_wgslsmith_index_u32(u_input.a, 18u)]))));
    var var_1 = _wgslsmith_f_op_vec4_f32(-arg_0);
    var var_2 = Struct_1(~(~min(_wgslsmith_dot_vec3_u32(vec3<u32>(16143u, u_input.a, u_input.a), vec3<u32>(35767u, 0u, 14060u)), ~u_input.a)), -u_input.c);
    global0 = array<i32, 18>();
    let var_3 = ~(~(~abs(firstTrailingBit(vec2<u32>(28058u, 7790u)))));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-2106f, 608f)))), var_1.zy, !select(vec2<bool>(false, true), vec2<bool>(false, false), false))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.yy - _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, 364f) * var_1.xw)))) * vec2<f32>(1104f, -1973f));
}

fn func_2(arg_0: bool) -> Struct_1 {
    let var_0 = ~u_input.a;
    var var_1 = -1i;
    global0 = array<i32, 18>();
    let var_2 = select(_wgslsmith_div_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(58944u, 18u)], 0i, _wgslsmith_div_i32(max(global0[_wgslsmith_index_u32(1u, 18u)], u_input.b.x), ~global0[_wgslsmith_index_u32(18016u, 18u)]), 31443i), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c.x, _wgslsmith_mod_i32(0i, 28116i), 2147483647i, _wgslsmith_mult_i32(1i, 0i)), vec4<i32>(global0[_wgslsmith_index_u32(6435u, 18u)], global0[_wgslsmith_index_u32(u_input.a, 18u)], -2147483647i, -4550i) >> (vec4<u32>(63284u, var_0, 24604u, 29116u) % vec4<u32>(32u)))), max(~max(vec4<i32>(global0[_wgslsmith_index_u32(var_0, 18u)], -2147483647i, 50374i, 2147483647i), vec4<i32>(0i, -33778i, u_input.c.x, u_input.b.x) | vec4<i32>(15486i, 1i, -2147483647i, -2147483647i)), vec4<i32>(-1i) * -(~vec4<i32>(u_input.b.x, u_input.c.x, 0i, 21517i))), !select(vec4<bool>(true, arg_0 && arg_0, !arg_0, all(vec2<bool>(true, false))), vec4<bool>(true, false, any(vec4<bool>(true, true, arg_0, true)), !arg_0), !vec4<bool>(true, arg_0, true, true)));
    var var_3 = _wgslsmith_f_op_vec2_f32(func_4(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1025f + 1000f), _wgslsmith_f_op_f32(select(-1634f, 810f, true))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(980f + 1311f))), _wgslsmith_f_op_f32(max(-1683f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(481f * -875f), _wgslsmith_f_op_f32(-357f - 576f), true)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-935f, -483f))), _wgslsmith_f_op_f32(min(-1668f, _wgslsmith_f_op_f32(-326f * -285f)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_3(0u, _wgslsmith_mod_i32(-4833i, 17606i), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-190f, 275f, -410f, 1065f)), Struct_1(var_0, vec3<i32>(0i, 11192i, var_2.x)))))))));
    return Struct_1(min(1u, ~var_0) ^ u_input.a, _wgslsmith_add_vec3_i32(vec3<i32>(firstTrailingBit(firstLeadingBit(-27434i)), ~var_2.x, countOneBits(var_2.x)), vec3<i32>(~(-16720i), _wgslsmith_clamp_i32(u_input.c.x, var_2.x, var_2.x) | -1i, global0[_wgslsmith_index_u32(_wgslsmith_div_u32(reverseBits(u_input.a), u_input.a | u_input.a), 18u)])));
}

fn func_1(arg_0: vec4<f32>) -> f32 {
    global0 = array<i32, 18>();
    global0 = array<i32, 18>();
    global0 = array<i32, 18>();
    let var_0 = vec2<bool>(select(all(!select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false))), false, true), all(vec4<bool>(arg_0.x <= _wgslsmith_div_f32(-327f, -2624f), true, true, true)));
    var var_1 = func_2(true);
    return _wgslsmith_f_op_f32(min(-655f, arg_0.x));
}

fn func_5(arg_0: u32, arg_1: Struct_1, arg_2: f32, arg_3: Struct_1) -> Struct_1 {
    let var_0 = func_2(~arg_0 < arg_0);
    let var_1 = Struct_1(~4294967295u, func_2(all(vec3<bool>(true, true, true))).b);
    global0 = array<i32, 18>();
    global0 = array<i32, 18>();
    global0 = array<i32, 18>();
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(_wgslsmith_mult_u32(52995u >> (u_input.a % 32u), 1u), Struct_1(4294967295u, _wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(-vec3<i32>(-34821i, u_input.b.x, 1i), vec3<i32>(-2147483647i, 1i, global0[_wgslsmith_index_u32(u_input.a, 18u)])), vec3<i32>(-2147483647i, global0[_wgslsmith_index_u32(104971u, 18u)] | u_input.c.x, ~u_input.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(454f, _wgslsmith_f_op_f32(func_1(vec4<f32>(-394f, 1908f, -1157f, -948f)))) - -269f)), func_2(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(821f, -189f), 956f)) != _wgslsmith_f_op_f32(min(181f, _wgslsmith_f_op_f32(ceil(-1242f))))));
    let var_1 = var_0;
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2819f)), 1f))));
    global0 = array<i32, 18>();
    global0 = array<i32, 18>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(min(_wgslsmith_add_u32(~u_input.a, abs(var_1.a)), ~(4294967295u >> (1u % 32u))), _wgslsmith_dot_vec3_u32(abs(max(vec3<u32>(24552u, u_input.a, 17973u), vec3<u32>(0u, u_input.a, var_1.a))), firstLeadingBit(select(vec3<u32>(var_1.a, var_1.a, u_input.a), vec3<u32>(var_1.a, 1u, var_0.a), vec3<bool>(true, false, false)))), _wgslsmith_clamp_u32(abs(firstLeadingBit(0u)), 4294967295u, ~(u_input.a << (0u % 32u)))), select(vec3<u32>(u_input.a, u_input.a, 28077u) | _wgslsmith_mult_vec3_u32(~vec3<u32>(0u, 4294967295u, var_1.a), ~vec3<u32>(1u, 1u, 5359u)), vec3<u32>(var_0.a, var_1.a, ~var_0.a), select(vec3<bool>(true, true, var_0.b.x >= var_1.b.x), select(select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true)), select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), false)), vec3<bool>(true, all(vec4<bool>(false, false, false, true)), true))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_2.x, _wgslsmith_f_op_f32(ceil(-1586f)), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-413f, 1000f)))))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_2.x, 1599f, -1542f, var_2.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(-745f, -168f, var_2.x, 964f) * vec4<f32>(927f, 1000f, -945f, -140f)))))), vec4<i32>(_wgslsmith_add_i32(var_0.b.x, -global0[_wgslsmith_index_u32(0u, 18u)]), _wgslsmith_mult_i32(i32(-1i) * -1i, _wgslsmith_dot_vec3_i32(min(u_input.c, var_1.b), u_input.c)), ~reverseBits(-1i), 1i));
}

