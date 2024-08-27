struct Struct_1 {
    a: vec4<u32>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<bool>,
    d: Struct_1,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: vec4<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 2> = array<vec4<i32>, 2>(vec4<i32>(-39377i, -8982i, 0i, -9195i), vec4<i32>(i32(-2147483648), 0i, -11619i, 1i));

var<private> global1: array<Struct_1, 21> = array<Struct_1, 21>(Struct_1(vec4<u32>(0u, 85552u, 16282u, 0u), vec4<bool>(true, true, false, true)), Struct_1(vec4<u32>(27567u, 36865u, 1u, 0u), vec4<bool>(false, false, true, false)), Struct_1(vec4<u32>(42120u, 96274u, 1u, 1u), vec4<bool>(true, true, true, false)), Struct_1(vec4<u32>(0u, 4294967295u, 54871u, 4294967295u), vec4<bool>(true, false, false, true)), Struct_1(vec4<u32>(102511u, 1u, 0u, 0u), vec4<bool>(true, false, true, true)), Struct_1(vec4<u32>(1u, 87939u, 4294967295u, 4294967295u), vec4<bool>(false, true, false, true)), Struct_1(vec4<u32>(61225u, 4294967295u, 21003u, 104560u), vec4<bool>(true, true, false, false)), Struct_1(vec4<u32>(4294967295u, 0u, 4294967295u, 139819u), vec4<bool>(false, true, false, false)), Struct_1(vec4<u32>(0u, 1u, 75504u, 52317u), vec4<bool>(false, true, false, false)), Struct_1(vec4<u32>(1u, 78257u, 0u, 1u), vec4<bool>(true, true, true, true)), Struct_1(vec4<u32>(4294967295u, 60017u, 20595u, 26062u), vec4<bool>(false, false, true, false)), Struct_1(vec4<u32>(9344u, 1u, 1u, 4294967295u), vec4<bool>(false, true, false, true)), Struct_1(vec4<u32>(0u, 0u, 80732u, 23411u), vec4<bool>(true, false, true, false)), Struct_1(vec4<u32>(0u, 10706u, 0u, 7231u), vec4<bool>(false, false, true, true)), Struct_1(vec4<u32>(23030u, 34149u, 52661u, 4294967295u), vec4<bool>(false, false, true, false)), Struct_1(vec4<u32>(18939u, 56449u, 1u, 4294967295u), vec4<bool>(true, true, true, false)), Struct_1(vec4<u32>(0u, 4294967295u, 1u, 1u), vec4<bool>(true, false, false, false)), Struct_1(vec4<u32>(42584u, 4294967295u, 54662u, 29402u), vec4<bool>(true, true, true, true)), Struct_1(vec4<u32>(4294967295u, 17120u, 4294967295u, 16505u), vec4<bool>(false, true, false, false)), Struct_1(vec4<u32>(22436u, 41149u, 44641u, 32179u), vec4<bool>(true, true, false, true)), Struct_1(vec4<u32>(723u, 13945u, 1u, 0u), vec4<bool>(true, false, true, true)));

var<private> global2: array<vec3<f32>, 4> = array<vec3<f32>, 4>(vec3<f32>(-1098f, 1000f, -1195f), vec3<f32>(-1139f, 220f, -1001f), vec3<f32>(1000f, 1343f, -925f), vec3<f32>(-973f, 1658f, 505f));

var<private> global3: vec4<bool> = vec4<bool>(false, false, true, true);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_1(arg_0: f32, arg_1: vec2<bool>) -> vec2<f32> {
    let var_0 = !select(!select(select(vec4<bool>(arg_1.x, false, arg_1.x, true), vec4<bool>(false, global3.x, true, true), vec4<bool>(false, false, arg_1.x, true)), !vec4<bool>(arg_1.x, global3.x, false, arg_1.x), vec4<bool>(false, arg_1.x, arg_1.x, arg_1.x)), select(vec4<bool>(arg_1.x | arg_1.x, all(vec4<bool>(arg_1.x, arg_1.x, false, arg_1.x)), global3.x, u_input.b.x < -30337i), !(!vec4<bool>(global3.x, true, false, true)), all(select(vec4<bool>(global3.x, global3.x, global3.x, false), vec4<bool>(arg_1.x, arg_1.x, true, false), vec4<bool>(true, arg_1.x, global3.x, global3.x)))), true);
    global0 = array<vec4<i32>, 2>();
    var var_1 = arg_0;
    var var_2 = Struct_2(global1[_wgslsmith_index_u32(4294967295u, 21u)], Struct_1(abs(~reverseBits(vec4<u32>(17088u, u_input.e.x, u_input.e.x, 47632u))), select(!(!var_0), vec4<bool>(true, u_input.e.x == u_input.c, true, var_0.x), vec4<bool>(!global3.x, !var_0.x, true, true))), !global3.zyx, Struct_1(_wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, u_input.c, 0u, 56880u) ^ vec4<u32>(4294967295u, 1u, u_input.e.x, u_input.e.x), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.c, u_input.c, u_input.e.x, u_input.e.x), vec4<u32>(1u, u_input.e.x, u_input.e.x, 19840u))), ~vec4<u32>(83724u, u_input.c, u_input.c, 4294967295u)), vec4<bool>(any(vec2<bool>(var_0.x, false)), !arg_1.x, !(u_input.c <= 0u), false)), select(u_input.b, u_input.d.xzz, !any(arg_1)));
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-803f, arg_0, arg_0) + vec3<f32>(651f, arg_0, 538f)) + global2[_wgslsmith_index_u32(var_2.b.a.x, 4u)]) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-global2[_wgslsmith_index_u32(86859u, 4u)]))))));
    return _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(var_3.yz)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(404f, 2425f))) * var_3.xy) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(var_3.zy, var_3.yy, vec2<bool>(arg_1.x, var_2.c.x)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-var_3.xx), _wgslsmith_f_op_vec2_f32(var_3.xy + vec2<f32>(var_3.x, 122f)), !var_2.d.b.x)))), _wgslsmith_f_op_vec2_f32(sign(var_3.zx))));
}

