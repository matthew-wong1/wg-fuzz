struct Struct_1 {
    a: vec2<u32>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec4<f32>,
    c: vec3<u32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: i32,
    c: bool,
    d: u32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: u32,
    d: Struct_2,
}

struct Struct_5 {
    a: Struct_3,
    b: i32,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(vec2<u32>(66382u, 13339u), vec3<f32>(306f, 280f, -1938f)), Struct_1(vec2<u32>(40187u, 0u), vec3<f32>(-551f, 769f, 501f)), Struct_1(vec2<u32>(0u, 1u), vec3<f32>(-1065f, -1634f, -1000f)), Struct_1(vec2<u32>(32048u, 0u), vec3<f32>(-519f, 683f, 1151f)), Struct_1(vec2<u32>(2418u, 41743u), vec3<f32>(1000f, -580f, 523f)), Struct_1(vec2<u32>(44265u, 0u), vec3<f32>(301f, -995f, 194f)), Struct_1(vec2<u32>(4294967295u, 0u), vec3<f32>(-982f, -143f, -586f)), Struct_1(vec2<u32>(89599u, 0u), vec3<f32>(479f, -125f, 579f)), Struct_1(vec2<u32>(18421u, 10065u), vec3<f32>(2211f, -540f, 488f)), Struct_1(vec2<u32>(0u, 66250u), vec3<f32>(1000f, 1382f, -748f)), Struct_1(vec2<u32>(34835u, 1u), vec3<f32>(323f, -1814f, 331f)), Struct_1(vec2<u32>(91019u, 4294967295u), vec3<f32>(1213f, -590f, -655f)), Struct_1(vec2<u32>(89420u, 12429u), vec3<f32>(1282f, -1000f, -2652f)), Struct_1(vec2<u32>(56418u, 0u), vec3<f32>(1077f, 265f, -914f)), Struct_1(vec2<u32>(27831u, 72820u), vec3<f32>(-470f, 303f, -405f)), Struct_1(vec2<u32>(4294967295u, 2213u), vec3<f32>(-308f, 1337f, -1300f)), Struct_1(vec2<u32>(4879u, 17450u), vec3<f32>(360f, -793f, 1885f)), Struct_1(vec2<u32>(0u, 1u), vec3<f32>(1000f, 248f, 816f)), Struct_1(vec2<u32>(188u, 0u), vec3<f32>(-2002f, -346f, -372f)), Struct_1(vec2<u32>(44549u, 0u), vec3<f32>(-2028f, 500f, -553f)), Struct_1(vec2<u32>(38332u, 63676u), vec3<f32>(441f, -292f, 103f)), Struct_1(vec2<u32>(0u, 17546u), vec3<f32>(-1096f, -891f, 1593f)), Struct_1(vec2<u32>(37342u, 39060u), vec3<f32>(1264f, -418f, -199f)), Struct_1(vec2<u32>(4294967295u, 0u), vec3<f32>(-530f, -174f, 1000f)), Struct_1(vec2<u32>(0u, 2424u), vec3<f32>(-726f, -840f, 481f)), Struct_1(vec2<u32>(96363u, 26531u), vec3<f32>(981f, 245f, 1105f)), Struct_1(vec2<u32>(4294967295u, 1u), vec3<f32>(299f, 178f, -1000f)), Struct_1(vec2<u32>(0u, 778u), vec3<f32>(-1088f, 378f, -1127f)), Struct_1(vec2<u32>(10045u, 30696u), vec3<f32>(1000f, 777f, -233f)), Struct_1(vec2<u32>(87775u, 4294967295u), vec3<f32>(730f, 145f, 411f)), Struct_1(vec2<u32>(74339u, 1u), vec3<f32>(1026f, 127f, 988f)), Struct_1(vec2<u32>(13910u, 5774u), vec3<f32>(-609f, -474f, 1402f)));

var<private> global2: f32;

var<private> global3: vec3<bool>;

var<private> global4: array<vec2<bool>, 4> = array<vec2<bool>, 4>(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true));

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_1(arg_0: vec4<bool>, arg_1: f32, arg_2: Struct_2, arg_3: Struct_2) -> vec3<bool> {
    global4 = array<vec2<bool>, 4>();
    global1 = array<Struct_1, 32>();
    global0 = u_input.b.x;
    var var_0 = global1[_wgslsmith_index_u32(arg_3.c.x, 32u)];
    var var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.b.x + 2176f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.b.x))) - -1153f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1586f - arg_2.b.x) + _wgslsmith_f_op_f32(-arg_3.b.x))))));
    return !arg_0.www;
}

