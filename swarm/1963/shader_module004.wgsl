struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: vec2<f32>,
    d: u32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec4<f32>,
    c: vec3<f32>,
    d: vec4<u32>,
    e: vec4<f32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 26> = array<vec4<f32>, 26>(vec4<f32>(224f, 1114f, 1183f, -921f), vec4<f32>(-1443f, -1916f, -875f, 539f), vec4<f32>(876f, 1031f, -1000f, -2336f), vec4<f32>(920f, -953f, -1913f, -1000f), vec4<f32>(-2166f, -863f, -216f, -915f), vec4<f32>(1657f, -467f, 1677f, 423f), vec4<f32>(612f, -296f, -1000f, -786f), vec4<f32>(-1072f, 102f, 918f, 2225f), vec4<f32>(1431f, 394f, 768f, -933f), vec4<f32>(-1000f, 263f, 115f, -1838f), vec4<f32>(1584f, 1031f, 2075f, 483f), vec4<f32>(1899f, -264f, 118f, -705f), vec4<f32>(-1000f, 1668f, -2620f, -1253f), vec4<f32>(1566f, -1447f, 468f, -700f), vec4<f32>(132f, 620f, -1354f, -127f), vec4<f32>(-140f, 335f, 2114f, 1000f), vec4<f32>(-2214f, -1399f, -1532f, 1049f), vec4<f32>(-1246f, -408f, 2228f, -2056f), vec4<f32>(1000f, -601f, 389f, 625f), vec4<f32>(805f, -109f, -1000f, 1786f), vec4<f32>(2359f, -1000f, -1313f, 1209f), vec4<f32>(310f, 831f, 1000f, -280f), vec4<f32>(1921f, 666f, 569f, -1140f), vec4<f32>(-194f, -151f, -658f, -2434f), vec4<f32>(-1000f, 358f, 2951f, -1161f), vec4<f32>(-203f, 563f, 406f, -336f));

var<private> global1: Struct_2 = Struct_2(vec3<f32>(1000f, -150f, 237f), vec4<f32>(-1239f, 939f, -340f, -798f), vec3<f32>(2092f, -1072f, 1883f), vec4<u32>(25671u, 10498u, 41938u, 0u), vec4<f32>(837f, -477f, 194f, 410f));

var<private> global2: i32 = 1i;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: i32, arg_3: Struct_2) -> u32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-arg_3.b)));
    var var_1 = arg_1;
    var var_2 = Struct_1(~(~countOneBits(arg_1.d)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x + 1992f) * _wgslsmith_f_op_f32(106f + arg_3.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c.x))) * _wgslsmith_f_op_f32(arg_3.a.x - 356f)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_0.x, _wgslsmith_f_op_f32(exp2(arg_1.c.x))))), 58155u);
    global1 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.yyz + arg_3.b.wzx)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_3.e * global1.b)), vec3<f32>(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_1.e.x + -392f))) - _wgslsmith_f_op_f32(-340f - _wgslsmith_f_op_f32(max(-682f, global1.c.x)))), -646f), _wgslsmith_add_vec4_u32(vec4<u32>(~var_2.a.x, 0u, u_input.a.x | 21772u, arg_1.d.x), _wgslsmith_sub_vec4_u32(global1.d, ~(~var_2.a))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(497f, 543f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(var_1.e.x, arg_1.e.x))), _wgslsmith_f_op_f32(525f * _wgslsmith_f_op_f32(-1102f - arg_1.e.x)))), 756f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1118f))))));
    var_2 = Struct_1(vec4<u32>(_wgslsmith_div_u32(15614u, 10284u), _wgslsmith_dot_vec3_u32(firstLeadingBit(var_2.a.zzy) >> (select(u_input.a.wyy, arg_1.d.zzx, vec3<bool>(true, false, true)) % vec3<u32>(32u)), u_input.a.wwx), ~var_1.d.x, _wgslsmith_dot_vec3_u32(~vec3<u32>(global1.d.x, var_2.d, arg_3.d.x), vec3<u32>(11414u, 0u, var_1.d.x)) ^ _wgslsmith_mult_u32(~arg_1.d.x, countOneBits(var_1.d.x))), _wgslsmith_f_op_f32(min(-1329f, _wgslsmith_f_op_f32(trunc(var_1.e.x)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(var_2.b - arg_1.b.x), _wgslsmith_f_op_f32(var_1.c.x - -644f))) + var_2.c), 10975u);
    return 8099u;
}

