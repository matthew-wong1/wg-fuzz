struct Struct_1 {
    a: vec4<f32>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: bool,
    c: Struct_2,
    d: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
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

var<private> global0: Struct_3 = Struct_3(2147483647i, true, Struct_2(Struct_1(vec4<f32>(-513f, 114f, 211f, 1046f), vec3<u32>(44924u, 30382u, 30769u)), Struct_1(vec4<f32>(140f, -1272f, 818f, 1317f), vec3<u32>(17267u, 28524u, 27355u))), true);

var<private> global1: array<Struct_2, 18> = array<Struct_2, 18>(Struct_2(Struct_1(vec4<f32>(-1000f, 1945f, -1435f, 1061f), vec3<u32>(59133u, 87808u, 4294967295u)), Struct_1(vec4<f32>(-1881f, -555f, 1033f, 555f), vec3<u32>(4294967295u, 0u, 63400u))), Struct_2(Struct_1(vec4<f32>(364f, 266f, -117f, 944f), vec3<u32>(96863u, 1u, 17531u)), Struct_1(vec4<f32>(632f, -828f, 989f, -909f), vec3<u32>(1u, 56422u, 102468u))), Struct_2(Struct_1(vec4<f32>(-726f, 943f, 776f, -1000f), vec3<u32>(4294967295u, 2785u, 1u)), Struct_1(vec4<f32>(-1067f, 1063f, 667f, -1000f), vec3<u32>(4097u, 0u, 0u))), Struct_2(Struct_1(vec4<f32>(-136f, 144f, -1000f, -2402f), vec3<u32>(69032u, 55755u, 4294967295u)), Struct_1(vec4<f32>(-1000f, 534f, 538f, -1328f), vec3<u32>(28041u, 37186u, 1u))), Struct_2(Struct_1(vec4<f32>(-155f, -1000f, 1363f, 537f), vec3<u32>(1u, 35397u, 0u)), Struct_1(vec4<f32>(-654f, -1000f, 781f, 1000f), vec3<u32>(5425u, 12092u, 1u))), Struct_2(Struct_1(vec4<f32>(-1776f, 905f, 1000f, 1310f), vec3<u32>(4294967295u, 4294967295u, 71267u)), Struct_1(vec4<f32>(-1631f, 846f, -897f, -818f), vec3<u32>(13173u, 4294967295u, 63319u))), Struct_2(Struct_1(vec4<f32>(704f, 1000f, 407f, -1173f), vec3<u32>(4294967295u, 1u, 50329u)), Struct_1(vec4<f32>(-591f, -546f, 478f, 794f), vec3<u32>(1594u, 4294967295u, 8341u))), Struct_2(Struct_1(vec4<f32>(-588f, 1272f, -842f, 131f), vec3<u32>(1u, 0u, 4933u)), Struct_1(vec4<f32>(-267f, 478f, -442f, 305f), vec3<u32>(50266u, 4294967295u, 103090u))), Struct_2(Struct_1(vec4<f32>(693f, -1057f, -1725f, -2361f), vec3<u32>(33339u, 0u, 46018u)), Struct_1(vec4<f32>(465f, -179f, -692f, 939f), vec3<u32>(1u, 16871u, 48441u))), Struct_2(Struct_1(vec4<f32>(-462f, -690f, 2006f, 774f), vec3<u32>(0u, 7103u, 1u)), Struct_1(vec4<f32>(-543f, -353f, -864f, -984f), vec3<u32>(4294967295u, 41768u, 4212u))), Struct_2(Struct_1(vec4<f32>(-1896f, -1000f, -1788f, 1110f), vec3<u32>(131156u, 0u, 1u)), Struct_1(vec4<f32>(-1723f, -2373f, 151f, -908f), vec3<u32>(4294967295u, 0u, 90517u))), Struct_2(Struct_1(vec4<f32>(-1511f, -690f, 1202f, -485f), vec3<u32>(34573u, 0u, 11759u)), Struct_1(vec4<f32>(-344f, -440f, 1114f, -326f), vec3<u32>(38644u, 5547u, 4294967295u))), Struct_2(Struct_1(vec4<f32>(-459f, -1031f, -1266f, 198f), vec3<u32>(0u, 64731u, 64634u)), Struct_1(vec4<f32>(-601f, 385f, 631f, -393f), vec3<u32>(31786u, 23113u, 1u))), Struct_2(Struct_1(vec4<f32>(-1271f, 649f, -529f, 708f), vec3<u32>(36880u, 7753u, 16348u)), Struct_1(vec4<f32>(628f, 653f, 685f, -1100f), vec3<u32>(0u, 1u, 46248u))), Struct_2(Struct_1(vec4<f32>(1000f, 400f, 1525f, 1196f), vec3<u32>(1u, 22334u, 0u)), Struct_1(vec4<f32>(1012f, 189f, 219f, 511f), vec3<u32>(0u, 0u, 45795u))), Struct_2(Struct_1(vec4<f32>(300f, -1000f, 220f, 1689f), vec3<u32>(1u, 4294967295u, 27382u)), Struct_1(vec4<f32>(-696f, 414f, -199f, 518f), vec3<u32>(1u, 71779u, 23886u))), Struct_2(Struct_1(vec4<f32>(-295f, 2053f, 414f, -1844f), vec3<u32>(3586u, 0u, 0u)), Struct_1(vec4<f32>(-1004f, 564f, -2732f, 2060f), vec3<u32>(52544u, 0u, 128137u))), Struct_2(Struct_1(vec4<f32>(1172f, 185f, -754f, -898f), vec3<u32>(11621u, 1u, 4294967295u)), Struct_1(vec4<f32>(-640f, 1298f, 1000f, 1907f), vec3<u32>(7079u, 17324u, 4294967295u))));

var<private> global2: array<Struct_4, 4> = array<Struct_4, 4>(Struct_4(Struct_3(-18747i, false, Struct_2(Struct_1(vec4<f32>(-436f, 282f, 262f, 564f), vec3<u32>(22123u, 4294967295u, 0u)), Struct_1(vec4<f32>(197f, 954f, -1145f, -956f), vec3<u32>(35313u, 14744u, 1u))), true), 70281u), Struct_4(Struct_3(41102i, false, Struct_2(Struct_1(vec4<f32>(-1897f, 1020f, -236f, -1216f), vec3<u32>(38136u, 4294967295u, 0u)), Struct_1(vec4<f32>(-1143f, -1150f, -1357f, -403f), vec3<u32>(1375u, 62933u, 18202u))), false), 4294967295u), Struct_4(Struct_3(-1i, true, Struct_2(Struct_1(vec4<f32>(878f, 166f, -252f, 530f), vec3<u32>(44422u, 1u, 0u)), Struct_1(vec4<f32>(1560f, -781f, 418f, -106f), vec3<u32>(12241u, 4294967295u, 3489u))), false), 20802u), Struct_4(Struct_3(2147483647i, true, Struct_2(Struct_1(vec4<f32>(-562f, -126f, 1236f, -1188f), vec3<u32>(4294967295u, 8850u, 24287u)), Struct_1(vec4<f32>(-579f, 828f, -1899f, 316f), vec3<u32>(0u, 4294967295u, 45385u))), true), 8154u));

var<private> global3: array<vec4<bool>, 25> = array<vec4<bool>, 25>(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true));

