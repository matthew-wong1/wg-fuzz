struct Struct_1 {
    a: vec2<u32>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: i32,
    d: vec2<bool>,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 27>;

var<private> global1: array<f32, 27>;

var<private> global2: array<vec4<f32>, 9>;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: f32, arg_3: vec3<u32>) -> bool {
    let var_0 = Struct_2(arg_0.x, -718f, ~firstTrailingBit(-_wgslsmith_mod_i32(2147483647i, -12589i)), !select(vec2<bool>(select(arg_0.x, false, arg_0.x), true), arg_0.xw, false), _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(abs(_wgslsmith_clamp_vec3_u32(arg_3, arg_3, arg_3)), vec3<u32>(max(arg_1.a.x, arg_3.x), 4294967295u, _wgslsmith_clamp_u32(u_input.b.x, 0u, 4294967295u))), _wgslsmith_sub_u32(_wgslsmith_sub_u32(u_input.d, _wgslsmith_mult_u32(u_input.b.x, 45916u)), 17687u)));
    global1 = array<f32, 27>();
    global0 = array<Struct_1, 27>();
    var var_1 = 1f;
    let var_2 = vec4<bool>(false, var_0.a, arg_0.x & (_wgslsmith_f_op_f32(trunc(arg_2)) == _wgslsmith_f_op_f32(trunc(-1178f))), all(arg_0));
    return select(select(true, !all(select(vec4<bool>(true, true, true, true), var_2, arg_0)), -var_0.c == (-var_0.c >> (4294967295u % 32u))), select(var_0.d.x || !var_0.d.x, var_0.b == 1494f, !(abs(arg_1.a.x) >= arg_3.x)), var_0.d.x);
}

fn func_4(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: vec3<f32>) -> i32 {
    global2 = array<vec4<f32>, 9>();
    var var_0 = _wgslsmith_div_vec4_i32(-abs(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, arg_0.c, arg_0.c), vec3<i32>(arg_0.c, arg_0.c, 41018i)), arg_0.c, ~arg_0.c, -arg_0.c)), firstTrailingBit(select(vec4<i32>(arg_0.c, 2147483647i, arg_0.c, 11053i), -vec4<i32>(arg_0.c, arg_0.c, 0i, -12955i), vec4<bool>(arg_0.a, false, arg_0.a, arg_0.d.x))) << (vec4<u32>(4294967295u, u_input.b.x, arg_1.x, ~4294967295u) % vec4<u32>(32u)));
    var_0 = -vec4<i32>(abs(~_wgslsmith_clamp_i32(var_0.x, arg_0.c, arg_0.c)), select(1i, 2147483647i, true) << (min(1u, ~4294967295u) % 32u), reverseBits(0i), _wgslsmith_mult_i32(firstTrailingBit(var_0.x), _wgslsmith_sub_i32(-2147483647i, arg_0.c)) << (~arg_0.e % 32u));
    let var_1 = global0[_wgslsmith_index_u32(~(~_wgslsmith_add_u32(~1u, u_input.a)), 27u)];
    let var_2 = _wgslsmith_f_op_vec4_f32(-global2[_wgslsmith_index_u32(u_input.d, 9u)]);
    return countOneBits(firstLeadingBit(~_wgslsmith_clamp_i32(var_0.x, -arg_0.c, 1i)));
}

fn func_2(arg_0: vec3<f32>, arg_1: vec3<f32>) -> bool {
    let var_0 = ~(~1u);
    var var_1 = vec2<bool>(!(~(~4294967295u) >= firstLeadingBit(u_input.e ^ 0u)), true);
    let var_2 = Struct_2(all(vec4<bool>(var_1.x, !var_1.x, true, all(select(vec4<bool>(var_1.x, true, false, var_1.x), vec4<bool>(var_1.x, false, var_1.x, var_1.x), true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) - arg_1.x)), func_4(Struct_2(func_3(!vec4<bool>(false, var_1.x, true, true), global0[_wgslsmith_index_u32(u_input.c ^ 0u, 27u)], _wgslsmith_f_op_f32(round(arg_0.x)), vec3<u32>(u_input.e, u_input.e, var_0)), _wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(-arg_0.x)), ~2147483647i, select(vec2<bool>(true, true), select(vec2<bool>(var_1.x, true), vec2<bool>(true, var_1.x), vec2<bool>(true, false)), true), 71609u), vec2<u32>(~_wgslsmith_dot_vec3_u32(u_input.b.yzy, vec3<u32>(var_0, var_0, 32199u)), 1u), arg_0), vec2<bool>(true, !var_1.x), 128u);
    var var_3 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(842f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-143f, _wgslsmith_f_op_f32(ceil(-466f)))))), _wgslsmith_f_op_f32(-1f)));
    var_1 = var_2.d;
    return any(!var_2.d) && true;
}

