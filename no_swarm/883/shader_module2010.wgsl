struct Struct_1 {
    a: vec2<bool>,
    b: u32,
    c: vec3<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec4<i32>,
    c: i32,
    d: Struct_2,
    e: vec3<bool>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: f32,
}

struct Struct_5 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 23>;

var<private> global1: array<vec3<u32>, 20> = array<vec3<u32>, 20>(vec3<u32>(37476u, 121567u, 4294967295u), vec3<u32>(0u, 14596u, 1u), vec3<u32>(1u, 1u, 4294967295u), vec3<u32>(0u, 5288u, 70102u), vec3<u32>(0u, 1u, 0u), vec3<u32>(18066u, 13724u, 0u), vec3<u32>(13356u, 0u, 9015u), vec3<u32>(43570u, 0u, 0u), vec3<u32>(1u, 24342u, 44828u), vec3<u32>(1302u, 61621u, 39u), vec3<u32>(18868u, 2308u, 4294967295u), vec3<u32>(1u, 0u, 28019u), vec3<u32>(22827u, 4953u, 1u), vec3<u32>(18227u, 0u, 1374u), vec3<u32>(45820u, 63653u, 80337u), vec3<u32>(28273u, 1u, 4294967295u), vec3<u32>(35045u, 16645u, 1u), vec3<u32>(68899u, 5985u, 1u), vec3<u32>(48319u, 12777u, 4294967295u), vec3<u32>(8191u, 76164u, 755u));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_4, arg_1: f32, arg_2: vec4<u32>) -> vec3<bool> {
    let var_0 = arg_0.a.zx;
    global0 = array<u32, 23>();
    var var_1 = 68059u;
    global1 = array<vec3<u32>, 20>();
    let var_2 = vec2<bool>(true, false);
    return !(!vec3<bool>(true, any(select(vec3<bool>(true, var_2.x, true), vec3<bool>(var_2.x, var_2.x, true), vec3<bool>(var_2.x, var_2.x, var_2.x))), select(all(var_2), any(vec2<bool>(false, true)), all(vec3<bool>(var_2.x, var_2.x, var_2.x)))));
}

fn func_2(arg_0: vec4<u32>, arg_1: f32) -> vec2<bool> {
    var var_0 = vec4<i32>(-20947i, firstLeadingBit(-1i), firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -8964i, 1i, -30984i), vec4<i32>(u_input.a, -2472i, -42032i, -14797i)) ^ _wgslsmith_add_i32(2162i, u_input.c)) << (u_input.b.x % 32u), _wgslsmith_sub_i32((_wgslsmith_clamp_i32(-7209i, u_input.a, u_input.c) >> (1u % 32u)) ^ ~_wgslsmith_sub_i32(u_input.c, u_input.c), u_input.a));
    var var_1 = Struct_3(_wgslsmith_mod_vec4_u32(vec4<u32>(reverseBits(arg_0.x), 1u, ~arg_0.x, firstTrailingBit(1u)) << (vec4<u32>(3990u, max(global0[_wgslsmith_index_u32(66440u, 23u)], 53828u), 79679u, _wgslsmith_add_u32(u_input.b.x, 4294967295u)) % vec4<u32>(32u)), arg_0), abs(_wgslsmith_div_vec4_i32(select(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, -1i, -57520i, -30264i), vec4<i32>(9093i, u_input.c, var_0.x, var_0.x)), abs(vec4<i32>(-2147483647i, var_0.x, u_input.c, var_0.x)), true), -vec4<i32>(var_0.x, var_0.x, -9480i, var_0.x) ^ (vec4<i32>(var_0.x, u_input.a, -14320i, -1i) ^ vec4<i32>(-5208i, 22069i, var_0.x, var_0.x)))), 33347i, Struct_2(~_wgslsmith_clamp_vec4_i32(-vec4<i32>(1i, 0i, -18932i, -47822i), ~vec4<i32>(2699i, 50182i, 2147483647i, 14980i), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, -2147483647i, var_0.x, u_input.c), vec4<i32>(53824i, 1i, 2147483647i, var_0.x)))), !(!(!select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false)))));
    global0 = array<u32, 23>();
    var var_2 = var_1.a.zwz;
    var_0 = select(vec4<i32>(u_input.a, 1i, var_1.d.a.x, ~_wgslsmith_dot_vec2_i32(var_0.yw & var_0.wx, var_0.zy & vec2<i32>(u_input.c, var_0.x))), vec4<i32>(var_0.x, -firstTrailingBit(u_input.a) | ~(-2147483647i), 35388i, var_0.x), true);
    return select(select(vec2<bool>(true, true), var_1.e.yy, select(vec2<bool>(!var_1.e.x, true), var_1.e.zz, !var_1.e.x)), !var_1.e.zy, vec2<bool>(u_input.a == -u_input.a, all(func_3(Struct_4(vec4<f32>(885f, 330f, arg_1, arg_1), -775f), _wgslsmith_f_op_f32(select(arg_1, arg_1, var_1.e.x)), ~var_1.a))));
}

