struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: u32,
    d: bool,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: f32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 23> = array<Struct_3, 23>(Struct_3(Struct_1(vec4<f32>(2185f, 633f, -255f, -1123f), 25394u, 4294967295u, false), Struct_1(vec4<f32>(954f, -2092f, 1709f, -1412f), 4294967295u, 4294967295u, true)), Struct_3(Struct_1(vec4<f32>(858f, -104f, -230f, -153f), 4294967295u, 4294967295u, false), Struct_1(vec4<f32>(-708f, 603f, 1758f, -1626f), 1u, 6991u, true)), Struct_3(Struct_1(vec4<f32>(1480f, 681f, -644f, -157f), 1u, 6195u, true), Struct_1(vec4<f32>(1000f, 842f, 1172f, 186f), 95557u, 4294967295u, true)), Struct_3(Struct_1(vec4<f32>(308f, 641f, 767f, -1532f), 1u, 35664u, true), Struct_1(vec4<f32>(-1167f, 2156f, 880f, -457f), 1u, 17580u, true)), Struct_3(Struct_1(vec4<f32>(228f, 2159f, 1749f, -1000f), 17370u, 38856u, true), Struct_1(vec4<f32>(440f, 947f, 105f, 857f), 4294967295u, 0u, true)), Struct_3(Struct_1(vec4<f32>(480f, -565f, 121f, -185f), 1u, 51902u, false), Struct_1(vec4<f32>(1092f, -1361f, 755f, 1949f), 54717u, 6511u, false)), Struct_3(Struct_1(vec4<f32>(430f, -575f, -1132f, -1752f), 1u, 7711u, false), Struct_1(vec4<f32>(514f, 540f, -1204f, -1777f), 43928u, 64829u, true)), Struct_3(Struct_1(vec4<f32>(-1253f, 918f, 1645f, 1083f), 4294967295u, 1u, false), Struct_1(vec4<f32>(138f, -1618f, -671f, 1258f), 64235u, 84045u, false)), Struct_3(Struct_1(vec4<f32>(494f, -227f, 1000f, 332f), 4294967295u, 1u, true), Struct_1(vec4<f32>(-960f, -488f, 1081f, 604f), 1u, 0u, false)), Struct_3(Struct_1(vec4<f32>(-1000f, 1552f, -1034f, -450f), 90293u, 1u, true), Struct_1(vec4<f32>(588f, -1916f, 1105f, 1705f), 45793u, 4896u, true)), Struct_3(Struct_1(vec4<f32>(2146f, -980f, -156f, 1812f), 35112u, 4294967295u, false), Struct_1(vec4<f32>(-531f, -573f, -1035f, 472f), 48886u, 0u, false)), Struct_3(Struct_1(vec4<f32>(-158f, 584f, 297f, -459f), 69460u, 22801u, true), Struct_1(vec4<f32>(510f, -358f, 643f, -463f), 51903u, 16398u, false)), Struct_3(Struct_1(vec4<f32>(-1229f, 817f, 453f, -1369f), 1u, 1u, false), Struct_1(vec4<f32>(-1326f, 357f, -150f, 1173f), 57341u, 4294967295u, false)), Struct_3(Struct_1(vec4<f32>(308f, -1267f, -100f, -2379f), 0u, 47575u, false), Struct_1(vec4<f32>(-269f, -780f, 660f, 1018f), 4294967295u, 1u, false)), Struct_3(Struct_1(vec4<f32>(-1650f, -1276f, -317f, 373f), 10868u, 0u, true), Struct_1(vec4<f32>(-473f, -1300f, 383f, 1000f), 10066u, 1u, true)), Struct_3(Struct_1(vec4<f32>(-674f, -1396f, 853f, -1775f), 0u, 1u, false), Struct_1(vec4<f32>(1135f, 173f, 520f, 1944f), 0u, 95096u, false)), Struct_3(Struct_1(vec4<f32>(807f, -2213f, 833f, -1568f), 2138u, 0u, true), Struct_1(vec4<f32>(-408f, 1351f, -615f, 390f), 5411u, 1u, true)), Struct_3(Struct_1(vec4<f32>(801f, 221f, 302f, -707f), 1u, 9094u, false), Struct_1(vec4<f32>(-634f, 139f, 1152f, -491f), 26251u, 72325u, true)), Struct_3(Struct_1(vec4<f32>(-656f, -669f, -282f, 2220f), 0u, 1u, false), Struct_1(vec4<f32>(-856f, 369f, -605f, 1272f), 0u, 46376u, false)), Struct_3(Struct_1(vec4<f32>(1708f, -469f, -1079f, 567f), 39656u, 4294967295u, false), Struct_1(vec4<f32>(-464f, 730f, 1000f, -257f), 28220u, 44230u, true)), Struct_3(Struct_1(vec4<f32>(-261f, -846f, 509f, 1305f), 48779u, 16379u, false), Struct_1(vec4<f32>(-1885f, -1429f, -1294f, -1000f), 13464u, 4294967295u, true)), Struct_3(Struct_1(vec4<f32>(491f, 776f, -149f, -1000f), 67572u, 4294967295u, true), Struct_1(vec4<f32>(1072f, 1540f, -576f, -1720f), 44522u, 30275u, false)), Struct_3(Struct_1(vec4<f32>(-1000f, -1039f, -1299f, 353f), 2936u, 17153u, true), Struct_1(vec4<f32>(-434f, -1484f, -766f, 356f), 75343u, 72006u, true)));

