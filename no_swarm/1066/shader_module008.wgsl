struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 32> = array<vec4<u32>, 32>(vec4<u32>(0u, 31251u, 45023u, 1u), vec4<u32>(34760u, 1u, 64507u, 22938u), vec4<u32>(0u, 238u, 1u, 10947u), vec4<u32>(1u, 82964u, 30256u, 1u), vec4<u32>(4294967295u, 4294967295u, 33369u, 5098u), vec4<u32>(0u, 1u, 4294967295u, 4294967295u), vec4<u32>(18121u, 0u, 1u, 0u), vec4<u32>(1u, 34805u, 76046u, 1u), vec4<u32>(73153u, 18522u, 44018u, 19750u), vec4<u32>(4294967295u, 4294967295u, 63371u, 7316u), vec4<u32>(0u, 3051u, 1u, 57688u), vec4<u32>(52168u, 29653u, 122581u, 52102u), vec4<u32>(4294967295u, 4294967295u, 76821u, 37204u), vec4<u32>(1u, 4294967295u, 17707u, 17909u), vec4<u32>(1u, 0u, 8764u, 10808u), vec4<u32>(1u, 0u, 3189u, 18025u), vec4<u32>(33825u, 9519u, 4294967295u, 1u), vec4<u32>(56276u, 15936u, 42274u, 4294967295u), vec4<u32>(13179u, 65523u, 4294967295u, 4294967295u), vec4<u32>(1u, 8739u, 4294967295u, 31936u), vec4<u32>(0u, 9461u, 817u, 31434u), vec4<u32>(8194u, 1u, 4294967295u, 9836u), vec4<u32>(86574u, 4294967295u, 11144u, 4294967295u), vec4<u32>(0u, 22785u, 10592u, 27248u), vec4<u32>(4294967295u, 1u, 0u, 21368u), vec4<u32>(8658u, 0u, 4294967295u, 0u), vec4<u32>(51167u, 4294967295u, 4294967295u, 64191u), vec4<u32>(23793u, 1u, 55665u, 0u), vec4<u32>(1u, 71541u, 90842u, 25493u), vec4<u32>(4294967295u, 57207u, 28413u, 55657u), vec4<u32>(31312u, 4294967295u, 0u, 0u), vec4<u32>(65006u, 8612u, 4294967295u, 5693u));

var<private> global1: array<i32, 21>;

var<private> global2: array<vec3<i32>, 3>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: Struct_3, arg_3: bool) -> i32 {
    let var_0 = global1[_wgslsmith_index_u32(abs(~4294967295u), 21u)];
    global2 = array<vec3<i32>, 3>();
    let var_1 = max(vec3<i32>(arg_1.a.x, -(~(-1i & arg_2.a.a.x)), abs(-26609i)), _wgslsmith_div_vec3_i32(-vec3<i32>(arg_1.a.x, abs(1i), 1i), countOneBits(firstTrailingBit(select(arg_2.a.a.wzx, arg_2.a.a.zyx, false)))));
    let var_2 = _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, ~u_input.a.x, _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(u_input.a, u_input.a) & ~u_input.a.x, countOneBits(u_input.a.x)), 1u >> (~(u_input.a.x | 0u) % 32u)), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~(~(u_input.a.x ^ u_input.a.x)), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x) ^ max(vec3<u32>(88678u, 4294967295u, u_input.a.x), vec3<u32>(u_input.a.x, 4294967295u, 1u)), ~vec3<u32>(u_input.a.x, u_input.a.x, 82324u) ^ vec3<u32>(2103u, 4294967295u, u_input.a.x))), 32u)]);
    global2 = array<vec3<i32>, 3>();
    return _wgslsmith_add_i32(-33218i, u_input.c);
}

fn func_2(arg_0: i32, arg_1: u32, arg_2: vec3<i32>, arg_3: i32) -> f32 {
    let var_0 = Struct_2(_wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(20876i, reverseBits(arg_3), arg_0, func_3(vec3<bool>(false, true, true), Struct_2(vec4<i32>(-12127i, u_input.c, -39679i, -2147483647i), Struct_1(true), -1151f, Struct_1(true)), Struct_3(Struct_2(vec4<i32>(arg_0, global1[_wgslsmith_index_u32(4294967295u, 21u)], arg_3, 10692i), Struct_1(false), -514f, Struct_1(false))), false)), reverseBits(vec4<i32>(8378i, 69393i, arg_2.x, arg_2.x))), -vec4<i32>(_wgslsmith_mult_i32(u_input.c, 0i), 2147483647i, -3145i, min(1i, global1[_wgslsmith_index_u32(arg_1, 21u)]))), Struct_1(any(vec3<bool>(true, true, select(true, false, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2298f)), Struct_1(any(vec3<bool>(true, true, true)) | !any(vec2<bool>(false, true))));
    return var_0.c;
}

