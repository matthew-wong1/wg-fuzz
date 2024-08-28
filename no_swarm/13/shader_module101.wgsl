struct Struct_1 {
    a: f32,
    b: vec3<u32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec2<u32>,
    c: f32,
    d: Struct_1,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
    d: vec3<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<f32, 28> = array<f32, 28>(-427f, 1140f, 1341f, 448f, -663f, -650f, 1125f, -812f, 1476f, -566f, 1290f, -1108f, -973f, 909f, 797f, -851f, 1312f, -118f, -1494f, -390f, -146f, 168f, 426f, 1000f, 251f, -954f, -1000f, 1221f);

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: bool) -> vec2<bool> {
    var var_0 = ~abs(~(_wgslsmith_div_vec3_u32(vec3<u32>(0u, 0u, u_input.c), vec3<u32>(u_input.c, u_input.e, u_input.b)) ^ _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.e, u_input.b, 4294967295u), vec3<u32>(u_input.c, 4294967295u, 1u))));
    var var_1 = Struct_3(vec3<u32>(69233u, firstLeadingBit(var_0.x), ~u_input.c), vec2<u32>(_wgslsmith_mult_u32(firstTrailingBit(~1u), _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.e, 0u, 61946u), vec3<u32>(var_0.x, var_0.x, 0u)), vec3<u32>(u_input.c, u_input.e, 0u) << (vec3<u32>(u_input.e, 4294967295u, var_0.x) % vec3<u32>(32u)))), 48421u), _wgslsmith_f_op_f32(f32(-1f) * -1000f), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(155f, global1[_wgslsmith_index_u32(var_0.x, 28u)]) * _wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(56664u, 28u)]))) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(u_input.e, 28u)]))))), ~vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, 9218u, u_input.c, var_0.x), vec4<u32>(0u, 90406u, 47296u, var_0.x)), u_input.b, 4294967295u)), arg_1);
    var_0 = var_1.a;
    global1 = array<f32, 28>();
    var_0 = var_1.a;
    return !select(select(vec2<bool>(true, any(vec4<bool>(false, arg_0, arg_0, arg_0))), select(!vec2<bool>(var_1.e, var_1.e), select(vec2<bool>(arg_0, false), vec2<bool>(true, arg_1), arg_1), u_input.a == u_input.d), arg_1), !select(select(vec2<bool>(false, var_1.e), vec2<bool>(false, true), vec2<bool>(false, false)), vec2<bool>(var_1.e, true), true), vec2<bool>(!arg_1, all(vec4<bool>(true, var_1.e, false, false)) && (34229u == var_1.d.b.x)));
}

fn func_2(arg_0: vec3<u32>) -> Struct_3 {
    let var_0 = Struct_2(-u_input.d);
    global1 = array<f32, 28>();
    let var_1 = ~(~vec3<u32>(~arg_0.x, 1u, 232u)) ^ _wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(arg_0, vec3<u32>(4294967295u, 4294967295u, arg_0.x)), arg_0) >> (vec3<u32>(_wgslsmith_add_u32(arg_0.x, u_input.e), 82015u, _wgslsmith_dot_vec3_u32(arg_0, arg_0)) % vec3<u32>(32u)), arg_0);
    var var_2 = vec3<bool>(all(!select(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false)), vec2<bool>(false, false), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false)))), true, true);
    var var_3 = !select(vec2<bool>(true, true), func_3(true, false), select(var_2.yx, var_2.yz, true));
    return Struct_3(arg_0, max(firstTrailingBit(reverseBits(~vec2<u32>(var_1.x, 14526u))), vec2<u32>(u_input.e, _wgslsmith_clamp_u32(100439u, ~var_1.x, var_1.x))), _wgslsmith_f_op_f32(ceil(-2196f)), Struct_1(-436f, min(~(vec3<u32>(arg_0.x, arg_0.x, u_input.c) & arg_0), countOneBits(var_1 | var_1))), var_2.x);
}

