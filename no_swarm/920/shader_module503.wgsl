struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: i32,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 16>;

var<private> global1: vec3<i32>;

var<private> global2: i32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: bool) -> u32 {
    global0 = array<vec2<u32>, 16>();
    let var_0 = Struct_1(abs(firstLeadingBit(~vec4<u32>(83059u, 1u, 71694u, 0u))) | (~vec4<u32>(u_input.a, u_input.e, 4294967295u, 1u) & vec4<u32>(4294967295u, _wgslsmith_sub_u32(8489u, 0u), u_input.e, 0u)), 1f, ~(-u_input.d >> (u_input.a % 32u)), _wgslsmith_div_vec2_u32(vec2<u32>((251u ^ u_input.a) >> (1u % 32u), ~u_input.a), global0[_wgslsmith_index_u32(u_input.c, 16u)]));
    var var_1 = Struct_1(~(_wgslsmith_mod_vec4_u32(vec4<u32>(var_0.a.x, 1u, 0u, var_0.a.x), var_0.a ^ vec4<u32>(31081u, 57446u, 40786u, var_0.a.x)) >> (vec4<u32>(_wgslsmith_div_u32(var_0.d.x, u_input.a), 1u, ~1u, ~var_0.a.x) % vec4<u32>(32u))), _wgslsmith_f_op_f32(var_0.b * _wgslsmith_f_op_f32(var_0.b + _wgslsmith_f_op_f32(f32(-1f) * -172f))), ~((-2147483647i >> (var_0.d.x % 32u)) | global1.x), var_0.d);
    global1 = _wgslsmith_mult_vec3_i32(abs(firstLeadingBit(abs(firstTrailingBit(vec3<i32>(global1.x, -13428i, 23704i))))), vec3<i32>(-11741i, ~19851i, min(var_1.c, abs(_wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(var_0.c, 39892i, var_0.c, u_input.b.x))))));
    global1 = max(vec3<i32>(_wgslsmith_mult_i32(global1.x, -1i), _wgslsmith_div_i32(~2147483647i, countOneBits(2147483647i)) ^ _wgslsmith_add_i32(var_0.c, _wgslsmith_div_i32(40567i, 47549i)), 24621i), _wgslsmith_add_vec3_i32(u_input.b.zwz, max(~(-u_input.b.zyy), vec3<i32>(33635i, _wgslsmith_clamp_i32(1i, 2147483647i, 1i), _wgslsmith_add_i32(u_input.d, 49335i)))));
    return abs(_wgslsmith_add_u32(var_0.d.x, var_1.a.x));
}

fn func_2(arg_0: Struct_1) -> vec2<f32> {
    global0 = array<vec2<u32>, 16>();
    global2 = 67958i;
    global1 = firstTrailingBit(u_input.b.zwx);
    var var_0 = reverseBits(u_input.b.xx | ((vec2<i32>(-2147483647i, 2147483647i) ^ global1.xy) & u_input.b.zx));
    var var_1 = vec4<bool>(any(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false)), _wgslsmith_div_u32(~0u, _wgslsmith_mod_u32(_wgslsmith_mult_u32(24472u, 50426u), func_3(true))) < abs(u_input.a), all(vec4<bool>(false, all(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true))), any(vec2<bool>(false, true)), false)), !select(~var_0.x >= ~(-21553i), all(vec2<bool>(true, true)), all(vec3<bool>(true, false, false))));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_0.b, -336f)))), vec2<f32>(_wgslsmith_f_op_f32(sign(-1000f)), _wgslsmith_f_op_f32(arg_0.b + 837f)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(2838f, -1391f) - vec2<f32>(arg_0.b, arg_0.b)) - vec2<f32>(1000f, -269f))));
}

fn func_4(arg_0: vec2<f32>, arg_1: vec4<i32>) -> Struct_1 {
    let var_0 = ((vec4<i32>(-1i) * -(vec4<i32>(arg_1.x, u_input.d, arg_1.x, -9556i) << (vec4<u32>(u_input.a, 4294967295u, 19901u, 23670u) % vec4<u32>(32u)))) << (_wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, u_input.e, u_input.c, u_input.a), vec4<u32>(u_input.e, u_input.e, u_input.a, 70661u)), ~select(vec4<u32>(u_input.e, u_input.e, u_input.a, u_input.a), vec4<u32>(61212u, 10720u, u_input.a, u_input.c), vec4<bool>(false, false, false, true))) % vec4<u32>(32u))) & arg_1;
    let var_1 = select(!select(vec4<bool>(true, true, false, any(vec2<bool>(false, true))), vec4<bool>(false, select(true, true, true), true, all(vec3<bool>(false, false, false))), false), vec4<bool>(!(~u_input.a >= 4294967295u), false, true, all(select(vec4<bool>(true, true, false, false), select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false), true), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true))))), !vec4<bool>(all(select(vec2<bool>(true, true), vec2<bool>(true, true), true)), select(arg_0.x <= 756f, true, 1i == arg_1.x), true, any(select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), false))));
    var var_2 = 0i;
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0 - vec2<f32>(1157f, -1625f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(740f, -329f)))) * _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-260f, -280f))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0 * arg_0), vec2<f32>(-1200f, -660f))))));
    let var_4 = Struct_1(~firstLeadingBit(~_wgslsmith_mult_vec4_u32(vec4<u32>(21688u, u_input.e, 1u, 4294967295u), vec4<u32>(0u, u_input.a, u_input.a, 73488u))), var_3.x, arg_1.x, ~global0[_wgslsmith_index_u32(u_input.e, 16u)]);
    return var_4;
}