fn func_1(arg_0: i32, arg_1: vec4<u32>) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1[_wgslsmith_index_u32(arg_1.x, 27u)], global1[_wgslsmith_index_u32(u_input.b.x, 27u)], -732f), vec3<f32>(789f, global1[_wgslsmith_index_u32(arg_1.x, 27u)], global1[_wgslsmith_index_u32(0u, 27u)]), true))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-781f, -861f, 435f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1104f, 958f, global1[_wgslsmith_index_u32(u_input.a, 27u)])))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(vec3<f32>(373f, -103f, global1[_wgslsmith_index_u32(u_input.b.x, 27u)]), vec3<f32>(-1327f, 428f, 336f)))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(4294967295u, 27u)], 177f, global1[_wgslsmith_index_u32(4294967295u, 27u)]) - vec3<f32>(global1[_wgslsmith_index_u32(16035u, 27u)], global1[_wgslsmith_index_u32(43557u, 27u)], -1136f)) - vec3<f32>(global1[_wgslsmith_index_u32(u_input.e, 27u)], global1[_wgslsmith_index_u32(u_input.e, 27u)], global1[_wgslsmith_index_u32(27352u, 27u)])))), !vec3<bool>(true, true, func_2(vec3<f32>(-917f, 1384f, global1[_wgslsmith_index_u32(arg_1.x, 27u)]), _wgslsmith_f_op_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(u_input.c, 27u)], 213f, global1[_wgslsmith_index_u32(arg_1.x, 27u)]) + vec3<f32>(global1[_wgslsmith_index_u32(0u, 27u)], global1[_wgslsmith_index_u32(u_input.e, 27u)], global1[_wgslsmith_index_u32(arg_1.x, 27u)]))))));
    var var_1 = Struct_1(arg_1.xw, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(abs(var_0)), vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(4294967295u, 27u)])), var_0.x)), -321f, _wgslsmith_f_op_f32(abs(1000f))))));
    let var_2 = Struct_2(true, 576f, _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(6730i, firstLeadingBit(arg_0), 1i), _wgslsmith_mod_vec3_i32(vec3<i32>(arg_0, 2162i, arg_0), vec3<i32>(-1i, arg_0, arg_0) | vec3<i32>(arg_0, -1050i, arg_0))), -1i), !select(vec2<bool>(true, true), !select(vec2<bool>(false, false), vec2<bool>(true, true), false), vec2<bool>(true, true)), max(arg_1.x << (u_input.a % 32u), var_1.a.x));
    global0 = array<Struct_1, 27>();
    return Struct_2(func_2(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(arg_1.x, 27u)], -1000f, var_0.x), vec3<f32>(var_0.x, -755f, var_1.b.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b.x, -351f, var_0.x))), var_1.b), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(1u, 27u)] - _wgslsmith_f_op_f32(ceil(462f))), _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(arg_0, 0i, -25711i, arg_0), vec4<i32>(-2147483647i, -74593i, -706i, var_2.c)), countOneBits(vec4<i32>(0i, var_2.c, arg_0, arg_0))), -select(vec4<i32>(arg_0, arg_0, -93417i, 1i), vec4<i32>(29214i, var_2.c, 2147483647i, 48681i), false)), -_wgslsmith_div_i32(-1i, -19644i)), select(!var_2.d, vec2<bool>(any(select(vec4<bool>(true, false, true, false), vec4<bool>(var_2.d.x, true, var_2.a, false), var_2.a)), !(arg_0 != var_2.c)), vec2<bool>(false, (true == var_2.d.x) && true)), firstTrailingBit(_wgslsmith_sub_u32(14346u, arg_1.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(-2147483647i, u_input.b);
    let var_1 = select(-firstLeadingBit(firstLeadingBit(vec4<i32>(-5439i, -1i, -1i, 2147483647i))), vec4<i32>(abs(~(-53924i)), _wgslsmith_sub_i32(_wgslsmith_mult_i32(-1i, var_0.c), -1i), 2147483647i >> (1u % 32u), -(~_wgslsmith_dot_vec3_i32(vec3<i32>(44289i, -38806i, -2147483647i), vec3<i32>(var_0.c, 7170i, var_0.c)))), func_3(select(select(!vec4<bool>(true, false, var_0.d.x, true), vec4<bool>(true, false, true, var_0.a), true), vec4<bool>(true, true, true, any(vec4<bool>(true, true, true, false))), !var_0.a), Struct_1(_wgslsmith_mod_vec2_u32(u_input.b.yw, vec2<u32>(var_0.e, 29430u)) | _wgslsmith_clamp_vec2_u32(u_input.b.wy, vec2<u32>(var_0.e, var_0.e), u_input.b.ww), vec3<f32>(var_0.b, _wgslsmith_div_f32(var_0.b, global1[_wgslsmith_index_u32(var_0.e, 27u)]), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_0.e, 27u)]))), global1[_wgslsmith_index_u32(reverseBits(u_input.a), 27u)], vec3<u32>(_wgslsmith_clamp_u32(u_input.c ^ 1u, 0u, ~23359u), ~min(4294967295u, 10561u), u_input.b.x)));
    let var_2 = select(vec2<i32>(abs(firstLeadingBit(-35879i) & (var_1.x ^ var_0.c)), _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(var_1, countOneBits(vec4<i32>(0i, var_1.x, var_1.x, var_1.x))), var_1)), ~vec2<i32>(~_wgslsmith_mult_i32(var_0.c, var_0.c), var_0.c), var_0.d);
    global1 = array<f32, 27>();
    let var_3 = vec2<f32>(var_0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1836f)) - _wgslsmith_f_op_f32(-636f + 1608f)));
    global0 = array<Struct_1, 27>();
    var var_4 = vec3<u32>(var_0.e | _wgslsmith_add_u32(var_0.e, _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.e, var_0.e), vec2<u32>(22965u, var_0.e))), u_input.c << (u_input.e % 32u), ~var_0.e) ^ ~min(~vec3<u32>(u_input.d, var_0.e, 1u), ~(~vec3<u32>(var_0.e, u_input.c, 2245u)));
    var_4 = u_input.b.yyx;
    let var_5 = global0[_wgslsmith_index_u32(53692u, 27u)];
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 61929i, var_1.x), _wgslsmith_sub_vec3_i32(var_1.xzx, vec3<i32>(var_0.c, var_0.c, -2147483647i)))), u_input.b);
}

