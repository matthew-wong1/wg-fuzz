struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<u32>,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 7> = array<Struct_2, 7>(Struct_2(1u, Struct_1(vec3<f32>(-926f, -2384f, 129f))), Struct_2(20003u, Struct_1(vec3<f32>(-280f, -143f, 269f))), Struct_2(30022u, Struct_1(vec3<f32>(279f, 1000f, 2770f))), Struct_2(44624u, Struct_1(vec3<f32>(-789f, 1804f, -413f))), Struct_2(97416u, Struct_1(vec3<f32>(510f, -381f, 740f))), Struct_2(1u, Struct_1(vec3<f32>(-535f, -1000f, 545f))), Struct_2(30219u, Struct_1(vec3<f32>(1301f, -2027f, 404f))));

var<private> global1: array<Struct_2, 3>;

var<private> global2: vec4<bool>;

var<private> global3: array<vec3<i32>, 24> = array<vec3<i32>, 24>(vec3<i32>(i32(-2147483648), i32(-2147483648), -56711i), vec3<i32>(-1i, 20486i, 0i), vec3<i32>(0i, 2147483647i, -10990i), vec3<i32>(1734i, -1i, -12542i), vec3<i32>(2147483647i, -40891i, -9375i), vec3<i32>(-46345i, 2147483647i, 3226i), vec3<i32>(1i, 7817i, 85619i), vec3<i32>(2147483647i, 19507i, 0i), vec3<i32>(80054i, 2147483647i, -13682i), vec3<i32>(0i, i32(-2147483648), -1i), vec3<i32>(0i, -1i, 0i), vec3<i32>(2147483647i, -3328i, 49602i), vec3<i32>(58998i, 10260i, 0i), vec3<i32>(-10275i, -17026i, 0i), vec3<i32>(20311i, -36068i, 19906i), vec3<i32>(31270i, 52407i, 38083i), vec3<i32>(1i, i32(-2147483648), i32(-2147483648)), vec3<i32>(0i, 2147483647i, 2858i), vec3<i32>(i32(-2147483648), 47711i, -14714i), vec3<i32>(13828i, -13426i, 58945i), vec3<i32>(i32(-2147483648), 31059i, -37640i), vec3<i32>(-4714i, 8066i, 1i), vec3<i32>(0i, 2147483647i, 4761i), vec3<i32>(-15916i, i32(-2147483648), i32(-2147483648)));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: i32, arg_1: i32, arg_2: vec4<bool>) -> f32 {
    global1 = array<Struct_2, 3>();
    let var_0 = global1[_wgslsmith_index_u32(reverseBits(~6948u), 3u)];
    var var_1 = reverseBits(~min(reverseBits(abs(68581u)), _wgslsmith_sub_u32(u_input.a.x, 4294967295u)));
    var var_2 = Struct_2(var_0.a, Struct_1(var_0.b.a));
    global2 = !select(arg_2, vec4<bool>(!select(false, arg_2.x, true), arg_2.x, global2.x, global2.x), vec4<bool>(all(select(vec4<bool>(global2.x, true, true, true), arg_2, arg_2)), any(vec2<bool>(true, false)), _wgslsmith_f_op_f32(-var_0.b.a.x) <= _wgslsmith_f_op_f32(exp2(var_2.b.a.x)), true));
    return var_2.b.a.x;
}

fn func_2(arg_0: u32, arg_1: vec4<bool>) -> vec4<u32> {
    global3 = array<vec3<i32>, 24>();
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1165f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-806f - -1000f) * _wgslsmith_f_op_f32(277f - 627f)), -1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-643f)) + -535f)) + vec4<f32>(1f, 1f, 1f, 1f)) - vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -160f))), _wgslsmith_f_op_f32(163f * _wgslsmith_f_op_f32(min(-1156f, 1000f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-380f))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(-1i, -1i, arg_1))))), -1329f));
    let var_1 = abs(vec3<u32>(0u, 95897u, ~firstLeadingBit(1u)));
    var var_2 = _wgslsmith_add_u32(arg_0, max(firstLeadingBit(~u_input.a.x), 0u));
    var var_3 = Struct_1(var_0.yxw);
    return vec4<u32>(select(~arg_0, ~_wgslsmith_clamp_u32(arg_0 & var_1.x, 27822u, ~1u), arg_1.x), ~29239u, 1u, ~u_input.a.x);
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: Struct_2, arg_3: Struct_1) -> u32 {
    let var_0 = ~(126447u << (arg_0.x % 32u));
    let var_1 = !(!select(select(select(vec4<bool>(true, false, global2.x, global2.x), vec4<bool>(true, global2.x, global2.x, global2.x), vec4<bool>(global2.x, global2.x, global2.x, true)), !vec4<bool>(true, global2.x, global2.x, false), vec4<bool>(false, global2.x, global2.x, global2.x)), !select(vec4<bool>(false, true, true, true), vec4<bool>(global2.x, global2.x, true, global2.x), true), !vec4<bool>(false, global2.x, global2.x, true)));
    global1 = array<Struct_2, 3>();
    var var_2 = select(select(vec2<bool>(false & (global2.x | false), true), !global2.yz, !global2.x), select(var_1.zz, vec2<bool>(true, true), vec2<bool>(all(select(var_1.yyx, global2.zyw, vec3<bool>(global2.x, var_1.x, var_1.x))), !global2.x)), false);
    var var_3 = select(var_1, vec4<bool>(var_2.x, !var_2.x, var_1.x, !any(!var_1)), _wgslsmith_sub_i32(~(~(-1i)), _wgslsmith_add_i32(_wgslsmith_mod_i32(-57611i, -37299i), firstLeadingBit(1i))) <= firstTrailingBit(firstLeadingBit(reverseBits(-7005i))));
    return ~30255u;
}

