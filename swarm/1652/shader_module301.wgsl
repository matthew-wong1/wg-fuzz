struct Struct_1 {
    a: vec4<u32>,
    b: bool,
}

struct Struct_2 {
    a: bool,
    b: bool,
}

struct Struct_3 {
    a: f32,
    b: bool,
    c: vec4<bool>,
    d: i32,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: vec2<bool>,
    e: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 1> = array<Struct_4, 1>(Struct_4(Struct_1(vec4<u32>(304u, 1u, 4294967295u, 4294967295u), false), Struct_1(vec4<u32>(27505u, 0u, 24731u, 1u), false), -2266f, vec2<bool>(true, true), false));

var<private> global1: array<vec4<u32>, 23> = array<vec4<u32>, 23>(vec4<u32>(38243u, 0u, 21975u, 14260u), vec4<u32>(41234u, 4294967295u, 0u, 1u), vec4<u32>(39749u, 1u, 20629u, 20064u), vec4<u32>(0u, 18532u, 0u, 0u), vec4<u32>(28690u, 0u, 1u, 71261u), vec4<u32>(79207u, 4294967295u, 0u, 1u), vec4<u32>(1u, 47532u, 0u, 40477u), vec4<u32>(51077u, 23632u, 4294967295u, 70460u), vec4<u32>(4294967295u, 1u, 0u, 63765u), vec4<u32>(1u, 17223u, 35300u, 13796u), vec4<u32>(4294967295u, 21846u, 0u, 1u), vec4<u32>(16840u, 18451u, 69721u, 54908u), vec4<u32>(71267u, 17928u, 1u, 1u), vec4<u32>(1u, 1u, 81911u, 0u), vec4<u32>(56947u, 4294967295u, 1u, 0u), vec4<u32>(4294967295u, 34346u, 4294967295u, 43570u), vec4<u32>(67794u, 0u, 5727u, 1u), vec4<u32>(4294967295u, 4294967295u, 43398u, 4294967295u), vec4<u32>(5991u, 0u, 4294967295u, 4294967295u), vec4<u32>(0u, 10836u, 69265u, 1u), vec4<u32>(4294967295u, 0u, 22640u, 1u), vec4<u32>(0u, 4110u, 4294967295u, 61586u), vec4<u32>(33746u, 0u, 55634u, 17446u));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> u32 {
    let var_0 = firstLeadingBit(-min(-vec3<i32>(32055i, u_input.a, 0i), ~(vec3<i32>(u_input.a, u_input.a, u_input.a) | vec3<i32>(u_input.a, 2147483647i, -12977i))));
    global1 = array<vec4<u32>, 23>();
    let var_1 = _wgslsmith_mult_vec4_u32(global1[_wgslsmith_index_u32(~(~select(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 19735u, 4294967295u), vec3<u32>(68963u, 1u, 0u)), min(0u, 22786u), true)), 23u)], max(abs(_wgslsmith_div_vec4_u32(global1[_wgslsmith_index_u32(65517u, 23u)], global1[_wgslsmith_index_u32(1u, 23u)]) >> ((global1[_wgslsmith_index_u32(55272u, 23u)] ^ vec4<u32>(22740u, 0u, 87154u, 28632u)) % vec4<u32>(32u))), vec4<u32>(abs(89354u), ~min(0u, 4294967295u), countOneBits(~84424u), 1u)));
    let var_2 = Struct_2(true, true);
    global0 = array<Struct_4, 1>();
    return countOneBits(_wgslsmith_dot_vec2_u32(countOneBits(~_wgslsmith_div_vec2_u32(vec2<u32>(var_1.x, var_1.x), var_1.wy)), var_1.xw));
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: i32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-1f);
    global1 = array<vec4<u32>, 23>();
    let var_1 = Struct_1(~(vec4<u32>(4294967295u, 4294967295u, 4294967295u, arg_1.a.x) >> (~vec4<u32>(4294967295u, arg_1.a.x, 35337u, arg_1.a.x) % vec4<u32>(32u))) >> (_wgslsmith_clamp_vec4_u32(global1[_wgslsmith_index_u32(~func_3(), 23u)], vec4<u32>(4294967295u, arg_1.a.x, 37158u, 0u) << (~vec4<u32>(arg_1.a.x, arg_1.a.x, 4294967295u, 36826u) % vec4<u32>(32u)), vec4<u32>(arg_1.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.a.x, arg_1.a.x), vec2<u32>(arg_1.a.x, 1u)), 4294967295u & arg_1.a.x, ~4294967295u)) % vec4<u32>(32u)), false);
    let var_2 = _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(sign(493f)), _wgslsmith_f_op_f32(abs(-1447f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(726f * _wgslsmith_f_op_f32(f32(-1f) * -1004f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(455f, -1024f, 564f), vec3<f32>(872f, -655f, 403f), vec3<bool>(true, var_1.b, var_1.b))))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(379f, -347f, -530f), vec3<f32>(-1000f, 1984f, -385f)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-905f, 923f, -1000f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(142f, 1350f, -952f), vec3<f32>(-304f, -698f, -241f))), all(select(vec3<bool>(var_1.b, var_1.b, var_1.b), vec3<bool>(false, var_1.b, var_1.b), true)))))));
    global0 = array<Struct_4, 1>();
    return Struct_1(vec4<u32>(_wgslsmith_dot_vec2_u32(arg_1.a.ww, vec2<u32>(var_1.a.x, 4294967295u ^ var_1.a.x)), ~(_wgslsmith_div_u32(0u, 71412u) & ~arg_1.a.x), ~(~arg_1.a.x), _wgslsmith_sub_u32(reverseBits(arg_1.a.x) << (~var_1.a.x % 32u), 38064u)), arg_1.b);
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: Struct_4, arg_3: bool) -> vec2<bool> {
    let var_0 = func_3();
    let var_1 = !(!select(vec4<bool>(false, any(vec3<bool>(arg_2.e, false, arg_3)), false, any(vec2<bool>(true, arg_1.b))), select(vec4<bool>(arg_2.e, arg_3, arg_2.a.b, arg_2.a.b), vec4<bool>(arg_3, true, true, false), !arg_1.b), select(true, arg_1.b, false)));
    let var_2 = Struct_2(arg_0.x < ~arg_2.a.a.x, var_1.x);
    var var_3 = !(var_2.b || ((~arg_1.a.x < countOneBits(45648u)) | (!arg_1.b & (arg_1.b & false))));
    var_3 = !(!(true & var_2.b));
    return var_1.yx;
}