fn func_1(arg_0: vec2<bool>) -> vec4<u32> {
    let var_0 = Struct_1(func_2(firstLeadingBit(select(~vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 23u)], 23u)]), ~vec4<u32>(23784u, 96292u, 1u, u_input.b.x), arg_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -983f)), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, 14890u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 23u)], 23u)]), global1[_wgslsmith_index_u32(29524u | u_input.b.x, 20u)]), 23u)], 23u)], _wgslsmith_mult_u32(1u, ~1u), _wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(0u, 23u)] >> (62421u % 32u), u_input.b.x | global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(2665u, 23u)], 23u)], 1u))), 23u)], 23u)], _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(551f, -2403f, 1474f) + vec3<f32>(212f, -361f, 199f)) - _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-493f, -1189f, -672f)))))));
    global1 = array<vec3<u32>, 20>();
    global0 = array<u32, 23>();
    var var_1 = firstLeadingBit(_wgslsmith_sub_i32(1i, u_input.c));
    let var_2 = Struct_3(vec4<u32>(_wgslsmith_add_u32(_wgslsmith_clamp_u32(~36657u, var_0.b, ~43557u), u_input.b.x), var_0.b, _wgslsmith_mod_u32(firstTrailingBit(0u), max(18931u, u_input.b.x | var_0.b)), (~var_0.b << ((global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0.b, 23u)], 23u)], 23u)] & 9487u) % 32u)) & global0[_wgslsmith_index_u32(firstLeadingBit(~4294967295u), 23u)]), _wgslsmith_mult_vec4_i32(vec4<i32>(-u_input.a & (u_input.c | 0i), u_input.c, 2147483647i, -4853i), -vec4<i32>(0i, 22328i, 11853i, u_input.c) >> (firstLeadingBit(vec4<u32>(var_0.b, 69303u, var_0.b, var_0.b)) % vec4<u32>(32u))), -1i, Struct_2(~_wgslsmith_div_vec4_i32(-vec4<i32>(u_input.c, 9173i, 3179i, -1i), vec4<i32>(-2040i, 1i, -1i, u_input.a) << (vec4<u32>(4294967295u, 27342u, var_0.b, 51280u) % vec4<u32>(32u)))), vec3<bool>(arg_0.x, any(!vec4<bool>(var_0.a.x, false, true, var_0.a.x)), all(arg_0)));
    return _wgslsmith_mult_vec4_u32(vec4<u32>(44968u, var_2.a.x, _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(abs(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 23u)], 20u)]), ~vec3<u32>(7654u, u_input.b.x, 0u)), var_0.b), 1u), ~vec4<u32>(~(~var_2.a.x), _wgslsmith_mod_u32(1u, abs(var_0.b)), 0u, u_input.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_dot_vec4_u32(~(~(~func_1(vec2<bool>(true, true)))), _wgslsmith_mod_vec4_u32(vec4<u32>(reverseBits(0u & global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b.x, 23u)], 23u)]), 1u, (21508u >> (u_input.b.x % 32u)) | global0[_wgslsmith_index_u32(max(global0[_wgslsmith_index_u32(3035u, 23u)], u_input.b.x), 23u)], 87775u), max(~countOneBits(vec4<u32>(u_input.b.x, global0[_wgslsmith_index_u32(u_input.b.x, 23u)], u_input.b.x, 4294967295u)), _wgslsmith_mult_vec4_u32(abs(vec4<u32>(u_input.b.x, u_input.b.x, 4294967295u, 1u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b.x, 28274u, 19792u, u_input.b.x), vec4<u32>(u_input.b.x, 1u, u_input.b.x, 53381u), vec4<u32>(global0[_wgslsmith_index_u32(u_input.b.x, 23u)], global0[_wgslsmith_index_u32(u_input.b.x, 23u)], 0u, 4294967295u))))));
    var_0 = 0u;
    var var_1 = vec2<f32>(1493f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-341f)), -485f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-379f + 1000f)) + -926f), true)));
    var var_2 = Struct_4(vec4<f32>(var_1.x, var_1.x, _wgslsmith_f_op_f32(f32(-1f) * -300f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1.x))) - _wgslsmith_f_op_f32(f32(-1f) * -233f))), _wgslsmith_f_op_f32(max(-565f, _wgslsmith_f_op_f32(round(var_1.x)))));
    let var_3 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(2203u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(firstLeadingBit(40542u), 23u)] ^ abs(_wgslsmith_add_u32(u_input.b.x, u_input.b.x)), 23u)] | ~(~4294967295u << (~global0[_wgslsmith_index_u32(u_input.b.x, 23u)] % 32u))), 20u)];
    let var_4 = Struct_1(func_2(~select(_wgslsmith_mod_vec4_u32(vec4<u32>(var_3.x, u_input.b.x, 1u, u_input.b.x), vec4<u32>(u_input.b.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b.x, 23u)], 23u)], 20164u, 13510u)), vec4<u32>(global0[_wgslsmith_index_u32(u_input.b.x, 23u)], var_3.x, 4294967295u, global0[_wgslsmith_index_u32(4294967295u, 23u)]), vec4<bool>(true, false, true, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(338f, -1491f))) - 1771f)), _wgslsmith_mult_u32(41498u, 4660u), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(var_2.a.xww, _wgslsmith_f_op_vec3_f32(-var_2.a.wyy)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(var_2.a.wzx)), vec3<f32>(-128f, var_1.x, -1436f), any(vec4<bool>(true, false, false, true)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_2.a.yyz - var_2.a.xyw)))));
    let var_5 = Struct_3(vec4<u32>(_wgslsmith_mult_u32(countOneBits(var_3.x) ^ global0[_wgslsmith_index_u32(select(u_input.b.x, 0u, true), 23u)], abs(1u)), u_input.b.x, select(var_3.x, 20256u, var_4.a.x), u_input.b.x), abs(firstTrailingBit(-vec4<i32>(2147483647i, u_input.c, u_input.c, u_input.c) << (countOneBits(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, var_3.x)) % vec4<u32>(32u)))), _wgslsmith_dot_vec4_i32(~(-_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, u_input.c, u_input.a, 9446i), vec4<i32>(u_input.a, u_input.a, u_input.c, 1i))), vec4<i32>(u_input.c, -2147483647i, -_wgslsmith_add_i32(u_input.a, u_input.c), -_wgslsmith_dot_vec4_i32(vec4<i32>(-10889i, u_input.a, u_input.a, 0i), vec4<i32>(0i, u_input.c, u_input.c, -2147483647i)))), Struct_2(_wgslsmith_add_vec4_i32(~(vec4<i32>(1i, 0i, u_input.c, u_input.c) << (vec4<u32>(1u, 1u, 1u, 4294967295u) % vec4<u32>(32u))), vec4<i32>(_wgslsmith_clamp_i32(35841i, u_input.a, 2147483647i), 1i, select(-2547i, u_input.a, var_4.a.x), u_input.a))), vec3<bool>(var_4.a.x, var_4.a.x, !(!(!var_4.a.x))));
    var var_6 = vec2<bool>(true, false);
    let var_7 = countOneBits(abs(~vec3<i32>(var_5.b.x, var_5.c, -7991i))) & ((var_5.d.a.xww ^ (_wgslsmith_div_vec3_i32(var_5.b.wyw, var_5.d.a.wzy) ^ _wgslsmith_sub_vec3_i32(var_5.d.a.zxw, var_5.d.a.xyz))) ^ (var_5.d.a.zzy | select(~vec3<i32>(-2147483647i, u_input.c, u_input.a), abs(vec3<i32>(-7982i, u_input.a, -32151i)), any(var_5.e))));
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, ~(-vec2<i32>(-1i, u_input.c)) | firstTrailingBit(~(~vec2<i32>(-70037i, var_7.x))), vec3<i32>(~_wgslsmith_clamp_i32(_wgslsmith_mult_i32(var_7.x, -1i), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, -2147483647i, var_5.b.x), vec4<i32>(-29691i, var_7.x, u_input.a, u_input.c)), _wgslsmith_dot_vec3_i32(vec3<i32>(var_7.x, var_7.x, 91709i), var_7)), _wgslsmith_div_i32(~_wgslsmith_mod_i32(-10207i, var_7.x), var_7.x), ~(~(-8213i & var_7.x))), 34581u);
}

