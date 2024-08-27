struct Struct_1 {
    a: bool,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 3>;

var<private> global1: vec4<u32>;

var<private> global2: array<vec4<u32>, 32> = array<vec4<u32>, 32>(vec4<u32>(1u, 62423u, 9850u, 107637u), vec4<u32>(0u, 7248u, 0u, 43913u), vec4<u32>(0u, 1u, 33287u, 7212u), vec4<u32>(1u, 0u, 0u, 26498u), vec4<u32>(6100u, 32936u, 1u, 29783u), vec4<u32>(4294967295u, 0u, 14960u, 28676u), vec4<u32>(1u, 4294967295u, 1u, 17476u), vec4<u32>(51884u, 0u, 868u, 4294967295u), vec4<u32>(53112u, 3676u, 19289u, 18090u), vec4<u32>(17871u, 0u, 1u, 4294967295u), vec4<u32>(0u, 0u, 11521u, 0u), vec4<u32>(1u, 0u, 1u, 49869u), vec4<u32>(4294967295u, 12046u, 8005u, 77371u), vec4<u32>(4294967295u, 4294967295u, 1u, 4294967295u), vec4<u32>(4294967295u, 61935u, 4294967295u, 4294967295u), vec4<u32>(39912u, 31464u, 4294967295u, 36278u), vec4<u32>(59323u, 4294967295u, 9905u, 0u), vec4<u32>(0u, 0u, 0u, 10289u), vec4<u32>(86684u, 55808u, 4294967295u, 11694u), vec4<u32>(1u, 0u, 0u, 0u), vec4<u32>(78833u, 0u, 23142u, 6948u), vec4<u32>(15641u, 4294967295u, 0u, 4294967295u), vec4<u32>(74583u, 16638u, 21274u, 109579u), vec4<u32>(1u, 0u, 44450u, 43538u), vec4<u32>(61833u, 0u, 46094u, 15874u), vec4<u32>(38801u, 31420u, 18781u, 4294967295u), vec4<u32>(60338u, 55014u, 4294967295u, 4294967295u), vec4<u32>(24718u, 4294967295u, 4294967295u, 65749u), vec4<u32>(0u, 78282u, 1u, 4294967295u), vec4<u32>(4294967295u, 48831u, 4294967295u, 0u), vec4<u32>(4294967295u, 109033u, 83037u, 4294967295u), vec4<u32>(0u, 4294967295u, 33560u, 74257u));

var<private> global3: array<vec4<bool>, 30> = array<vec4<bool>, 30>(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec2<bool> {
    global0 = array<u32, 3>();
    var var_0 = Struct_1(!(!all(vec3<bool>(false, true, false)) & ((global0[_wgslsmith_index_u32(53140u, 3u)] | 41406u) <= ~global0[_wgslsmith_index_u32(4294967295u, 3u)])), vec3<u32>(~countOneBits(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global1.x, 3u)], 3u)]) >> (global0[_wgslsmith_index_u32(57661u, 3u)] % 32u), firstTrailingBit(abs(global0[_wgslsmith_index_u32(global1.x ^ 4294967295u, 3u)])), abs(_wgslsmith_add_u32(39608u, global1.x) & select(4294967295u, global0[_wgslsmith_index_u32(4294967295u, 3u)], true))));
    global2 = array<vec4<u32>, 32>();
    let var_1 = Struct_1(!var_0.a, ~global1.wyy ^ _wgslsmith_add_vec3_u32(reverseBits(var_0.b), abs(var_0.b)));
    var var_2 = var_1;
    return !vec2<bool>(!any(!global3[_wgslsmith_index_u32(var_2.b.x, 30u)]), false);
}

