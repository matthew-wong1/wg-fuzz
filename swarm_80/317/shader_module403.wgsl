struct Struct_1 {
    a: vec4<f32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: vec3<u32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_2,
    c: Struct_2,
    d: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 10989u;

var<private> global1: array<Struct_2, 3> = array<Struct_2, 3>(Struct_2(Struct_1(vec4<f32>(786f, -244f, 864f, 953f), vec4<f32>(839f, 157f, 745f, 335f)), vec3<f32>(-1000f, -855f, -649f), vec3<u32>(1u, 2904u, 4294967295u)), Struct_2(Struct_1(vec4<f32>(-1804f, -1122f, -253f, -1732f), vec4<f32>(344f, -154f, 439f, -124f)), vec3<f32>(-1728f, 805f, 1362f), vec3<u32>(23051u, 71159u, 39628u)), Struct_2(Struct_1(vec4<f32>(-986f, 1241f, -1005f, 547f), vec4<f32>(1562f, 748f, -228f, -362f)), vec3<f32>(-221f, -1167f, 604f), vec3<u32>(33692u, 1u, 1u)));

var<private> global2: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(vec4<f32>(1500f, 182f, 120f, 773f), vec4<f32>(-1000f, 471f, 1883f, -1324f)), Struct_1(vec4<f32>(-436f, -146f, 895f, 835f), vec4<f32>(1790f, -1075f, -346f, 379f)), Struct_1(vec4<f32>(-791f, 742f, -990f, 1000f), vec4<f32>(-586f, 1000f, -565f, -261f)), Struct_1(vec4<f32>(990f, 796f, 1782f, -134f), vec4<f32>(-1040f, 317f, -991f, -828f)), Struct_1(vec4<f32>(-1130f, -1782f, 1944f, 1468f), vec4<f32>(-258f, -1042f, -363f, -1270f)), Struct_1(vec4<f32>(-946f, -1000f, -383f, -2348f), vec4<f32>(647f, 746f, 468f, -235f)), Struct_1(vec4<f32>(453f, -911f, -1465f, -1000f), vec4<f32>(-229f, -387f, -497f, 889f)), Struct_1(vec4<f32>(1677f, 1383f, 110f, 927f), vec4<f32>(401f, 132f, -130f, -1000f)));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: vec2<bool>) -> u32 {
    var var_0 = u_input.a.x | 45185u;
    var var_1 = reverseBits(arg_0.c.c.x);
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.a.x, arg_0.b.a.a.x) - 2369f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.b.x + _wgslsmith_f_op_f32(exp2(arg_0.b.b.x)))));
    let var_3 = select(!(!select(vec3<bool>(arg_0.d, false, arg_3.x), select(vec3<bool>(true, false, true), vec3<bool>(arg_3.x, false, arg_3.x), true), true)), !vec3<bool>(all(!vec4<bool>(arg_3.x, arg_3.x, arg_0.d, arg_0.d)), arg_0.b.a.b.x == arg_1.a.x, !arg_3.x), true);
    var var_4 = min(~(9861u >> (abs(1u) % 32u)), 71498u);
    return ~u_input.a.x;
}

