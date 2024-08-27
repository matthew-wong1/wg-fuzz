struct Struct_1 {
    a: vec3<f32>,
    b: vec4<i32>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec2<u32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: u32,
    d: vec2<u32>,
    e: f32,
}

struct Struct_4 {
    a: bool,
    b: i32,
    c: vec2<f32>,
    d: Struct_3,
    e: Struct_3,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec4<f32>,
    d: u32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 20> = array<vec3<u32>, 20>(vec3<u32>(4294967295u, 72902u, 34223u), vec3<u32>(0u, 17753u, 39514u), vec3<u32>(18496u, 58592u, 1u), vec3<u32>(31486u, 0u, 0u), vec3<u32>(4294967295u, 90402u, 4294967295u), vec3<u32>(69070u, 9206u, 64193u), vec3<u32>(1u, 0u, 18840u), vec3<u32>(9425u, 4294967295u, 25409u), vec3<u32>(4294967295u, 4294967295u, 33659u), vec3<u32>(15891u, 28165u, 4294967295u), vec3<u32>(4294967295u, 42620u, 0u), vec3<u32>(4294967295u, 4294967295u, 0u), vec3<u32>(0u, 1u, 37778u), vec3<u32>(4294967295u, 1u, 0u), vec3<u32>(0u, 0u, 0u), vec3<u32>(4294967295u, 35423u, 0u), vec3<u32>(1u, 4294967295u, 1u), vec3<u32>(73504u, 39407u, 11438u), vec3<u32>(4294967295u, 1u, 10132u), vec3<u32>(0u, 67305u, 36400u));

var<private> global1: vec2<i32>;

var<private> global2: vec4<u32> = vec4<u32>(0u, 4294967295u, 4294967295u, 1u);

var<private> global3: array<bool, 24> = array<bool, 24>(true, true, false, true, false, true, false, true, true, false, false, true, true, true, false, true, false, true, true, true, true, false, false, false);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_4) -> vec2<bool> {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_0.d.a.d.a.x)) * _wgslsmith_f_op_f32(-arg_0.e.a.e.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1000f)) + _wgslsmith_f_op_f32(f32(-1f) * -496f))) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1994f, 2256f)) + _wgslsmith_f_op_f32(-arg_0.d.a.d.a.x))))), arg_0.e.b, -990f);
    let var_1 = Struct_1(var_0, _wgslsmith_sub_vec4_i32(vec4<i32>(19038i, arg_0.e.a.e.b.x >> (_wgslsmith_add_u32(4294967295u, global2.x) % 32u), 44355i, _wgslsmith_clamp_i32(-arg_0.b, ~global1.x, global1.x)), u_input.b), vec2<i32>(_wgslsmith_add_i32(_wgslsmith_add_i32(_wgslsmith_mod_i32(global1.x, -19000i), 25226i), -_wgslsmith_mod_i32(-867i, -52478i)), 0i));
    let var_2 = _wgslsmith_f_op_vec3_f32(-var_1.a);
    var var_3 = -reverseBits(vec2<i32>(-u_input.c.x, _wgslsmith_mod_i32(u_input.a << (arg_0.d.d.x % 32u), -arg_0.e.a.a.b.x)));
    global0 = array<vec3<u32>, 20>();
    return !select(!vec2<bool>(!arg_0.e.a.b, !global3[_wgslsmith_index_u32(4294967295u, 24u)]), !vec2<bool>(!global3[_wgslsmith_index_u32(69958u, 24u)], false), select(vec2<bool>(!arg_0.d.a.b, all(vec3<bool>(false, true, false))), vec2<bool>(true, true), global3[_wgslsmith_index_u32(~(global2.x & 40628u), 24u)]));
}