fn func_3(arg_0: i32, arg_1: vec2<f32>, arg_2: Struct_2) -> vec4<i32> {
    let var_0 = vec2<u32>(~_wgslsmith_add_u32(~_wgslsmith_clamp_u32(arg_2.a.a.x, arg_2.a.a.x, arg_2.a.a.x), arg_2.a.a.x), 42361u);
    let var_1 = select(!select(select(select(vec3<bool>(arg_2.a.b.x, false, true), vec3<bool>(global3.x, false, true), vec3<bool>(false, global3.x, false)), !global3.zzx, arg_2.c), !vec3<bool>(global3.x, false, true), min(arg_2.a.a.x, 0u) <= u_input.c), global3.yxz, false && (_wgslsmith_f_op_f32(ceil(1121f)) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -157f) + _wgslsmith_f_op_f32(round(150f)))));
    global0 = array<vec4<i32>, 2>();
    var var_2 = 164f;
    global0 = array<vec4<i32>, 2>();
    return vec4<i32>(u_input.a, ~_wgslsmith_add_i32(_wgslsmith_mult_i32(2147483647i, 1i) >> ((u_input.e.x ^ 25175u) % 32u), abs(~arg_0)), -(-_wgslsmith_clamp_i32(-2147483647i, -34596i, 3071i) & (max(2374i, u_input.a) << (_wgslsmith_sub_u32(23646u, u_input.e.x) % 32u))), u_input.d.x >> (reverseBits(u_input.c) % 32u));
}

fn func_2(arg_0: f32, arg_1: vec2<f32>) -> Struct_1 {
    var var_0 = _wgslsmith_mult_u32(u_input.e.x, ~u_input.c);
    let var_1 = u_input.d.x;
    global3 = vec4<bool>(all(vec2<bool>(!select(true, global3.x, global3.x), all(!global3.xxy))), global3.x, true, false);
    let var_2 = firstTrailingBit(vec3<i32>(-7142i, _wgslsmith_dot_vec4_i32(min(global0[_wgslsmith_index_u32(0u, 2u)], global0[_wgslsmith_index_u32(39944u, 2u)]) >> (_wgslsmith_add_vec4_u32(vec4<u32>(u_input.c, 1u, 68715u, 0u), vec4<u32>(5521u, 4294967295u, u_input.e.x, u_input.c)) % vec4<u32>(32u)), max(func_3(u_input.a, arg_1, Struct_2(Struct_1(vec4<u32>(0u, 0u, 0u, 4254u), vec4<bool>(true, true, false, false)), Struct_1(vec4<u32>(0u, u_input.c, u_input.c, u_input.c), vec4<bool>(false, true, global3.x, global3.x)), global3.ywz, Struct_1(vec4<u32>(4294967295u, u_input.e.x, 4294967295u, u_input.e.x), vec4<bool>(global3.x, true, global3.x, global3.x)), u_input.d.zzw)), ~u_input.d)), ~(-19950i)));
    var var_3 = Struct_2(global1[_wgslsmith_index_u32(~u_input.e.x, 21u)], global1[_wgslsmith_index_u32(2773u, 21u)], !(!global3.xzx), Struct_1(vec4<u32>(_wgslsmith_clamp_u32(u_input.e.x, ~1u, reverseBits(u_input.e.x)), abs(_wgslsmith_div_u32(119514u, 59988u)), 10129u << (u_input.c % 32u), u_input.c), vec4<bool>(all(!vec4<bool>(false, global3.x, true, global3.x)), true, true, all(global3.yw))), vec3<i32>(~(-var_2.x) ^ ~_wgslsmith_div_i32(-2147483647i, var_2.x), 2147483647i, _wgslsmith_clamp_i32(var_1, firstTrailingBit(1i), var_2.x | (var_1 << (1u % 32u)))));
    return var_3.d;
}