fn func_1(arg_0: i32, arg_1: u32) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_2(arg_0, arg_1, vec3<i32>(u_input.b, -2455i, u_input.b), -52050i)), _wgslsmith_div_f32(-490f, -1712f)))), -166f));
    return Struct_2(_wgslsmith_div_vec4_i32(max(~vec4<i32>(global1[_wgslsmith_index_u32(1u, 21u)], u_input.c, arg_0, -4004i), reverseBits(vec4<i32>(279i, -2147483647i, global1[_wgslsmith_index_u32(4294967295u, 21u)], -2147483647i))), abs(vec4<i32>(-20014i, 21522i, -18764i, -11658i))) << (abs(~_wgslsmith_add_vec4_u32(global0[_wgslsmith_index_u32(71942u, 32u)], global0[_wgslsmith_index_u32(arg_1, 32u)])) % vec4<u32>(32u)), Struct_1(any(vec2<bool>(true, false)) != true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(_wgslsmith_add_i32(u_input.c, arg_0), 55056u, vec3<i32>(~arg_0, _wgslsmith_div_i32(arg_0, 22179i), -1i), _wgslsmith_add_i32(5780i, -2147483647i)))), Struct_1(!(-u_input.b == global1[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a.x, 1u), 21u)])));
}

fn func_4(arg_0: Struct_2) -> vec4<u32> {
    let var_0 = func_1(0i, ~max(0u, _wgslsmith_sub_u32(~u_input.a.x, abs(u_input.a.x))));
    var var_1 = u_input.a.x;
    let var_2 = true;
    global2 = array<vec3<i32>, 3>();
    let var_3 = 1i;
    return vec4<u32>(max(_wgslsmith_dot_vec4_u32(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(22570u, u_input.a.x), 32u)] >> ((global0[_wgslsmith_index_u32(0u, 32u)] & global0[_wgslsmith_index_u32(u_input.a.x, 32u)]) % vec4<u32>(32u)), reverseBits(vec4<u32>(u_input.a.x, 0u, 7563u, u_input.a.x))), _wgslsmith_add_u32(50589u, ~_wgslsmith_div_u32(u_input.a.x, 0u))), _wgslsmith_add_u32(max(_wgslsmith_add_u32(u_input.a.x, 4294967295u), ~(~6775u)), _wgslsmith_mult_u32(u_input.a.x, select(1u, _wgslsmith_mult_u32(114834u, u_input.a.x), true))), _wgslsmith_mod_u32(u_input.a.x >> (1u % 32u), ~0u) << (countOneBits(_wgslsmith_sub_u32(~u_input.a.x, 11071u)) % 32u), u_input.a.x);
}

fn func_5(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: i32, arg_3: f32) -> Struct_1 {
    var var_0 = -1i;
    let var_1 = true;
    return Struct_1(all(vec4<bool>(all(select(vec2<bool>(false, true), vec2<bool>(var_1, var_1), arg_1.d.a)), true, any(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(arg_1.b.a, true))), false)));
}

fn func_6(arg_0: Struct_1) -> Struct_2 {
    var var_0 = -global2[_wgslsmith_index_u32(6698u, 3u)];
    global1 = array<i32, 21>();
    let var_1 = !arg_0.a;
    let var_2 = u_input.a.x;
    global2 = array<vec3<i32>, 3>();
    return func_1(var_0.x, var_2);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<u32>, 32>();
    global1 = array<i32, 21>();
    var var_0 = func_6(func_5(_wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 1u), vec4<u32>(u_input.a.x, u_input.a.x, 0u, u_input.a.x)) ^ max(global0[_wgslsmith_index_u32(u_input.a.x, 32u)], vec4<u32>(u_input.a.x, 7787u, u_input.a.x, u_input.a.x)), func_4(func_1(-4410i, u_input.a.x))), func_1(53901i, u_input.a.x), u_input.b, _wgslsmith_f_op_f32(f32(-1f) * -761f)));
    var var_1 = Struct_2(var_0.a, func_6(Struct_1(var_0.d.a)).d, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_2(var_0.a.x, 147733u, vec3<i32>(47386i, -23569i, var_0.a.x), var_0.a.x))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.c), _wgslsmith_f_op_f32(f32(-1f) * -1122f))))), func_1(~10531i, 41473u).d);
    var var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c, -401f, -1159f, var_0.c) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(138f + _wgslsmith_f_op_f32(trunc(var_1.c))), _wgslsmith_f_op_f32(-var_0.c), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(1000f, var_0.c)))), -1030f), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.c, var_0.c, 179f, -1137f), vec4<f32>(var_0.c, -936f, var_0.c, 205f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(644f, 613f, var_1.c, var_1.c), vec4<f32>(-996f, 616f, 972f, var_0.c), var_0.d.a))))), !var_0.d.a)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(6309u, ~abs(_wgslsmith_dot_vec2_u32(u_input.a, u_input.a)), 0u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x) | max(u_input.a, u_input.a), select(u_input.a, vec2<u32>(u_input.a.x, 10291u) | u_input.a, select(false, true, false)))));
}

