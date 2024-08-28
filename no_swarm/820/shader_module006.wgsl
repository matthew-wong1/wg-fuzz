struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: i32,
    d: vec4<f32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: bool,
    e: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec4<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<f32>,
    c: vec2<i32>,
    d: vec4<f32>,
    e: vec3<f32>,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec3<u32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 12>;

var<private> global1: bool;

var<private> global2: Struct_1 = Struct_1(vec4<u32>(13590u, 0u, 4294967295u, 69808u), false, 0i, vec4<f32>(357f, -802f, 958f, 306f));

var<private> global3: array<Struct_3, 7> = array<Struct_3, 7>(Struct_3(Struct_1(vec4<u32>(46786u, 95036u, 86982u, 39952u), true, 2147483647i, vec4<f32>(-2373f, -980f, -252f, -1000f)), Struct_2(true, Struct_1(vec4<u32>(0u, 24348u, 98585u, 0u), true, i32(-2147483648), vec4<f32>(-713f, 798f, -433f, -2354f)), Struct_1(vec4<u32>(33277u, 1u, 1u, 4294967295u), false, 3985i, vec4<f32>(198f, -1328f, 1541f, 1040f)), true, vec3<i32>(-43806i, 2669i, i32(-2147483648))), vec4<u32>(0u, 3032u, 0u, 9993u)), Struct_3(Struct_1(vec4<u32>(4294967295u, 37519u, 48121u, 71752u), true, 35930i, vec4<f32>(-1121f, 609f, 131f, 286f)), Struct_2(false, Struct_1(vec4<u32>(4294967295u, 1u, 0u, 433u), false, -32166i, vec4<f32>(620f, 1000f, -1000f, -577f)), Struct_1(vec4<u32>(4294967295u, 16165u, 6583u, 4294967295u), false, -21095i, vec4<f32>(-716f, -2071f, 1107f, 1000f)), true, vec3<i32>(3566i, i32(-2147483648), 1i)), vec4<u32>(1u, 1u, 14874u, 21834u)), Struct_3(Struct_1(vec4<u32>(14841u, 0u, 28159u, 22594u), false, -1i, vec4<f32>(2264f, 186f, -543f, -200f)), Struct_2(true, Struct_1(vec4<u32>(25543u, 43220u, 116996u, 68929u), false, 1i, vec4<f32>(-1007f, -738f, 154f, 1225f)), Struct_1(vec4<u32>(1u, 31729u, 9828u, 38707u), false, -19662i, vec4<f32>(-1000f, -441f, -1300f, 1875f)), false, vec3<i32>(0i, i32(-2147483648), i32(-2147483648))), vec4<u32>(0u, 4294967295u, 50965u, 1u)), Struct_3(Struct_1(vec4<u32>(1u, 0u, 15342u, 34670u), true, 0i, vec4<f32>(892f, -1663f, -1664f, -1192f)), Struct_2(false, Struct_1(vec4<u32>(65255u, 4294967295u, 1u, 0u), true, 61673i, vec4<f32>(-1573f, -1000f, -1071f, -843f)), Struct_1(vec4<u32>(27807u, 1u, 0u, 1u), false, i32(-2147483648), vec4<f32>(-1044f, 253f, 838f, 1134f)), false, vec3<i32>(1i, 2147483647i, i32(-2147483648))), vec4<u32>(93713u, 45130u, 4294967295u, 14974u)), Struct_3(Struct_1(vec4<u32>(0u, 1u, 67542u, 0u), true, -21318i, vec4<f32>(134f, 837f, -1171f, 970f)), Struct_2(false, Struct_1(vec4<u32>(0u, 33623u, 21754u, 0u), false, 1i, vec4<f32>(486f, 1000f, -337f, -515f)), Struct_1(vec4<u32>(53885u, 74410u, 39066u, 1u), true, -4244i, vec4<f32>(343f, 901f, -1395f, -1738f)), false, vec3<i32>(1i, 27905i, 0i)), vec4<u32>(1u, 26722u, 77566u, 1u)), Struct_3(Struct_1(vec4<u32>(18155u, 4294967295u, 3129u, 21570u), true, 27638i, vec4<f32>(530f, 1354f, 1358f, 626f)), Struct_2(true, Struct_1(vec4<u32>(1u, 23737u, 0u, 1u), false, 0i, vec4<f32>(711f, 730f, -229f, -1299f)), Struct_1(vec4<u32>(71300u, 1035u, 5023u, 0u), false, 21971i, vec4<f32>(1018f, -565f, 1000f, 581f)), false, vec3<i32>(22089i, 0i, -18038i)), vec4<u32>(0u, 0u, 1u, 4294967295u)), Struct_3(Struct_1(vec4<u32>(0u, 1u, 1u, 0u), true, -29318i, vec4<f32>(912f, -724f, 450f, -1675f)), Struct_2(false, Struct_1(vec4<u32>(8565u, 4294967295u, 1u, 11349u), false, 0i, vec4<f32>(124f, 586f, 745f, -623f)), Struct_1(vec4<u32>(26759u, 0u, 71228u, 336u), true, -63482i, vec4<f32>(954f, 295f, -489f, 810f)), true, vec3<i32>(-11938i, -24827i, 0i)), vec4<u32>(36641u, 2602u, 24456u, 1u)));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_2(arg_0: Struct_4, arg_1: vec2<bool>) -> Struct_4 {
    global3 = array<Struct_3, 7>();
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_0.e.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(710f, arg_0.a.c.d.x)))), _wgslsmith_f_op_f32(arg_0.a.c.d.x - global2.d.x)))));
    global3 = array<Struct_3, 7>();
    var var_1 = arg_0;
    var var_2 = vec3<f32>(527f, global2.d.x, _wgslsmith_f_op_f32(f32(-1f) * -192f));
    return Struct_4(var_1.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-374f, -1000f)))), arg_0.c, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -678f))), var_2.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(min(287f, var_1.b.x))) * 810f), global2.d.x), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_0.d.zzx + var_1.e)), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(11695u, 4294967295u, global2.a.x, var_1.a.c.a.x), global2.a), 12u)]))));
}

