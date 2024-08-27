struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: vec2<i32>,
    d: bool,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 23>;

var<private> global1: bool = true;

var<private> global2: array<Struct_1, 10> = array<Struct_1, 10>(Struct_1(vec3<i32>(48028i, -1i, -27987i), true, vec2<i32>(16091i, 4603i), true, vec3<f32>(-608f, -1089f, -225f)), Struct_1(vec3<i32>(-34351i, -26766i, i32(-2147483648)), false, vec2<i32>(-20143i, -15458i), false, vec3<f32>(956f, 297f, -299f)), Struct_1(vec3<i32>(61093i, i32(-2147483648), 1i), true, vec2<i32>(1i, -28754i), false, vec3<f32>(1701f, -831f, -1000f)), Struct_1(vec3<i32>(20216i, 20200i, 1i), false, vec2<i32>(0i, 0i), true, vec3<f32>(885f, -584f, -1000f)), Struct_1(vec3<i32>(-12307i, 0i, 1i), true, vec2<i32>(34877i, 18111i), false, vec3<f32>(665f, -320f, -496f)), Struct_1(vec3<i32>(-22903i, -6650i, 0i), false, vec2<i32>(-1i, -12161i), true, vec3<f32>(-1182f, -881f, 662f)), Struct_1(vec3<i32>(0i, 11775i, 28689i), true, vec2<i32>(-1734i, -20253i), false, vec3<f32>(176f, 1045f, 374f)), Struct_1(vec3<i32>(0i, -19252i, -28881i), false, vec2<i32>(-17155i, 1478i), true, vec3<f32>(897f, -624f, -114f)), Struct_1(vec3<i32>(84204i, 0i, i32(-2147483648)), false, vec2<i32>(-1i, 6791i), true, vec3<f32>(-1149f, 533f, 1000f)), Struct_1(vec3<i32>(2147483647i, -20318i, -38776i), false, vec2<i32>(1i, i32(-2147483648)), false, vec3<f32>(-1000f, -1654f, 320f)));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: f32, arg_1: vec4<u32>) -> i32 {
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_mod_u32(arg_1.x, u_input.a), firstLeadingBit(_wgslsmith_mult_u32(arg_1.x, ~54238u))), 23u)] || true;
    var var_1 = u_input.c.x;
    global1 = !var_0;
    let var_2 = arg_0;
    var_1 = 48678u << (min(~_wgslsmith_dot_vec4_u32(~vec4<u32>(arg_1.x, u_input.a, arg_1.x, 27043u), vec4<u32>(arg_1.x, u_input.c.x, 32963u, arg_1.x)), 10384u) % 32u);
    return reverseBits(i32(-1i) * -1i) | abs(abs(~_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, u_input.b, 0i), vec3<i32>(u_input.b, u_input.b, u_input.b))));
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_sub_i32(_wgslsmith_clamp_i32(11326i, func_3(_wgslsmith_f_op_f32(1753f * 1408f), vec4<u32>(49739u, u_input.c.x, u_input.a, u_input.a)), firstTrailingBit(select(-5949i, u_input.b, global0[_wgslsmith_index_u32(u_input.a, 23u)]))), _wgslsmith_mod_i32(firstTrailingBit(-u_input.b), ~(~u_input.b))) < _wgslsmith_dot_vec3_i32(countOneBits(reverseBits(-vec3<i32>(u_input.b, u_input.b, 59097i))), _wgslsmith_sub_vec3_i32(vec3<i32>(~(-1i), 35235i, 0i), -firstTrailingBit(vec3<i32>(u_input.b, -20127i, u_input.b))));
    global0 = array<bool, 23>();
    var var_1 = !global0[_wgslsmith_index_u32(u_input.c.x, 23u)];
    let var_2 = true;
    var var_3 = var_2;
    return global2[_wgslsmith_index_u32(4294967295u, 10u)];
}

