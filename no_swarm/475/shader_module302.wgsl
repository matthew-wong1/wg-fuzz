struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: vec3<i32>,
    d: vec2<f32>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec4<i32>,
    d: u32,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(0u, 1u, 0u);

var<private> global1: array<vec4<u32>, 7> = array<vec4<u32>, 7>(vec4<u32>(39661u, 4294967295u, 1u, 4294967295u), vec4<u32>(1u, 0u, 94285u, 0u), vec4<u32>(1125u, 29384u, 1u, 49434u), vec4<u32>(24614u, 38247u, 72199u, 1u), vec4<u32>(29982u, 1u, 10989u, 38693u), vec4<u32>(1u, 1u, 4294967295u, 27684u), vec4<u32>(36819u, 38518u, 7063u, 1u));

var<private> global2: vec4<i32> = vec4<i32>(34559i, i32(-2147483648), 1i, -1i);

var<private> global3: array<vec4<bool>, 20> = array<vec4<bool>, 20>(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<f32>) -> vec4<i32> {
    var var_0 = (arg_0.a.a.x < _wgslsmith_f_op_f32(-arg_0.a.b)) | !(!(!(8509i != u_input.a.x)));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-arg_0.a.a), vec3<f32>(1000f, _wgslsmith_f_op_f32(-arg_0.a.b), _wgslsmith_f_op_f32(arg_0.a.b - 873f))))));
    global2 = arg_0.c;
    var_0 = 4294967295u >= max(0u, _wgslsmith_dot_vec2_u32(reverseBits(u_input.b.yz), vec2<u32>(select(81158u, 1u, false), _wgslsmith_dot_vec4_u32(global1[_wgslsmith_index_u32(arg_0.d, 7u)], global1[_wgslsmith_index_u32(39324u, 7u)]))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1285f - var_1.x) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -526f))) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(2683f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1346f, -1554f)) * -1364f)))));
    return vec4<i32>(~(~(~_wgslsmith_mod_i32(u_input.a.x, arg_0.a.c.x))), ~(47150i ^ (max(60184i, global2.x) | _wgslsmith_add_i32(global2.x, arg_0.a.e.x))), -_wgslsmith_dot_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(1i, 1i), vec2<i32>(-1i, arg_0.c.x)), ~(-3163i));
}

fn func_2(arg_0: Struct_1) -> Struct_3 {
    let var_0 = arg_0;
    let var_1 = firstLeadingBit(select(abs(vec3<u32>(global0.x, u_input.b.x, 44024u) | vec3<u32>(global0.x, global0.x, global0.x)), u_input.b, !(!any(global3[_wgslsmith_index_u32(86527u, 20u)]))));
    var var_2 = Struct_2(var_0, var_0.c.x, -vec4<i32>(-_wgslsmith_sub_i32(-1i, -12984i), 26614i, abs(_wgslsmith_mult_i32(2147483647i, global2.x)), 21583i), var_1.x);
    let var_3 = Struct_2(var_0, _wgslsmith_mod_i32(-_wgslsmith_dot_vec4_i32(select(vec4<i32>(-30307i, 2147483647i, -1i, 1i), var_2.c, false), ~var_2.c), select(arg_0.c.x | -1i, _wgslsmith_div_i32(33078i, 1i), any(vec3<bool>(true, true, true)))), ~(~(var_2.c << (min(vec4<u32>(u_input.b.x, global0.x, var_1.x, 34776u), global1[_wgslsmith_index_u32(var_2.d, 7u)]) % vec4<u32>(32u)))), ~u_input.b.x);
    var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(var_0.a * _wgslsmith_div_vec3_f32(vec3<f32>(2514f, var_0.a.x, 608f), _wgslsmith_f_op_vec3_f32(-var_0.a))), 1000f, _wgslsmith_clamp_vec3_i32(u_input.a & var_3.a.c, u_input.a, max(var_3.a.c, firstLeadingBit(vec3<i32>(global2.x, 7340i, 20298i)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_3.a.a.yx)), _wgslsmith_mult_vec2_i32(firstTrailingBit(vec2<i32>(global2.x, var_2.c.x)), abs(var_0.e))), -_wgslsmith_mod_i32(var_3.c.x, -_wgslsmith_sub_i32(40i, 10068i)), func_3(var_3, arg_0.a.zy), _wgslsmith_sub_u32(countOneBits(u_input.b.x) ^ _wgslsmith_mult_u32(61614u, ~u_input.b.x), global0.x));
    return Struct_3(1095f < var_2.a.a.x, Struct_1(var_2.a.a, -664f, abs(vec3<i32>(global2.x, var_0.c.x, 34026i) ^ _wgslsmith_add_vec3_i32(vec3<i32>(arg_0.c.x, 2147483647i, var_0.c.x), vec3<i32>(5355i, var_2.a.c.x, global2.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(arg_0.a.xz, vec2<f32>(767f, 481f), vec2<bool>(true, true)))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.a.zy - vec2<f32>(arg_0.d.x, var_3.a.a.x)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(1192f, 784f), vec2<f32>(arg_0.d.x, -596f))))), u_input.a.zz), 20034u);
}