fn func_2(arg_0: i32, arg_1: vec4<f32>) -> Struct_2 {
    var var_0 = Struct_3(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_1.zwy + _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, -769f, -133f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(468f, arg_1.x, arg_1.x), vec3<f32>(arg_1.x, -305f, 164f)), _wgslsmith_f_op_vec3_f32(arg_1.zxz - arg_1.zxw), vec3<bool>(true, false, true))) + arg_1.yyx)), Struct_2(global2[_wgslsmith_index_u32(u_input.a.x, 8u)], _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(arg_1.zwx)) - vec3<f32>(-1460f, -1517f, -507f)))), vec3<u32>(_wgslsmith_mod_u32(~12196u, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.a.x), u_input.a.yx)), func_3(Struct_3(vec3<f32>(arg_1.x, 883f, arg_1.x), global1[_wgslsmith_index_u32(13268u, 3u)], Struct_2(global2[_wgslsmith_index_u32(u_input.a.x, 8u)], arg_1.xwz, vec3<u32>(u_input.a.x, 0u, 0u)), false), Struct_1(vec4<f32>(468f, arg_1.x, arg_1.x, arg_1.x), arg_1), _wgslsmith_sub_vec3_i32(vec3<i32>(arg_0, arg_0, arg_0), vec3<i32>(arg_0, -4997i, arg_0)), vec2<bool>(true, true)), ~_wgslsmith_clamp_u32(1u, 24134u, 5146u))), Struct_2(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(~vec4<u32>(u_input.a.x, 6955u, 3678u, u_input.a.x), ~vec4<u32>(0u, u_input.a.x, u_input.a.x, u_input.a.x)), vec4<u32>(~u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), 8u)], _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(943f, 283f, -420f))) * _wgslsmith_f_op_vec3_f32(min(arg_1.zxz, vec3<f32>(arg_1.x, 1369f, -1000f))))), u_input.a), false);
    let var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(-var_0.c.a.a.zxz), global1[_wgslsmith_index_u32(abs(~0u), 3u)], Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-var_0.b.a.a), _wgslsmith_f_op_vec4_f32(vec4<f32>(-670f, -310f, -470f, arg_1.x) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, var_0.a.x, 282f, var_0.b.b.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-866f, var_0.b.a.a.x, -601f))), max(~(vec3<u32>(4294967295u, 43593u, u_input.a.x) >> (vec3<u32>(1u, 1u, var_0.c.c.x) % vec3<u32>(32u))), abs(vec3<u32>(1u, var_0.b.c.x, var_0.c.c.x)))), true);
    var var_2 = countOneBits(1u);
    global2 = array<Struct_1, 8>();
    var_2 = ~_wgslsmith_add_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(46306u, var_0.c.c.x, 4294967295u, 1u), vec4<u32>(77373u, 4294967295u, var_1.c.c.x, 55609u)), ~var_1.c.c.x, u_input.a.x) >> (var_0.c.c.x % 32u), abs(countOneBits(u_input.a.x)));
    return var_0.b;
}

fn func_1(arg_0: Struct_3, arg_1: Struct_2, arg_2: vec2<u32>, arg_3: vec3<i32>) -> vec4<u32> {
    let var_0 = func_2(abs(arg_3.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0.b.a.a)) - arg_0.c.a.a));
    var var_1 = ~arg_2;
    var_1 = func_2(-arg_3.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_1.a.b - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.b.x, -1403f, 483f, var_0.b.x) + arg_1.a.a))))).c.xy;
    global2 = array<Struct_1, 8>();
    global1 = array<Struct_2, 3>();
    return max(~select(~(~vec4<u32>(arg_2.x, 1u, 3641u, var_1.x)), ~vec4<u32>(u_input.a.x, var_0.c.x, var_0.c.x, 4294967295u) << (min(vec4<u32>(arg_1.c.x, var_1.x, arg_1.c.x, arg_0.c.c.x), vec4<u32>(arg_1.c.x, arg_0.b.c.x, arg_1.c.x, 4294967295u)) % vec4<u32>(32u)), arg_0.d), _wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_div_u32(63265u, arg_1.c.x) >> (~arg_1.c.x % 32u), _wgslsmith_add_u32(~4294967295u, var_0.c.x), arg_0.c.c.x, arg_0.b.c.x), vec4<u32>(reverseBits(arg_2.x), 0u ^ select(arg_2.x, 13455u, false), abs(_wgslsmith_mult_u32(78633u, var_1.x)), 1u)));
}

