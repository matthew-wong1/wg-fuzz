struct Struct_1 {
    a: vec2<f32>,
    b: vec3<u32>,
    c: f32,
    d: vec3<bool>,
}

struct Struct_2 {
    a: f32,
    b: vec4<i32>,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: u32,
    d: vec4<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: array<u32, 18>;

var<private> global2: i32 = 0i;

var<private> global3: array<vec4<i32>, 16> = array<vec4<i32>, 16>(vec4<i32>(-24683i, -41012i, -9886i, 18031i), vec4<i32>(1i, 2147483647i, 0i, 0i), vec4<i32>(0i, -1i, 2147483647i, 11890i), vec4<i32>(-12353i, 1i, 16654i, 2147483647i), vec4<i32>(1i, -1i, 0i, -23856i), vec4<i32>(2147483647i, 0i, -27303i, 1i), vec4<i32>(37322i, 2147483647i, -1i, 6749i), vec4<i32>(i32(-2147483648), -32510i, 1i, -5889i), vec4<i32>(2147483647i, 15211i, i32(-2147483648), i32(-2147483648)), vec4<i32>(18151i, -7422i, -38592i, -13313i), vec4<i32>(-1i, 9891i, 1i, -37618i), vec4<i32>(2967i, 2764i, 17022i, 2147483647i), vec4<i32>(-20830i, -59342i, 21023i, -38451i), vec4<i32>(-30418i, -8505i, 1i, -77974i), vec4<i32>(-28579i, 13192i, -1i, 27512i), vec4<i32>(i32(-2147483648), 1i, 2147483647i, 1i));

var<private> global4: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(vec2<f32>(-1195f, 149f), vec3<u32>(31537u, 1u, 0u), -146f, vec3<bool>(false, true, true)), Struct_1(vec2<f32>(870f, 601f), vec3<u32>(4294967295u, 1u, 1u), 731f, vec3<bool>(true, true, false)), Struct_1(vec2<f32>(-1441f, 1034f), vec3<u32>(1u, 1u, 19824u), -109f, vec3<bool>(true, true, false)), Struct_1(vec2<f32>(-1000f, 1980f), vec3<u32>(1u, 17849u, 4294967295u), -663f, vec3<bool>(true, true, true)), Struct_1(vec2<f32>(1834f, 1000f), vec3<u32>(22016u, 38877u, 1013u), 603f, vec3<bool>(false, true, false)), Struct_1(vec2<f32>(-249f, -1626f), vec3<u32>(4294967295u, 4746u, 42467u), 172f, vec3<bool>(true, true, false)), Struct_1(vec2<f32>(-412f, 1032f), vec3<u32>(1u, 134452u, 0u), -1000f, vec3<bool>(true, true, true)), Struct_1(vec2<f32>(-205f, 1000f), vec3<u32>(0u, 4294967295u, 44344u), -634f, vec3<bool>(true, false, false)), Struct_1(vec2<f32>(577f, -125f), vec3<u32>(765u, 49770u, 4294967295u), 923f, vec3<bool>(true, true, true)), Struct_1(vec2<f32>(-1459f, -261f), vec3<u32>(48262u, 1839u, 35918u), 493f, vec3<bool>(true, true, false)), Struct_1(vec2<f32>(-881f, 242f), vec3<u32>(4294967295u, 1u, 4294967295u), -364f, vec3<bool>(false, true, true)), Struct_1(vec2<f32>(-380f, 1793f), vec3<u32>(18290u, 0u, 2691u), -290f, vec3<bool>(true, true, true)), Struct_1(vec2<f32>(890f, -579f), vec3<u32>(38980u, 7301u, 0u), 1250f, vec3<bool>(true, true, true)), Struct_1(vec2<f32>(914f, -394f), vec3<u32>(22714u, 1u, 17958u), 1000f, vec3<bool>(true, false, true)), Struct_1(vec2<f32>(3952f, -1000f), vec3<u32>(20897u, 7602u, 4294967295u), 197f, vec3<bool>(true, false, true)), Struct_1(vec2<f32>(-947f, 108f), vec3<u32>(22749u, 15022u, 18382u), 1456f, vec3<bool>(false, false, true)), Struct_1(vec2<f32>(1841f, -217f), vec3<u32>(82004u, 34206u, 29629u), -1000f, vec3<bool>(false, false, false)), Struct_1(vec2<f32>(-1055f, 673f), vec3<u32>(1u, 30401u, 25111u), 1000f, vec3<bool>(true, false, true)), Struct_1(vec2<f32>(458f, -535f), vec3<u32>(1u, 4294967295u, 4294967295u), 1000f, vec3<bool>(false, false, false)), Struct_1(vec2<f32>(932f, 667f), vec3<u32>(0u, 17802u, 4294967295u), 798f, vec3<bool>(false, true, true)), Struct_1(vec2<f32>(960f, 882f), vec3<u32>(36342u, 0u, 4294967295u), -2406f, vec3<bool>(true, true, true)), Struct_1(vec2<f32>(722f, 914f), vec3<u32>(13640u, 4294967295u, 4294967295u), -705f, vec3<bool>(true, true, false)), Struct_1(vec2<f32>(584f, 1220f), vec3<u32>(0u, 4294967295u, 1670u), -235f, vec3<bool>(true, true, true)), Struct_1(vec2<f32>(376f, 1354f), vec3<u32>(1u, 0u, 0u), 928f, vec3<bool>(false, false, false)), Struct_1(vec2<f32>(-1225f, 253f), vec3<u32>(6377u, 1859u, 1u), 337f, vec3<bool>(false, false, false)));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: i32, arg_1: f32, arg_2: Struct_2) -> vec3<i32> {
    global1 = array<u32, 18>();
    var var_0 = !(!global0.x);
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(717f, arg_2.a) + _wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_2.a, arg_2.a), vec2<f32>(arg_1, 1371f))))), u_input.a >> (_wgslsmith_mod_vec3_u32(u_input.a, _wgslsmith_sub_vec3_u32(select(u_input.a, vec3<u32>(u_input.a.x, u_input.a.x, 1u), true), u_input.a)) % vec3<u32>(32u)), arg_2.a, global0.xww);
    global4 = array<Struct_1, 25>();
    var var_2 = Struct_2(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(arg_2.a)), 656f), 847f), -countOneBits(vec4<i32>(~arg_2.b.x, ~(-17834i), ~arg_0, arg_2.b.x)), abs(~vec2<u32>(~var_1.b.x, 82209u)));
    return -vec3<i32>(-39202i, arg_2.b.x, abs(arg_0));
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: i32, arg_3: Struct_2) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_f32(select(1976f, arg_1.a, !global0.x));
    var var_1 = global3[_wgslsmith_index_u32(~(~reverseBits((arg_3.c.x | global1[_wgslsmith_index_u32(18823u, 18u)]) | ~21870u)), 16u)];
    var var_2 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.a * 184f) + arg_1.a) * -1246f), global3[_wgslsmith_index_u32(29987u, 16u)], _wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(arg_1.c, vec2<u32>(arg_1.c.x & 4294967295u, arg_3.c.x | 50268u)), reverseBits(reverseBits(~u_input.a.xy))));
    var_1 = _wgslsmith_add_vec4_i32(vec4<i32>(var_1.x | func_3(_wgslsmith_dot_vec3_i32(var_2.b.xwx, vec3<i32>(-1i, -4041i, -12085i)), -1837f, Struct_2(-1185f, vec4<i32>(arg_0.x, -2147483647i, 2147483647i, var_2.b.x), arg_3.c)).x, _wgslsmith_dot_vec4_i32(~vec4<i32>(var_1.x, -15845i, arg_0.x, -2147483647i), select(var_2.b, vec4<i32>(-2147483647i, -2147483647i, 16371i, 14832i), false)) ^ _wgslsmith_clamp_i32(1i, var_1.x ^ var_2.b.x, ~2147483647i), reverseBits(~arg_0.x), 22840i), min(_wgslsmith_mult_vec4_i32(var_2.b | _wgslsmith_clamp_vec4_i32(vec4<i32>(arg_0.x, 65036i, -2147483647i, 1i), vec4<i32>(-1i, 4468i, arg_3.b.x, arg_0.x), vec4<i32>(arg_3.b.x, -19682i, -1i, arg_0.x)), _wgslsmith_mult_vec4_i32(vec4<i32>(arg_2, -1i, var_1.x, arg_1.b.x), ~vec4<i32>(arg_0.x, var_1.x, 2147483647i, var_2.b.x))), ~(vec4<i32>(var_2.b.x, var_2.b.x, arg_2, 3450i) | vec4<i32>(-11496i, arg_2, 2147483647i, arg_2)) | arg_1.b));
    let var_3 = ~u_input.a.x;
    return select(vec3<bool>(!(false != global0.x), true, all(global0.zyx)), vec3<bool>(any(vec2<bool>(arg_3.a >= -598f, false)), true, !(any(vec4<bool>(global0.x, true, global0.x, global0.x)) | global0.x)), global0.xwy);
}

