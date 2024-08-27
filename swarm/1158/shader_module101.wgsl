struct Struct_1 {
    a: vec2<i32>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: f32,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: i32,
    b: bool,
    c: vec2<u32>,
    d: i32,
    e: vec4<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
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

var<private> global0: array<Struct_3, 30> = array<Struct_3, 30>(Struct_3(2147483647i, false, vec2<u32>(0u, 0u), 31282i, vec4<f32>(861f, -2210f, 299f, -679f)), Struct_3(0i, false, vec2<u32>(31951u, 87291u), -33956i, vec4<f32>(550f, 1244f, -918f, 951f)), Struct_3(8209i, false, vec2<u32>(7234u, 6244u), 1i, vec4<f32>(-2700f, -2275f, -2001f, -998f)), Struct_3(-1i, true, vec2<u32>(0u, 0u), 18421i, vec4<f32>(541f, -1901f, 1736f, -2001f)), Struct_3(28191i, true, vec2<u32>(29682u, 33300u), -1i, vec4<f32>(-343f, -555f, 1000f, 1548f)), Struct_3(i32(-2147483648), false, vec2<u32>(1u, 36909u), -18335i, vec4<f32>(-1407f, 624f, -815f, 585f)), Struct_3(72219i, false, vec2<u32>(0u, 14759u), 29540i, vec4<f32>(926f, -681f, 701f, 448f)), Struct_3(i32(-2147483648), false, vec2<u32>(71021u, 4294967295u), -54643i, vec4<f32>(-171f, 578f, -893f, 403f)), Struct_3(i32(-2147483648), true, vec2<u32>(5262u, 4294967295u), -2211i, vec4<f32>(668f, 513f, 163f, -2404f)), Struct_3(i32(-2147483648), true, vec2<u32>(7153u, 15893u), -1i, vec4<f32>(-733f, 379f, 1706f, 1666f)), Struct_3(-1i, false, vec2<u32>(1u, 0u), -18649i, vec4<f32>(-1426f, -682f, -135f, 1667f)), Struct_3(-12700i, false, vec2<u32>(4294967295u, 53788u), -4780i, vec4<f32>(1000f, 632f, -830f, -1451f)), Struct_3(0i, false, vec2<u32>(4294967295u, 1u), -30821i, vec4<f32>(-146f, -491f, -2148f, -962f)), Struct_3(2147483647i, false, vec2<u32>(4294967295u, 41529u), 42656i, vec4<f32>(373f, -1341f, -433f, 640f)), Struct_3(-33705i, true, vec2<u32>(4294967295u, 0u), 1i, vec4<f32>(-1426f, 996f, 580f, 1000f)), Struct_3(2147483647i, false, vec2<u32>(10248u, 1u), -2973i, vec4<f32>(-330f, 708f, -1343f, 425f)), Struct_3(24062i, false, vec2<u32>(0u, 0u), -1i, vec4<f32>(-1000f, -723f, 1373f, 692f)), Struct_3(1i, true, vec2<u32>(51310u, 57018u), -13946i, vec4<f32>(-680f, -1159f, -227f, -415f)), Struct_3(i32(-2147483648), true, vec2<u32>(1u, 40585u), 1i, vec4<f32>(-406f, -371f, 1000f, 1572f)), Struct_3(20326i, false, vec2<u32>(2038u, 19275u), 18345i, vec4<f32>(-448f, 2531f, -1909f, 594f)), Struct_3(27194i, false, vec2<u32>(60832u, 4294967295u), 1i, vec4<f32>(-444f, -488f, 118f, 949f)), Struct_3(0i, true, vec2<u32>(1u, 1u), 1i, vec4<f32>(-402f, -417f, -318f, -320f)), Struct_3(-18147i, false, vec2<u32>(2801u, 0u), 51250i, vec4<f32>(390f, 225f, -1000f, -128f)), Struct_3(-1i, true, vec2<u32>(46013u, 11461u), i32(-2147483648), vec4<f32>(-224f, -507f, 316f, -1000f)), Struct_3(-64592i, true, vec2<u32>(1938u, 0u), 8692i, vec4<f32>(1987f, 2733f, -281f, 1220f)), Struct_3(-1i, true, vec2<u32>(4294967295u, 15666u), i32(-2147483648), vec4<f32>(-342f, -1120f, -1061f, -804f)), Struct_3(0i, false, vec2<u32>(0u, 3820u), -11825i, vec4<f32>(1110f, -1000f, 933f, 1000f)), Struct_3(-5265i, false, vec2<u32>(601u, 37219u), i32(-2147483648), vec4<f32>(-1300f, -615f, -501f, 768f)), Struct_3(34869i, true, vec2<u32>(1u, 0u), 2147483647i, vec4<f32>(1152f, -1866f, 398f, -537f)), Struct_3(2147483647i, true, vec2<u32>(18533u, 4294967295u), 0i, vec4<f32>(-1146f, -792f, -238f, 305f)));

var<private> global1: i32;

var<private> global2: array<bool, 19> = array<bool, 19>(true, false, true, true, true, true, false, true, false, true, false, true, true, false, false, false, true, true, true);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: f32) -> Struct_3 {
    global1 = firstTrailingBit(min(~(-1i), ~0i));
    let var_0 = !vec4<bool>(true, any(vec4<bool>(!global2[_wgslsmith_index_u32(u_input.a, 19u)], false, true, all(vec4<bool>(global2[_wgslsmith_index_u32(u_input.a, 19u)], global2[_wgslsmith_index_u32(19690u, 19u)], false, true)))), (u_input.b <= ~28353i) || true, !(_wgslsmith_f_op_f32(-arg_0) < 654f));
    global1 = u_input.b;
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, -434f))), vec2<f32>(-1485f, _wgslsmith_f_op_f32(select(arg_0, arg_0, false))))))));
    var var_2 = Struct_1(~vec2<i32>(34296i, -66537i >> (u_input.a % 32u)), u_input.b);
    return global0[_wgslsmith_index_u32(~u_input.a, 30u)];
}