fn func_4(arg_0: vec2<f32>, arg_1: vec2<f32>, arg_2: Struct_2, arg_3: vec3<i32>) -> Struct_1 {
    global3 = !arg_2.b.b;
    var var_0 = _wgslsmith_clamp_u32(~(~_wgslsmith_mult_u32(55751u, 7649u) >> (u_input.e.x % 32u)), ~((~u_input.e.x & arg_2.b.a.x) & 4294967295u), ~arg_2.a.a.x ^ 18096u);
    var var_1 = true;
    return func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(-548f + _wgslsmith_f_op_f32(-arg_1.x)))) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(arg_0.x, _wgslsmith_f_op_f32(1314f - -221f), 911f == arg_1.x))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(step(-385f, arg_1.x)), _wgslsmith_f_op_f32(floor(arg_0.x))), arg_0)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(arg_0 + vec2<f32>(arg_1.x, 918f)))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(arg_1)), _wgslsmith_f_op_vec2_f32(-arg_0)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(func_4(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(599f, -2094f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1(-559f, !global3.xz))), Struct_2(func_2(_wgslsmith_f_op_f32(703f + 455f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-407f, -1428f))), global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(func_2(-533f, vec2<f32>(2190f, 934f)).a.x, _wgslsmith_dot_vec2_u32(u_input.e.xz, vec2<u32>(41715u, 29976u)), abs(u_input.e.x)), 21u)], global3.xww, Struct_1(vec4<u32>(24468u, u_input.e.x, u_input.c, u_input.c), select(vec4<bool>(true, global3.x, false, true), vec4<bool>(global3.x, false, true, true), vec4<bool>(false, global3.x, global3.x, false))), vec3<i32>(_wgslsmith_sub_i32(u_input.a, 86775i), u_input.b.x, u_input.a)), vec3<i32>(u_input.a, u_input.a, abs(-6664i ^ u_input.b.x))), global1[_wgslsmith_index_u32(reverseBits(u_input.c), 21u)], global3.xyz, Struct_1(vec4<u32>(~_wgslsmith_dot_vec3_u32(u_input.e, u_input.e), _wgslsmith_sub_u32(u_input.c, max(22895u, u_input.c)), 12278u, 1u), select(!(!vec4<bool>(global3.x, true, true, false)), select(vec4<bool>(true, true, true, true), !vec4<bool>(global3.x, true, global3.x, global3.x), !vec4<bool>(false, false, global3.x, false)), !vec4<bool>(global3.x, global3.x, true, true))), vec3<i32>(u_input.d.x, u_input.d.x, -23038i));
    let var_1 = Struct_1(var_0.d.a, !(!func_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(140f, -135f) - vec2<f32>(-267f, 1035f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-129f, -433f)), Struct_2(var_0.a, Struct_1(var_0.a.a, var_0.d.b), var_0.d.b.yyx, var_0.d, u_input.b), vec3<i32>(2147483647i, var_0.e.x, u_input.a)).b));
    var var_2 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -233f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1133f, -660f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(2212f, 707f)))) + vec2<f32>(-243f, _wgslsmith_f_op_f32(-724f * 1254f))))).b.x;
    let var_3 = ~(~_wgslsmith_sub_i32(_wgslsmith_add_i32(_wgslsmith_clamp_i32(-11166i, 21310i, u_input.b.x), -45424i), -21953i | var_0.e.x));
    global3 = !vec4<bool>(true, false, any(!select(vec2<bool>(true, false), var_1.b.xx, true)), any(select(!global3.zz, var_0.d.b.zw, !vec2<bool>(var_0.a.b.x, var_1.b.x))));
    global1 = array<Struct_1, 21>();
    let var_4 = Struct_2(Struct_1(var_1.a, !(!var_0.a.b)), global1[_wgslsmith_index_u32(27680u, 21u)], !func_2(-224f, _wgslsmith_f_op_vec2_f32(-vec2<f32>(2549f, -515f))).b.yxz, func_4(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1159f, 162f) * vec2<f32>(-1093f, 644f)) + _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1025f, 684f), vec2<f32>(361f, 593f)))))), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(787f + -626f), -535f))), var_0, _wgslsmith_sub_vec3_i32(~abs(vec3<i32>(var_0.e.x, -54216i, u_input.d.x)), _wgslsmith_mod_vec3_i32(var_0.e, vec3<i32>(var_0.e.x, var_0.e.x, 0i)) & _wgslsmith_mod_vec3_i32(var_0.e, var_0.e))), abs(vec3<i32>(var_0.e.x, -2147483647i, var_0.e.x)));
    let var_5 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(global0[_wgslsmith_index_u32(var_1.a.x, 2u)] & u_input.d, -22654i, var_0.a.a.x, min(_wgslsmith_sub_i32(countOneBits(1i), ~var_4.e.x), ~var_4.e.x));
}

