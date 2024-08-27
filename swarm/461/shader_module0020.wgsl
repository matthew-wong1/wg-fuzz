struct Struct_1 {
    a: bool,
    b: bool,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: Struct_1,
    d: vec3<bool>,
    e: vec2<bool>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: f32,
    d: u32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<Struct_2, 7>;

var<private> global2: i32;

var<private> global3: array<Struct_1, 21>;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: vec2<bool>, arg_3: Struct_1) -> i32 {
    let var_0 = Struct_3(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1538f, -621f))), -146f, _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(abs(-301f)))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(666f, 2088f, -322f))) * _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-371f, -519f, -1000f), vec3<f32>(1067f, -1451f, -765f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1301f, 818f, 437f) + vec3<f32>(-211f, -1000f, 1000f))))), arg_0);
    let var_1 = arg_1;
    var var_2 = global1[_wgslsmith_index_u32(~u_input.b, 7u)];
    var_2 = global1[_wgslsmith_index_u32(~(~_wgslsmith_sub_u32(min(var_2.a, ~var_2.a), 4294967295u)), 7u)];
    var var_3 = Struct_3(_wgslsmith_f_op_vec3_f32(min(var_0.a, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(var_0.a * _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-264f, -1000f, var_0.a.x), var_0.a))))))), var_0.b);
    return max(i32(-1i) * -1i, -47872i);
}

fn func_4(arg_0: i32) -> vec3<bool> {
    var var_0 = reverseBits(_wgslsmith_mult_vec4_u32(vec4<u32>(~(~u_input.a.x), _wgslsmith_add_u32(0u, select(u_input.b, u_input.b, true)), u_input.a.x, 4294967295u), ~countOneBits(select(vec4<u32>(80069u, 4294967295u, u_input.a.x, 6981u), vec4<u32>(u_input.b, 12049u, 1u, 2052u), vec4<bool>(false, false, false, false)))));
    global3 = array<Struct_1, 21>();
    let var_1 = _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(~u_input.a.x, abs(u_input.b), 7918u, reverseBits(var_0.x)), firstTrailingBit(~vec4<u32>(var_0.x, u_input.b, 0u, 1u))), ~abs(max(u_input.a.x, var_0.x))), min(~u_input.a.yz, var_0.yz));
    global0 = false;
    let var_2 = vec3<bool>(!(all(vec4<bool>(true, false, true, false)) != any(vec3<bool>(true, true, true))), true, !(!(all(vec3<bool>(true, false, false)) || any(vec4<bool>(true, false, false, true)))));
    return vec3<bool>(-419f < _wgslsmith_f_op_f32(trunc(688f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -649f))) + _wgslsmith_f_op_f32(1000f + 996f)) <= -1602f, !all(vec4<bool>(any(var_2.yy), var_2.x, true, var_2.x)));
}

fn func_2() -> u32 {
    var var_0 = func_4(func_3(global3[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a.x, reverseBits(u_input.b) ^ reverseBits(43778u)), 21u)], u_input.a.x >= ~(~u_input.a.x), select(vec2<bool>(true, true), vec2<bool>(true, all(vec3<bool>(false, true, true))), vec2<bool>(true, all(vec3<bool>(false, false, true)))), Struct_1(all(vec2<bool>(true, true)), true)));
    var var_1 = reverseBits(abs(max(vec2<i32>(u_input.c.x, u_input.c.x) << (vec2<u32>(u_input.a.x, 68847u) % vec2<u32>(32u)), -vec2<i32>(60751i, u_input.c.x))));
    var_0 = vec3<bool>(_wgslsmith_add_i32(var_1.x, -countOneBits(15265i)) > ~(~min(0i, var_1.x)), true, var_0.x & (var_1.x > var_1.x));
    var var_2 = ~_wgslsmith_clamp_u32(11381u, u_input.a.x, 4275u);
    var_2 = u_input.a.x;
    return reverseBits(countOneBits(_wgslsmith_mod_u32(u_input.a.x, u_input.a.x) << (38884u % 32u)) >> (_wgslsmith_mult_u32(~u_input.a.x, u_input.a.x) % 32u));
}