var<private> global4: array<Struct_4, 21>;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_1(arg_0: i32) -> Struct_2 {
    return global0.c;
}

fn func_3(arg_0: Struct_1, arg_1: vec4<i32>) -> vec3<i32> {
    let var_0 = true;
    global0 = Struct_3(1i, true, global0.c, all(vec2<bool>(true, true)));
    global4 = array<Struct_4, 21>();
    let var_1 = 1u;
    let var_2 = _wgslsmith_mod_i32(global0.a, _wgslsmith_dot_vec3_i32(-u_input.b.zyx, select(vec3<i32>(_wgslsmith_mod_i32(3889i, -16524i), global0.a, -57629i), countOneBits(-u_input.b.wxx), select(select(vec3<bool>(true, var_0, true), vec3<bool>(global0.b, false, global0.b), false), vec3<bool>(false, true, var_0), select(vec3<bool>(false, true, true), vec3<bool>(false, false, global0.b), vec3<bool>(var_0, false, false))))));
    return u_input.b.xyx;
}

fn func_4(arg_0: vec3<u32>, arg_1: vec3<i32>, arg_2: vec4<u32>, arg_3: u32) -> bool {
    var var_0 = abs(~countOneBits(_wgslsmith_mod_vec3_i32(vec3<i32>(arg_1.x, -29122i, arg_1.x), _wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, 1713i, 1i), u_input.b.xyy, u_input.b.zwz))));
    global1 = array<Struct_2, 18>();
    global3 = array<vec4<bool>, 25>();
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(func_1(countOneBits(min(u_input.b.x, u_input.b.x))).a.a * _wgslsmith_f_op_vec4_f32(-global0.c.a.a)), arg_0);
    return global0.d;
}

