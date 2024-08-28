struct Struct_1 {
    a: vec3<u32>,
    b: vec3<f32>,
    c: bool,
    d: vec3<i32>,
    e: f32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<i32>,
    c: i32,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 7> = array<i32, 7>(-22954i, 30001i, -1i, 1i, 2147483647i, -1i, 0i);

var<private> global1: array<Struct_2, 16>;

var<private> global2: vec2<u32>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: u32, arg_1: vec3<f32>) -> vec3<i32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_1)));
    let var_1 = _wgslsmith_div_vec2_f32(arg_1.zz, arg_1.zz);
    global2 = u_input.c.xy;
    global2 = vec2<u32>(global2.x, arg_0);
    let var_2 = -773f;
    return vec3<i32>(0i, -12105i, _wgslsmith_div_i32(firstTrailingBit(-2147483647i), countOneBits(countOneBits(~u_input.a))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_3) -> i32 {
    global0 = array<i32, 7>();
    let var_0 = _wgslsmith_f_op_f32(max(-664f, arg_1.b.x));
    global0 = array<i32, 7>();
    var var_1 = false;
    var var_2 = -_wgslsmith_div_vec3_i32(~firstLeadingBit(vec3<i32>(arg_2.a.d.x, -1969i, global0[_wgslsmith_index_u32(11899u, 7u)])) ^ ((vec3<i32>(global0[_wgslsmith_index_u32(53658u, 7u)], 25089i, 2147483647i) ^ vec3<i32>(arg_1.d.x, 0i, -8629i)) ^ -vec3<i32>(40214i, u_input.b, -9017i)), arg_2.a.d);
    return 2147483647i;
}

fn func_2(arg_0: bool) -> vec4<f32> {
    var var_0 = 27911u;
    global2 = vec2<u32>(~reverseBits(1u), _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(u_input.c, ~vec4<u32>(u_input.c.x, 4294967295u, u_input.c.x, global2.x)), u_input.c));
    var var_1 = ~_wgslsmith_sub_i32(u_input.a, func_4(global1[_wgslsmith_index_u32(global2.x, 16u)], Struct_1(vec3<u32>(4294967295u, 41826u, 2525u), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(422f, 1000f, 198f), vec3<f32>(-602f, -261f, 534f), vec3<bool>(true, false, arg_0))), arg_0, func_3(global2.x, vec3<f32>(-817f, 199f, -599f)), _wgslsmith_f_op_f32(abs(948f))), Struct_3(Struct_1(vec3<u32>(1u, u_input.c.x, global2.x), vec3<f32>(-1411f, 1000f, 1268f), false, vec3<i32>(16647i, 0i, -53121i), 256f), select(vec3<i32>(18749i, 9372i, u_input.a), vec3<i32>(u_input.a, 0i, u_input.a), vec3<bool>(false, arg_0, arg_0)), 1i, global1[_wgslsmith_index_u32(25825u, 16u)])));
    let var_2 = !all(select(select(!vec2<bool>(arg_0, true), !vec2<bool>(arg_0, arg_0), false), !(!vec2<bool>(arg_0, arg_0)), !vec2<bool>(arg_0, false)));
    var var_3 = !select(vec2<bool>(var_2, _wgslsmith_f_op_f32(ceil(-137f)) != _wgslsmith_f_op_f32(f32(-1f) * -668f)), select(select(vec2<bool>(arg_0, arg_0), !vec2<bool>(arg_0, arg_0), false), !(!vec2<bool>(var_2, true)), var_2), !vec2<bool>(false, var_2));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1204f, -452f, 907f, -122f)))) - vec4<f32>(1f, 1f, 1f, 1f)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(697f, -168f, -835f, 1374f))) - vec4<f32>(-1214f, -1887f, -612f, -514f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1471f, -207f, -782f, 1117f)))));
}

