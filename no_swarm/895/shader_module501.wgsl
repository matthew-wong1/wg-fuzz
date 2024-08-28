struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: vec2<i32>,
    d: f32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: vec2<f32>,
    d: vec3<u32>,
}

struct Struct_4 {
    a: u32,
    b: vec2<f32>,
    c: Struct_1,
    d: Struct_3,
    e: vec2<bool>,
}

struct Struct_5 {
    a: vec2<i32>,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<u32>,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 0u;

var<private> global1: array<u32, 29>;

var<private> global2: Struct_2 = Struct_2(i32(-2147483648), Struct_1(vec2<i32>(1i, -18957i), 151f, vec2<i32>(i32(-2147483648), -9700i), 631f));

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_5, arg_1: u32, arg_2: Struct_2, arg_3: bool) -> vec2<f32> {
    var var_0 = !(!select(!select(vec4<bool>(true, true, false, true), vec4<bool>(arg_3, arg_3, true, false), vec4<bool>(true, arg_3, arg_3, arg_3)), !vec4<bool>(arg_3, false, arg_3, true), !(!arg_3)));
    let var_1 = -971f;
    let var_2 = Struct_1(u_input.e, _wgslsmith_f_op_f32(arg_2.b.b * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-2088f, var_1), _wgslsmith_f_op_f32(860f * -1000f))))), arg_0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.b.b) * _wgslsmith_f_op_f32(arg_2.b.d * arg_2.b.b)));
    let var_3 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1573f)) - _wgslsmith_f_op_f32(f32(-1f) * -1165f)), -1000f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global2.b.d, 835f))))) * _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.d, global2.b.d) - vec2<f32>(var_1, var_2.b)) + vec2<f32>(var_2.d, -723f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1, var_1) + vec2<f32>(global2.b.b, -195f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(722f, var_2.b) - vec2<f32>(-1095f, -941f))))))));
    var var_4 = vec2<i32>(global2.b.a.x, arg_0.a.x);
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(var_3, vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1656f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -903f), -1083f))) * var_3);
}

fn func_2(arg_0: Struct_2, arg_1: f32, arg_2: Struct_4, arg_3: vec2<bool>) -> Struct_3 {
    global1 = array<u32, 29>();
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(Struct_5(-vec2<i32>(-1i, arg_2.c.c.x), _wgslsmith_mod_vec2_i32(vec2<i32>(1i, u_input.d), global2.b.a)), global1[_wgslsmith_index_u32(~arg_2.d.d.x, 29u)], arg_2.d.b, arg_2.e.x)) + _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-754f, 564f)))));
    var var_1 = arg_0.b.a;
    global0 = u_input.b.x;
    let var_2 = arg_2.d;
    return var_2;
}

fn func_4(arg_0: f32, arg_1: Struct_4) -> Struct_1 {
    global1 = array<u32, 29>();
    global0 = 1u;
    var var_0 = arg_1;
    var var_1 = vec2<i32>(~_wgslsmith_mod_i32(abs(u_input.d), i32(-1i) * -2147483647i) | -reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, arg_1.d.b.a, var_0.d.b.b.a.x, 2147483647i), vec4<i32>(u_input.d, global2.a, -2147483647i, arg_1.d.a))), -1i);
    global1 = array<u32, 29>();
    return func_2(func_2(arg_1.d.b, _wgslsmith_f_op_f32(arg_0 - 1f), Struct_4(34199u, arg_1.d.c, Struct_1(abs(vec2<i32>(2147483647i, 15459i)), 1327f, _wgslsmith_div_vec2_i32(u_input.e, global2.b.a), -632f), Struct_3(14316i, func_2(var_0.d.b, -753f, arg_1, vec2<bool>(false, arg_1.e.x)).b, vec2<f32>(arg_0, 636f), var_0.d.d >> (arg_1.d.d % vec3<u32>(32u))), arg_1.e), vec2<bool>(arg_1.e.x, true)).b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global2.b.d + -1567f), _wgslsmith_f_op_f32(202f * -591f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d.b.b.d))), arg_1, !vec2<bool>(select(all(vec2<bool>(var_0.e.x, arg_1.e.x)), any(vec3<bool>(true, arg_1.e.x, arg_1.e.x)), all(vec4<bool>(true, var_0.e.x, var_0.e.x, true))), var_0.e.x)).b.b;
}