fn func_4(arg_0: Struct_3) -> vec3<bool> {
    let var_0 = Struct_2(abs(u_input.a));
    var var_1 = vec2<i32>(u_input.a, firstLeadingBit(-29443i)) | (vec2<i32>(_wgslsmith_sub_i32(1i, var_0.a), ~u_input.a >> (_wgslsmith_add_u32(arg_0.a.x, 42949u) % 32u)) ^ vec2<i32>(~u_input.d >> (max(u_input.b, 1u) % 32u), -1i));
    let var_2 = _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(min(1u, u_input.c), 28u)], _wgslsmith_f_op_f32(round(573f)), select(true, true, arg_0.e))))), 1784f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_0.c, -150f, true)) + global1[_wgslsmith_index_u32(4072u, 28u)]) - _wgslsmith_f_op_f32(step(-625f, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 28u)])))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.c, _wgslsmith_f_op_f32(-1000f + -1447f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-362f)) * global1[_wgslsmith_index_u32(1u, 28u)]))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.d.a, _wgslsmith_f_op_f32(154f + -1000f), 139f, _wgslsmith_f_op_f32(f32(-1f) * -308f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(211f, 124f, -730f, arg_0.d.a) * vec4<f32>(-378f, 111f, 242f, global1[_wgslsmith_index_u32(u_input.b, 28u)])))))));
    var var_3 = vec2<i32>(-34298i, _wgslsmith_mod_i32(u_input.a, var_0.a));
    let var_4 = select(select(select(!(!vec3<bool>(arg_0.e, true, false)), select(select(vec3<bool>(arg_0.e, arg_0.e, arg_0.e), vec3<bool>(false, arg_0.e, arg_0.e), vec3<bool>(arg_0.e, false, false)), select(vec3<bool>(false, false, true), vec3<bool>(false, false, arg_0.e), arg_0.e), true), arg_0.e || true), !(!select(vec3<bool>(arg_0.e, true, arg_0.e), vec3<bool>(false, arg_0.e, arg_0.e), arg_0.e)), !any(!vec4<bool>(arg_0.e, true, arg_0.e, false))), !select(!vec3<bool>(false, arg_0.e, arg_0.e), vec3<bool>(false, true == arg_0.e, arg_0.e), func_3(var_3.x != var_0.a, false).x), arg_0.e);
    return !select(select(var_4, vec3<bool>(true, false, any(vec4<bool>(arg_0.e, true, false, arg_0.e))), any(vec2<bool>(false, var_4.x))), vec3<bool>(!(!var_4.x), true, var_4.x), any(vec3<bool>(true, 58835u != u_input.b, var_4.x)));
}