fn func_2(arg_0: Struct_2, arg_1: vec3<i32>) -> bool {
    let var_0 = Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_0.d.a.x, 1000f, arg_0.d.a.x), _wgslsmith_f_op_vec3_f32(-arg_0.e.a))), -(arg_0.d.b ^ vec4<i32>(-19017i, arg_1.x, -44504i, arg_1.x)), (arg_0.e.b.yx ^ arg_0.e.b.xz) | arg_1.yy), true, vec2<u32>(_wgslsmith_mult_u32(~global2.x, ~arg_0.c.x), 9807u), arg_0.d, arg_0.e), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_0.a.a.x)) + 1466f) + arg_0.e.a.x)), _wgslsmith_dot_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(global2.x, 1u, 0u, global2.x), vec4<u32>(arg_0.c.x, global2.x, 64522u, 70507u)), _wgslsmith_sub_vec4_u32(select(vec4<u32>(27991u, 27315u, 0u, arg_0.c.x), vec4<u32>(global2.x, global2.x, 29934u, arg_0.c.x), vec4<bool>(true, arg_0.b, true, global3[_wgslsmith_index_u32(arg_0.c.x, 24u)])), select(vec4<u32>(4294967295u, 0u, 4294967295u, arg_0.c.x), vec4<u32>(global2.x, 69191u, arg_0.c.x, 0u), false))) >> (~_wgslsmith_dot_vec2_u32(~arg_0.c, arg_0.c) % 32u), global2.zw >> (arg_0.c % vec2<u32>(32u)), _wgslsmith_f_op_f32(exp2(arg_0.a.a.x)));
    var var_1 = arg_1 << (vec3<u32>(0u, ~var_0.c, ~60529u) % vec3<u32>(32u));
    let var_2 = Struct_4(!global3[_wgslsmith_index_u32(105770u, 24u)], ~var_1.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.e.a.x, arg_0.d.a.x)))), _wgslsmith_f_op_vec2_f32(floor(var_0.a.a.a.yz)))), Struct_3(var_0.a, 810f, _wgslsmith_add_u32(global2.x, select(_wgslsmith_mod_u32(0u, 16975u), 0u << (global2.x % 32u), true)), var_0.d, -2279f), var_0);
    let var_3 = Struct_5(arg_0.b);
    let var_4 = true;
    return all(!func_3(var_2));
}