var<private> global1: i32;

var<private> global2: vec4<bool>;

var<private> global3: array<Struct_3, 16>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_1) -> f32 {
    var var_0 = !vec4<bool>(any(!(!vec4<bool>(false, true, arg_1.d, global2.x))), select(all(vec2<bool>(false, false)), true, false), true, true);
    var var_1 = arg_1.c;
    let var_2 = max(vec3<u32>(0u, abs(4294967295u), _wgslsmith_add_u32(_wgslsmith_div_u32(10635u, arg_1.b), ~4294967295u)), firstTrailingBit(reverseBits(abs(vec3<u32>(u_input.c.x, arg_1.b, 25794u)))));
    global3 = array<Struct_3, 16>();
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(abs(-1052f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(arg_1.a.x - 166f)) + arg_0.x), _wgslsmith_f_op_f32(select(arg_1.a.x, 1601f, false)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(793f + -783f) + -701f) - -1000f)));
}

fn func_2(arg_0: i32) -> Struct_1 {
    var var_0 = 280f;
    return Struct_1(vec4<f32>(1000f, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f * 1000f), _wgslsmith_f_op_f32(-312f + 1000f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(1184f, -295f)))) * -334f), _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1115f, -1000f), vec2<f32>(340f, -728f))), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(279f, -240f, 296f, 751f)), ~70328u, ~u_input.b, false)))), _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(73563u, u_input.b), firstTrailingBit(vec2<u32>(4294967295u, 1u))), u_input.c), ~_wgslsmith_mod_u32(countOneBits(u_input.c.x), 85947u)), 13206u, true);
}