fn func_2(arg_0: i32) -> vec3<bool> {
    var var_0 = Struct_1(global1.d, -441f, vec2<f32>(_wgslsmith_div_f32(-444f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b.x))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1742f, _wgslsmith_f_op_f32(round(1000f))) - 660f)), 14959u << (global1.d.x % 32u));
    let var_1 = !vec4<bool>(all(vec2<bool>(true, true)), true, true, true);
    let var_2 = Struct_3(Struct_1(~(~(global1.d ^ vec4<u32>(37242u, var_0.d, var_0.a.x, 65612u))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(-523f, -1016f)), var_0.c.x)), global1.e.x), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(905f - 309f) - -449f), _wgslsmith_f_op_f32(-var_0.b)), func_3(vec3<f32>(_wgslsmith_f_op_f32(-global1.c.x), _wgslsmith_f_op_f32(global1.c.x * var_0.b), _wgslsmith_f_op_f32(select(1000f, 518f, true))), Struct_2(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-682f, global1.e.x, global1.a.x), vec3<f32>(1833f, var_0.b, var_0.c.x))), vec4<f32>(var_0.c.x, var_0.c.x, var_0.c.x, global1.c.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b, var_0.b, 747f) + global1.a), u_input.a, global0[_wgslsmith_index_u32(global1.d.x, 26u)]), 752i, Struct_2(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.b, 2371f, global1.a.x), global1.a), _wgslsmith_f_op_vec4_f32(exp2(global1.b)), vec3<f32>(1230f, -772f, 1000f), _wgslsmith_sub_vec4_u32(u_input.a, u_input.a), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(892f, -1906f, -837f, -268f), global0[_wgslsmith_index_u32(global1.d.x, 26u)], true))))));
    global0 = array<vec4<f32>, 26>();
    let var_3 = reverseBits(-_wgslsmith_mult_i32(arg_0, reverseBits(arg_0)) >> (6559u % 32u));
    return !select(select(select(vec3<bool>(true, true, var_1.x), vec3<bool>(var_1.x, var_1.x, false), select(vec3<bool>(var_1.x, true, false), vec3<bool>(var_1.x, true, false), vec3<bool>(true, var_1.x, false))), vec3<bool>(true, !var_1.x, all(var_1.xwx)), any(!var_1)), var_1.yzw, !(!vec3<bool>(false, true, var_1.x)));
}