fn func_2(arg_0: Struct_2, arg_1: f32, arg_2: i32, arg_3: Struct_1) -> bool {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -195f), _wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(1i, -26685i) << (max(3813u, arg_3.b.x) % 32u), arg_0.b.x, arg_2, _wgslsmith_dot_vec4_i32(abs(vec4<i32>(1i, arg_0.b.x, -2147483647i, arg_2)), -vec4<i32>(arg_0.b.x, arg_2, arg_2, arg_2))), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(arg_3.b, arg_3.b), 16u)]), u_input.a.yy);
    global4 = array<Struct_1, 25>();
    var var_1 = u_input.a ^ vec3<u32>(~55826u, var_0.c.x, 1u | u_input.a.x);
    var var_2 = vec3<bool>(global0.x, true, true);
    var_2 = func_4(_wgslsmith_mult_vec3_i32(~func_3(var_0.b.x, -271f, arg_0), arg_0.b.zwz), Struct_2(arg_3.c, vec4<i32>(_wgslsmith_mod_i32(-1i, _wgslsmith_dot_vec2_i32(var_0.b.zz, vec2<i32>(1i, -15676i))), ~(-var_0.b.x), -2147483647i, select(-3443i & arg_2, -var_0.b.x, false)), select(arg_0.c, (u_input.a.yz & vec2<u32>(arg_3.b.x, 14014u)) & _wgslsmith_add_vec2_u32(var_1.zx, arg_3.b.zx), true && arg_3.d.x)), _wgslsmith_sub_i32(var_0.b.x, var_0.b.x), arg_0);
    return !(!(!all(vec4<bool>(arg_3.d.x, true, arg_3.d.x, false)))) & (false & (countOneBits(~4294967295u) < countOneBits(1u | arg_3.b.x)));
}

