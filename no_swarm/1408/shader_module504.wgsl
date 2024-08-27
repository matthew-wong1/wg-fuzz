struct Struct_1 {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<vec2<u32>, 22> = array<vec2<u32>, 22>(vec2<u32>(0u, 39049u), vec2<u32>(13454u, 16403u), vec2<u32>(27803u, 0u), vec2<u32>(43351u, 27569u), vec2<u32>(4294967295u, 49663u), vec2<u32>(4294967295u, 15946u), vec2<u32>(91421u, 85492u), vec2<u32>(57467u, 9884u), vec2<u32>(0u, 53204u), vec2<u32>(50033u, 25666u), vec2<u32>(75606u, 1u), vec2<u32>(87200u, 1u), vec2<u32>(0u, 28705u), vec2<u32>(82317u, 4623u), vec2<u32>(13567u, 1u), vec2<u32>(4294967295u, 50153u), vec2<u32>(38226u, 1u), vec2<u32>(1u, 4294967295u), vec2<u32>(47643u, 0u), vec2<u32>(0u, 1u), vec2<u32>(1290u, 47309u), vec2<u32>(50297u, 1u));

var<private> global2: Struct_1;

var<private> global3: array<vec2<i32>, 17>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec3<u32>) -> bool {
    global2 = Struct_1(vec3<u32>(1u, 1u, u_input.a), _wgslsmith_add_vec4_i32(-abs(global2.b), global2.b), global2.c);
    let var_0 = Struct_1(vec3<u32>(arg_0.x | (arg_0.x & ~arg_0.x), _wgslsmith_sub_u32(u_input.a, 0u), _wgslsmith_div_u32(arg_0.x, _wgslsmith_add_u32(global2.a.x >> (81463u % 32u), 24163u))), abs(global2.b), select(select(!select(global2.c, global2.c, global2.c.x), select(!vec4<bool>(global2.c.x, false, global2.c.x, global2.c.x), select(vec4<bool>(true, true, global2.c.x, true), global2.c, global2.c), !vec4<bool>(global2.c.x, true, true, false)), select(global2.c.x, true, global2.c.x)), global2.c, vec4<bool>((global2.b.x < global2.b.x) && true, true, (true || global2.c.x) | false, any(select(vec2<bool>(true, false), global2.c.zy, global2.c.x)))));
    var var_1 = 2147483647i;
    var_1 = ~_wgslsmith_clamp_i32(_wgslsmith_add_i32(-11195i, select(_wgslsmith_div_i32(u_input.b, var_0.b.x), 1i, !var_0.c.x)), _wgslsmith_dot_vec3_i32(-var_0.b.zwz, vec3<i32>(1i, -1i, 0i)) << (firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 0u), vec3<u32>(33514u, var_0.a.x, 4294967295u))) % 32u), max(64176i, global2.b.x));
    var var_2 = var_0;
    return true;
}

fn func_4(arg_0: vec3<bool>) -> i32 {
    let var_0 = _wgslsmith_mult_i32(~(-u_input.c.x), u_input.b);
    global0 = ~u_input.b;
    global1 = array<vec2<u32>, 22>();
    global2 = Struct_1(vec3<u32>(4294967295u, ~_wgslsmith_mult_u32(~u_input.a, _wgslsmith_dot_vec3_u32(global2.a, global2.a)), countOneBits(70489u << (~u_input.e % 32u))), vec4<i32>(33074i, _wgslsmith_sub_i32(abs(~var_0), max(-1i, i32(-1i) * -2147483647i)), -_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, -27346i, u_input.d, u_input.c.x), vec4<i32>(u_input.d, -1i, var_0, 0i)), countOneBits(_wgslsmith_add_i32(_wgslsmith_sub_i32(u_input.c.x, var_0), ~1i))), global2.c);
    global1 = array<vec2<u32>, 22>();
    return 25391i;
}

fn func_2(arg_0: bool, arg_1: bool) -> vec4<f32> {
    var var_0 = -2147483647i;
    var var_1 = 54766i;
    var_1 = -30016i ^ -func_4(vec3<bool>(true, func_3(global2.a), global2.c.x));
    var_1 = func_4(!global2.c.wzz);
    var_0 = 0i;
    return _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1575f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - 651f) * _wgslsmith_f_op_f32(f32(-1f) * -1513f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-391f, 1578f))), -465f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1352f), _wgslsmith_div_f32(2234f, -1646f))), -1257f, _wgslsmith_f_op_f32(f32(-1f) * -2030f), -226f) * vec4<f32>(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-1411f + 854f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1589f + 834f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + 346f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1672f * -1000f)))));
}

