struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: f32,
    e: f32,
}

struct Struct_2 {
    a: f32,
    b: vec3<bool>,
    c: vec2<i32>,
    d: Struct_1,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec4<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(-19010i, i32(-2147483648), 1i, -47459i);

var<private> global1: array<Struct_2, 13> = array<Struct_2, 13>(Struct_2(1000f, vec3<bool>(true, false, true), vec2<i32>(2147483647i, 2147483647i), Struct_1(24i, vec2<i32>(-7759i, i32(-2147483648)), -16303i, 255f, 454f), vec4<f32>(824f, -112f, 300f, -896f)), Struct_2(1724f, vec3<bool>(false, true, false), vec2<i32>(0i, 2147483647i), Struct_1(1i, vec2<i32>(-7911i, i32(-2147483648)), 1i, 530f, -177f), vec4<f32>(-1523f, 676f, -1647f, -464f)), Struct_2(853f, vec3<bool>(false, false, true), vec2<i32>(21999i, 44142i), Struct_1(2147483647i, vec2<i32>(i32(-2147483648), -24942i), 0i, -619f, 533f), vec4<f32>(-228f, -1444f, 1386f, -740f)), Struct_2(187f, vec3<bool>(false, false, true), vec2<i32>(-1i, -1i), Struct_1(-65567i, vec2<i32>(2147483647i, 56595i), -1i, -263f, 562f), vec4<f32>(501f, 1326f, 218f, 557f)), Struct_2(-157f, vec3<bool>(false, true, false), vec2<i32>(i32(-2147483648), 1792i), Struct_1(-28513i, vec2<i32>(i32(-2147483648), -1i), 63517i, 232f, 483f), vec4<f32>(724f, -437f, -464f, 847f)), Struct_2(-200f, vec3<bool>(false, true, true), vec2<i32>(2147483647i, -1i), Struct_1(0i, vec2<i32>(1i, -3464i), 21129i, -1628f, 310f), vec4<f32>(-647f, -551f, 590f, 1173f)), Struct_2(-1000f, vec3<bool>(false, false, true), vec2<i32>(1i, 1i), Struct_1(-14050i, vec2<i32>(0i, -53720i), 23245i, -646f, -428f), vec4<f32>(1215f, 702f, -424f, 692f)), Struct_2(1000f, vec3<bool>(true, true, false), vec2<i32>(2147483647i, 21573i), Struct_1(22149i, vec2<i32>(-19365i, -28419i), 0i, 467f, 749f), vec4<f32>(-1000f, 2278f, 881f, 265f)), Struct_2(1198f, vec3<bool>(true, false, false), vec2<i32>(23419i, 49059i), Struct_1(i32(-2147483648), vec2<i32>(2147483647i, 23100i), 2147483647i, 681f, -1000f), vec4<f32>(-966f, -1214f, -407f, -3210f)), Struct_2(-328f, vec3<bool>(false, false, true), vec2<i32>(2147483647i, 6383i), Struct_1(-33308i, vec2<i32>(-2988i, i32(-2147483648)), 0i, -108f, 1000f), vec4<f32>(1000f, -1559f, -1439f, -1037f)), Struct_2(-512f, vec3<bool>(false, false, true), vec2<i32>(1i, 26466i), Struct_1(i32(-2147483648), vec2<i32>(12376i, 1i), -1i, -592f, -1561f), vec4<f32>(197f, 697f, -148f, -1878f)), Struct_2(1000f, vec3<bool>(false, false, false), vec2<i32>(-20624i, 8696i), Struct_1(-1i, vec2<i32>(164i, 12125i), 40316i, -226f, -746f), vec4<f32>(-229f, -1156f, 800f, 1000f)), Struct_2(-232f, vec3<bool>(true, true, false), vec2<i32>(0i, -1i), Struct_1(2147483647i, vec2<i32>(40890i, i32(-2147483648)), 453i, 1522f, -857f), vec4<f32>(262f, -1062f, -238f, 174f)));

var<private> global2: array<bool, 26>;

var<private> global3: array<vec2<bool>, 3> = array<vec2<bool>, 3>(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false));

var<private> global4: array<i32, 22> = array<i32, 22>(2147483647i, -20318i, -8458i, -1i, 0i, -1i, -1i, 2147483647i, -75811i, i32(-2147483648), 1i, 1i, 43429i, -18746i, 53506i, 49986i, 13581i, i32(-2147483648), 23659i, i32(-2147483648), i32(-2147483648), -10153i);

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec3<bool>, arg_1: bool, arg_2: vec3<i32>, arg_3: vec4<bool>) -> f32 {
    var var_0 = global1[_wgslsmith_index_u32(51272u, 13u)];
    var var_1 = _wgslsmith_add_i32(var_0.c.x, var_0.c.x);
    global4 = array<i32, 22>();
    let var_2 = _wgslsmith_div_vec2_i32(-(~(_wgslsmith_div_vec2_i32(var_0.d.b, vec2<i32>(-13783i, var_0.d.c)) << (vec2<u32>(u_input.d.x, 4294967295u) % vec2<u32>(32u)))), firstTrailingBit(abs(_wgslsmith_add_vec2_i32(arg_2.xy, global0.wx))));
    global2 = array<bool, 26>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-578f)));
}

