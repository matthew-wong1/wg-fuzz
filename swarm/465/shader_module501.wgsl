struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: f32,
    c: Struct_1,
    d: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(-54166i, vec2<f32>(-281f, -1690f), vec4<bool>(false, false, true, true)), Struct_1(53043i, vec2<f32>(777f, -1139f), vec4<bool>(true, true, false, true)), Struct_1(2147483647i, vec2<f32>(1377f, 242f), vec4<bool>(false, false, true, false)), Struct_1(-47079i, vec2<f32>(184f, 721f), vec4<bool>(false, false, true, false)), Struct_1(44315i, vec2<f32>(214f, 1146f), vec4<bool>(false, true, false, true)), Struct_1(2147483647i, vec2<f32>(-442f, -935f), vec4<bool>(true, false, true, false)), Struct_1(12992i, vec2<f32>(-1031f, 1911f), vec4<bool>(false, true, true, false)), Struct_1(i32(-2147483648), vec2<f32>(-1548f, -216f), vec4<bool>(true, false, false, false)), Struct_1(11162i, vec2<f32>(-1833f, 155f), vec4<bool>(false, false, false, false)), Struct_1(i32(-2147483648), vec2<f32>(347f, -474f), vec4<bool>(true, false, false, false)), Struct_1(i32(-2147483648), vec2<f32>(-691f, -1000f), vec4<bool>(true, false, false, true)), Struct_1(1i, vec2<f32>(929f, -246f), vec4<bool>(false, false, false, false)), Struct_1(i32(-2147483648), vec2<f32>(-485f, 1021f), vec4<bool>(true, false, true, false)), Struct_1(-4477i, vec2<f32>(511f, -1437f), vec4<bool>(false, true, true, false)), Struct_1(-25827i, vec2<f32>(-1127f, 819f), vec4<bool>(false, true, true, true)), Struct_1(-19400i, vec2<f32>(-926f, 1648f), vec4<bool>(true, true, false, false)), Struct_1(1i, vec2<f32>(987f, 186f), vec4<bool>(false, true, false, false)), Struct_1(-43933i, vec2<f32>(-588f, 896f), vec4<bool>(false, true, false, false)), Struct_1(-9202i, vec2<f32>(-843f, 1000f), vec4<bool>(true, true, false, true)), Struct_1(4422i, vec2<f32>(1013f, -1796f), vec4<bool>(true, false, true, true)), Struct_1(2147483647i, vec2<f32>(-1312f, 950f), vec4<bool>(true, true, true, true)), Struct_1(i32(-2147483648), vec2<f32>(-840f, -581f), vec4<bool>(true, false, false, false)), Struct_1(76896i, vec2<f32>(-674f, 808f), vec4<bool>(false, true, false, true)), Struct_1(0i, vec2<f32>(-340f, -236f), vec4<bool>(false, false, true, false)), Struct_1(1i, vec2<f32>(-116f, -695f), vec4<bool>(true, true, false, true)), Struct_1(-1i, vec2<f32>(198f, 1121f), vec4<bool>(false, true, false, false)));

var<private> global1: Struct_2;

var<private> global2: array<i32, 17> = array<i32, 17>(-11332i, 22505i, 1i, -59730i, 19034i, 12683i, 1i, -60252i, 2147483647i, i32(-2147483648), 2147483647i, 0i, -74383i, 2147483647i, 2147483647i, 59093i, -7916i);

var<private> global3: array<f32, 12> = array<f32, 12>(-1028f, 1565f, -280f, -208f, 843f, -535f, -2014f, 641f, 1143f, -530f, -366f, 649f);

var<private> global4: vec2<f32> = vec2<f32>(379f, 927f);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec4<f32>) -> i32 {
    var var_0 = vec2<bool>(global1.c.c.x, !all(!select(global1.c.c, global1.c.c, true)));
    var_0 = !vec2<bool>(any(global1.c.c.xwz), var_0.x);
    var var_1 = Struct_2(vec3<i32>(firstTrailingBit(1i), global2[_wgslsmith_index_u32(min(u_input.c, global1.d.x), 17u)], -u_input.d.x), 635f, Struct_1(-abs(_wgslsmith_div_i32(51394i, 34585i)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(vec2<f32>(global1.b, -1000f), vec2<f32>(988f, global4.x)))) * arg_0.zw), select(global1.c.c, select(!vec4<bool>(var_0.x, true, var_0.x, global1.c.c.x), select(global1.c.c, vec4<bool>(true, false, true, true), true), arg_0.x < 261f), !vec4<bool>(var_0.x, false, true, global1.c.c.x))), abs(global1.d));
    let var_2 = ~(~(~firstTrailingBit(firstLeadingBit(vec4<u32>(global1.d.x, 53208u, 36518u, global1.d.x)))));
    var_0 = !(!vec2<bool>(true, any(select(vec2<bool>(var_0.x, true), vec2<bool>(true, true), false))));
    return _wgslsmith_add_i32(~44202i, i32(-1i) * -26322i);
}