fn func_4(arg_0: Struct_3, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: bool) -> i32 {
    global1 = array<Struct_2, 3>();
    global1 = array<Struct_2, 3>();
    var var_0 = true;
    var_0 = select((arg_2.a.x > arg_2.b.x) | true, false, arg_0.d);
    let var_1 = vec4<bool>(!arg_0.d, !all(!select(vec2<bool>(false, false), vec2<bool>(true, arg_3), true)), true, !(!any(vec3<bool>(false, true, false)) && true));
    return 12061i;
}

fn func_5(arg_0: vec4<bool>, arg_1: bool) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-165f * -866f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(2117f, -757f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(1000f)), -1000f)), 1000f));
    var_0 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.x, var_0.x, -494f), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-648f, 833f, var_0.x))))))));
    var var_1 = _wgslsmith_f_op_f32(ceil(var_0.x)) > _wgslsmith_div_f32(var_0.x, -259f);
    var var_2 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, 190f)))), func_2(~(-_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 0i, -1i), vec3<i32>(26256i, -22862i, 0i))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.x, var_0.x, var_0.x, -1487f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-484f, var_0.x, 1000f, -1000f), vec4<f32>(-1280f, var_0.x, -1168f, 2160f)) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-986f, var_0.x, var_0.x, -1000f)))))), global1[_wgslsmith_index_u32(~(~_wgslsmith_mult_u32(50074u, u_input.a.x)), 3u)], any(arg_0));
    return func_2(-21204i, vec4<f32>(_wgslsmith_f_op_f32(1336f + var_0.x), _wgslsmith_f_op_f32(-var_2.a.x), 823f, _wgslsmith_f_op_f32(var_2.a.x * 967f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-2306f + -216f);
    global2 = array<Struct_1, 8>();
    global1 = array<Struct_2, 3>();
    global2 = array<Struct_1, 8>();
    var var_1 = func_5(select(vec4<bool>(true, true && any(vec2<bool>(true, true)), true, true), vec4<bool>(true, false, false, all(vec2<bool>(false, false))), select(select(vec4<bool>(true, false, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false)), vec4<bool>(true, false, false, false)), vec4<bool>(true, true, true, true), true)), -(~(~1i)) < func_4(Struct_3(vec3<f32>(-1295f, 506f, 1476f), global1[_wgslsmith_index_u32(~7883u, 3u)], global1[_wgslsmith_index_u32(11382u, 3u)], false), ~vec4<i32>(-37420i, 1i, 1i, -2147483647i) << (func_1(Struct_3(vec3<f32>(-364f, -2833f, 1128f), Struct_2(global2[_wgslsmith_index_u32(62849u, 8u)], vec3<f32>(1394f, 1131f, -714f), vec3<u32>(29594u, 0u, u_input.a.x)), Struct_2(Struct_1(vec4<f32>(-374f, -569f, 1728f, 1574f), vec4<f32>(1188f, 896f, 812f, 476f)), vec3<f32>(695f, -153f, 282f), u_input.a), false), global1[_wgslsmith_index_u32(4294967295u, 3u)], u_input.a.yy, vec3<i32>(-1i, -1i, 0i)) % vec4<u32>(32u)), func_2(abs(2147483647i), vec4<f32>(-989f, -858f, 556f, -461f)).a, all(vec3<bool>(true, true, false))));
    let var_2 = vec2<bool>(all(select(vec2<bool>(true, 156f <= var_1.b.x), select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(all(vec4<bool>(false, false, true, false)), false))), any(!select(select(vec2<bool>(false, false), vec2<bool>(false, false), true), vec2<bool>(true, true), true)));
    var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(-388f, var_1.b.x)), _wgslsmith_f_op_f32(-135f + var_1.a.a.x), -2403f, var_1.a.a.x)), _wgslsmith_f_op_vec4_f32(-var_1.a.a)), var_1.b, ~_wgslsmith_mult_vec3_u32(abs(vec3<u32>(86711u, 1u, 0u)) | u_input.a, vec3<u32>(4294967295u, ~1u, 34196u)));
    let x = u_input.a;
    s_output = StorageBuffer(~4294967295u << (var_1.c.x % 32u));
}

