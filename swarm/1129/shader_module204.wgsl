struct Struct_1 {
    a: vec3<i32>,
    b: vec4<f32>,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(vec3<i32>(i32(-2147483648), 13796i, 42564i), vec4<f32>(-833f, -192f, -784f, -970f), vec4<i32>(40529i, i32(-2147483648), 2147483647i, -1i)), Struct_1(vec3<i32>(-48747i, 20237i, -1i), vec4<f32>(1053f, -1411f, 2154f, -981f), vec4<i32>(i32(-2147483648), 2147483647i, 17870i, 18759i)), Struct_1(vec3<i32>(-7413i, 2147483647i, 0i), vec4<f32>(306f, -1019f, -937f, -1508f), vec4<i32>(2147483647i, i32(-2147483648), -44826i, 0i)), Struct_1(vec3<i32>(-51174i, 15671i, -1i), vec4<f32>(602f, 225f, 1185f, -875f), vec4<i32>(41503i, 1i, 0i, 1i)), Struct_1(vec3<i32>(-6021i, 8774i, 2147483647i), vec4<f32>(-1677f, 993f, 1763f, -1224f), vec4<i32>(-290i, -7503i, -5087i, i32(-2147483648))), Struct_1(vec3<i32>(-1i, -54314i, 3143i), vec4<f32>(326f, -467f, -184f, 1820f), vec4<i32>(14749i, -21866i, -1i, -1i)), Struct_1(vec3<i32>(-13266i, i32(-2147483648), -31313i), vec4<f32>(-1092f, 778f, -291f, -871f), vec4<i32>(19371i, 0i, 0i, -28525i)), Struct_1(vec3<i32>(-73177i, 1i, -36869i), vec4<f32>(-762f, 2123f, 671f, -421f), vec4<i32>(i32(-2147483648), 29645i, -17171i, 1i)), Struct_1(vec3<i32>(86041i, 0i, -38446i), vec4<f32>(1000f, -1000f, 1000f, -941f), vec4<i32>(-17346i, 1i, i32(-2147483648), 11835i)), Struct_1(vec3<i32>(-1i, 2147483647i, -58375i), vec4<f32>(-1239f, 674f, -1101f, 1150f), vec4<i32>(1i, -27750i, -19006i, -1i)), Struct_1(vec3<i32>(-1i, 2411i, 1i), vec4<f32>(-848f, 873f, -980f, 987f), vec4<i32>(0i, 38241i, i32(-2147483648), -1i)), Struct_1(vec3<i32>(-40396i, -1i, 35804i), vec4<f32>(-406f, 786f, 1310f, -657f), vec4<i32>(-22256i, -1i, -18938i, 26521i)), Struct_1(vec3<i32>(-1i, -1i, i32(-2147483648)), vec4<f32>(1246f, -344f, -1066f, 521f), vec4<i32>(-25353i, 26820i, 85327i, i32(-2147483648))), Struct_1(vec3<i32>(-47094i, 1i, 21395i), vec4<f32>(-1349f, -793f, 557f, -364f), vec4<i32>(2147483647i, i32(-2147483648), -1i, -58920i)), Struct_1(vec3<i32>(-7752i, -30084i, -1i), vec4<f32>(519f, 195f, 1000f, -1173f), vec4<i32>(i32(-2147483648), -23772i, 0i, -36034i)), Struct_1(vec3<i32>(13091i, 2147483647i, i32(-2147483648)), vec4<f32>(-350f, -1693f, -1896f, -580f), vec4<i32>(1i, 2046i, -66470i, 54163i)), Struct_1(vec3<i32>(48280i, 2147483647i, i32(-2147483648)), vec4<f32>(1633f, 606f, -1682f, -1886f), vec4<i32>(-42596i, 2147483647i, 41402i, 12174i)), Struct_1(vec3<i32>(0i, -35680i, 1i), vec4<f32>(525f, -193f, -586f, -289f), vec4<i32>(11507i, 63046i, 29934i, 1i)), Struct_1(vec3<i32>(502i, -89401i, 24472i), vec4<f32>(684f, 554f, -206f, 686f), vec4<i32>(-1i, 0i, 92148i, i32(-2147483648))), Struct_1(vec3<i32>(-28379i, i32(-2147483648), 1i), vec4<f32>(1340f, -903f, -570f, 2397f), vec4<i32>(1i, 2147483647i, -10925i, -44961i)), Struct_1(vec3<i32>(0i, -22698i, -37352i), vec4<f32>(2052f, -239f, 1582f, -626f), vec4<i32>(-5993i, -1i, 21789i, -1i)), Struct_1(vec3<i32>(1i, -1i, 0i), vec4<f32>(-1189f, -516f, -1090f, 409f), vec4<i32>(-1i, 54237i, 1i, -38922i)), Struct_1(vec3<i32>(-27024i, 1i, 0i), vec4<f32>(707f, -199f, -1419f, 661f), vec4<i32>(i32(-2147483648), -29018i, -34573i, 5098i)), Struct_1(vec3<i32>(7203i, -1i, i32(-2147483648)), vec4<f32>(-396f, 599f, -362f, -508f), vec4<i32>(0i, -46666i, -2937i, 12214i)), Struct_1(vec3<i32>(-63357i, -13468i, 17637i), vec4<f32>(-677f, -457f, 696f, -691f), vec4<i32>(-6448i, 10164i, -26806i, 2147483647i)));

