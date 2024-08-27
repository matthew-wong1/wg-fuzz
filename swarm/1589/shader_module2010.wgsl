struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: vec2<u32>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: i32 = 29397i;

var<private> global2: vec4<f32> = vec4<f32>(412f, -610f, 773f, -1000f);

var<private> global3: array<Struct_3, 17>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: vec4<bool>) -> vec2<u32> {
    var var_0 = Struct_2(arg_1, arg_1);
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.a.x), _wgslsmith_f_op_f32(min(global2.x, -225f))), _wgslsmith_f_op_f32(min(arg_1.a.x, _wgslsmith_f_op_f32(f32(-1f) * -113f))), _wgslsmith_f_op_f32(arg_1.a.x + arg_1.a.x)) * global2.yyw), arg_1.d.x, var_0.b.d.zx, _wgslsmith_mult_vec3_u32(~min(vec3<u32>(arg_1.b, arg_1.d.x, var_0.a.d.x), _wgslsmith_mult_vec3_u32(arg_1.d, vec3<u32>(arg_1.b, 14838u, 61711u))), ~_wgslsmith_clamp_vec3_u32(abs(arg_1.d), _wgslsmith_add_vec3_u32(arg_1.d, arg_1.d), ~var_0.b.d)));
    global1 = 2147483647i;
    var var_2 = _wgslsmith_clamp_vec4_i32(min(~vec4<i32>(_wgslsmith_dot_vec3_i32(u_input.a, u_input.a), -7538i, -2147483647i, firstTrailingBit(-25721i)), vec4<i32>(min(u_input.a.x, u_input.a.x), u_input.a.x, -u_input.a.x, reverseBits(-1i))), vec4<i32>(_wgslsmith_dot_vec4_i32(select(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, -1i, u_input.a.x, -37252i), vec4<i32>(0i, -1i, -15686i, -9088i)), ~vec4<i32>(2147483647i, 25928i, u_input.a.x, 8319i), !vec4<bool>(arg_0.x, true, false, true)), select(select(vec4<i32>(1i, 50220i, -1i, 2147483647i), vec4<i32>(-1i, u_input.a.x, u_input.a.x, u_input.a.x), false), vec4<i32>(u_input.a.x, u_input.a.x, 75573i, -62853i), select(arg_0, arg_2, arg_0))), countOneBits(u_input.a.x << (var_0.a.b % 32u)), -1i | u_input.a.x, u_input.a.x), -vec4<i32>(_wgslsmith_sub_i32(u_input.a.x >> (2569u % 32u), ~(-1i)), -44497i ^ max(42485i, u_input.a.x), abs(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, u_input.a.x, u_input.a.x, -1i), vec4<i32>(u_input.a.x, 2147483647i, u_input.a.x, 0i))), 1i));
    var_0 = Struct_2(Struct_1(var_0.a.a, 58149u, _wgslsmith_mult_vec2_u32(vec2<u32>(~arg_1.c.x, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, var_0.a.c.x, arg_1.c.x), vec3<u32>(var_1.b, var_1.d.x, arg_1.d.x))), ~select(arg_1.d.xx, vec2<u32>(4294967295u, var_0.a.c.x), arg_0.x)), ~(vec3<u32>(30782u, var_0.a.b, 0u) & arg_1.d)), var_0.a);
    return ~(~vec2<u32>(1u, abs(arg_1.b)) << (~var_0.b.d.zy % vec2<u32>(32u)));
}