fn func_2() -> f32 {
    let var_0 = vec2<bool>(false, true);
    global0 = array<Struct_1, 26>();
    let var_1 = global3[_wgslsmith_index_u32(~(~_wgslsmith_dot_vec4_u32(select(min(vec4<u32>(1u, u_input.a.x, 9698u, u_input.c), vec4<u32>(1u, 29379u, 4218u, global1.d.x)), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c, u_input.c, 45938u, global1.d.x), vec4<u32>(u_input.c, global1.d.x, 73539u, global1.d.x)), all(global1.c.c)), ~vec4<u32>(u_input.c, 14258u, global1.d.x, u_input.a.x))), 12u)];
    var var_2 = countOneBits(firstTrailingBit(_wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, global1.a.x, u_input.b, -2147483647i), vec4<i32>(-1i, -51228i, global1.a.x, global1.a.x)), ~vec4<i32>(global2[_wgslsmith_index_u32(3554u, 17u)], 12946i, u_input.b, -10077i))) & vec4<i32>(countOneBits(select(-2147483647i, 54883i, var_0.x)), 15722i, 22149i, _wgslsmith_add_i32(28110i, ~u_input.b)));
    var var_3 = ~vec3<i32>(firstLeadingBit(func_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -1269f, 592f, 1123f) * vec4<f32>(global1.b, global3[_wgslsmith_index_u32(64051u, 12u)], 601f, 2622f)))), -min(i32(-1i) * -90695i, 0i), select(_wgslsmith_clamp_i32(firstTrailingBit(global2[_wgslsmith_index_u32(0u, 17u)]), _wgslsmith_dot_vec3_i32(var_2.xxw, vec3<i32>(global2[_wgslsmith_index_u32(4294967295u, 17u)], global2[_wgslsmith_index_u32(global1.d.x, 17u)], 23396i)), -2147483647i), u_input.d.x, all(vec4<bool>(var_0.x, false, false, true)) & all(vec2<bool>(false, false))));
    return -1209f;
}

fn func_1(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: vec3<bool>, arg_3: bool) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(func_2());
    var var_1 = arg_0;
    var var_2 = Struct_2(_wgslsmith_add_vec3_i32(~(countOneBits(vec3<i32>(var_1.a, u_input.d.x, -82998i)) >> (firstLeadingBit(vec3<u32>(1u, global1.d.x, u_input.a.x)) % vec3<u32>(32u))), -vec3<i32>(firstLeadingBit(2147483647i), _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, -29239i), global1.a.xz), 30863i)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0.b.x))), Struct_1(_wgslsmith_sub_i32(-2147483647i, func_3(vec4<f32>(global4.x, global4.x, global1.c.b.x, 585f))), vec2<f32>(584f, _wgslsmith_div_f32(arg_0.b.x, _wgslsmith_f_op_f32(max(1594f, -1144f)))), vec4<bool>(arg_3, true, true, u_input.d.x <= u_input.d.x)), countOneBits(countOneBits(global1.d)));
    let var_3 = Struct_3(global0[_wgslsmith_index_u32(1u, 26u)], vec2<u32>(firstTrailingBit(~(~var_2.d.x)), (1u & _wgslsmith_add_u32(1u, var_2.d.x)) | 4294967295u));
    global1 = Struct_2(_wgslsmith_sub_vec3_i32(u_input.d, max(var_2.a << (vec3<u32>(47534u, var_3.b.x, var_3.b.x) % vec3<u32>(32u)), -vec3<i32>(var_1.a, 2147483647i, 1i)) << (vec3<u32>(select(23734u, 51579u, true), ~62965u, var_2.d.x) % vec3<u32>(32u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0)) - 263f), Struct_1(abs(func_3(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global1.b, arg_0.b.x, var_2.c.b.x, -1000f))))), vec2<f32>(1997f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-624f, -349f)))), select(select(select(arg_1, vec4<bool>(false, false, true, arg_1.x), global1.c.c), select(vec4<bool>(arg_1.x, true, true, true), vec4<bool>(var_3.a.c.x, arg_0.c.x, arg_1.x, true), true), false), global1.c.c, select(select(var_2.c.c, vec4<bool>(false, arg_1.x, global1.c.c.x, true), global1.c.c.x), vec4<bool>(arg_3, arg_3, global1.c.c.x, false), vec4<bool>(true, true, true, true)))), global1.d);
    return var_2.c;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 26>();
    let var_0 = true;
    let var_1 = 354f;
    var var_2 = ~_wgslsmith_div_u32(global1.d.x ^ 0u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, 4294967295u, u_input.c), vec3<u32>(4294967295u, 1517u, u_input.a.x))) ^ 1u;
    var var_3 = ~u_input.c;
    let var_4 = Struct_2(u_input.d, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1)) - -112f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-926f)) + _wgslsmith_f_op_f32(trunc(-1552f))))), func_1(global0[_wgslsmith_index_u32(~21779u, 26u)], global1.c.c, global1.c.c.wwz, var_0), ~vec3<u32>(_wgslsmith_add_u32(_wgslsmith_div_u32(global1.d.x, u_input.c), global1.d.x), 9975u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, global1.d.x, u_input.a.x), vec3<u32>(1u, 4294967295u, u_input.a.x)) & u_input.a.x));
    var_2 = min(var_4.d.x, abs(min(~5831u, _wgslsmith_mod_u32(54510u, u_input.a.x)))) | 0u;
    let x = u_input.a;
    s_output = StorageBuffer(max(4294967295u >> (firstLeadingBit(u_input.c) % 32u), 2897u), ~reverseBits(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 1u, 0u), global1.d)), 81804u, -1i);
}