fn func_1() -> vec3<u32> {
    var var_0 = -758f;
    let var_1 = any(select(!select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true)), true), select(vec3<bool>(true, true, all(vec2<bool>(false, false))), vec3<bool>(false, false, false), func_4(func_2(vec3<u32>(1u, u_input.b, 4294967295u)))), vec3<bool>(true, true, true)));
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(31195u, 28u)] * global1[_wgslsmith_index_u32(u_input.c, 28u)]), _wgslsmith_f_op_f32(ceil(-815f)), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(82334u, 28u)])) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -1724f, global1[_wgslsmith_index_u32(u_input.e, 28u)]))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1268f, 707f, -1000f)))) - _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1390f, -1000f, -540f) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-245f, global1[_wgslsmith_index_u32(u_input.b, 28u)], -147f)))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global1[_wgslsmith_index_u32(u_input.c, 28u)], global1[_wgslsmith_index_u32(1u, 28u)], -942f)))), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(39063u, 28u)], global1[_wgslsmith_index_u32(u_input.c, 28u)], 383f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(u_input.e, 28u)], global1[_wgslsmith_index_u32(45875u, 28u)], -1567f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-210f, global1[_wgslsmith_index_u32(4294967295u, 28u)], 461f))))));
    var var_3 = vec3<u32>(~1u, u_input.e, u_input.b);
    global0 = var_1;
    return vec3<u32>(~26804u, _wgslsmith_sub_u32(u_input.c, 4294967295u), _wgslsmith_dot_vec3_u32(~(~_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 14424u, u_input.e), vec3<u32>(13459u, 0u, u_input.b))), vec3<u32>(~u_input.c, var_3.x, ~4294967295u) << (vec3<u32>(_wgslsmith_mult_u32(u_input.b, u_input.e), _wgslsmith_mod_u32(28976u, u_input.e), ~110364u) % vec3<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<u32>(30217u, 0u, u_input.b) << (func_1() % vec3<u32>(32u));
    let var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(956f, global1[_wgslsmith_index_u32(72442u, 28u)], global1[_wgslsmith_index_u32(u_input.e, 28u)]), vec3<f32>(global1[_wgslsmith_index_u32(63899u, 28u)], global1[_wgslsmith_index_u32(var_0.x, 28u)], -554f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(var_0.x, 28u)], global1[_wgslsmith_index_u32(4294967295u, 28u)], 1417f) + vec3<f32>(129f, global1[_wgslsmith_index_u32(122u, 28u)], -1452f)))))), vec3<f32>(_wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1u, 19581u, 40388u), 28u)], _wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(1u, 28u)], global1[_wgslsmith_index_u32(u_input.e, 28u)], false)))), 808f, global1[_wgslsmith_index_u32(68488u, 28u)])), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(86705u, 28u)], global1[_wgslsmith_index_u32(u_input.c, 28u)], 1772f)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1255f, 900f, 231f), vec3<f32>(2243f, 880f, global1[_wgslsmith_index_u32(1u, 28u)])))))))), (1000f >= global1[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, var_0.x), var_0.zz), u_input.b), 28u)]) && (u_input.b >= u_input.e)));
    var var_2 = vec2<u32>(u_input.e << ((~var_0.x & (0u >> (u_input.b % 32u))) % 32u), 94519u) ^ vec2<u32>(53344u, var_0.x);
    var var_3 = 343f;
    var_2 = _wgslsmith_add_vec2_u32(abs(var_0.yy << (_wgslsmith_sub_vec2_u32(vec2<u32>(1u, var_0.x), var_0.zy) % vec2<u32>(32u))), abs(select(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.b, 0u), var_0.yz), var_0.zy, true))) << (~_wgslsmith_mod_vec2_u32(vec2<u32>(var_2.x, 4294967295u) | reverseBits(var_0.yy), firstTrailingBit(reverseBits(vec2<u32>(4294967295u, 72767u)))) % vec2<u32>(32u));
    let var_4 = vec3<i32>(_wgslsmith_mult_i32(select(-1i, -_wgslsmith_sub_i32(u_input.a, u_input.d), !func_4(Struct_3(vec3<u32>(u_input.b, 38455u, var_2.x), vec2<u32>(76536u, var_2.x), global1[_wgslsmith_index_u32(3085u, 28u)], Struct_1(global1[_wgslsmith_index_u32(4294967295u, 28u)], vec3<u32>(46763u, 10291u, u_input.b)), false)).x), -2147483647i), -129i, 44498i);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, reverseBits(reverseBits(u_input.d)), 1391f, vec3<u32>(~1u, ~(~(~4294967295u)), 0u), _wgslsmith_dot_vec4_i32(min(vec4<i32>(~42948i, -var_4.x, max(-1i, -41532i), u_input.d), select(-vec4<i32>(var_4.x, var_4.x, u_input.d, -1i), vec4<i32>(37540i, var_4.x, -1i, 7536i), any(vec4<bool>(true, true, false, false)))), _wgslsmith_add_vec4_i32(-_wgslsmith_sub_vec4_i32(vec4<i32>(var_4.x, var_4.x, u_input.a, -1i), vec4<i32>(-2147483647i, -2147483647i, u_input.d, var_4.x)), select(vec4<i32>(-7286i, -13013i, 0i, var_4.x), firstTrailingBit(vec4<i32>(var_4.x, 0i, -30554i, 41183i)), false))));
}