fn func_3(arg_0: u32, arg_1: Struct_4, arg_2: u32) -> vec4<u32> {
    var var_0 = firstLeadingBit(arg_1.a.e);
    var var_1 = arg_1.a.b;
    var var_2 = 35063i;
    return select(~(~arg_1.a.c.a), ~vec4<u32>(~59013u, 0u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.a.x, u_input.b, 1u, arg_0), vec4<u32>(arg_0, global2.a.x, 0u, arg_1.a.c.a.x)), arg_0), false) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_div_u32(~4294967295u, 72757u), arg_0, abs(1u), _wgslsmith_clamp_u32(arg_0, 4294967295u, 80648u)), func_2(Struct_4(Struct_2(global2.b, arg_1.a.b, arg_1.a.c, arg_1.a.c.b, vec3<i32>(-2147483647i, -40583i, arg_1.c.x)), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_1.a.c.d.x, -502f), global2.d.yw)), vec2<i32>(global2.c, 2147483647i) >> (vec2<u32>(4294967295u, 1u) % vec2<u32>(32u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1372f, global2.d.x, var_1.d.x, 547f)), vec3<f32>(-105f, -1515f, -913f)), !(!vec2<bool>(global2.b, arg_1.a.b.b))).a.b.a, firstLeadingBit(_wgslsmith_mult_vec4_u32(abs(var_1.a), arg_1.a.b.a))) % vec4<u32>(32u));
}