fn func_5(arg_0: bool) -> Struct_2 {
    global0 = select(vec4<bool>(global0.x, !global0.x, !any(global0.zxx), false), !select(!vec4<bool>(true, arg_0, arg_0, global0.x), vec4<bool>(arg_0 && false, func_2(Struct_2(739f, global3[_wgslsmith_index_u32(25340u, 16u)], u_input.a.xz), -498f, -1i, Struct_1(vec2<f32>(204f, 676f), u_input.a, -102f, vec3<bool>(global0.x, false, true))), global0.x, func_2(Struct_2(1000f, vec4<i32>(1i, 36882i, 21817i, -2147483647i), u_input.a.yy), -423f, 2147483647i, global4[_wgslsmith_index_u32(4294967295u, 25u)])), any(vec3<bool>(true, false, true))), arg_0);
    var var_0 = Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(144f, -1204f))) * _wgslsmith_f_op_f32(-288f * 1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(547f)))), _wgslsmith_sub_vec4_i32(firstLeadingBit(global3[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(u_input.a.x, 18u)], 16u)] & vec4<i32>(27718i, -5943i, 15040i, 10693i)), vec4<i32>(~8743i, 1i, -1i, 2147483647i >> (global1[_wgslsmith_index_u32(u_input.a.x, 18u)] % 32u)) << (_wgslsmith_add_vec4_u32(~vec4<u32>(u_input.a.x, u_input.a.x, global1[_wgslsmith_index_u32(0u, 18u)], 71093u), vec4<u32>(global1[_wgslsmith_index_u32(3676u, 18u)], 59283u, global1[_wgslsmith_index_u32(u_input.a.x, 18u)], 56343u)) % vec4<u32>(32u))), firstLeadingBit(u_input.a.zx));
    var var_1 = Struct_2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(var_0.a, var_0.a), _wgslsmith_f_op_f32(var_0.a - var_0.a))))), vec4<i32>(var_0.b.x, -25491i, _wgslsmith_dot_vec2_i32(var_0.b.yz, _wgslsmith_mod_vec2_i32(vec2<i32>(var_0.b.x, var_0.b.x), var_0.b.xw)), var_0.b.x) | var_0.b, _wgslsmith_clamp_vec2_u32(var_0.c, ~_wgslsmith_add_vec2_u32(var_0.c, vec2<u32>(1855u, global1[_wgslsmith_index_u32(51503u, 18u)])), ~vec2<u32>(~4294967295u, u_input.a.x)));
    var var_2 = _wgslsmith_mult_vec2_i32(~vec2<i32>(1i, _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(var_0.b.yz, vec2<i32>(var_1.b.x, var_1.b.x)), reverseBits(var_0.b.x))), var_0.b.xx);
    let var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_0.a, -1319f), vec2<f32>(974f, -309f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a, var_0.a)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(729f, -1309f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_0.a, -1201f))) + vec2<f32>(var_1.a, -219f))))), ~abs(vec3<u32>(0u, _wgslsmith_dot_vec4_u32(vec4<u32>(28033u, var_1.c.x, 0u, 82662u), vec4<u32>(4494u, var_0.c.x, 4294967295u, 35313u)), ~var_1.c.x)), -797f, global0.yyy);
    return Struct_2(816f, -var_1.b, var_0.c);
}