var<private> global1: Struct_1 = Struct_1(vec3<i32>(-40662i, -1i, 2147483647i), vec4<f32>(-1000f, 570f, -1000f, -2093f), vec4<i32>(-1770i, i32(-2147483648), -7425i, -5547i));

var<private> global2: u32 = 5933u;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<i32>, arg_1: bool, arg_2: vec4<bool>, arg_3: vec4<bool>) -> f32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global1.b.yww)) + vec3<f32>(_wgslsmith_f_op_f32(-418f - -1285f), _wgslsmith_div_f32(938f, -108f), _wgslsmith_f_op_f32(f32(-1f) * -689f))))) + _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1103f, -319f, -695f))) - _wgslsmith_f_op_vec3_f32(-global1.b.wxx)))));
    global2 = 82531u;
    global0 = array<Struct_1, 25>();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * var_0.x) + var_0.x) * _wgslsmith_f_op_f32(f32(-1f) * -1381f)))));
    var var_2 = vec3<u32>(96725u, 4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), ~(~abs(vec4<u32>(41549u, 1u, 0u, 0u)))));
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -444f))), 531f));
}

fn func_2(arg_0: vec3<bool>, arg_1: vec2<u32>, arg_2: Struct_1) -> Struct_1 {
    global1 = global0[_wgslsmith_index_u32(1u, 25u)];
    let var_0 = _wgslsmith_f_op_f32(func_3(vec3<i32>(_wgslsmith_mod_i32(~global1.a.x, -2147483647i) >> (~arg_1.x % 32u), ~countOneBits(_wgslsmith_dot_vec4_i32(global1.c, global1.c)), firstLeadingBit(global1.c.x)), !any(!arg_0), !(!vec4<bool>(!arg_0.x, false, arg_0.x, global1.b.x >= global1.b.x)), vec4<bool>(any(!(!vec2<bool>(true, arg_0.x))), !(all(arg_0) && (arg_1.x != arg_1.x)), (_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.x, arg_1.x, arg_1.x), vec3<u32>(37108u, arg_1.x, 4294967295u)) | _wgslsmith_clamp_u32(22913u, arg_1.x, 13820u)) <= arg_1.x, any(vec2<bool>(all(arg_0), arg_0.x)))));
    let var_1 = 14554u;
    let var_2 = global0[_wgslsmith_index_u32(~(countOneBits(_wgslsmith_clamp_u32(0u, 40571u, 36661u)) >> (arg_1.x % 32u)) << (4294967295u % 32u), 25u)];
    var var_3 = !(!select(vec2<bool>(all(vec3<bool>(arg_0.x, false, false)), !arg_0.x), !select(vec2<bool>(true, arg_0.x), vec2<bool>(true, arg_0.x), vec2<bool>(arg_0.x, false)), _wgslsmith_f_op_f32(var_0 - global1.b.x) > -499f));
    return global0[_wgslsmith_index_u32(~27272u, 25u)];
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_1) -> i32 {
    let var_0 = arg_1;
    var var_1 = global1.b.x;
    global0 = array<Struct_1, 25>();
    let var_2 = func_2(!select(arg_0.wwz, select(!vec3<bool>(arg_0.x, arg_0.x, false), arg_0.wxw, !arg_0.zyz), !any(arg_0.xyx)), ~select(select(~vec2<u32>(0u, 1u), _wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 62995u), vec2<u32>(2515u, 4294967295u)), arg_0.x), vec2<u32>(~4294967295u, ~4294967295u), any(vec3<bool>(true, true, true))), arg_1);
    global2 = _wgslsmith_mod_u32(_wgslsmith_div_u32(reverseBits(4294967295u), max(1u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 68580u, 0u, 4294967295u), vec4<u32>(0u, 4294967295u, 4294967295u, 1199u)))), reverseBits(~33151u));
    return var_0.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -31926i;
    global0 = array<Struct_1, 25>();
    var_0 = func_1(select(!select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true), false), vec4<bool>(true, true, true, true), true), !select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true), false), all(vec2<bool>(true, true)) && all(select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false)))), global0[_wgslsmith_index_u32(max(94427u, ~_wgslsmith_mod_u32(~31979u, 1u)), 25u)]);
    var var_1 = Struct_1(u_input.c, _wgslsmith_f_op_vec4_f32(global1.b + global1.b), ~(-global1.c));
    let var_2 = false;
    var var_3 = _wgslsmith_clamp_i32(abs(~(-20160i)), _wgslsmith_div_i32(var_1.c.x, i32(-1i) * -(i32(-1i) * -62323i)), u_input.b.x);
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-496f + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.b.x + var_1.b.x) - _wgslsmith_f_op_f32(-var_1.b.x))))));
    var var_5 = ~1u;
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(_wgslsmith_add_vec2_u32(~select(vec2<u32>(16574u, 90183u), vec2<u32>(33448u, 4294967295u), true), vec2<u32>(1u, 1u))));
}