fn func_3(arg_0: bool) -> vec3<bool> {
    global2 = -211f;
    var var_0 = Struct_2(!vec3<bool>(all(vec2<bool>(false, global3.x)), !select(true, true, false), !(!global3.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1623f), _wgslsmith_f_op_f32(-619f + 557f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(604f)))), _wgslsmith_f_op_f32(ceil(-1350f))) * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1000f, 1765f, -741f, -1000f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-781f, 292f, -318f, -1175f))), vec4<f32>(-706f, _wgslsmith_f_op_f32(max(-1287f, -961f)), _wgslsmith_f_op_f32(max(-1000f, 1370f)), _wgslsmith_f_op_f32(-152f * 774f))))), select(vec3<u32>(16574u, abs(firstLeadingBit(0u)), 36146u), abs(max(abs(vec3<u32>(1u, 0u, 20890u)), ~vec3<u32>(4294967295u, 4294967295u, 4294967295u))), global3.x));
    var var_1 = var_0.b.xz;
    let var_2 = vec3<f32>(var_0.b.x, -534f, _wgslsmith_f_op_f32(max(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1098f))))));
    global1 = array<Struct_1, 32>();
    return vec3<bool>(false, false || !(false | (global3.x != var_0.a.x)), false);
}

fn func_4(arg_0: vec3<bool>, arg_1: vec2<f32>, arg_2: vec4<bool>, arg_3: i32) -> u32 {
    let var_0 = -vec2<i32>(_wgslsmith_mod_i32(u_input.b.x | min(-13575i, -1i), u_input.b.x), u_input.a);
    var var_1 = Struct_2(arg_0, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(733f, arg_1.x, arg_1.x, 1000f) - vec4<f32>(-758f, -1652f, -864f, -459f))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1.x, arg_1.x, -281f, arg_1.x), vec4<f32>(-395f, -550f, 555f, arg_1.x), false))))), ~((~vec3<u32>(4911u, 0u, 52377u) ^ firstTrailingBit(vec3<u32>(0u, 1u, 0u))) | vec3<u32>(1u, 1u, 1u)));
    global2 = _wgslsmith_f_op_f32(select(634f, -1416f, (~var_1.c.x << (100575u % 32u)) < _wgslsmith_sub_u32(var_1.c.x, ~var_1.c.x >> (0u % 32u))));
    var var_2 = u_input.b;
    var var_3 = Struct_5(Struct_3(arg_1, 1i, any(!vec3<bool>(true, var_1.a.x, true)), var_1.c.x ^ var_1.c.x), max(u_input.a, _wgslsmith_mult_i32(~(-var_2.x), min(-var_0.x, -u_input.a))), firstTrailingBit(~select(reverseBits(vec4<u32>(1u, var_1.c.x, 18883u, 4294967295u)), ~vec4<u32>(var_1.c.x, var_1.c.x, var_1.c.x, var_1.c.x), var_1.c.x == var_1.c.x)));
    return 0u;
}

fn func_2(arg_0: Struct_2) -> Struct_5 {
    var var_0 = u_input.b.x << (arg_0.c.x % 32u);
    let var_1 = vec4<bool>(arg_0.b.x != -161f, !arg_0.a.x, !(!arg_0.a.x), func_4(select(func_1(vec4<bool>(global3.x, false, false, false), -668f, arg_0, Struct_2(vec3<bool>(true, false, false), arg_0.b, arg_0.c)), func_3(false), false), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1005f, 985f), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.b.x, arg_0.b.x) - arg_0.b.yy), true)), vec4<bool>(arg_0.a.x && global3.x, global3.x == arg_0.a.x, arg_0.a.x, arg_0.a.x), u_input.a) >= 4294967295u);
    var var_2 = Struct_4(Struct_1(arg_0.c.zy, arg_0.b.zzy), arg_0, select(~arg_0.c.x, ~arg_0.c.x | ~4294967295u, any(vec4<bool>(arg_0.a.x, false, false, true))) & 4294967295u, Struct_2(arg_0.a, arg_0.b, select(arg_0.c, arg_0.c, false)));
    return Struct_5(Struct_3(vec2<f32>(_wgslsmith_f_op_f32(var_2.a.b.x * arg_0.b.x), _wgslsmith_f_op_f32(f32(-1f) * -1469f)), u_input.b.x, all(global3.zx), ~69546u >> (_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(arg_0.c.x, arg_0.c.x, 13747u), vec3<u32>(0u, 17418u, 18912u)), vec3<u32>(15191u, arg_0.c.x, 4294967295u)) % 32u)), 2147483647i, _wgslsmith_clamp_vec4_u32(countOneBits(select(vec4<u32>(28540u, 0u, 1u, arg_0.c.x), vec4<u32>(0u, 1u, 32918u, var_2.d.c.x), arg_0.a.x) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 4294967295u, var_2.c, var_2.a.a.x), vec4<u32>(0u, 14306u, arg_0.c.x, var_2.b.c.x)) % vec4<u32>(32u))), ~(~(~vec4<u32>(18239u, 0u, var_2.a.a.x, var_2.b.c.x))), vec4<u32>(arg_0.c.x, 1u << (_wgslsmith_clamp_u32(51075u, var_2.c, 1u) % 32u), _wgslsmith_add_u32(~var_2.c, ~arg_0.c.x), 17668u)));
}