fn func_1(arg_0: bool, arg_1: vec4<i32>, arg_2: vec2<bool>, arg_3: vec4<f32>) -> Struct_2 {
    var var_0 = Struct_2(arg_3.yxz, _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.c.x * global1.c.x)), _wgslsmith_f_op_f32(abs(global1.c.x)), global1.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.a.x + -405f), -1281f)), global1.e)), _wgslsmith_f_op_vec3_f32(-arg_3.wwz), min(vec4<u32>(1u, abs(_wgslsmith_mult_u32(0u, u_input.a.x)), _wgslsmith_sub_u32(global1.d.x & global1.d.x, global1.d.x), global1.d.x), global1.d), arg_3);
    let var_1 = !select(select(select(vec3<bool>(false, arg_0, arg_2.x), !vec3<bool>(arg_2.x, arg_0, true), !arg_0), vec3<bool>(true, arg_0, false), select(select(vec3<bool>(arg_0, arg_2.x, false), vec3<bool>(arg_2.x, false, false), vec3<bool>(arg_2.x, false, arg_2.x)), select(vec3<bool>(true, false, arg_2.x), vec3<bool>(false, arg_0, true), vec3<bool>(false, true, arg_0)), false)), !func_2(-23567i), !(!(!vec3<bool>(false, arg_2.x, true))));
    var var_2 = Struct_1(~(select(u_input.a, vec4<u32>(1u, u_input.d, global1.d.x, var_0.d.x), var_1.x) | firstTrailingBit(global1.d)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_3.x * arg_3.x))))), var_0.e.x, arg_0 || arg_2.x)), global1.c.yx, ~1u);
    var var_3 = abs(_wgslsmith_sub_u32(global1.d.x, _wgslsmith_mult_u32(~global1.d.x, ~var_2.a.x)) & (_wgslsmith_clamp_u32(_wgslsmith_mod_u32(47863u, 1u), 0u, ~var_2.d) ^ global1.d.x));
    let var_4 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-var_0.b.ywy), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1759f, 251f, 1576f)))))) * arg_3.zwz), global1.e, _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.b, arg_3.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(arg_3.x, 2576f)), arg_3.x)))), vec4<u32>(countOneBits(reverseBits(~20818u)), ~_wgslsmith_mod_u32(46889u, 51548u), 1u, u_input.a.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.c.x, var_2.b, -515f, global1.e.x))))));
    return Struct_2(vec3<f32>(_wgslsmith_f_op_f32(abs(170f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1200f - -147f) + _wgslsmith_f_op_f32(-global1.c.x)))), _wgslsmith_f_op_f32(ceil(-123f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_4.a.x - 1697f) - _wgslsmith_f_op_f32(-2655f - var_0.c.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_2.b))), _wgslsmith_f_op_f32(floor(-346f)), 1189f) + vec4<f32>(global1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(428f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -787f)), 303f)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.x) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(-1255f))))), global1.c.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.b - var_0.c.x))))), var_4.d, vec4<f32>(_wgslsmith_f_op_f32(310f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_2.b, -696f)) - _wgslsmith_f_op_f32(var_0.b.x * 113f))), var_4.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.x)), var_2.c.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(global1.e.wzw + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global1.a.x, -253f, global1.e.x), global1.c)) * vec3<f32>(-697f, global1.a.x, -510f)) + _wgslsmith_f_op_vec3_f32(global1.b.zwz - vec3<f32>(global1.b.x, 871f, global1.c.x)))), _wgslsmith_f_op_vec3_f32(-global1.e.xxw)));
    global1 = func_1(true == select(u_input.b.x < 1i, true, true), vec4<i32>(23721i, _wgslsmith_dot_vec2_i32((vec2<i32>(1i, -1108i) | u_input.c.yx) >> (vec2<u32>(22619u, global1.d.x) % vec2<u32>(32u)), u_input.c.zz), 50095i, -(~(-7043i))), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), true), all(select(vec2<bool>(true, false), vec2<bool>(false, true), true)) || true), global1.e);
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.x, _wgslsmith_f_op_f32(min(var_0.x, 183f)))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(floor(global1.c.x)), _wgslsmith_f_op_f32(-1421f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + var_0.x)) + -411f)));
    let var_2 = Struct_3(Struct_1(max(vec4<u32>(35589u, u_input.a.x, 25969u, ~0u), vec4<u32>(~u_input.d, global1.d.x, u_input.d, firstLeadingBit(4294967295u))), _wgslsmith_f_op_f32(floor(var_1.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1.e.xx), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(global1.c.x, global1.b.x), var_0.xx))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-799f, 2213f))) * _wgslsmith_f_op_vec2_f32(-global1.c.yy))), _wgslsmith_div_u32(_wgslsmith_add_u32(global1.d.x, global1.d.x), global1.d.x) & ~(~9010u)));
    var var_3 = Struct_3(Struct_1(vec4<u32>(~4294967295u, 10659u, abs(40007u), 1u) ^ vec4<u32>(0u, abs(u_input.a.x), 1u, u_input.a.x), global1.b.x, vec2<f32>(-739f, -174f), ~1u));
    let var_4 = 14905i;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(-vec4<i32>(u_input.c.x, -14549i, -2147483647i, -25120i) >> (min(var_3.a.a, var_2.a.a) % vec4<u32>(32u))) >> (u_input.a % vec4<u32>(32u)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1.x))));
}