fn func_1() -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, global2.d.x) * -1396f);
    var var_1 = Struct_1(_wgslsmith_add_vec4_u32(abs(func_3(_wgslsmith_dot_vec2_u32(global2.a.ww, vec2<u32>(u_input.b, global2.a.x)), func_2(Struct_4(Struct_2(false, Struct_1(vec4<u32>(u_input.b, u_input.b, u_input.b, global2.a.x), true, u_input.a.x, global2.d), Struct_1(global2.a, true, -30085i, vec4<f32>(var_0, -921f, var_0, 1371f)), global2.b, vec3<i32>(global2.c, u_input.a.x, 2147483647i)), global2.d.ww, u_input.a.xy, vec4<f32>(-761f, -151f, 322f, var_0), vec3<f32>(global2.d.x, -959f, var_0)), vec2<bool>(true, global2.b)), ~51238u)), ~vec4<u32>(countOneBits(global2.a.x), ~36291u, 31268u | global2.a.x, global2.a.x)), !(_wgslsmith_f_op_f32(-1039f * var_0) != _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0)))), -2147483647i, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global2.d.x, global2.d.x, -124f, global2.d.x)))))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1362f, _wgslsmith_div_f32(global2.d.x, -214f), _wgslsmith_f_op_f32(sign(-1382f)), var_0))))));
    global3 = array<Struct_3, 7>();
    global3 = array<Struct_3, 7>();
    var var_2 = _wgslsmith_f_op_vec3_f32(global0[_wgslsmith_index_u32(97920u, 12u)] + _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_1.d.x, func_2(func_2(Struct_4(Struct_2(global2.b, Struct_1(vec4<u32>(u_input.b, u_input.b, u_input.b, 1u), global2.b, -2147483647i, vec4<f32>(var_1.d.x, 766f, 2049f, -982f)), Struct_1(vec4<u32>(u_input.b, 1u, 1u, u_input.b), true, -13081i, var_1.d), false, vec3<i32>(14798i, u_input.a.x, var_1.c)), global2.d.zz, vec2<i32>(global2.c, global2.c), vec4<f32>(1621f, global2.d.x, 501f, var_0), global2.d.xzw), vec2<bool>(false, var_1.b)), vec2<bool>(global2.b, false)).d.x, _wgslsmith_f_op_f32(min(-267f, _wgslsmith_f_op_f32(sign(var_0))))))));
    return vec2<bool>(false, all(select(select(select(vec2<bool>(false, true), vec2<bool>(var_1.b, var_1.b), false), !vec2<bool>(global2.b, global2.b), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(global2.b, true))), vec2<bool>(!var_1.b, false), true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(12940i);
    global3 = array<Struct_3, 7>();
    var var_1 = func_1();
    var var_2 = !select(vec2<bool>(2147483647i == _wgslsmith_add_i32(-43i, u_input.a.x), func_3(14624u, Struct_4(Struct_2(var_1.x, Struct_1(global2.a, global2.b, u_input.a.x, vec4<f32>(2217f, 221f, 133f, -230f)), Struct_1(vec4<u32>(4294967295u, 21428u, 4294967295u, 30485u), var_1.x, u_input.a.x, global2.d), global2.b, u_input.a), vec2<f32>(global2.d.x, -681f), u_input.a.yx, vec4<f32>(1386f, -542f, global2.d.x, global2.d.x), vec3<f32>(global2.d.x, -303f, 1221f)), 64849u).x < reverseBits(20089u)), select(select(!vec2<bool>(global2.b, true), vec2<bool>(true, global2.b), true), vec2<bool>(global2.b, true), vec2<bool>(62896i < global2.c, true)), !(!vec2<bool>(false, global2.b)));
    var var_3 = Struct_4(Struct_2(false == any(vec3<bool>(var_2.x, true, false)), Struct_1(vec4<u32>(_wgslsmith_mod_u32(u_input.b, global2.a.x), max(0u, global2.a.x), ~9716u, _wgslsmith_sub_u32(global2.a.x, global2.a.x)), true, i32(-1i) * -u_input.a.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global2.d) + global2.d)), Struct_1(vec4<u32>(~1u, min(0u, 43127u), global2.a.x, countOneBits(global2.a.x)), true, _wgslsmith_clamp_i32(select(global2.c, global2.c, true), _wgslsmith_div_i32(global2.c, 0i), 1i), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(global2.d, vec4<f32>(global2.d.x, 701f, 181f, -1156f)) * global2.d)), any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, var_2.x), vec4<bool>(false, false, false, false), true), vec4<bool>(global2.b, global2.b, true, false))), firstTrailingBit(vec3<i32>(abs(1i), u_input.a.x | -674i, global2.c))), vec2<f32>(-279f, -1465f), ~vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(35803i, -1i, u_input.a.x, global2.c), vec4<i32>(-19042i, -217i, -1i, -2147483647i)) | 24853i, -2147483647i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global2.d) * _wgslsmith_f_op_vec4_f32(global2.d * global2.d))))), _wgslsmith_f_op_vec3_f32(global0[_wgslsmith_index_u32(1u, 12u)] + global2.d.xyy));
    var_2 = func_1();
    let var_4 = _wgslsmith_f_op_vec2_f32(-global2.d.xy);
    global1 = var_2.x;
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(_wgslsmith_div_u32(0u, ~global2.a.x), ~(~global2.a.x), _wgslsmith_mult_u32(5992u, global2.a.x), max(var_3.a.b.a.x, 0u) & _wgslsmith_clamp_u32(0u, global2.a.x, 0u)), u_input.a.yy, global2.a.wzw, abs(-_wgslsmith_mod_vec3_i32(var_3.a.e, var_3.a.e)));
}