fn func_5(arg_0: Struct_5) -> StorageBuffer {
    let var_0 = Struct_4(Struct_1(arg_0.c.xz, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(690f, arg_0.a.a.x, arg_0.a.a.x))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1085f, -211f, arg_0.a.a.x))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(vec3<f32>(-952f, -653f, arg_0.a.a.x), vec3<f32>(772f, arg_0.a.a.x, arg_0.a.a.x)))))), Struct_2(!(!vec3<bool>(true, global3.x, false)), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(arg_0.a.a.x + arg_0.a.a.x), -1000f, _wgslsmith_f_op_f32(arg_0.a.a.x + 1256f), arg_0.a.a.x), vec4<f32>(arg_0.a.a.x, arg_0.a.a.x, _wgslsmith_f_op_f32(round(arg_0.a.a.x)), _wgslsmith_div_f32(-398f, 123f))), ~vec3<u32>(arg_0.a.d ^ arg_0.a.d, _wgslsmith_clamp_u32(arg_0.a.d, 71774u, 0u), countOneBits(arg_0.c.x))), select(_wgslsmith_mult_u32(~1u, 0u), _wgslsmith_add_u32(_wgslsmith_add_u32(arg_0.a.d, 3884u), 4294967295u), global3.x), Struct_2(!vec3<bool>(any(vec3<bool>(arg_0.a.c, global3.x, false)), any(global4[_wgslsmith_index_u32(arg_0.c.x, 4u)]), false), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.a.x, -1110f, 1075f, 722f))) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(-617f, -1144f, -616f, arg_0.a.a.x) - vec4<f32>(arg_0.a.a.x, arg_0.a.a.x, -976f, arg_0.a.a.x))))), arg_0.c.zyy));
    var var_1 = var_0;
    global2 = _wgslsmith_f_op_f32(sign(-1793f));
    let var_2 = _wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(-1i, u_input.b.x) >> (vec2<u32>(_wgslsmith_div_u32(var_0.a.a.x, var_0.c), var_1.b.c.x) % vec2<u32>(32u))), vec2<i32>(abs(firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, u_input.b.x, 1i, arg_0.b), vec4<i32>(-7444i, u_input.b.x, u_input.b.x, arg_0.a.b)))), _wgslsmith_dot_vec4_i32(select(vec4<i32>(arg_0.b, 16514i, 1i, 0i), _wgslsmith_div_vec4_i32(vec4<i32>(0i, -61355i, 2147483647i, -13034i), vec4<i32>(u_input.b.x, arg_0.b, arg_0.b, -28418i)), !vec4<bool>(global3.x, true, global3.x, false)), vec4<i32>(abs(u_input.a), arg_0.b << (4294967295u % 32u), _wgslsmith_div_i32(30483i, arg_0.a.b), abs(1i)))));
    var var_3 = 33478i;
    return StorageBuffer(-_wgslsmith_mod_i32(~arg_0.b, _wgslsmith_add_i32(var_2 | u_input.b.x, abs(var_2))), vec3<u32>(1u >> (~var_1.d.c.x % 32u), 4294967295u, _wgslsmith_mod_u32(var_0.c, ~0u) << ((~1u << (arg_0.c.x % 32u)) % 32u)), var_0.d.b);
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<vec2<bool>, 4>();
    global1 = array<Struct_1, 32>();
    global4 = array<vec2<bool>, 4>();
    let var_0 = 107218u;
    let var_1 = _wgslsmith_f_op_f32(-988f * -409f);
    let var_2 = global1[_wgslsmith_index_u32(abs(_wgslsmith_sub_u32(var_0, _wgslsmith_sub_u32(var_0, _wgslsmith_div_u32(var_0 ^ 6878u, firstLeadingBit(var_0))))), 32u)];
    let var_3 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, 396f, var_1, -1270f) + vec4<f32>(-166f, var_1, var_2.b.x, -195f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1128f, _wgslsmith_f_op_f32(step(var_1, -1439f)), var_1, _wgslsmith_f_op_f32(abs(-2062f))))))));
    let x = u_input.a;
    s_output = func_5(func_2(Struct_2(!func_1(vec4<bool>(global3.x, global3.x, true, global3.x), var_3.x, Struct_2(vec3<bool>(false, false, global3.x), vec4<f32>(var_3.x, var_2.b.x, var_3.x, -1550f), vec3<u32>(var_2.a.x, 1u, 14733u)), Struct_2(vec3<bool>(false, true, true), vec4<f32>(782f, var_1, 2282f, -1729f), vec3<u32>(0u, var_2.a.x, var_2.a.x))), vec4<f32>(_wgslsmith_f_op_f32(-var_2.b.x), _wgslsmith_f_op_f32(var_2.b.x - var_3.x), _wgslsmith_f_op_f32(ceil(var_2.b.x)), _wgslsmith_f_op_f32(-379f * 617f)), _wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(var_0, var_2.a.x, 4294967295u), vec3<u32>(4294967295u, var_0, var_0)), vec3<u32>(1u, 44894u, var_0)))));
}

