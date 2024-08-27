struct Struct_1 {
    a: vec2<u32>,
    b: vec4<i32>,
    c: f32,
    d: u32,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: u32,
    b: bool,
    c: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 24>;

var<private> global1: u32 = 4294967295u;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: bool) -> bool {
    global1 = 126135u;
    var var_0 = select(select(select(vec4<bool>(arg_0, select(false, arg_0, false), true, true), !vec4<bool>(arg_0, arg_0, true, true), any(vec4<bool>(false, false, false, arg_0))), !(!select(vec4<bool>(arg_0, true, true, arg_0), vec4<bool>(true, false, arg_0, arg_0), arg_0)), true | !(u_input.a.x == 0u)), vec4<bool>(all(vec2<bool>(arg_0 && false, true)), !(arg_0 & true), true, true), true);
    var var_1 = countOneBits(40161i) & ~_wgslsmith_dot_vec2_i32(vec2<i32>(firstLeadingBit(2147483647i), 1i), -vec2<i32>(-1i, 57630i));
    global1 = ~_wgslsmith_sub_u32(u_input.a.x ^ _wgslsmith_mult_u32(u_input.a.x, u_input.a.x), 1u) >> (~(~_wgslsmith_div_u32(u_input.a.x, ~11553u)) % 32u);
    let var_2 = Struct_2(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, _wgslsmith_div_u32(~u_input.a.x, u_input.a.x), u_input.a.x), _wgslsmith_add_vec3_u32(u_input.a, u_input.a)), 24u)], Struct_1(select(abs(u_input.a.zz), abs(reverseBits(u_input.a.xy)), var_0.wz), vec4<i32>(~(~18318i), _wgslsmith_sub_i32(~(-51500i), select(10927i, -14501i, arg_0)), -2147483647i, reverseBits(-22983i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1046f))), ~31359u, !any(!vec4<bool>(var_0.x, true, false, false))));
    return arg_0;
}

fn func_2(arg_0: i32, arg_1: Struct_1) -> Struct_2 {
    var var_0 = !vec2<bool>(func_3(!(!arg_1.e)), !(!arg_1.e));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(floor(arg_1.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(arg_1.c, arg_1.c))))));
    var_0 = !(!vec2<bool>(all(select(vec3<bool>(false, arg_1.e, arg_1.e), vec3<bool>(var_0.x, arg_1.e, arg_1.e), vec3<bool>(false, var_0.x, false))), (arg_1.b.x ^ -1i) <= arg_0));
    let var_2 = 0u;
    var var_3 = Struct_3(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(arg_1.c, _wgslsmith_f_op_f32(round(arg_1.c))), _wgslsmith_div_f32(arg_1.c, _wgslsmith_f_op_f32(select(var_1.x, arg_1.c, true))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-217f))), !func_3(true))));
    return Struct_2(Struct_1(vec2<u32>(_wgslsmith_mod_u32(52200u, _wgslsmith_add_u32(u_input.a.x, 82081u)), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, var_2, arg_1.a.x, 86672u), vec4<u32>(4699u, var_2, 2833u, 85688u))), arg_1.b, var_3.a, u_input.a.x, var_0.x), Struct_1((_wgslsmith_mult_vec2_u32(vec2<u32>(726u, 0u), vec2<u32>(0u, 0u)) << (arg_1.a % vec2<u32>(32u))) ^ vec2<u32>(arg_1.d, ~arg_1.a.x), -firstLeadingBit(arg_1.b), _wgslsmith_f_op_f32(f32(-1f) * -1269f), ~4083u, true));
}

fn func_1(arg_0: f32, arg_1: Struct_1) -> vec2<f32> {
    var var_0 = func_2(arg_1.b.x, Struct_1(arg_1.a, arg_1.b, _wgslsmith_f_op_f32(ceil(arg_1.c)), u_input.a.x, false));
    var var_1 = Struct_4(var_0.b.d, (~47522i >> (~arg_1.d % 32u)) > arg_1.b.x, arg_1.c);
    let var_2 = _wgslsmith_dot_vec4_i32(var_0.b.b << (_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, max(arg_1.d, 30830u), firstTrailingBit(5703u), select(57522u, 4294967295u, false)), firstLeadingBit(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, arg_1.d, 21747u, 43318u), vec4<u32>(var_1.a, var_1.a, arg_1.a.x, arg_1.d)))) % vec4<u32>(32u)), countOneBits(~vec4<i32>(6343i, 47476i, var_0.b.b.x, arg_1.b.x)) ^ vec4<i32>(_wgslsmith_div_i32(_wgslsmith_sub_i32(var_0.a.b.x, 14561i), abs(2147483647i)), (i32(-1i) * -29301i) ^ reverseBits(arg_1.b.x), var_0.a.b.x, _wgslsmith_mult_i32(firstTrailingBit(var_0.b.b.x), ~var_0.b.b.x)));
    global0 = array<Struct_1, 24>();
    var var_3 = _wgslsmith_dot_vec3_i32(vec3<i32>(-36153i, -countOneBits(var_0.b.b.x), var_2) | abs(abs(var_0.a.b.zyz)), -vec3<i32>(_wgslsmith_clamp_i32(-var_2, var_0.a.b.x, abs(2147483647i)), firstTrailingBit(1i), _wgslsmith_sub_i32(var_0.a.b.x, -2147483647i) << (1u % 32u)));
    return _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.c) * 1007f)))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = 16998u;
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(996f, 145f)) - _wgslsmith_f_op_vec2_f32(func_1(-897f, Struct_1(u_input.a.xx, vec4<i32>(-7580i, -26051i, 1i, 1i), 1113f, 0u, false))))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(vec2<f32>(450f, -631f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1227f, 1060f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-742f, 1020f), vec2<f32>(678f, 551f)))))), func_2(~(~(-21494i)), Struct_1(u_input.a.yy, _wgslsmith_mod_vec4_i32(vec4<i32>(-69679i, -32090i, 17708i, 0i), vec4<i32>(3137i, -7299i, -5910i, 43899i)), 739f, 19585u << (u_input.a.x % 32u), true)).a.e)));
    var_0 = _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-650f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-667f, -1043f, false)), _wgslsmith_f_op_f32(max(-1346f, var_0.x)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1543f + var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -660f)))))));
    let var_1 = vec2<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.x))) <= _wgslsmith_f_op_f32(f32(-1f) * -158f), true);
    var var_2 = -abs(_wgslsmith_sub_i32(-65215i, _wgslsmith_dot_vec2_i32(vec2<i32>(-19872i, -26865i), vec2<i32>(10637i, -2147483647i)) | 1i));
    let var_3 = !vec4<bool>(select(var_1.x, true && !var_1.x, all(vec2<bool>(var_1.x, var_1.x))), true, _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_vec2_f32(func_1(var_0.x, global0[_wgslsmith_index_u32(u_input.a.x, 24u)])).x) < _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x - var_0.x), -240f), var_1.x);
    let x = u_input.a;
    s_output = StorageBuffer(max(_wgslsmith_mult_i32(0i >> (_wgslsmith_div_u32(u_input.a.x, u_input.a.x) % 32u), ~0i), _wgslsmith_dot_vec2_i32(vec2<i32>(~(-10898i), 16300i), countOneBits(vec2<i32>(-15430i, 52209i) >> (vec2<u32>(u_input.a.x, 1u) % vec2<u32>(32u))))), vec4<i32>(2147483647i, ~(-29728i), firstTrailingBit(abs(-26955i)) | -28i, 41300i));
}