fn func_1(arg_0: f32) -> Struct_2 {
    global2 = 43591i << (_wgslsmith_mod_u32(1u, ~74996u) % 32u);
    let var_0 = global3[_wgslsmith_index_u32(u_input.b, 21u)];
    var var_1 = vec2<u32>(reverseBits(62358u) >> (func_2() % 32u), u_input.a.x);
    let var_2 = func_3(Struct_1(true, true), func_4(46856i).x, !(!func_4(-u_input.d.x).yx), Struct_1(u_input.c.x < ~min(u_input.d.x, 2147483647i), true));
    var var_3 = select(max(~u_input.a.x, _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(var_1.x, 32004u, 32108u, 1u), abs(vec4<u32>(var_1.x, u_input.a.x, u_input.b, u_input.b))), ~(73082u | u_input.a.x))), ~(~(u_input.b >> ((44132u << (u_input.b % 32u)) % 32u))), !any(vec2<bool>(var_0.b, var_0.a || false)));
    return global1[_wgslsmith_index_u32(7678u, 7u)];
}

fn func_5(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: f32, arg_3: Struct_1) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1064f, arg_2)))))), vec2<f32>(_wgslsmith_f_op_f32(-1000f - arg_2), arg_0.b))));
    var var_1 = global3[_wgslsmith_index_u32(34518u, 21u)];
    let var_2 = 1i;
    var var_3 = select(select(!vec4<bool>(var_1.b, -471f <= arg_2, true, !arg_3.a), select(vec4<bool>(!arg_0.e.x, all(arg_0.d), !arg_3.b, arg_0.e.x), vec4<bool>(arg_3.a, true, arg_3.b, true), !all(arg_0.d.xz)), vec4<bool>(true, var_1.b, !(true || arg_0.e.x), true)), select(vec4<bool>(all(vec4<bool>(true, var_1.b, arg_0.d.x, false)) | any(vec4<bool>(arg_3.b, arg_0.e.x, true, var_1.b)), true, !arg_0.c.b || true, !select(var_1.a, false, arg_3.b)), vec4<bool>(true, true, true, true), true), !(!all(!vec4<bool>(arg_0.c.b, arg_0.d.x, false, var_1.a))));
    let var_4 = func_1(var_0.x);
    return Struct_3(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(1346f, -1339f, arg_2) * vec3<f32>(-1511f, arg_2, arg_0.b)))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1245f, arg_0.b, var_4.b)), vec3<f32>(_wgslsmith_f_op_f32(exp2(var_4.b)), var_4.b, var_0.x))), Struct_1(false, !any(var_4.d)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_dot_vec2_u32(firstLeadingBit(_wgslsmith_div_vec2_u32(~vec2<u32>(u_input.b, u_input.b), u_input.a.xx)), u_input.a.xz);
    let var_1 = _wgslsmith_mod_i32(-24676i, firstTrailingBit(-1i));
    var var_2 = func_5(func_1(606f), vec2<i32>(-1i) * -vec2<i32>(u_input.c.x, _wgslsmith_div_i32(1i, var_1)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1239f))), func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(func_1(-504f).b)))).c);
    var var_3 = var_0;
    var_3 = 10340u;
    var var_4 = global1[_wgslsmith_index_u32(firstLeadingBit(var_0), 7u)];
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~(vec4<u32>(4294967295u, 1u, u_input.b, 4294967295u) | vec4<u32>(u_input.a.x, u_input.a.x, 58055u, var_4.a)))), vec3<i32>(2147483647i, u_input.d.x, -77043i), _wgslsmith_f_op_f32(1088f + var_4.b), abs(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, u_input.b, var_0, var_0), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.b)), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, var_0, 47418u, 20791u), vec4<u32>(4294967295u, 1u, var_4.a, var_0)))) ^ ~var_4.a, vec3<i32>(u_input.c.x, 1i, u_input.d.x));
}