fn func_1(arg_0: bool) -> Struct_4 {
    var var_0 = global1[_wgslsmith_index_u32(~4294967295u, 29u)];
    global2 = Struct_2(_wgslsmith_mult_i32(abs(max(_wgslsmith_add_i32(u_input.e.x, 1i), 27272i)), countOneBits(0i)), func_4(-361f, Struct_4(24657u, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.b.b, global2.b.b)))), Struct_1(countOneBits(u_input.e), -1717f, vec2<i32>(2147483647i, 0i), _wgslsmith_f_op_f32(max(global2.b.d, global2.b.b))), func_2(Struct_2(u_input.e.x, global2.b), _wgslsmith_f_op_f32(sign(global2.b.d)), Struct_4(u_input.a, vec2<f32>(2205f, 1359f), Struct_1(global2.b.a, -1014f, vec2<i32>(4043i, 53684i), -376f), Struct_3(3097i, Struct_2(global2.a, global2.b), vec2<f32>(global2.b.b, global2.b.b), vec3<u32>(u_input.b.x, u_input.a, 0u)), vec2<bool>(arg_0, true)), vec2<bool>(true, true)), select(vec2<bool>(true, arg_0), select(vec2<bool>(arg_0, arg_0), vec2<bool>(true, arg_0), false), !vec2<bool>(arg_0, false)))));
    let var_1 = func_2(func_2(func_2(Struct_2(select(-1i, u_input.e.x, true), Struct_1(vec2<i32>(u_input.e.x, u_input.e.x), -422f, vec2<i32>(global2.a, -2147483647i), -861f)), _wgslsmith_f_op_f32(sign(-645f)), Struct_4(global1[_wgslsmith_index_u32(firstLeadingBit(5272u), 29u)], _wgslsmith_f_op_vec2_f32(vec2<f32>(-583f, global2.b.d) * vec2<f32>(-670f, 878f)), global2.b, Struct_3(-1i, Struct_2(-33751i, Struct_1(vec2<i32>(global2.b.c.x, global2.b.c.x), global2.b.b, vec2<i32>(global2.a, global2.a), global2.b.d)), vec2<f32>(global2.b.d, global2.b.d), vec3<u32>(u_input.a, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 29u)], 29u)], 0u)), vec2<bool>(false, arg_0)), select(vec2<bool>(arg_0, arg_0), !vec2<bool>(true, arg_0), true)).b, 641f, Struct_4(u_input.c.x, func_2(func_2(Struct_2(46806i, global2.b), 100f, Struct_4(25382u, vec2<f32>(global2.b.d, 1156f), Struct_1(u_input.e, -1188f, global2.b.c, 916f), Struct_3(global2.a, Struct_2(global2.b.a.x, Struct_1(global2.b.a, 1813f, u_input.e, global2.b.d)), vec2<f32>(global2.b.b, 277f), vec3<u32>(22983u, 1u, 4294967295u)), vec2<bool>(arg_0, true)), vec2<bool>(false, true)).b, 1471f, Struct_4(15991u, vec2<f32>(1865f, global2.b.b), Struct_1(vec2<i32>(u_input.d, u_input.d), global2.b.d, vec2<i32>(3477i, 38312i), global2.b.b), Struct_3(-1i, Struct_2(6536i, Struct_1(u_input.e, global2.b.b, global2.b.c, -523f)), vec2<f32>(global2.b.b, -593f), vec3<u32>(global1[_wgslsmith_index_u32(0u, 29u)], u_input.a, 4294967295u)), vec2<bool>(arg_0, arg_0)), vec2<bool>(true, true)).c, global2.b, func_2(func_2(Struct_2(62570i, Struct_1(global2.b.a, global2.b.b, global2.b.c, 508f)), global2.b.b, Struct_4(u_input.a, vec2<f32>(1130f, -1584f), global2.b, Struct_3(-1i, Struct_2(27842i, global2.b), vec2<f32>(global2.b.b, global2.b.d), vec3<u32>(19264u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(23930u, 29u)], 29u)], u_input.a)), vec2<bool>(true, true)), vec2<bool>(arg_0, false)).b, 1f, Struct_4(0u, vec2<f32>(798f, -109f), global2.b, Struct_3(42342i, Struct_2(2147483647i, global2.b), vec2<f32>(667f, global2.b.d), vec3<u32>(17444u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 29u)], 29u)], 0u)), vec2<bool>(false, false)), select(vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, arg_0), arg_0)), !select(vec2<bool>(false, false), vec2<bool>(arg_0, false), arg_0)), vec2<bool>(arg_0, 1221f > _wgslsmith_f_op_f32(-1372f - global2.b.d))).b, -734f, Struct_4(~select(u_input.c.x, _wgslsmith_clamp_u32(4294967295u, 45295u, 1u), any(vec4<bool>(false, false, false, arg_0))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-168f, _wgslsmith_f_op_f32(abs(global2.b.b))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-993f, -532f)))), Struct_1(firstTrailingBit(vec2<i32>(u_input.e.x, 2147483647i)), global2.b.b, func_2(func_2(Struct_2(global2.a, Struct_1(u_input.e, 441f, vec2<i32>(0i, u_input.e.x), global2.b.b)), -1786f, Struct_4(52975u, vec2<f32>(global2.b.d, global2.b.d), global2.b, Struct_3(-74445i, Struct_2(global2.b.a.x, global2.b), vec2<f32>(112f, 996f), vec3<u32>(18697u, 1u, u_input.b.x)), vec2<bool>(true, arg_0)), vec2<bool>(false, arg_0)).b, -680f, Struct_4(u_input.b.x, vec2<f32>(576f, -854f), Struct_1(global2.b.a, global2.b.b, vec2<i32>(-2147483647i, global2.a), -113f), Struct_3(31352i, Struct_2(2147483647i, global2.b), vec2<f32>(global2.b.d, global2.b.d), vec3<u32>(u_input.b.x, 1u, u_input.b.x)), vec2<bool>(true, false)), select(vec2<bool>(arg_0, false), vec2<bool>(arg_0, true), arg_0)).b.b.c, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(global2.b.b))))), func_2(Struct_2(2147483647i, Struct_1(vec2<i32>(1i, global2.b.a.x), 1000f, global2.b.c, -726f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1334f))), Struct_4(global1[_wgslsmith_index_u32(33331u, 29u)], _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.b.d, 439f)), global2.b, func_2(Struct_2(0i, global2.b), global2.b.d, Struct_4(26108u, vec2<f32>(global2.b.d, global2.b.d), global2.b, Struct_3(67963i, Struct_2(global2.b.a.x, Struct_1(global2.b.c, -1235f, vec2<i32>(1i, -2147483647i), 769f)), vec2<f32>(-229f, 1015f), vec3<u32>(global1[_wgslsmith_index_u32(u_input.a, 29u)], u_input.a, u_input.b.x)), vec2<bool>(arg_0, arg_0)), vec2<bool>(true, arg_0)), vec2<bool>(arg_0, true)), !vec2<bool>(true, arg_0)), !vec2<bool>(true, select(false, arg_0, arg_0))), vec2<bool>(abs(select(u_input.d, 1i, true)) == _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.e.x, 18403i), vec2<i32>(u_input.d, -2147483647i)), !(!all(vec4<bool>(arg_0, true, arg_0, arg_0)))));
    global1 = array<u32, 29>();
    var_0 = min(~_wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(u_input.c.x, 29u)], 29u)] << (_wgslsmith_dot_vec2_u32(u_input.b, var_1.d.yz) % 32u), ~(~1u), ~66489u), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b.x, u_input.b.x, 66542u, global1[_wgslsmith_index_u32(u_input.a, 29u)]), vec4<u32>(u_input.a, abs(4294967295u), func_2(var_1.b, 942f, Struct_4(var_1.d.x, vec2<f32>(1000f, -1137f), Struct_1(u_input.e, var_1.c.x, vec2<i32>(-1i, global2.b.a.x), 338f), Struct_3(26409i, var_1.b, var_1.c, var_1.d), vec2<bool>(true, true)), vec2<bool>(arg_0, arg_0)).d.x, 1317u | global1[_wgslsmith_index_u32(var_1.d.x, 29u)])) | _wgslsmith_add_u32(u_input.b.x, var_1.d.x), 29u)]);
    return Struct_4(firstTrailingBit(~global1[_wgslsmith_index_u32(var_1.d.x & 18128u, 29u)] ^ 102454u), var_1.c, global2.b, Struct_3(1i, var_1.b, _wgslsmith_f_op_vec2_f32(-var_1.c), var_1.d), select(vec2<bool>(true, any(select(vec2<bool>(false, true), vec2<bool>(arg_0, arg_0), vec2<bool>(true, false)))), vec2<bool>(arg_0, ~u_input.e.x <= func_2(var_1.b, 1968f, Struct_4(u_input.c.x, vec2<f32>(-597f, global2.b.d), var_1.b.b, Struct_3(u_input.e.x, Struct_2(u_input.d, Struct_1(vec2<i32>(u_input.e.x, u_input.e.x), global2.b.d, var_1.b.b.a, -2599f)), var_1.c, var_1.d), vec2<bool>(true, true)), vec2<bool>(arg_0, arg_0)).b.a), select(vec2<bool>(any(vec3<bool>(arg_0, false, false)), 0i <= u_input.e.x), !vec2<bool>(false, arg_0), all(select(vec3<bool>(true, arg_0, arg_0), vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(true, arg_0, arg_0))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(min(u_input.e.x, u_input.d) >= _wgslsmith_sub_i32(1i, u_input.e.x));
    let var_1 = true;
    var var_2 = Struct_5(var_0.c.c, func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-112f * _wgslsmith_f_op_f32(global2.b.d * -1064f))), Struct_4(_wgslsmith_mult_u32(var_0.a, u_input.a), _wgslsmith_div_vec2_f32(var_0.d.c, vec2<f32>(-1881f, 200f)), func_2(func_1(true).d.b, -553f, Struct_4(global1[_wgslsmith_index_u32(u_input.c.x, 29u)], var_0.b, var_0.c, var_0.d, vec2<bool>(var_0.e.x, true)), var_0.e).b.b, func_2(func_1(var_0.e.x).d.b, var_0.d.b.b.b, func_1(false), var_0.e), vec2<bool>(var_0.e.x, select(false, var_1, var_1)))).c);
    var var_3 = global2.b.b;
    let var_4 = ~45556u;
    let var_5 = func_1(!var_1);
    var var_6 = var_0;
    let var_7 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(global2.b.b - -351f), _wgslsmith_f_op_f32(select(-397f, var_0.b.x, true))))))) * var_5.d.c);
    var_6 = Struct_4(min(func_1(true).a, 25831u), _wgslsmith_f_op_vec2_f32(-func_1(!var_0.e.x).b), var_0.d.b.b, Struct_3(~(-2147483647i), func_2(func_1(var_0.e.x).d.b, var_0.b.x, func_1(true), var_0.e).b, vec2<f32>(var_5.d.c.x, -994f), var_0.d.d), select(!(!vec2<bool>(var_5.e.x, false)), vec2<bool>(_wgslsmith_div_f32(global2.b.d, var_5.b.x) >= _wgslsmith_f_op_f32(global2.b.b * 1000f), var_1), select(!select(vec2<bool>(true, var_5.e.x), var_5.e, vec2<bool>(var_1, false)), var_5.e, any(vec3<bool>(var_6.e.x, var_0.e.x, var_1)))));
    let x = u_input.a;
    s_output = StorageBuffer((((vec4<i32>(2147483647i, -1i, var_2.a.x, 1i) | vec4<i32>(var_2.a.x, -30053i, -2147483647i, 1i)) << ((vec4<u32>(u_input.c.x, 12767u, var_6.a, 28181u) | vec4<u32>(1u, var_0.d.d.x, 56585u, var_5.a)) % vec4<u32>(32u))) ^ _wgslsmith_mod_vec4_i32(firstLeadingBit(vec4<i32>(29801i, 0i, var_2.a.x, 2147483647i)), _wgslsmith_mult_vec4_i32(vec4<i32>(var_5.d.b.a, u_input.d, 0i, var_2.b.x), vec4<i32>(var_0.c.c.x, 2147483647i, 1i, 1i)))) << (firstLeadingBit(vec4<u32>(_wgslsmith_add_u32(1u, 13600u), var_6.d.d.x, _wgslsmith_mod_u32(1u, 7670u), ~var_4)) % vec4<u32>(32u)));
}