fn func_5(arg_0: i32, arg_1: vec3<bool>, arg_2: vec4<f32>) -> Struct_3 {
    global2 = ~u_input.c.xy;
    var var_0 = Struct_3(Struct_1(_wgslsmith_div_vec3_u32(firstLeadingBit(vec3<u32>(14550u, u_input.c.x, u_input.c.x)), u_input.c.zwy), vec3<f32>(arg_2.x, 349f, -208f), all(!(!vec4<bool>(true, arg_1.x, true, arg_1.x))), vec3<i32>(~(-1i), -arg_0, -1i) ^ vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(global2.x, 7u)], 48040i, -2147483647i), vec3<i32>(3767i, u_input.a, 0i)), -34678i, 20247i), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x))))), vec3<i32>(_wgslsmith_mult_i32(abs(_wgslsmith_mult_i32(-1i, -1i)), arg_0), 0i, global0[_wgslsmith_index_u32(8599u, 7u)]), ~(~max(global0[_wgslsmith_index_u32(min(1u, u_input.c.x), 7u)], 54218i)), Struct_2(arg_2.x));
    return Struct_3(var_0.a, min(var_0.b, _wgslsmith_sub_vec3_i32(~(var_0.b ^ vec3<i32>(u_input.b, -1i, global0[_wgslsmith_index_u32(72449u, 7u)])), countOneBits(select(var_0.b, vec3<i32>(-2147483647i, global0[_wgslsmith_index_u32(var_0.a.a.x, 7u)], 2147483647i), arg_1.x)))), firstLeadingBit(abs(firstLeadingBit(arg_0) << (_wgslsmith_div_u32(4294967295u, global2.x) % 32u))), var_0.d);
}

fn func_6(arg_0: Struct_3, arg_1: Struct_3) -> u32 {
    let var_0 = func_5(-12970i, select(vec3<bool>(!(arg_0.a.c | arg_1.a.c), true, all(select(vec2<bool>(false, arg_0.a.c), vec2<bool>(arg_1.a.c, arg_0.a.c), vec2<bool>(true, true)))), select(select(!vec3<bool>(arg_0.a.c, arg_0.a.c, arg_1.a.c), vec3<bool>(false, arg_0.a.c, arg_1.a.c), arg_1.a.c), vec3<bool>(false, false, true), vec3<bool>(true, !arg_0.a.c, !arg_0.a.c)), arg_0.a.e >= arg_0.d.a), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_0.a.b.x), -363f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_1.a.b.x, arg_0.a.e)) - _wgslsmith_f_op_f32(-arg_0.a.b.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.a.e, -680f) - _wgslsmith_f_op_f32(max(arg_0.a.e, -699f)))))).d;
    let var_1 = Struct_3(Struct_1(arg_1.a.a, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(arg_1.a.b, vec3<f32>(-698f, 734f, var_0.a), true))))), any(!select(vec4<bool>(arg_0.a.c, arg_0.a.c, false, arg_0.a.c), vec4<bool>(arg_0.a.c, arg_0.a.c, arg_1.a.c, false), vec4<bool>(arg_1.a.c, true, false, false))), vec3<i32>(-1i, 29109i, -40637i), _wgslsmith_f_op_f32(arg_0.d.a + _wgslsmith_f_op_f32(ceil(-875f)))), -(countOneBits(abs(arg_1.b)) ^ func_3(abs(4294967295u), arg_0.a.b)), u_input.b, func_5(abs(0i), !(!select(vec3<bool>(true, arg_0.a.c, false), vec3<bool>(arg_1.a.c, false, arg_1.a.c), arg_1.a.c)), vec4<f32>(_wgslsmith_f_op_f32(max(arg_0.a.e, -963f)), arg_1.a.b.x, func_5(-arg_1.a.d.x, !vec3<bool>(true, arg_0.a.c, false), _wgslsmith_div_vec4_f32(vec4<f32>(-410f, -842f, 314f, 760f), vec4<f32>(-1917f, var_0.a, -142f, -212f))).d.a, _wgslsmith_f_op_f32(-arg_1.a.e))).d);
    global1 = array<Struct_2, 16>();
    global0 = array<i32, 7>();
    var var_2 = arg_1.d;
    return _wgslsmith_mod_u32(15532u, 40312u);
}