fn func_1(arg_0: vec3<f32>) -> Struct_1 {
    var var_0 = arg_0.yz;
    var var_1 = global1[_wgslsmith_index_u32(u_input.a.x, 3u)];
    let var_2 = Struct_1(arg_0);
    global2 = vec4<bool>(global2.x, any(global2.zw), !(var_2.a.x == _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(arg_0.x, arg_0.x)))), global2.x);
    let var_3 = func_4(countOneBits(vec3<u32>(41460u, u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 0u, 4294967295u, 1924u) >> (vec4<u32>(4294967295u, 81153u, 72891u, 18824u) % vec4<u32>(32u)), func_2(u_input.a.x, vec4<bool>(true, false, true, false))))), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1725f, -377f, 139f) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_1.b.a.x, var_1.b.a.x, arg_0.x)))))), Struct_2(_wgslsmith_add_u32(~(22224u << (1u % 32u)), ~4294967295u), var_2), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, arg_0.x, -1000f)) * vec3<f32>(var_2.a.x, _wgslsmith_div_f32(var_0.x, 445f), _wgslsmith_f_op_f32(var_0.x + 507f)))));
    return Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, -511f, var_2.a.x) + var_2.a)))), var_2.a));
}

fn func_5(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1) -> bool {
    let var_0 = 18335i;
    var var_1 = _wgslsmith_clamp_vec3_i32(~vec3<i32>(var_0, ~(-1i), i32(-1i) * -2147483647i), -(global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.a.x, 17372u, 4294967295u), 24u)] ^ reverseBits(_wgslsmith_mod_vec3_i32(global3[_wgslsmith_index_u32(u_input.a.x, 24u)], global3[_wgslsmith_index_u32(u_input.a.x, 24u)]))), abs(select(global3[_wgslsmith_index_u32(1u, 24u)], abs(global3[_wgslsmith_index_u32(4294967295u, 24u)]), false)));
    var var_2 = vec3<i32>(-(countOneBits(-2147483647i) >> (~u_input.a.x % 32u)), var_0, countOneBits(~abs(_wgslsmith_div_i32(var_0, var_1.x))));
    let var_3 = all(!select(vec4<bool>(false, global2.x, arg_1, global2.x), vec4<bool>(true, true, arg_1, arg_1), !vec4<bool>(false, true, true, arg_1))) != false;
    global2 = !select(select(vec4<bool>(all(vec2<bool>(global2.x, false)), true, true, false), !select(vec4<bool>(global2.x, true, true, var_3), vec4<bool>(true, global2.x, var_3, false), vec4<bool>(false, false, global2.x, false)), vec4<bool>(!arg_1, any(vec4<bool>(var_3, var_3, true, false)), true, true)), vec4<bool>(!any(vec4<bool>(var_3, true, global2.x, arg_1)), arg_1, var_3, (1u | u_input.a.x) <= u_input.a.x), select(!select(vec4<bool>(false, arg_1, true, false), vec4<bool>(false, false, global2.x, arg_1), var_3), !(!vec4<bool>(true, true, arg_1, true)), (var_1.x >> (10331u % 32u)) < _wgslsmith_sub_i32(-31113i, var_2.x)));
    return select(!global2.x, !(!all(vec4<bool>(global2.x, false, false, arg_1))), all(!(!global2.xy))) & !global2.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~_wgslsmith_dot_vec2_u32(abs(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a.x, 4294967295u), vec2<u32>(108038u, 22818u), vec2<u32>(u_input.a.x, 25047u))), u_input.a));
    global2 = !vec4<bool>(true, func_5(func_1(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(682f, 1350f, 390f), vec3<f32>(1287f, -1000f, 648f)))), false, func_1(_wgslsmith_div_vec3_f32(vec3<f32>(-556f, -1000f, 841f), vec3<f32>(275f, -1000f, 548f)))), !(!any(vec4<bool>(global2.x, global2.x, global2.x, global2.x))), (all(vec3<bool>(true, false, false)) | global2.x) && any(select(vec4<bool>(global2.x, global2.x, global2.x, true), vec4<bool>(global2.x, false, true, global2.x), false)));
    var var_1 = var_0;
    var var_2 = ~(~abs(reverseBits(vec2<i32>(-6230i, -27531i))) >> (~_wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.a, vec2<u32>(var_0, 4294967295u)), u_input.a) % vec2<u32>(32u)));
    var var_3 = -452f;
    var_1 = 7327u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -535f), _wgslsmith_f_op_f32(-764f * _wgslsmith_f_op_f32(-1262f * _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-1249f, 1635f), -1170f)))), select(vec2<u32>(~_wgslsmith_div_u32(0u, var_0), ~var_0), ~u_input.a, select(vec2<bool>(any(vec3<bool>(true, true, false)), !global2.x), vec2<bool>(true, true), true)), ~max(abs(4294967295u), _wgslsmith_sub_u32(u_input.a.x, 1u) & u_input.a.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1122f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1459f)))));
}