fn func_4(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: bool) -> u32 {
    var var_0 = global1.zw;
    let var_1 = select(vec3<bool>(true, arg_2, any(func_3())), !(!select(select(vec3<bool>(arg_0.a, true, arg_1.x), vec3<bool>(arg_1.x, arg_2, true), arg_1.x), vec3<bool>(false, arg_0.a, arg_0.a), arg_2)), false | !(u_input.a.x != 1i));
    global1 = ~(~min(select(vec4<u32>(global1.x, 1u, global0[_wgslsmith_index_u32(13761u, 3u)], 7916u), vec4<u32>(38038u, 4294967295u, global0[_wgslsmith_index_u32(4294967295u, 3u)], 4294967295u), false), vec4<u32>(18947u, 394u, 19502u, arg_0.b.x) >> (vec4<u32>(0u, 28983u, 6154u, global0[_wgslsmith_index_u32(arg_0.b.x, 3u)]) % vec4<u32>(32u))) << (vec4<u32>(13213u, 0u, ~_wgslsmith_clamp_u32(40333u, var_0.x, global0[_wgslsmith_index_u32(28500u, 3u)]), var_0.x | 0u) % vec4<u32>(32u)));
    let var_2 = !arg_0.a;
    global3 = array<vec4<bool>, 30>();
    return ~abs(_wgslsmith_div_u32(~50453u, _wgslsmith_mod_u32(4294967295u, _wgslsmith_add_u32(1u, 20105u))));
}

fn func_2(arg_0: bool) -> bool {
    global3 = array<vec4<bool>, 30>();
    var var_0 = global2[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(func_4(Struct_1(all(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 3u)], 3u)], 30u)]), global1.yww), func_3(), any(!(!vec3<bool>(true, arg_0, arg_0)))), 3u)], 32u)];
    return true;
}

fn func_5(arg_0: Struct_1) -> u32 {
    let var_0 = select(vec4<u32>(1u, ~_wgslsmith_div_u32(global0[_wgslsmith_index_u32(44398u, 3u)], ~24325u), 12427u, arg_0.b.x), reverseBits(~global2[_wgslsmith_index_u32(~22004u, 32u)]), arg_0.a);
    let var_1 = vec3<u32>(global1.x, countOneBits(~(~_wgslsmith_dot_vec4_u32(global2[_wgslsmith_index_u32(75647u, 32u)], vec4<u32>(102657u, var_0.x, var_0.x, 41314u)))), var_0.x);
    global1 = global2[_wgslsmith_index_u32(arg_0.b.x, 32u)];
    var var_2 = arg_0;
    global0 = array<u32, 3>();
    return _wgslsmith_sub_u32(109343u, reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x << (7096u % 32u), abs(0u), _wgslsmith_mult_u32(4294967295u, arg_0.b.x), max(4294967295u, var_2.b.x)), max(vec4<u32>(20844u, var_0.x, var_1.x, var_2.b.x), global2[_wgslsmith_index_u32(54980u, 32u)] & vec4<u32>(arg_0.b.x, global1.x, 17270u, global0[_wgslsmith_index_u32(var_2.b.x, 3u)])))));
}

