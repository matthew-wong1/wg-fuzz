struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: Struct_1,
    c: vec3<u32>,
    d: vec2<i32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 3>;

var<private> global1: f32 = -716f;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
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

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: i32) -> vec3<f32> {
    var var_0 = vec4<i32>(_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(0i, -1i, arg_0, arg_0), vec4<i32>(u_input.b, arg_0, u_input.b, -2147483647i)), -vec4<i32>(10016i, -2147483647i, -3494i, -1i)), _wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.a, -1i, arg_0), vec3<i32>(0i, arg_0, 2147483647i))), -1874i, 18688i, -arg_0) & vec4<i32>(_wgslsmith_dot_vec2_i32(abs(_wgslsmith_div_vec2_i32(vec2<i32>(-1i, 47515i), vec2<i32>(-22754i, -24346i))), vec2<i32>(arg_0 << (33113u % 32u), -u_input.a)), -4826i, (firstTrailingBit(45773i) << (u_input.d % 32u)) | -(~0i), _wgslsmith_add_i32(_wgslsmith_sub_i32(arg_0 & arg_0, max(-2147483647i, -37219i)), ~max(arg_0, 1i)));
    var var_1 = !((u_input.c.x >= 19205u) & true);
    var var_2 = !(any(vec2<bool>(true, true)) && (all(vec2<bool>(true, true)) || !any(vec4<bool>(true, false, false, false))));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.d, 3u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-635f + -1141f) * global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(u_input.c, u_input.c), 3u)]), _wgslsmith_div_f32(-1130f, global0[_wgslsmith_index_u32(0u, 3u)]))));
}

fn func_2(arg_0: vec2<i32>, arg_1: f32, arg_2: vec2<u32>) -> Struct_4 {
    var var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_clamp_i32(u_input.a, _wgslsmith_mult_i32(-53785i, u_input.b), ~u_input.a)))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0[_wgslsmith_index_u32(arg_2.x, 3u)], -695f, 173f), vec3<f32>(-1000f, global0[_wgslsmith_index_u32(30u, 3u)], global0[_wgslsmith_index_u32(4294967295u, 3u)]), vec3<bool>(false, false, true)))) - vec3<f32>(1000f, arg_1, global0[_wgslsmith_index_u32(0u, 3u)])))));
    let var_1 = !select(!(!select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false))), vec3<bool>(_wgslsmith_f_op_f32(arg_1 - 479f) >= _wgslsmith_f_op_f32(trunc(var_0.x)), all(vec2<bool>(true, true)) | true, false), vec3<bool>(true, true, true));
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) * global0[_wgslsmith_index_u32((71837u ^ ~u_input.d) | 17204u, 3u)]), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_0.x, var_0.x), 1893f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - 334f)), _wgslsmith_div_f32(-1952f, _wgslsmith_f_op_f32(-arg_1))))), var_0.x);
    var_0 = vec3<f32>(global0[_wgslsmith_index_u32(u_input.d, 3u)], _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1588f) - _wgslsmith_f_op_f32(abs(1821f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(17510u, arg_2.x, u_input.c.x), 3u)], _wgslsmith_f_op_f32(-var_0.x))), arg_1, true)))), arg_1);
    let var_2 = global0[_wgslsmith_index_u32(4294967295u | u_input.c.x, 3u)];
    return Struct_4(_wgslsmith_f_op_f32(f32(-1f) * -1129f), Struct_1(~_wgslsmith_mod_vec3_u32(reverseBits(vec3<u32>(0u, 3044u, arg_2.x)), firstLeadingBit(u_input.c.yzw))), vec3<u32>(arg_2.x, ~u_input.c.x, 0u), abs(select(reverseBits(arg_0), -arg_0, var_1.x) | _wgslsmith_div_vec2_i32(vec2<i32>(11924i, 2147483647i), arg_0 << (vec2<u32>(59615u, u_input.d) % vec2<u32>(32u)))), Struct_1(vec3<u32>(u_input.d, 31908u, u_input.d)));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_4) -> Struct_2 {
    var var_0 = Struct_2(false);
    var_0 = Struct_2(any(!(!vec2<bool>(false, var_0.a))));
    var var_1 = func_2(func_2(~abs(-arg_1.d), arg_1.a, _wgslsmith_mod_vec2_u32(~func_2(arg_1.d, arg_1.a, vec2<u32>(arg_1.e.a.x, 4294967295u)).e.a.yy, ~arg_1.c.xx >> (vec2<u32>(4294967295u, 34140u) % vec2<u32>(32u)))).d, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_1.a, _wgslsmith_f_op_f32(f32(-1f) * -288f)))))), vec2<u32>(4294967295u, _wgslsmith_mult_u32(_wgslsmith_mult_u32(abs(0u), func_2(vec2<i32>(1i, -29428i), -246f, vec2<u32>(u_input.c.x, arg_1.e.a.x)).b.a.x), func_2(reverseBits(vec2<i32>(-541i, arg_0.x)), func_2(vec2<i32>(-12184i, arg_0.x), global0[_wgslsmith_index_u32(arg_1.c.x, 3u)], vec2<u32>(u_input.c.x, 0u)).a, _wgslsmith_add_vec2_u32(arg_1.e.a.zx, vec2<u32>(1u, u_input.c.x))).c.x))).b;
    let var_2 = _wgslsmith_sub_i32(_wgslsmith_clamp_i32(-4569i & arg_1.d.x, 1i, select(1i, 23411i, !all(vec2<bool>(var_0.a, true)))), abs(arg_1.d.x));
    var var_3 = ~u_input.c;
    return Struct_2(any(vec2<bool>(true, all(vec2<bool>(false, true)))) & ((4693u >= _wgslsmith_add_u32(var_3.x, var_3.x)) && ((var_0.a || var_0.a) || true)));
}