fn func_2(arg_0: Struct_4, arg_1: Struct_2, arg_2: Struct_2) -> Struct_3 {
    global0 = Struct_3(i32(-1i) * -5220i, false, Struct_2(func_1(-2147483647i).b, func_1(_wgslsmith_add_i32(_wgslsmith_add_i32(global0.a, u_input.b.x), ~(-39660i))).a), false | func_4(arg_1.b.b, _wgslsmith_sub_vec3_i32(u_input.b.zzx, func_3(Struct_1(vec4<f32>(arg_1.b.a.x, arg_2.a.a.x, arg_0.a.c.a.a.x, arg_0.a.c.a.a.x), vec3<u32>(arg_1.b.b.x, 28274u, arg_2.b.b.x)), vec4<i32>(u_input.a.x, arg_0.a.a, -2147483647i, -1i))), select(countOneBits(vec4<u32>(arg_0.a.c.b.b.x, 1u, 0u, 69489u)), _wgslsmith_mod_vec4_u32(vec4<u32>(arg_0.a.c.a.b.x, 45773u, 11997u, arg_0.a.c.b.b.x), vec4<u32>(85933u, 0u, 0u, arg_1.a.b.x)), any(vec2<bool>(false, arg_0.a.d))), 0u << (0u % 32u)));
    global3 = array<vec4<bool>, 25>();
    let var_0 = !((_wgslsmith_f_op_f32(-1683f - _wgslsmith_f_op_f32(exp2(arg_2.a.a.x))) >= _wgslsmith_f_op_f32(sign(arg_0.a.c.a.a.x))) || false);
    var var_1 = -1000f;
    global1 = array<Struct_2, 18>();
    return arg_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.c.b;
    var var_1 = _wgslsmith_mult_i32(-1i, 68378i);
    global0 = func_2(global4[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, ~(15876u & (0u ^ global0.c.b.b.x))), 21u)], global1[_wgslsmith_index_u32(~(~global0.c.b.b.x), 18u)], func_1(0i));
    let var_2 = global0.c;
    let var_3 = global1[_wgslsmith_index_u32(~_wgslsmith_div_u32(_wgslsmith_sub_u32(var_0.b.x, ~_wgslsmith_dot_vec3_u32(var_0.b, vec3<u32>(global0.c.b.b.x, 1u, 4294967295u))), 68316u << (_wgslsmith_sub_u32(_wgslsmith_div_u32(var_2.b.b.x, 93325u), 33168u) % 32u)), 18u)];
    var var_4 = _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, global0.a, ~u_input.a.x), -(~u_input.b.xxw))), ~_wgslsmith_add_vec2_i32(reverseBits(u_input.b.yz), u_input.a) & _wgslsmith_sub_vec2_i32(vec2<i32>(_wgslsmith_mult_i32(-2147483647i, u_input.b.x), _wgslsmith_clamp_i32(global0.a, 2147483647i, u_input.a.x)), vec2<i32>(_wgslsmith_div_i32(-47375i, u_input.a.x), 6677i)));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(u_input.a.x ^ global0.a));
}