fn func_3(arg_0: Struct_3, arg_1: vec4<f32>) -> Struct_2 {
    global0 = array<Struct_3, 30>();
    let var_0 = Struct_1(select(_wgslsmith_div_vec2_i32(~firstTrailingBit(vec2<i32>(2147483647i, u_input.b)), vec2<i32>(i32(-1i) * -1i, -u_input.b)), -vec2<i32>(arg_0.a & 10293i, arg_0.d & -30208i), true), i32(-1i) * -1i);
    let var_1 = Struct_4(Struct_2(var_0, !any(vec4<bool>(true, global2[_wgslsmith_index_u32(12779u, 19u)], false, false)), -1048f, Struct_1(~(var_0.a << (arg_0.c % vec2<u32>(32u))), ~arg_0.d | (i32(-1i) * -60172i)), abs(_wgslsmith_sub_i32(_wgslsmith_mod_i32(-1i, arg_0.a), 12182i))), _wgslsmith_f_op_f32(arg_1.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x + -948f) - -649f)));
    global1 = _wgslsmith_mod_i32(i32(-1i) * -1i, arg_0.a);
    let var_2 = Struct_4(Struct_2(Struct_1(~var_0.a, u_input.b), var_1.a.b, arg_0.e.x, Struct_1(var_1.a.d.a, _wgslsmith_div_i32(u_input.b, 1i)), _wgslsmith_div_i32(1216i, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 0i, u_input.b, u_input.b), ~vec4<i32>(var_0.b, 2147483647i, u_input.b, -1i)))), _wgslsmith_f_op_f32(sign(991f)));
    return Struct_2(var_2.a.a, -_wgslsmith_sub_i32(firstLeadingBit(u_input.b), var_0.b) != _wgslsmith_clamp_i32(_wgslsmith_mod_i32(arg_0.d, -1i), (i32(-1i) * -1i) | u_input.b, _wgslsmith_mult_i32(_wgslsmith_div_i32(0i, var_0.a.x), abs(37104i))), arg_1.x, var_0, (-_wgslsmith_dot_vec4_i32(vec4<i32>(39843i, 29411i, u_input.b, -2147483647i), vec4<i32>(var_2.a.a.a.x, 1i, -33241i, arg_0.d)) ^ firstLeadingBit(_wgslsmith_sub_i32(-15716i, -30301i))) | var_2.a.a.b);
}

fn func_4(arg_0: Struct_2) -> f32 {
    let var_0 = func_2(-1260f);
    var var_1 = 0i;
    var var_2 = Struct_4(Struct_2(arg_0.a, !func_2(-387f).b, var_0.e.x, arg_0.a, _wgslsmith_mult_i32(-178i, _wgslsmith_add_i32(-2147483647i, select(arg_0.a.b, 7622i, global2[_wgslsmith_index_u32(4294967295u, 19u)])))), 364f);
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(var_2.a.c, arg_0.c))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.e.x) - _wgslsmith_f_op_f32(step(1862f, var_0.e.x)))))), var_0.e.x, true));
}