fn func_1() -> u32 {
    let var_0 = func_4(_wgslsmith_f_op_vec2_f32(func_2(Struct_1(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.e, u_input.c, 17824u, u_input.e), vec4<u32>(u_input.a, u_input.c, 52471u, u_input.c) | vec4<u32>(1056u, 22860u, u_input.e, u_input.e)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -938f)), u_input.b.x, ~(global0[_wgslsmith_index_u32(u_input.c, 16u)] ^ vec2<u32>(u_input.c, u_input.e))))), vec4<i32>(-1i) * -vec4<i32>(u_input.b.x, u_input.b.x, global1.x, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, u_input.d, global1.x), u_input.b.ywy)));
    let var_1 = vec4<i32>(2147483647i & _wgslsmith_clamp_i32(u_input.d ^ global1.x, -13221i, ~func_4(vec2<f32>(var_0.b, var_0.b), u_input.b).c), var_0.c << (((~u_input.e ^ ~var_0.d.x) >> (min(~var_0.d.x, 22539u ^ var_0.a.x) % 32u)) % 32u), _wgslsmith_div_i32(u_input.b.x, ~var_0.c), u_input.d);
    let var_2 = func_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b, var_0.b) + vec2<f32>(var_0.b, 1379f))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-225f, -994f))) * vec2<f32>(var_0.b, var_0.b)))), var_1 << (var_0.a % vec4<u32>(32u)));
    let var_3 = func_4(_wgslsmith_f_op_vec2_f32(func_2(var_0)), _wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(~abs(vec4<i32>(var_2.c, -18783i, u_input.d, 33079i)), max(u_input.b & vec4<i32>(70744i, 1635i, 1i, -1i), -var_1)), u_input.b));
    var var_4 = func_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b, 1173f) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -1381f)) + vec2<f32>(var_0.b, -1096f)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-289f, -726f)) - vec2<f32>(var_0.b, var_2.b)))), ~(-u_input.b)).d.x;
    return _wgslsmith_div_u32(4294967295u, _wgslsmith_sub_u32(_wgslsmith_div_u32(4294967295u, 1u), ~18066u) >> (u_input.a % 32u)) ^ 15647u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(~(~_wgslsmith_sub_vec3_u32(vec3<u32>(97673u, 0u, 30455u), vec3<u32>(u_input.e, 1u, 0u))), vec3<u32>(18571u, abs(firstLeadingBit(u_input.e)), ~28703u)), vec3<u32>(u_input.a, _wgslsmith_clamp_u32(func_1(), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, 6627u, u_input.c), vec3<u32>(u_input.c, 55789u, u_input.e)) << (25853u % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 1806u, u_input.a, u_input.a) << (vec4<u32>(4225u, 66034u, u_input.c, 4294967295u) % vec4<u32>(32u)), vec4<u32>(u_input.a, 0u, 24710u, 15958u) & vec4<u32>(u_input.e, 3825u, 4294967295u, 85140u))), ~_wgslsmith_clamp_u32(max(u_input.c, u_input.c), u_input.c, 54268u)));
    var var_1 = func_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-807f))), _wgslsmith_f_op_f32(ceil(-1450f)))), abs(max(min(u_input.b, u_input.b) & -u_input.b, ~u_input.b)));
    var var_2 = func_4(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_1.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_1.b, var_1.b)))), u_input.b);
    let var_3 = global1.yz;
    var var_4 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.b, var_2.b, 1310f)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_2.b, var_2.b, var_2.b), vec3<f32>(253f, var_1.b, var_1.b))))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(359f * var_1.b)), 1f, _wgslsmith_f_op_f32(select(var_1.b, _wgslsmith_f_op_f32(select(306f, -501f, true)), var_2.b != -600f)))), vec3<f32>(-824f, var_1.b, var_2.b)));
    global2 = var_3.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec3_i32(~_wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(u_input.b.yzy, vec3<i32>(u_input.b.x, -2147483647i, 1i)), vec3<i32>(6931i, -13161i, var_2.c)), u_input.b.xzz), _wgslsmith_f_op_f32(359f * _wgslsmith_f_op_f32(1343f * _wgslsmith_f_op_f32(ceil(-1136f)))), ~var_3.x);
}