fn func_2() -> vec4<f32> {
    var var_0 = Struct_2(Struct_1(vec3<f32>(1381f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(-167f, 210f)))), global2.x), 1u, _wgslsmith_div_vec2_u32(firstTrailingBit(vec2<u32>(83631u, 1u)), vec2<u32>(1u, 1u)) >> ((max(vec2<u32>(0u, 30201u), vec2<u32>(98437u, 30741u)) | func_3(vec4<bool>(true, true, true, true), Struct_1(vec3<f32>(-1077f, global2.x, -1000f), 37961u, vec2<u32>(83528u, 0u), vec3<u32>(4294967295u, 24589u, 0u)), vec4<bool>(false, false, true, true))) % vec2<u32>(32u)), _wgslsmith_add_vec3_u32(countOneBits(_wgslsmith_mult_vec3_u32(vec3<u32>(85635u, 63283u, 0u), vec3<u32>(37658u, 58557u, 4294967295u))), vec3<u32>(_wgslsmith_add_u32(56709u, 41351u), ~3833u, _wgslsmith_add_u32(50279u, 0u)))), Struct_1(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global2.x, 670f, global2.x))), ~abs(1u), min(vec2<u32>(1u, firstLeadingBit(35858u)), vec2<u32>(1u, 1u)), ~select(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(35250u, 4294967295u, 9104u), true)));
    var var_1 = any(!vec4<bool>(any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), false)), false, !all(vec4<bool>(true, true, false, false)), (global2.x > var_0.a.a.x) == true));
    var var_2 = Struct_3(!(!(!select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), false))));
    let var_3 = _wgslsmith_mult_i32(14719i, u_input.a.x);
    var var_4 = Struct_4(Struct_2(var_0.b, var_0.a));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(-125f, global2.x, var_4.a.a.a.x, -461f) - vec4<f32>(-504f, global2.x, -790f, 303f))))))));
}

fn func_1(arg_0: i32, arg_1: vec4<f32>) -> u32 {
    global1 = ~(-1i);
    let var_0 = !((u_input.a.x ^ arg_0) > u_input.a.x);
    global2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2()));
    var var_1 = 981f;
    global2 = vec4<f32>(_wgslsmith_f_op_f32(-757f * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.x, _wgslsmith_div_f32(arg_1.x, global2.x)))), -634f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -502f)), global2.x);
    return _wgslsmith_sub_u32(_wgslsmith_div_u32(~1u, 1u) & _wgslsmith_dot_vec4_u32(~vec4<u32>(50427u, 18013u, 88014u, 23216u), _wgslsmith_sub_vec4_u32(~vec4<u32>(55349u, 15451u, 122497u, 16532u), firstLeadingBit(vec4<u32>(60694u, 36734u, 0u, 4294967295u)))), _wgslsmith_add_u32(~countOneBits(4294967295u), 1u));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_3, 17>();
    global3 = array<Struct_3, 17>();
    var var_0 = _wgslsmith_clamp_u32(~(~1u >> (_wgslsmith_mod_u32(~4294967295u, 21520u) % 32u)), 7308u, max(countOneBits(_wgslsmith_mult_u32(0u, 4294967295u)), func_1(u_input.a.x, vec4<f32>(global2.x, -227f, global2.x, global2.x)) << (37127u % 32u)) ^ (select(reverseBits(22172u), firstTrailingBit(4294967295u), true) ^ ~max(4294967295u, 6665u)));
    var var_1 = _wgslsmith_sub_i32(u_input.a.x, 16158i) ^ ~(-50548i);
    var var_2 = vec3<bool>((all(vec3<bool>(true, true, true)) & true) || (any(vec4<bool>(true, true, true, true)) | false), false, !all(select(vec2<bool>(false, true), vec2<bool>(true, true), any(vec2<bool>(false, false)))));
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1295f, -470f, global2.x, -1000f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, -1042f, 1008f, 362f) + vec4<f32>(global2.x, global2.x, 990f, 220f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-729f, _wgslsmith_f_op_f32(-global2.x), 1f, _wgslsmith_div_f32(-1363f, -1643f))))));
    let var_4 = _wgslsmith_f_op_f32(-1523f + -1095f);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(~_wgslsmith_mult_i32(~0i, _wgslsmith_sub_i32(u_input.a.x, u_input.a.x)), _wgslsmith_sub_i32(~1i, countOneBits(u_input.a.x)), _wgslsmith_mod_i32(-1i, min(19600i, 2147483647i) ^ _wgslsmith_div_i32(7455i, u_input.a.x))));
}