fn func_1(arg_0: vec2<bool>) -> vec4<f32> {
    global2 = array<vec4<u32>, 32>();
    global1 = vec4<u32>(func_5(Struct_1(func_2(any(vec3<bool>(arg_0.x, false, arg_0.x))), ~abs(vec3<u32>(4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(9207u, 3u)], 3u)], 10454u)))), ~abs(~global1.x >> (~4055u % 32u)), 2202u, global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_mult_u32(~21086u, global0[_wgslsmith_index_u32(global1.x, 3u)]), _wgslsmith_dot_vec3_u32(min(global1.wxw, vec3<u32>(42087u, global1.x, 12491u)), vec3<u32>(28154u, 0u, global1.x))), 3u)] << (((_wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(9745u, 3u)], 3u)], global1.x, 55782u) >> ((global1.x | global1.x) % 32u)) << (~global1.x % 32u)) % 32u));
    global1 = global2[_wgslsmith_index_u32(_wgslsmith_div_u32(~abs(1058u), global1.x), 32u)];
    let var_0 = Struct_1(all(global3[_wgslsmith_index_u32(_wgslsmith_add_u32(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(10396u, 3u)], global0[_wgslsmith_index_u32(4294967295u, 3u)]), 3u)], _wgslsmith_mult_u32(1u, 0u)), 30u)]) || true, global1.ywx | vec3<u32>(4294967295u, firstLeadingBit(~global0[_wgslsmith_index_u32(global1.x, 3u)]), _wgslsmith_dot_vec4_u32(global2[_wgslsmith_index_u32(0u | global1.x, 32u)], _wgslsmith_sub_vec4_u32(vec4<u32>(0u, 69808u, global0[_wgslsmith_index_u32(45907u, 3u)], global1.x), global2[_wgslsmith_index_u32(8408u, 32u)]))));
    global3 = array<vec4<bool>, 30>();
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(440f)) - 1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1399f * 260f) - -281f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(150f, -401f)), _wgslsmith_f_op_f32(f32(-1f) * -492f))) + _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(1f + -1647f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1470f)) * _wgslsmith_div_f32(-441f, 504f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -212f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(130f))))), vec4<f32>(1f, 1f, 1f, 1f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a.x;
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(func_1(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, false), false), vec2<bool>(false, false)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(1685f)), -1000f, _wgslsmith_f_op_f32(1973f - -1096f), _wgslsmith_f_op_f32(ceil(-322f)))))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-641f * -446f), _wgslsmith_f_op_f32(floor(-2360f)), 1957f, _wgslsmith_f_op_f32(f32(-1f) * -1802f)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-406f, 993f, -1818f, -747f) - vec4<f32>(-462f, 593f, 592f, 613f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(163f, -1261f, -1000f, -686f) * vec4<f32>(-280f, 2295f, -1659f, -2174f)), any(vec4<bool>(false, true, false, false)))) - vec4<f32>(_wgslsmith_f_op_f32(floor(-790f)), 950f, _wgslsmith_f_op_f32(f32(-1f) * -668f), _wgslsmith_f_op_f32(min(-1000f, 1735f))))));
    var var_2 = Struct_1(all(select(vec4<bool>(true, false, select(false, false, true), true), select(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(global1.yzz, vec3<u32>(40728u, 2085u, global1.x)), 3u)], 30u)], vec4<bool>(true, false, true, true), true), !all(global3[_wgslsmith_index_u32(30368u, 30u)]))), _wgslsmith_clamp_vec3_u32(~_wgslsmith_add_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(38213u, 3u)], 3u)], 93147u, 0u), global1.xxz), vec3<u32>(4294967295u, ~global0[_wgslsmith_index_u32(4294967295u, 3u)], global1.x & global1.x) & global1.yzw, vec3<u32>(func_5(Struct_1(false, global1.zww)), ~45874u, _wgslsmith_mult_u32(0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global1.x, 3u)], 3u)]) & abs(26291u))));
    let var_3 = false;
    var var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1090f), var_1.x)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-300f)) * _wgslsmith_f_op_f32(244f + 1000f)), var_1.x)) * _wgslsmith_f_op_vec2_f32(var_1.zw + var_1.xy));
    var var_5 = true;
    let var_6 = var_2.b.x;
    var var_7 = Struct_1(true, min(~var_2.b, ~(vec3<u32>(global0[_wgslsmith_index_u32(58330u, 3u)], global0[_wgslsmith_index_u32(533u, 3u)], global1.x) | vec3<u32>(9270u, 78770u, global0[_wgslsmith_index_u32(9433u, 3u)]))));
    let var_8 = _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(~(~vec3<u32>(4294967295u, 1u, global0[_wgslsmith_index_u32(1u, 3u)])), var_7.b), var_2.b);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(280f - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(1000f)), var_1.x, all(vec4<bool>(false, var_2.a, var_7.a, false))))), 1400f), -645f, var_8);
}