fn func_1(arg_0: vec4<i32>, arg_1: vec4<i32>, arg_2: i32, arg_3: bool) -> u32 {
    let var_0 = firstLeadingBit(arg_1.yxy) >> (u_input.b % vec3<u32>(32u));
    let var_1 = func_2(Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1652f, 1037f, -689f)))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1299f, -786f, 1575f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1405f)))), arg_1.wwx, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(420f, 252f) + vec2<f32>(1f, 1f))), _wgslsmith_mult_vec2_i32(firstLeadingBit(_wgslsmith_add_vec2_i32(arg_0.xy, vec2<i32>(arg_0.x, -28253i))), vec2<i32>(arg_1.x, global2.x))));
    let var_2 = -1i;
    let var_3 = select(vec2<bool>(var_1.a || var_1.a, !(!any(global3[_wgslsmith_index_u32(4294967295u, 20u)]))), vec2<bool>(all(vec3<bool>(true, arg_0.x == -2147483647i, true | var_1.a)), var_1.a), func_2(var_1.b).a && arg_3);
    let var_4 = countOneBits(~var_1.c << (1u % 32u));
    return firstTrailingBit(~_wgslsmith_div_u32(u_input.b.x, 33108u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = max(~(vec3<u32>(0u, _wgslsmith_add_u32(u_input.b.x, 1u), func_1(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, global2.x), vec4<i32>(24579i, 4900i, u_input.a.x, u_input.a.x), -2147483647i, false)) | ~abs(vec3<u32>(4294967295u, global0.x, u_input.b.x))), ~vec3<u32>(max(max(u_input.b.x, 1u), select(global0.x, 4294967295u, false)), ~_wgslsmith_sub_u32(u_input.b.x, u_input.b.x), _wgslsmith_dot_vec4_u32(global1[_wgslsmith_index_u32(u_input.b.x, 7u)] | global1[_wgslsmith_index_u32(u_input.b.x, 7u)], global1[_wgslsmith_index_u32(~42916u, 7u)])));
    global2 = _wgslsmith_clamp_vec4_i32(max(~(~vec4<i32>(u_input.a.x, 3484i, 2147483647i, 1i)) | vec4<i32>(abs(-7386i), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, global2.x), u_input.a.yz), select(global2.x, global2.x, true), ~u_input.a.x), firstLeadingBit(-vec4<i32>(0i, global2.x, -40924i, global2.x))), _wgslsmith_div_vec4_i32(firstLeadingBit(_wgslsmith_mod_vec4_i32(~vec4<i32>(global2.x, 1i, -7775i, 71060i), vec4<i32>(2147483647i, global2.x, global2.x, global2.x))), (vec4<i32>(-1i, 2147483647i, 42497i, 0i) << (vec4<u32>(global0.x, 10381u, global0.x, 0u) % vec4<u32>(32u))) << (abs(vec4<u32>(17278u, 4294967295u, 1u, global0.x)) % vec4<u32>(32u))), _wgslsmith_add_vec4_i32(abs(func_3(Struct_2(Struct_1(vec3<f32>(886f, 1262f, -599f), -1147f, global2.yyx, vec2<f32>(765f, 1700f), global2.xx), 1i, vec4<i32>(global2.x, 30983i, -2147483647i, u_input.a.x), global0.x), vec2<f32>(1391f, 1048f))), ~(~abs(vec4<i32>(u_input.a.x, -2147483647i, 2147483647i, global2.x)))));
    global1 = array<vec4<u32>, 7>();
    global2 = vec4<i32>(u_input.a.x, _wgslsmith_dot_vec2_i32(global2.xz, _wgslsmith_mod_vec2_i32(vec2<i32>(global2.x, global2.x) ^ ~vec2<i32>(global2.x, global2.x), firstTrailingBit(global2.zw))), 2147483647i, -abs(~u_input.a.x));
    let var_0 = Struct_3(all(vec3<bool>(true, true, true)), func_2(Struct_1(vec3<f32>(-2956f, -1121f, 169f), 2314f, global2.yyw, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(120f, -1000f)))), ~global2.zz)).b, u_input.b.x & (countOneBits(~u_input.b.x) ^ _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(global0.x, global0.x), global0.zx), global0.zx | u_input.b.yz)));
    global3 = array<vec4<bool>, 20>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(select(-384f, var_0.b.b, !(!var_0.a))), -170f, 1f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1469f * var_0.b.b) * var_0.b.d.x), var_0.b.d.x))), var_0.b.a.x);
}