fn func_2(arg_0: i32, arg_1: vec2<bool>) -> Struct_2 {
    var var_0 = -1697f;
    var var_1 = u_input.e;
    var var_2 = Struct_2(_wgslsmith_f_op_f32(387f - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 26u)], global2[_wgslsmith_index_u32(u_input.b, 26u)], false), true, u_input.a.wyy, vec4<bool>(false, arg_1.x, arg_1.x, arg_1.x))))))), vec3<bool>(arg_1.x, true, arg_1.x), _wgslsmith_mult_vec2_i32(vec2<i32>(_wgslsmith_dot_vec2_i32(u_input.a.zw, vec2<i32>(0i, arg_0) << (u_input.d % vec2<u32>(32u))), ~0i), vec2<i32>(global4[_wgslsmith_index_u32(31170u, 22u)], 1i) >> (abs(~u_input.d) % vec2<u32>(32u))), Struct_1(-41895i, _wgslsmith_clamp_vec2_i32(~global0.wx, vec2<i32>(global4[_wgslsmith_index_u32(55079u, 22u)], 53742i) >> (_wgslsmith_mod_vec2_u32(vec2<u32>(2901u, 0u), u_input.d) % vec2<u32>(32u)), min(_wgslsmith_mult_vec2_i32(u_input.a.zx, vec2<i32>(global4[_wgslsmith_index_u32(u_input.e, 22u)], 3261i)), u_input.a.ww << (vec2<u32>(70648u, 37170u) % vec2<u32>(32u)))), -37935i, _wgslsmith_f_op_f32(func_3(!(!vec3<bool>(false, false, arg_1.x)), !(global2[_wgslsmith_index_u32(31715u, 26u)] && arg_1.x), _wgslsmith_clamp_vec3_i32(u_input.a.wwy | u_input.a.www, ~vec3<i32>(global0.x, 33973i, u_input.c), global0.zyx >> (vec3<u32>(u_input.d.x, u_input.e, u_input.b) % vec3<u32>(32u))), vec4<bool>(false, all(arg_1), !global2[_wgslsmith_index_u32(7859u, 26u)], true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(f32(-1f) * -462f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-391f - 455f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1052f, _wgslsmith_f_op_f32(select(-286f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), global2[_wgslsmith_index_u32(select(u_input.e, 4294967295u, false), 26u)])), -621f, _wgslsmith_f_op_f32(trunc(-805f))) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2707f, 1000f, 1110f, 1394f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1014f, 703f, 978f, -1137f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-344f, 853f, 1000f, -1253f) - vec4<f32>(308f, -253f, -478f, -685f)))))));
    var var_3 = global1[_wgslsmith_index_u32(54308u, 13u)];
    let var_4 = Struct_1(-_wgslsmith_add_i32(_wgslsmith_mod_i32(-6650i, 10065i), max(countOneBits(5713i), var_2.d.a)), u_input.a.zz, -13671i, var_2.d.d, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_3.a + var_3.e.x), 375f, true)), -727f)));
    return Struct_2(-1601f, select(var_2.b, !var_2.b, false), vec2<i32>(min(-23832i, i32(-1i) * -1i), _wgslsmith_sub_i32(countOneBits(2147483647i), var_4.c)), var_3.d, _wgslsmith_f_op_vec4_f32(select(var_2.e, var_3.e, abs(_wgslsmith_add_i32(1i, global0.x)) >= _wgslsmith_clamp_i32(-36728i, var_4.b.x, 1i))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2) -> Struct_1 {
    var var_0 = vec2<f32>(220f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(-823f, -379f)), arg_1.e.x))));
    var var_1 = vec2<i32>(_wgslsmith_mult_i32(0i, -firstLeadingBit(u_input.c | 58202i)), -2147483647i);
    var var_2 = arg_1.d;
    global0 = u_input.a << (~max(select(vec4<u32>(u_input.e, u_input.b, 1u, 4607u), ~vec4<u32>(1u, u_input.e, 4294967295u, u_input.d.x), !vec4<bool>(arg_0.b.x, true, true, true)), abs(_wgslsmith_mult_vec4_u32(vec4<u32>(82543u, 1u, u_input.e, 52793u), vec4<u32>(0u, u_input.b, u_input.d.x, u_input.e)))) % vec4<u32>(32u));
    let var_3 = func_2(max(1i, -18625i), vec2<bool>(any(vec4<bool>(true, true, true, true)), true));
    return arg_0.d;
}