fn func_1(arg_0: Struct_1) -> f32 {
    var var_0 = ~(~1u);
    var_0 = 415u;
    var var_1 = Struct_3(Struct_2(any(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false)))));
    global1 = _wgslsmith_f_op_f32(1378f + _wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(~(42944u & (arg_0.a.x | 39653u)), 3u)])));
    var_1 = Struct_3(func_4(vec2<i32>(select(_wgslsmith_mult_i32(u_input.b, 1i), _wgslsmith_div_i32(u_input.a, -2147483647i), var_1.a.a && true), u_input.a), func_2(vec2<i32>(2147483647i, firstLeadingBit(9536i)), -1789f, _wgslsmith_clamp_vec2_u32(arg_0.a.zz, ~vec2<u32>(1u, 4294967295u), reverseBits(vec2<u32>(4294967295u, 40225u))))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-func_2(_wgslsmith_div_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.b, -54016i), vec2<i32>(26985i, u_input.a), vec2<i32>(u_input.a, u_input.a)), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.b, u_input.a), vec2<i32>(1i, 21025i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(arg_0.a.x, 3u)])) - global0[_wgslsmith_index_u32(~54989u, 3u)]), u_input.c.wx & ~vec2<u32>(arg_0.a.x, 52200u)).a) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(980f)), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(35432u, 3u)] - 1533f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(u_input.c.zzw);
    let var_1 = _wgslsmith_sub_vec4_u32(vec4<u32>(var_0.a.x, var_0.a.x, u_input.c.x, ~var_0.a.x), u_input.c);
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_1(var_1.zyw)))));
    global0 = array<f32, 3>();
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(global0[_wgslsmith_index_u32(var_0.a.x | 0u, 3u)], global0[_wgslsmith_index_u32(51284u, 3u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(var_1.x, 3u)] - global0[_wgslsmith_index_u32(4294967295u, 3u)]) * -836f)))));
    var var_3 = u_input.c.www;
    let var_4 = vec3<f32>(_wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(firstLeadingBit(firstTrailingBit(var_1.x)), countOneBits(_wgslsmith_mod_u32(var_3.x, 6259u))), 3u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x - _wgslsmith_f_op_f32(-1413f + -1004f))))), _wgslsmith_f_op_f32(ceil(-1000f)), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 3u)]));
    let var_5 = vec4<bool>(false, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-581f, -412f)) + _wgslsmith_f_op_f32(floor(var_4.x))), global0[_wgslsmith_index_u32(25519u << (var_0.a.x % 32u), 3u)]) >= -252f, true, !(all(vec3<bool>(true, false, true)) & true));
    let var_6 = !var_5.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_u32(~var_3.x, var_0.a.x, max(106236u, ~select(15031u, u_input.c.x, false))), vec3<u32>(var_1.x, ~(var_3.x & var_0.a.x), _wgslsmith_dot_vec3_u32(~u_input.c.yyz, vec3<u32>(12338u, 8845u, 0u))) & abs(vec3<u32>(59092u, 3794u, 81939u)));
}