fn func_1(arg_0: u32, arg_1: f32, arg_2: vec2<i32>, arg_3: vec2<u32>) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(min(776f, 481f))));
    let var_1 = !select(vec4<bool>(func_2(Struct_2(Struct_1(vec3<f32>(var_0, 623f, 420f), u_input.b, vec2<i32>(global1.x, 3742i)), false, vec2<u32>(1u, arg_0), Struct_1(vec3<f32>(-1000f, -544f, var_0), u_input.b, vec2<i32>(-2147483647i, arg_2.x)), Struct_1(vec3<f32>(-1253f, -274f, arg_1), u_input.b, arg_2)), vec3<i32>(62605i, global1.x, -2147483647i)), !(arg_1 > var_0), all(vec3<bool>(false, true, global3[_wgslsmith_index_u32(0u, 24u)])) | all(vec2<bool>(true, true)), global3[_wgslsmith_index_u32(select(~4294967295u, arg_3.x >> (1u % 32u), global3[_wgslsmith_index_u32(21597u, 24u)]), 24u)]), !select(!vec4<bool>(true, global3[_wgslsmith_index_u32(arg_3.x, 24u)], false, global3[_wgslsmith_index_u32(arg_0, 24u)]), select(vec4<bool>(false, false, global3[_wgslsmith_index_u32(1u, 24u)], false), vec4<bool>(false, global3[_wgslsmith_index_u32(arg_3.x, 24u)], true, global3[_wgslsmith_index_u32(global2.x, 24u)]), false), all(vec2<bool>(global3[_wgslsmith_index_u32(2246u, 24u)], true))), select(vec4<bool>(!global3[_wgslsmith_index_u32(arg_0, 24u)], global3[_wgslsmith_index_u32(~21025u, 24u)], global3[_wgslsmith_index_u32(49195u, 24u)], global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(arg_3, global2.zy), 24u)]), vec4<bool>(-1991f >= var_0, any(vec4<bool>(global3[_wgslsmith_index_u32(arg_3.x, 24u)], global3[_wgslsmith_index_u32(arg_0, 24u)], false, true)), true, func_3(Struct_4(true, 13683i, vec2<f32>(arg_1, -795f), Struct_3(Struct_2(Struct_1(vec3<f32>(210f, 737f, var_0), vec4<i32>(0i, -28925i, arg_2.x, -53961i), arg_2), global3[_wgslsmith_index_u32(94949u, 24u)], vec2<u32>(global2.x, 1u), Struct_1(vec3<f32>(988f, arg_1, -1206f), vec4<i32>(global1.x, arg_2.x, u_input.b.x, global1.x), u_input.c), Struct_1(vec3<f32>(var_0, arg_1, arg_1), vec4<i32>(3055i, 10408i, u_input.a, -73550i), vec2<i32>(16893i, global1.x))), -886f, arg_3.x, vec2<u32>(arg_0, 69849u), 1454f), Struct_3(Struct_2(Struct_1(vec3<f32>(var_0, -1696f, 1136f), vec4<i32>(u_input.b.x, 1i, global1.x, 2147483647i), vec2<i32>(11094i, 20379i)), global3[_wgslsmith_index_u32(arg_0, 24u)], arg_3, Struct_1(vec3<f32>(var_0, 1851f, var_0), u_input.b, vec2<i32>(global1.x, 2147483647i)), Struct_1(vec3<f32>(var_0, var_0, -722f), u_input.b, vec2<i32>(u_input.b.x, 1i))), arg_1, 4294967295u, vec2<u32>(79771u, arg_3.x), var_0))).x), true));
    global2 = vec4<u32>(~(~_wgslsmith_mod_u32(arg_3.x, 1u)), ~arg_3.x, arg_3.x, 4294967295u) ^ ~select(~vec4<u32>(global2.x, arg_0, 4294967295u, 4294967295u), _wgslsmith_sub_vec4_u32(vec4<u32>(arg_3.x, 0u, 4294967295u, arg_0), vec4<u32>(arg_0, 4294967295u, global2.x, 32056u)), false);
    global2 = vec4<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, global2.x, 46071u, arg_3.x) ^ ~vec4<u32>(arg_3.x, 4294967295u, 3915u, 62928u), select(vec4<u32>(97625u, arg_3.x, 51755u, global2.x) | vec4<u32>(arg_3.x, arg_0, 9949u, 23051u), vec4<u32>(50468u, arg_3.x, arg_0, 0u), var_1)), ~arg_3.x, 36415u, arg_3.x);
    let var_2 = vec3<f32>(350f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_1))), 623f))), -1210f);
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(var_0, -1639f, global3[_wgslsmith_index_u32(arg_3.x, 24u)])), -316f, global3[_wgslsmith_index_u32(abs(arg_3.x), 24u)]))))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<bool, 24>();
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) * vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1131f), -977f)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1008f * 1548f) + _wgslsmith_f_op_f32(f32(-1f) * -764f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(49953u, -950f, vec2<i32>(-13977i, 23828i), vec2<u32>(3369u, global2.x))) + 264f)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-196f, 2344f) + vec2<f32>(1107f, 514f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1651f, -842f))))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1139f, 1004f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-970f, -1827f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-539f, -826f) + vec2<f32>(339f, -195f)) + vec2<f32>(1000f, -1000f)))));
    global0 = array<vec3<u32>, 20>();
    let var_1 = Struct_4(true, ~(_wgslsmith_dot_vec3_i32(u_input.b.xyy, _wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, 2147483647i, -40489i), u_input.b.wwy)) >> (1638u % 32u)), var_0, Struct_3(Struct_2(Struct_1(vec3<f32>(var_0.x, -807f, 446f), u_input.b >> (vec4<u32>(global2.x, global2.x, 15094u, 1u) % vec4<u32>(32u)), -vec2<i32>(global1.x, u_input.b.x)), true, vec2<u32>(global2.x, 19228u), Struct_1(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.x, 633f, 1207f), vec3<f32>(var_0.x, var_0.x, -1733f), global3[_wgslsmith_index_u32(82353u, 24u)])), abs(u_input.b), u_input.b.zw), Struct_1(vec3<f32>(1563f, var_0.x, var_0.x), vec4<i32>(global1.x, global1.x, -23886i, 2147483647i), ~u_input.c)), _wgslsmith_f_op_f32(-var_0.x), select(~global2.x, global2.x, any(select(vec3<bool>(false, true, true), vec3<bool>(global3[_wgslsmith_index_u32(global2.x, 24u)], global3[_wgslsmith_index_u32(9341u, 24u)], global3[_wgslsmith_index_u32(1u, 24u)]), global3[_wgslsmith_index_u32(178292u, 24u)]))), vec2<u32>(~96011u, _wgslsmith_div_u32(1u ^ global2.x, 1u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.x))))), Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, var_0.x) - vec3<f32>(var_0.x, var_0.x, 2047f)), u_input.b << (vec4<u32>(global2.x, 11638u, global2.x, global2.x) % vec4<u32>(32u)), -vec2<i32>(-29422i, -2147483647i)), global3[_wgslsmith_index_u32(1u << (global2.x % 32u), 24u)], global2.zz, Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, -230f, var_0.x) - vec3<f32>(var_0.x, var_0.x, -497f)), max(u_input.b, vec4<i32>(u_input.c.x, global1.x, u_input.a, u_input.c.x)), -vec2<i32>(28754i, 1i)), Struct_1(vec3<f32>(var_0.x, var_0.x, var_0.x), vec4<i32>(0i, -61179i, u_input.a, 1i), firstLeadingBit(u_input.b.yz))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2141f)), _wgslsmith_f_op_f32(abs(var_0.x))), ~(~(~66158u)), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(global2.x, global2.x), _wgslsmith_mod_vec2_u32(vec2<u32>(global2.x, 9793u), global2.xw), firstTrailingBit(global2.zz)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1000f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-1456f)), var_0.x))));
    var var_2 = vec3<i32>(var_1.d.a.d.b.x, abs(-global1.x >> (max(var_1.d.a.c.x, 1u) % 32u)) ^ ~var_1.d.a.a.b.x, 33308i);
    var_2 = min(-abs(~(-vec3<i32>(1i, -2159i, global1.x))), vec3<i32>(-(var_1.d.a.e.c.x ^ 34944i), -40178i, -1i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(var_0.x, 1000f)), 1f, -1328f, 1000f))), (var_1.e.a.d.b.x ^ ~0i) | -1i, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.c.x, -709f, var_0.x, 2218f))) + vec4<f32>(_wgslsmith_f_op_f32(round(-1517f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - var_1.d.b) + _wgslsmith_f_op_f32(floor(-252f))), var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(455f * var_0.x) * _wgslsmith_f_op_f32(-var_1.c.x)))), _wgslsmith_dot_vec3_u32(global0[_wgslsmith_index_u32(var_1.e.d.x, 20u)] << (_wgslsmith_mod_vec3_u32(global2.wyw, ~global0[_wgslsmith_index_u32(global2.x, 20u)]) % vec3<u32>(32u)), vec3<u32>(~1u, _wgslsmith_add_u32(select(global2.x, global2.x, false), 4603u), countOneBits(~global2.x))), reverseBits(vec3<u32>(34602u, global2.x, global2.x)) << (abs(global2.wyx) % vec3<u32>(32u)));
}