fn func_1(arg_0: f32, arg_1: vec2<bool>) -> f32 {
    var var_0 = 1i;
    let var_1 = func_5(func_2(Struct_2(arg_0, global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 18u)], 16u)], vec2<u32>(_wgslsmith_mod_u32(1u, u_input.a.x), abs(global1[_wgslsmith_index_u32(u_input.a.x, 18u)]))), _wgslsmith_f_op_f32(-arg_0), _wgslsmith_clamp_i32(-60277i, ~(-1i), _wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(-28342i, 1i)), vec2<i32>(-9002i, -14451i))), global4[_wgslsmith_index_u32(~firstTrailingBit(_wgslsmith_mult_u32(81821u, 1478u)), 25u)]));
    global3 = array<vec4<i32>, 16>();
    var var_2 = func_5(any(global0.wz)).c;
    var_0 = abs(abs(~var_1.b.x));
    return 1000f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = min(u_input.a.zz, ~(~abs(u_input.a.yz)));
    let var_1 = _wgslsmith_f_op_f32(395f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(-947f, global0.xz)) - -841f));
    var var_2 = var_1;
    global3 = array<vec4<i32>, 16>();
    global0 = !select(select(vec4<bool>(!global0.x, all(vec4<bool>(false, global0.x, global0.x, false)), false, global0.x), select(vec4<bool>(true, true, false, true), vec4<bool>(global0.x, true, true, false), global0.x), false), select(select(select(vec4<bool>(global0.x, false, true, global0.x), vec4<bool>(global0.x, false, true, global0.x), vec4<bool>(global0.x, true, true, false)), !vec4<bool>(global0.x, false, true, false), select(vec4<bool>(global0.x, global0.x, global0.x, true), vec4<bool>(global0.x, false, true, global0.x), vec4<bool>(global0.x, true, true, global0.x))), vec4<bool>(true, !global0.x, true, true), vec4<bool>(!global0.x, !global0.x, true | global0.x, any(global0.yzx))), global0.x);
    var var_3 = _wgslsmith_f_op_f32(ceil(var_1)) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-247f)) - var_1) * var_1);
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1, -300f)))));
    var var_5 = !global0.x;
    global1 = array<u32, 18>();
    let x = u_input.a;
    s_output = StorageBuffer(~0i, vec3<f32>(_wgslsmith_f_op_f32(188f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-418f)) * 833f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1059f), -1390f)), _wgslsmith_f_op_f32(-var_1)), ~(~0u), (select(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(firstTrailingBit(var_0.x), 18u)], 16u)], ~global3[_wgslsmith_index_u32(45166u, 16u)], select(vec4<bool>(true, global0.x, true, true), vec4<bool>(global0.x, false, false, false), vec4<bool>(true, true, global0.x, global0.x))) & func_5(false).b) >> (abs(abs(_wgslsmith_add_vec4_u32(vec4<u32>(0u, u_input.a.x, u_input.a.x, 6560u), vec4<u32>(global1[_wgslsmith_index_u32(4294967295u, 18u)], 32632u, u_input.a.x, var_0.x)))) % vec4<u32>(32u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(var_1)), var_1));
}