fn func_1(arg_0: Struct_1) -> f32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(679f, 161f, 646f, 541f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(333f, -1000f, 1004f, -2269f))) + _wgslsmith_f_op_vec4_f32(func_2(true, true)))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-971f, -711f, 1059f, 478f))) - vec4<f32>(_wgslsmith_f_op_f32(floor(565f)), _wgslsmith_f_op_f32(trunc(-743f)), 103f, _wgslsmith_f_op_f32(-3033f + 482f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-393f, 1000f, -1000f, -1041f)) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(func_2(arg_0.c.x, false)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(292f, 1305f, -454f, 422f)))))))), arg_0.c));
    let var_1 = global1[_wgslsmith_index_u32(select(firstTrailingBit(~(~global2.a.x)), _wgslsmith_dot_vec3_u32(~max(arg_0.a, arg_0.a), ~vec3<u32>(47612u, arg_0.a.x, u_input.e)), !(arg_0.b.x <= _wgslsmith_mod_i32(u_input.b, -7624i))) ^ _wgslsmith_add_u32(0u, global2.a.x), 22u)];
    var var_2 = _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(1u, _wgslsmith_add_u32(u_input.a, 0u)), 1u), ~global2.a.zz);
    var_0 = vec4<f32>(var_0.x, -657f, -404f, 1f);
    let var_3 = _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(1000f)))) * _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(var_0.x * -806f))), var_0.x)));
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-638f + -1062f) + var_3.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(433f, -670f) * -110f)) + -1630f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-195f - 1258f) + _wgslsmith_f_op_f32(func_1(Struct_1(global2.a, global2.b, vec4<bool>(false, false, global2.c.x, false))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_1(Struct_1(vec3<u32>(1u, u_input.a, u_input.a), global2.b, global2.c))), _wgslsmith_f_op_f32(872f - 1587f))), !global2.c.x))));
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-926f, 2597f)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_0.x, -1000f))))), global2.c.zw))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(var_0.x, _wgslsmith_div_f32(var_0.x, 1000f))), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-203f, var_0.x))))));
    var var_1 = Struct_1(countOneBits(_wgslsmith_sub_vec3_u32(vec3<u32>(1u, 29733u, 81005u), ~global2.a)) | global2.a, abs(vec4<i32>(~_wgslsmith_dot_vec3_i32(global2.b.xxz, vec3<i32>(-21650i, global2.b.x, -2147483647i)), min(-u_input.b, -30930i & u_input.d), select(~global2.b.x, ~(-2147483647i), any(vec3<bool>(global2.c.x, false, global2.c.x))), u_input.b)), !select(!vec4<bool>(false, global2.c.x, true, global2.c.x), global2.c, vec4<bool>(global2.c.x, !global2.c.x, global2.c.x, !global2.c.x)));
    var var_2 = !var_1.c;
    var_1 = Struct_1(vec3<u32>(~(~(~u_input.a)), global2.a.x, _wgslsmith_add_u32(u_input.a, 77797u)), max(_wgslsmith_clamp_vec4_i32(firstLeadingBit(_wgslsmith_add_vec4_i32(var_1.b, global2.b)), ~vec4<i32>(u_input.c.x, global2.b.x, global2.b.x, var_1.b.x), vec4<i32>(~u_input.c.x, 31418i, min(0i, global2.b.x), 1i)), vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(2126i, 6721i), _wgslsmith_mod_vec2_i32(var_1.b.yy, global2.b.wx)), firstLeadingBit(var_1.b.x), u_input.c.x, global2.b.x)), global2.c);
    global2 = Struct_1(select(_wgslsmith_mult_vec3_u32(vec3<u32>(1u, 1u, 45541u), vec3<u32>(_wgslsmith_sub_u32(u_input.e, var_1.a.x), var_1.a.x, 0u)), vec3<u32>(_wgslsmith_mod_u32(global2.a.x, ~global2.a.x), ~(~global2.a.x), ~u_input.e), all(var_1.c.wyw)), vec4<i32>(global2.b.x, ~(var_1.b.x ^ (var_1.b.x >> (u_input.e % 32u))), (u_input.c.x | _wgslsmith_dot_vec2_i32(global3[_wgslsmith_index_u32(28701u, 17u)], vec2<i32>(604i, 1i))) & -1i, _wgslsmith_div_i32(2948i, _wgslsmith_sub_i32(global2.b.x, global2.b.x & 6908i))), select(!global2.c, !select(vec4<bool>(global2.c.x, var_2.x, var_1.c.x, var_2.x), vec4<bool>(false, var_1.c.x, var_1.c.x, true), !var_2.x), select(select(!global2.c, !var_1.c, global2.c), !vec4<bool>(global2.c.x, true, false, true), select(select(vec4<bool>(global2.c.x, false, var_2.x, false), vec4<bool>(var_1.c.x, false, var_1.c.x, false), var_1.c.x), vec4<bool>(false, false, false, global2.c.x), var_1.c.x || true))));
    var var_3 = any(select(global2.c.yy, global2.c.xx, var_2.x & false));
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i);
}