fn func_1(arg_0: vec3<u32>, arg_1: vec4<f32>) -> Struct_1 {
    global1 = ~_wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(min(u_input.b, -42535i), -u_input.b)), vec2<i32>(13064i, ~u_input.b << (~arg_0.x % 32u)));
    let var_0 = _wgslsmith_add_u32(10810u, 36609u);
    var var_1 = arg_1.x <= _wgslsmith_f_op_f32(func_4(func_3(func_2(arg_1.x), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-965f, arg_1.x, -931f, 1183f), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_1.x, arg_1.x, arg_1.x, arg_1.x), arg_1)), global2[_wgslsmith_index_u32(~var_0, 19u)])))));
    return Struct_1(-vec2<i32>(42479i, u_input.b), i32(-1i) * -u_input.b);
}

fn func_5(arg_0: bool, arg_1: Struct_2, arg_2: bool) -> Struct_4 {
    let var_0 = Struct_4(arg_1, _wgslsmith_f_op_f32(sign(1007f)));
    var var_1 = var_0;
    let var_2 = ~_wgslsmith_dot_vec4_u32(min((vec4<u32>(14139u, u_input.a, u_input.a, u_input.a) & vec4<u32>(u_input.a, 3970u, 0u, u_input.a)) << ((vec4<u32>(40343u, u_input.a, 48061u, 21816u) & vec4<u32>(u_input.a, u_input.a, 8385u, u_input.a)) % vec4<u32>(32u)), min(vec4<u32>(0u, 13494u, 13311u, 1u), ~vec4<u32>(u_input.a, 4294967295u, u_input.a, 4294967295u))), vec4<u32>(~u_input.a, _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(u_input.a, u_input.a, 0u)), max(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(u_input.a, 23973u, u_input.a))), ~countOneBits(3848u), reverseBits(~u_input.a)));
    let var_3 = Struct_4(func_3(global0[_wgslsmith_index_u32(reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 1u, u_input.a) >> (vec3<u32>(u_input.a, u_input.a, u_input.a) % vec3<u32>(32u)), select(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(0u, 4294967295u, u_input.a), arg_0))), 30u)], _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1102f, 295f, arg_1.c, -978f))), vec4<f32>(-1330f, arg_1.c, -1225f, arg_1.c)))), var_0.a.c);
    let var_4 = _wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(-1i, -_wgslsmith_dot_vec4_i32(vec4<i32>(-45358i, u_input.b, var_3.a.d.a.x, -14560i), vec4<i32>(21525i, var_1.a.e, -25518i, var_1.a.d.b))), _wgslsmith_clamp_i32(_wgslsmith_sub_i32(1i << (1u % 32u), 19704i | u_input.b), _wgslsmith_add_i32(var_1.a.a.a.x, var_3.a.e), var_1.a.a.a.x), _wgslsmith_mult_i32(~62358i >> (~4294967295u % 32u), func_1(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, 4183u, 80763u), vec3<u32>(u_input.a, 0u, 66098u)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-943f, 896f, var_0.a.c, var_1.b)))).b), _wgslsmith_dot_vec2_i32(var_1.a.d.a, -_wgslsmith_mult_vec2_i32(vec2<i32>(var_3.a.d.b, 32690i), vec2<i32>(2147483647i, var_0.a.e)))), vec4<i32>(abs(var_0.a.e), ~0i, 5266i, _wgslsmith_sub_i32(~u_input.b, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, var_1.a.e, -17413i, -2147483647i), vec4<i32>(u_input.b, -2147483647i, arg_1.a.a.x, 39523i)))) >> (vec4<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a, 1u), vec2<u32>(1u, u_input.a)), ~firstTrailingBit(u_input.a), func_2(_wgslsmith_f_op_f32(-var_0.b)).c.x, ~(~u_input.a)) % vec4<u32>(32u)), max(vec4<i32>(-_wgslsmith_mod_i32(var_0.a.e, u_input.b), 0i, -2147483647i, -_wgslsmith_div_i32(var_0.a.d.b, arg_1.e)), vec4<i32>(firstLeadingBit(11954i), -60323i, ~(~var_1.a.d.a.x), -(var_0.a.a.b >> (var_2 % 32u)))));
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 30>();
    let var_0 = func_5(global2[_wgslsmith_index_u32(0u, 19u)], Struct_2(Struct_1(~vec2<i32>(-124i, u_input.b), u_input.b), any(select(!vec3<bool>(global2[_wgslsmith_index_u32(u_input.a, 19u)], global2[_wgslsmith_index_u32(78160u, 19u)], false), !vec3<bool>(true, true, global2[_wgslsmith_index_u32(u_input.a, 19u)]), vec3<bool>(true, true, true))), -490f, func_1(vec3<u32>(~u_input.a, 1u, u_input.a), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(718f, -221f, -1486f, -309f)))), u_input.b), true || !(!(!global2[_wgslsmith_index_u32(1u, 19u)])));
    global1 = var_0.a.e;
    let var_1 = select(vec4<bool>(false, !global2[_wgslsmith_index_u32(u_input.a & (61483u >> (u_input.a % 32u)), 19u)], !(!all(vec2<bool>(false, global2[_wgslsmith_index_u32(37692u, 19u)]))), any(select(select(vec4<bool>(global2[_wgslsmith_index_u32(u_input.a, 19u)], false, false, global2[_wgslsmith_index_u32(48787u, 19u)]), vec4<bool>(var_0.a.b, global2[_wgslsmith_index_u32(4294967295u, 19u)], false, var_0.a.b), true), vec4<bool>(global2[_wgslsmith_index_u32(2368u, 19u)], var_0.a.b, global2[_wgslsmith_index_u32(u_input.a, 19u)], false), true))), !select(select(select(vec4<bool>(var_0.a.b, global2[_wgslsmith_index_u32(u_input.a, 19u)], true, var_0.a.b), vec4<bool>(true, var_0.a.b, global2[_wgslsmith_index_u32(u_input.a, 19u)], true), vec4<bool>(false, var_0.a.b, false, var_0.a.b)), !vec4<bool>(false, var_0.a.b, true, true), global2[_wgslsmith_index_u32(u_input.a, 19u)]), select(!vec4<bool>(global2[_wgslsmith_index_u32(u_input.a, 19u)], global2[_wgslsmith_index_u32(4294967295u, 19u)], global2[_wgslsmith_index_u32(4294967295u, 19u)], false), select(vec4<bool>(false, false, global2[_wgslsmith_index_u32(27753u, 19u)], false), vec4<bool>(true, true, true, var_0.a.b), global2[_wgslsmith_index_u32(u_input.a, 19u)]), select(vec4<bool>(global2[_wgslsmith_index_u32(1u, 19u)], var_0.a.b, global2[_wgslsmith_index_u32(u_input.a, 19u)], var_0.a.b), vec4<bool>(true, var_0.a.b, true, true), vec4<bool>(true, var_0.a.b, global2[_wgslsmith_index_u32(1u, 19u)], var_0.a.b))), all(vec4<bool>(var_0.a.b, global2[_wgslsmith_index_u32(0u, 19u)], var_0.a.b, true))), select(select(select(vec4<bool>(var_0.a.b, var_0.a.b, global2[_wgslsmith_index_u32(u_input.a, 19u)], false), !vec4<bool>(global2[_wgslsmith_index_u32(u_input.a, 19u)], false, false, var_0.a.b), true), select(select(vec4<bool>(true, var_0.a.b, false, var_0.a.b), vec4<bool>(true, var_0.a.b, var_0.a.b, false), global2[_wgslsmith_index_u32(u_input.a, 19u)]), select(vec4<bool>(false, false, global2[_wgslsmith_index_u32(0u, 19u)], global2[_wgslsmith_index_u32(u_input.a, 19u)]), vec4<bool>(true, global2[_wgslsmith_index_u32(u_input.a, 19u)], var_0.a.b, var_0.a.b), global2[_wgslsmith_index_u32(u_input.a, 19u)]), true), any(select(vec2<bool>(true, global2[_wgslsmith_index_u32(u_input.a, 19u)]), vec2<bool>(global2[_wgslsmith_index_u32(4294967295u, 19u)], false), vec2<bool>(var_0.a.b, true)))), !(!vec4<bool>(global2[_wgslsmith_index_u32(u_input.a, 19u)], global2[_wgslsmith_index_u32(u_input.a, 19u)], global2[_wgslsmith_index_u32(1u, 19u)], true)), !(!vec4<bool>(true, var_0.a.b, global2[_wgslsmith_index_u32(4294967295u, 19u)], true))));
    var var_2 = _wgslsmith_mod_i32(i32(-1i) * -9280i, 24689i);
    global1 = -_wgslsmith_mult_i32(var_0.a.e, func_5(all(vec2<bool>(global2[_wgslsmith_index_u32(u_input.a, 19u)], global2[_wgslsmith_index_u32(38596u, 19u)])), var_0.a, !var_0.a.b).a.a.b ^ u_input.b);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a.d.b >> (~(~0u << ((73745u ^ u_input.a) % 32u)) % 32u));
}