fn func_1(arg_0: Struct_3, arg_1: vec2<u32>, arg_2: vec4<bool>) -> vec2<bool> {
    let var_0 = arg_2.x;
    global2 = vec2<u32>(74191u, 0u) | select(u_input.c.xx >> (abs(~vec2<u32>(29037u, global2.x)) % vec2<u32>(32u)), arg_1, arg_2.xw);
    global1 = array<Struct_2, 16>();
    let var_1 = ~vec2<u32>(func_6(arg_0, func_5(_wgslsmith_dot_vec2_i32(arg_0.b.zx, arg_0.a.d.xy), vec3<bool>(arg_2.x, arg_0.a.c, true), _wgslsmith_f_op_vec4_f32(func_2(var_0)))), firstTrailingBit(~34823u));
    global1 = array<Struct_2, 16>();
    return !vec2<bool>(arg_2.x, true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = any(select(func_1(Struct_3(Struct_1(vec3<u32>(643u, 0u, 32643u), vec3<f32>(1086f, 655f, -659f), false, vec3<i32>(67875i, global0[_wgslsmith_index_u32(1u, 7u)], global0[_wgslsmith_index_u32(global2.x, 7u)]), 922f), vec3<i32>(global0[_wgslsmith_index_u32(0u, 7u)], global0[_wgslsmith_index_u32(global2.x, 7u)], -1i), ~global0[_wgslsmith_index_u32(18782u, 7u)], global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.c.yxx, vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x)), 16u)]), ~_wgslsmith_mult_vec2_u32(u_input.c.zy, vec2<u32>(u_input.c.x, global2.x)), !select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), true)), vec2<bool>(all(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true))), !any(vec4<bool>(false, false, false, true))), select(!func_1(Struct_3(Struct_1(vec3<u32>(14741u, u_input.c.x, 11450u), vec3<f32>(773f, 693f, 758f), false, vec3<i32>(global0[_wgslsmith_index_u32(global2.x, 7u)], global0[_wgslsmith_index_u32(19300u, 7u)], -33940i), -1000f), vec3<i32>(global0[_wgslsmith_index_u32(global2.x, 7u)], 1i, global0[_wgslsmith_index_u32(44176u, 7u)]), -2147483647i, global1[_wgslsmith_index_u32(global2.x, 16u)]), u_input.c.wz, vec4<bool>(true, false, true, true)), vec2<bool>(true, true), u_input.a < (u_input.b >> (1u % 32u)))));
    var var_1 = Struct_3(func_5(func_3(~_wgslsmith_clamp_u32(0u, 15u, global2.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(583f, -1565f, 1000f) * vec3<f32>(617f, 1043f, -1172f)))).x, vec3<bool>(true, true, !select(true, true, false)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(574f, 508f, 1000f, -272f), vec4<f32>(-570f, 1000f, 202f, 1409f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-758f, 789f, 1348f, -436f))) - vec4<f32>(_wgslsmith_f_op_f32(-1491f * -652f), -756f, _wgslsmith_f_op_f32(f32(-1f) * -286f), 1f))).a, func_5(2147483647i, vec3<bool>(true, any(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), true)), min(global2.x, 23038u) == u_input.c.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-276f, -173f, 472f, -923f) + vec4<f32>(667f, 1437f, 379f, -162f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1644f, 346f, -103f, 1000f) - vec4<f32>(1900f, 1015f, -290f, -1205f))) + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1860f, -1000f, 1010f, -456f))), vec4<f32>(-1000f, 1736f, -200f, -166f))))).a.d, _wgslsmith_mod_i32(firstLeadingBit(1i), _wgslsmith_add_i32(~823i, 1i)) << (u_input.c.x % 32u), func_5(firstTrailingBit(reverseBits(-2147483647i)), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), !select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), false), vec3<bool>(true, true, true)), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(159f, -207f, -454f, 1631f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-533f, -487f, 1163f, -771f))) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(620f, -1981f, -853f, 145f))))).d);
    global2 = countOneBits(vec2<u32>(_wgslsmith_dot_vec4_u32(u_input.c << (u_input.c % vec4<u32>(32u)), vec4<u32>(30503u, 0u, 24498u, u_input.c.x) >> (vec4<u32>(1u, 13774u, 78951u, 1u) % vec4<u32>(32u))), ~(var_1.a.a.x & 29289u))) ^ vec2<u32>(u_input.c.x, var_1.a.a.x);
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1127f, var_1.d.a, 1003f, var_1.a.e), vec4<f32>(var_1.d.a, var_1.d.a, var_1.d.a, 435f), vec4<bool>(var_1.a.c, var_1.a.c, true, false)))))), vec4<f32>(_wgslsmith_f_op_f32(-var_1.d.a), _wgslsmith_f_op_f32(var_1.a.b.x + var_1.d.a), 1734f, -484f)));
    global0 = array<i32, 7>();
    let x = u_input.a;
    s_output = StorageBuffer(~(~vec4<u32>(_wgslsmith_clamp_u32(u_input.c.x, 13117u, u_input.c.x), 4294967295u, abs(u_input.c.x), u_input.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.d.a))));
}