fn func_5(arg_0: f32, arg_1: bool, arg_2: vec2<f32>, arg_3: Struct_1) -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(117f, arg_0, -492f), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(420f, -326f, 666f), vec3<f32>(573f, arg_2.x, -1000f)))))))) + _wgslsmith_div_vec3_f32(vec3<f32>(-1107f, -427f, _wgslsmith_f_op_f32(-arg_2.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(385f, arg_0, arg_2.x) - vec3<f32>(arg_2.x, -925f, 647f)) * vec3<f32>(arg_2.x, arg_2.x, arg_2.x)))));
    var var_1 = Struct_1(_wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(min(arg_3.a.x, arg_3.a.x), ~4294967295u, arg_3.a.x, 32761u), firstLeadingBit(~vec4<u32>(arg_3.a.x, 1u, 2105u, 4294967295u))), arg_3.a), false);
    let var_2 = ~func_2(vec3<i32>(~(~u_input.a), countOneBits(max(u_input.a, -2147483647i)), 1i), arg_3, _wgslsmith_add_i32(-53417i, ~u_input.a)).a.wzx;
    var var_3 = -(~(~(i32(-1i) * -2147483647i)));
    var var_4 = !select(vec3<bool>(arg_1, all(!vec2<bool>(arg_3.b, arg_1)), arg_3.b), vec3<bool>(!arg_1, true, !all(vec2<bool>(true, false))), select(vec3<bool>(arg_1, arg_1, true), select(vec3<bool>(false, true, false), vec3<bool>(false, var_1.b, true), all(vec2<bool>(var_1.b, var_1.b))), arg_3.b));
    return var_2;
}

fn func_1(arg_0: i32, arg_1: u32, arg_2: vec2<i32>) -> u32 {
    let var_0 = (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1871f + 2936f))) >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-458f, -788f) * _wgslsmith_f_op_f32(step(1820f, -215f))), 1000f)) & false;
    var var_1 = max(func_5(256f, all(func_4(_wgslsmith_div_vec3_u32(vec3<u32>(8092u, arg_1, arg_1), vec3<u32>(0u, arg_1, 0u)), func_2(vec3<i32>(10398i, arg_2.x, 1i), Struct_1(vec4<u32>(arg_1, 93472u, arg_1, arg_1), true), 10598i), Struct_4(Struct_1(vec4<u32>(8486u, 1u, arg_1, arg_1), false), Struct_1(global1[_wgslsmith_index_u32(28430u, 23u)], var_0), -1828f, vec2<bool>(var_0, var_0), var_0), !var_0)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(309f, -1114f), vec2<f32>(123f, 719f), false)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1246f, 1070f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1410f, -725f), vec2<f32>(982f, -1559f), vec2<bool>(var_0, var_0))))), func_2(~_wgslsmith_mod_vec3_i32(vec3<i32>(arg_2.x, -1i, u_input.a), vec3<i32>(arg_0, 1i, arg_2.x)), func_2(~vec3<i32>(arg_2.x, -1i, 49324i), Struct_1(vec4<u32>(arg_1, 62920u, 0u, arg_1), var_0), max(arg_0, u_input.a)), arg_0)), (vec3<u32>(arg_1, _wgslsmith_mod_u32(arg_1, arg_1), 67883u) << (~min(vec3<u32>(arg_1, 0u, 11338u), vec3<u32>(arg_1, 4393u, arg_1)) % vec3<u32>(32u))) | _wgslsmith_sub_vec3_u32(vec3<u32>(63424u, arg_1, arg_1), func_5(_wgslsmith_f_op_f32(select(-588f, 1708f, var_0)), !var_0, vec2<f32>(379f, 1075f), func_2(vec3<i32>(arg_2.x, 62042i, u_input.a), Struct_1(vec4<u32>(arg_1, 10060u, 4294967295u, arg_1), false), u_input.a))));
    global0 = array<Struct_4, 1>();
    var_1 = firstTrailingBit(vec3<u32>(var_1.x, 4294967295u, 26244u));
    var var_2 = countOneBits(arg_1);
    return ~_wgslsmith_div_u32(~8337u, _wgslsmith_mult_u32(arg_1, ~(~arg_1)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_4, 1>();
    global1 = array<vec4<u32>, 23>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(905f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(1000f, -1445f)))), 1f))) - _wgslsmith_f_op_f32(f32(-1f) * -2237f));
    var var_1 = Struct_1(~global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(func_1(1i, ~14328u, -vec2<i32>(-1i, 43467i)), abs(1u)), 23u)], true);
    let var_2 = -62411i;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-917f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(var_0, var_0), -925f, all(vec4<bool>(var_1.b, var_1.b, false, false))))))));
    var_1 = Struct_1(~global1[_wgslsmith_index_u32(var_1.a.x, 23u)], var_1.b);
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(max(var_1.a.xzw, var_1.a.yzz)));
}