fn func_5(arg_0: Struct_2, arg_1: bool, arg_2: u32) -> bool {
    let var_0 = arg_0.e.x;
    global0 = u_input.a >> (_wgslsmith_sub_vec4_u32(reverseBits(_wgslsmith_mult_vec4_u32(~vec4<u32>(4294967295u, 40269u, 11856u, 17823u), vec4<u32>(arg_2, 31569u, 4294967295u, arg_2) ^ vec4<u32>(arg_2, arg_2, u_input.d.x, u_input.d.x))), _wgslsmith_add_vec4_u32(countOneBits(~vec4<u32>(4294967295u, u_input.e, arg_2, 2649u)), ~firstTrailingBit(vec4<u32>(u_input.b, arg_2, arg_2, 0u)))) % vec4<u32>(32u));
    let var_1 = true;
    global3 = array<vec2<bool>, 3>();
    var var_2 = !(!(!arg_0.b));
    return !any(!func_2(arg_0.d.c, func_2(0i, global3[_wgslsmith_index_u32(u_input.b, 3u)]).b.zz).b.yx);
}

fn func_1() -> i32 {
    var var_0 = reverseBits(-firstTrailingBit(-global0.x >> (0u % 32u)));
    let var_1 = !func_5(Struct_2(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(285f, 1000f))), vec3<bool>(true, true, select(global2[_wgslsmith_index_u32(u_input.b, 26u)], global2[_wgslsmith_index_u32(1u, 26u)], global2[_wgslsmith_index_u32(u_input.b, 26u)])), -(~global0.xz), func_4(func_2(-1i, global3[_wgslsmith_index_u32(u_input.d.x, 3u)]), global1[_wgslsmith_index_u32(u_input.e, 13u)]), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(925f, -146f, -1531f, 1531f) * vec4<f32>(-1000f, 706f, 379f, -869f)))), !any(select(vec2<bool>(global2[_wgslsmith_index_u32(8510u, 26u)], global2[_wgslsmith_index_u32(u_input.b, 26u)]), global3[_wgslsmith_index_u32(5910u, 3u)], false)), firstLeadingBit(u_input.d.x));
    var_0 = 16310i;
    var var_2 = global0.x > -1i;
    global4 = array<i32, 22>();
    return -26437i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(0u << (0u % 32u));
    global2 = array<bool, 26>();
    var var_1 = -2147483647i;
    var_1 = func_1();
    var var_2 = func_4(func_2(2147483647i, vec2<bool>(true, any(select(vec3<bool>(false, true, global2[_wgslsmith_index_u32(4294967295u, 26u)]), vec3<bool>(false, true, false), vec3<bool>(global2[_wgslsmith_index_u32(3536u, 26u)], true, global2[_wgslsmith_index_u32(1u, 26u)]))))), Struct_2(_wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-575f + 1697f))), global2[_wgslsmith_index_u32(var_0, 26u)])), select(!func_2(-17168i, vec2<bool>(global2[_wgslsmith_index_u32(39238u, 26u)], true)).b, !(!vec3<bool>(true, true, global2[_wgslsmith_index_u32(u_input.e, 26u)])), global2[_wgslsmith_index_u32(~u_input.e, 26u)]), -(~u_input.a.wy << (_wgslsmith_mult_vec2_u32(u_input.d, vec2<u32>(var_0, u_input.d.x)) % vec2<u32>(32u))), func_4(func_2(_wgslsmith_mult_i32(u_input.a.x, global4[_wgslsmith_index_u32(var_0, 22u)]), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0, 0u), u_input.d), 3u)]), Struct_2(_wgslsmith_div_f32(1114f, 2011f), !vec3<bool>(false, global2[_wgslsmith_index_u32(var_0, 26u)], global2[_wgslsmith_index_u32(36539u, 26u)]), -vec2<i32>(global0.x, global0.x), func_4(global1[_wgslsmith_index_u32(6367u, 13u)], global1[_wgslsmith_index_u32(4294967295u, 13u)]), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1015f, 688f, -836f, 189f))))), vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(992f, -1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1506f))), 1374f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_3(vec3<bool>(global2[_wgslsmith_index_u32(var_0, 26u)], true, global2[_wgslsmith_index_u32(35642u, 26u)]), true, global0.yxx, vec4<bool>(false, true, true, global2[_wgslsmith_index_u32(12357u, 26u)]))))))));
    let var_3 = func_2(global0.x, vec2<bool>(any(select(select(vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 26u)], global2[_wgslsmith_index_u32(u_input.d.x, 26u)], false, global2[_wgslsmith_index_u32(var_0, 26u)]), vec4<bool>(false, true, false, false), vec4<bool>(global2[_wgslsmith_index_u32(u_input.b, 26u)], true, false, global2[_wgslsmith_index_u32(36073u, 26u)])), select(vec4<bool>(global2[_wgslsmith_index_u32(u_input.b, 26u)], global2[_wgslsmith_index_u32(u_input.b, 26u)], false, global2[_wgslsmith_index_u32(u_input.e, 26u)]), vec4<bool>(global2[_wgslsmith_index_u32(var_0, 26u)], global2[_wgslsmith_index_u32(var_0, 26u)], false, true), true), var_0 != 1u)), true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_3.a))))), ~(-vec2<i32>(i32(-1i) * -29078i, -1i)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-var_3.e))), _wgslsmith_f_op_f32(var_2.e * 1296f));
}