fn func_1() -> i32 {
    var var_0 = 1u;
    var_0 = ~u_input.c.x;
    var var_1 = func_2();
    var_1 = global2[_wgslsmith_index_u32(u_input.c.x, 10u)];
    var var_2 = Struct_1(var_1.a, (~(u_input.c.x | u_input.c.x) >> (~4294967295u % 32u)) > ~(~_wgslsmith_mod_u32(64180u, 4294967295u)), -_wgslsmith_div_vec2_i32(var_1.a.xz, _wgslsmith_mod_vec2_i32(~var_1.c, vec2<i32>(var_1.a.x, var_1.a.x))), any(!vec3<bool>(global0[_wgslsmith_index_u32(abs(4294967295u), 23u)], all(vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.c.x, 23u)])), !global0[_wgslsmith_index_u32(43503u, 23u)])), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_1.e.x + var_1.e.x), _wgslsmith_f_op_f32(f32(-1f) * -1206f), _wgslsmith_f_op_f32(var_1.e.x * -1441f)), _wgslsmith_div_vec3_f32(vec3<f32>(419f, -1597f, -1330f), vec3<f32>(967f, 415f, 391f))) * _wgslsmith_f_op_vec3_f32(-var_1.e)));
    return _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(select(abs(vec4<i32>(29868i, -66281i, var_2.c.x, u_input.b)), vec4<i32>(41762i, u_input.b, u_input.b, var_1.a.x), true), min(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b, u_input.b, var_2.a.x, u_input.b), vec4<i32>(var_1.c.x, -1i, 0i, -8124i)), vec4<i32>(46711i, -26599i, var_1.c.x, 30291i) & vec4<i32>(31582i, var_1.a.x, var_2.c.x, 0i))), abs(select(vec4<i32>(var_2.a.x, var_1.a.x, var_1.c.x, var_1.c.x) >> (vec4<u32>(1u, u_input.a, u_input.a, u_input.a) % vec4<u32>(32u)), ~vec4<i32>(u_input.b, 2147483647i, u_input.b, var_1.c.x), any(vec3<bool>(true, var_2.d, var_2.d))))) >> (1u % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(!select(vec2<bool>(0u < u_input.c.x, global0[_wgslsmith_index_u32(max(u_input.c.x, u_input.a), 23u)]), vec2<bool>(global0[_wgslsmith_index_u32(30403u, 23u)], global0[_wgslsmith_index_u32(1u, 23u)]), !select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.a, 23u)]))), !(!vec2<bool>(global0[_wgslsmith_index_u32(25883u, 23u)], global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, 79759u), 23u)])), !select(vec2<bool>(false, global0[_wgslsmith_index_u32(19111u, 23u)]), vec2<bool>(true, global0[_wgslsmith_index_u32(17633u, 23u)] & global0[_wgslsmith_index_u32(4294967295u, 23u)]), vec2<bool>(global0[_wgslsmith_index_u32(~13129u, 23u)], true)));
    global1 = (all(vec4<bool>(true, false, global0[_wgslsmith_index_u32(u_input.c.x, 23u)], global0[_wgslsmith_index_u32(u_input.a, 23u)])) != !(func_1() > 0i)) == global0[_wgslsmith_index_u32(~u_input.a, 23u)];
    let var_1 = func_2();
    let var_2 = Struct_1(_wgslsmith_add_vec3_i32(vec3<i32>(min(-3463i, reverseBits(u_input.b)), _wgslsmith_mult_i32(1i & u_input.b, var_1.c.x), u_input.b), ~reverseBits(var_1.a) ^ -vec3<i32>(20292i, -2147483647i, 21905i)), select(any(select(vec3<bool>(true, true, var_1.b), vec3<bool>(var_1.d, true, false), vec3<bool>(true, true, false))) | all(select(vec3<bool>(true, false, global0[_wgslsmith_index_u32(4294967295u, 23u)]), vec3<bool>(global0[_wgslsmith_index_u32(1u, 23u)], var_0.x, var_0.x), vec3<bool>(var_1.d, false, var_1.d))), var_1.b & true, true), -firstLeadingBit(~firstTrailingBit(vec2<i32>(var_1.a.x, -2147483647i))), !(!(_wgslsmith_f_op_f32(-var_1.e.x) != _wgslsmith_f_op_f32(-var_1.e.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(func_2().e, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.e.x, var_1.e.x, var_1.e.x))))))));
    var var_3 = !(!vec2<bool>(true, !(true || var_2.b)));
    let var_4 = func_2();
    var_3 = !var_0;
    let var_5 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(~(~firstLeadingBit(1u)), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.c.x, u_input.a) << (vec3<u32>(u_input.a, u_input.a, u_input.c.x) % vec3<u32>(32u)), vec3<u32>(106508u, 15453u, 4294967295u)) | u_input.c.x), var_1.a.x);
}