fn func_1() -> Struct_1 {
    let var_0 = vec4<i32>(-_wgslsmith_dot_vec2_i32(abs(min(vec2<i32>(u_input.a, u_input.a), vec2<i32>(-15209i, u_input.a))), ~vec2<i32>(u_input.a, 0i) | _wgslsmith_mod_vec2_i32(vec2<i32>(0i, u_input.a), vec2<i32>(-1i, u_input.a))), max(-24359i, 27597i) ^ (_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a), ~vec2<i32>(0i, u_input.a)) | -_wgslsmith_sub_i32(2147483647i, u_input.a)), ~u_input.a, max(u_input.a, 2147483647i));
    var var_1 = Struct_3(func_2(_wgslsmith_div_i32(-1i, var_0.x)), func_2(-reverseBits(min(u_input.a, u_input.a))));
    var_1 = global0[_wgslsmith_index_u32(~1u, 23u)];
    let var_2 = true;
    return var_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0[_wgslsmith_index_u32(u_input.b, 23u)];
    var var_1 = Struct_3(var_0.a, var_0.a);
    var_1 = Struct_3(func_1(), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(var_0.a.a)) + var_0.a.a), _wgslsmith_dot_vec4_u32(~vec4<u32>(var_1.a.b, var_0.b.c, var_0.a.c, var_0.a.c) << (~vec4<u32>(10612u, u_input.c.x, 4294967295u, u_input.b) % vec4<u32>(32u)), ~firstTrailingBit(vec4<u32>(var_0.b.c, 60689u, var_1.b.c, var_0.b.b))), u_input.b, 4294967295u <= var_0.a.c));
    global3 = array<Struct_3, 16>();
    let var_2 = _wgslsmith_f_op_f32(-219f + var_1.b.a.x);
    global2 = select(vec4<bool>(false, false, global2.x, var_1.b.d), select(vec4<bool>(var_1.a.d, true || !var_1.a.d, true, var_1.b.a.x != -2032f), select(select(vec4<bool>(global2.x, global2.x, var_1.a.d, false), select(vec4<bool>(var_0.b.d, var_1.b.d, true, var_1.b.d), vec4<bool>(var_0.a.d, true, false, global2.x), var_1.b.d), !vec4<bool>(var_1.a.d, false, true, global2.x)), !(!vec4<bool>(true, false, true, var_0.b.d)), !select(vec4<bool>(var_0.b.d, global2.x, var_1.b.d, false), vec4<bool>(global2.x, var_0.a.d, var_1.b.d, var_0.b.d), global2.x)), vec4<bool>(all(vec2<bool>(true, true)), var_1.b.d && var_0.a.d, global2.x || func_1().d, true)), vec4<bool>(select(var_0.b.d, !var_1.a.d, func_2(-u_input.a).d), max(u_input.c.x, countOneBits(0u)) > ~_wgslsmith_dot_vec2_u32(u_input.c, vec2<u32>(32478u, var_0.b.c)), all(select(!global2.wyx, select(vec3<bool>(var_1.a.d, true, var_1.b.d), global2.wxx, vec3<bool>(true, var_1.b.d, true)), select(vec3<bool>(false, true, var_1.b.d), global2.xwy, var_0.a.d))), false));
    let var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_1.a.a) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_2, var_0.b.a.x, var_0.b.a.x, var_0.a.a.x), vec4<f32>(245f, var_1.b.a.x, var_2, 198f), vec4<bool>(var_1.a.d, false, false, var_1.b.d)))))), 1u, 1u, all(!(!global2.xzw)));
    let var_4 = vec4<i32>(_wgslsmith_div_i32(~u_input.a, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, -4659i), vec2<i32>(u_input.a, -2147483647i))) & 5964i, countOneBits(~(-2147483647i)), u_input.a, 1i) ^ vec4<i32>(u_input.a & u_input.a, _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, 31009i, -2147483647i), vec3<i32>(u_input.a, u_input.a, u_input.a)) | _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(u_input.a, 9959i, u_input.a)), _wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(-7899i, u_input.a, u_input.a), vec3<i32>(u_input.a, -23368i, u_input.a)), select(vec3<i32>(-1i, 16661i, 0i), vec3<i32>(1i, -26396i, 15494i), false))), _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, -67474i, u_input.a, -27818i), vec4<i32>(1i, u_input.a, u_input.a, u_input.a), vec4<i32>(2147483647i, 0i, -75940i, -31103i)), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a)) << (~var_1.a.c % 32u), min(-2147483647i, u_input.a) >> (var_1.b.c % 32u));
    let var_5 = global3[_wgslsmith_index_u32(abs(0u), 16u)];
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<u32>(0u, var_5.a.c), i32(-1i) * -var_4.x, _wgslsmith_f_op_f32(-1142f + var_1.a.a.x), var_3.a);
}

