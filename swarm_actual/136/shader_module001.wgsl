struct Struct_1 {
    a: vec2<bool>,
    b: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec4<bool>,
    d: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec4<u32>,
    d: vec3<i32>,
    e: f32,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_1,
    c: Struct_2,
    d: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: u32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<vec4<f32>, 23> = array<vec4<f32>, 23>(vec4<f32>(697f, -1079f, 721f, 1125f), vec4<f32>(-510f, 165f, -503f, 214f), vec4<f32>(1164f, 1031f, -805f, 413f), vec4<f32>(-1549f, -778f, 1648f, 257f), vec4<f32>(-1000f, 867f, 371f, 402f), vec4<f32>(559f, -686f, -1621f, -232f), vec4<f32>(-201f, 427f, -918f, -260f), vec4<f32>(312f, 506f, -1000f, -812f), vec4<f32>(881f, 1436f, -318f, 597f), vec4<f32>(-177f, 1000f, -203f, 945f), vec4<f32>(-576f, -1391f, -1763f, 1263f), vec4<f32>(276f, 1000f, 1032f, 383f), vec4<f32>(-745f, 704f, 281f, 1563f), vec4<f32>(333f, -688f, -802f, 1120f), vec4<f32>(648f, 1824f, 195f, -471f), vec4<f32>(-581f, 234f, 1523f, -462f), vec4<f32>(-690f, 1000f, 545f, -1415f), vec4<f32>(1746f, 679f, 1405f, -495f), vec4<f32>(1768f, 623f, -223f, -356f), vec4<f32>(730f, 612f, 672f, 716f), vec4<f32>(-1025f, 675f, -660f, 688f), vec4<f32>(-370f, 169f, -1048f, -1032f), vec4<f32>(1720f, -1177f, 371f, -654f));

var<private> global2: u32;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: vec3<i32>, arg_1: u32, arg_2: vec2<i32>, arg_3: Struct_4) -> Struct_2 {
    return Struct_2(arg_3.b, arg_3.c.a.b.x, arg_3.c.c, !(!select(false, arg_3.a.x, arg_3.c.a.a.x) && arg_3.a.x));
}

fn func_3(arg_0: Struct_2) -> vec2<bool> {
    var var_0 = arg_0;
    return select(!(!(!func_2(vec3<i32>(-18040i, -26689i, -1i), 50786u, u_input.c.zy, Struct_4(var_0.a.a, Struct_1(arg_0.a.a, var_0.a.b), arg_0, arg_0.c.x)).c.xw)), !(!(!(!arg_0.a.a))), !var_0.c.xz);
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_1(select(vec2<bool>(true, true), vec2<bool>(false, true), !func_3(func_2(vec3<i32>(65827i, -24444i, u_input.c.x), 1u, vec2<i32>(u_input.a.x, u_input.a.x), Struct_4(vec2<bool>(true, true), Struct_1(vec2<bool>(false, false), vec2<f32>(-1000f, 1000f)), Struct_2(Struct_1(vec2<bool>(false, false), vec2<f32>(681f, -101f)), -891f, vec4<bool>(true, true, true, true), true), true)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 1096f))) * vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-938f)) - _wgslsmith_f_op_f32(max(754f, -668f))), _wgslsmith_f_op_f32(f32(-1f) * -398f))));
    let var_1 = 557f;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1219f)) * 1f)));
    let var_3 = countOneBits(~u_input.a.x >> (~25062u % 32u));
    var var_4 = func_2(firstLeadingBit(vec3<i32>(var_3, abs(5884i), _wgslsmith_dot_vec2_i32(vec2<i32>(var_3, -2147483647i), select(vec2<i32>(u_input.a.x, 2459i), vec2<i32>(-17470i, var_3), var_0.a)))), 35666u, u_input.c.xx, Struct_4(vec2<bool>(var_0.a.x, !var_0.a.x), Struct_1(var_0.a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, var_1))), Struct_2(func_2(vec3<i32>(-40849i, u_input.b, -2147483647i), 79759u, u_input.c.zx, Struct_4(var_0.a, Struct_1(var_0.a, var_0.b), Struct_2(Struct_1(var_0.a, var_0.b), 460f, vec4<bool>(false, false, var_0.a.x, var_0.a.x), var_0.a.x), false)).a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_1)) + _wgslsmith_f_op_f32(trunc(202f))), select(select(vec4<bool>(false, var_0.a.x, false, false), vec4<bool>(var_0.a.x, true, false, var_0.a.x), true), select(vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x), vec4<bool>(var_0.a.x, true, var_0.a.x, var_0.a.x), vec4<bool>(var_0.a.x, false, false, var_0.a.x)), any(var_0.a)), !any(vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x))), var_0.a.x)).c.xz;
    return Struct_1(!vec2<bool>(var_4.x, true), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-612f)) - _wgslsmith_f_op_f32(var_1 + -161f)), -1249f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(Struct_2(func_1(), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1437f, _wgslsmith_div_f32(1351f, 604f))), select(!select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true), false), func_2(select(u_input.c, u_input.a.yzz, false), firstLeadingBit(1u), firstTrailingBit(vec2<i32>(u_input.a.x, -34618i)), Struct_4(vec2<bool>(false, true), Struct_1(vec2<bool>(true, false), vec2<f32>(464f, -602f)), Struct_2(Struct_1(vec2<bool>(true, false), vec2<f32>(1632f, -2422f)), -641f, vec4<bool>(false, false, false, true), true), true)).c, true), false), Struct_2(Struct_1(vec2<bool>(any(vec3<bool>(true, true, false)), true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-659f, -1284f)))), _wgslsmith_f_op_f32(f32(-1f) * -185f), select(vec4<bool>(true, true, func_1().a.x, true), select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false), false), true), false), reverseBits(vec4<u32>(1u, 1u, 1u, 1u)), u_input.c, _wgslsmith_f_op_f32(_wgslsmith_div_f32(404f, 691f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + 1914f) + 372f) - _wgslsmith_f_op_f32(-642f * _wgslsmith_f_op_f32(-338f - 1084f)))));
    let var_1 = 27192i;
    global1 = array<vec4<f32>, 23>();
    let var_2 = select(_wgslsmith_dot_vec3_u32(select(var_0.c.xxy >> (min(var_0.c.xyw, var_0.c.wyy) % vec3<u32>(32u)), select(_wgslsmith_add_vec3_u32(vec3<u32>(0u, var_0.c.x, 1u), var_0.c.yzw), countOneBits(var_0.c.yyz), true), var_0.b.c.zyy), var_0.c.yzw >> (vec3<u32>(4294967295u, min(var_0.c.x, 17003u), ~var_0.c.x) % vec3<u32>(32u))), _wgslsmith_mult_u32(~_wgslsmith_clamp_u32(~20164u, firstTrailingBit(4294967295u), min(0u, 55012u)), abs(~(~34954u))), true == all(!select(var_0.b.c, var_0.b.c, true)));
    var var_3 = var_0.a.a;
    var var_4 = Struct_4(func_3(Struct_2(func_2(vec3<i32>(var_1, var_1, var_0.d.x), var_2, _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b, -12538i), vec2<i32>(var_0.d.x, var_0.d.x)), Struct_4(vec2<bool>(var_3.a.x, true), Struct_1(var_3.a, var_3.b), var_0.a, var_0.a.c.x)).a, -697f, select(select(var_0.a.c, vec4<bool>(false, true, var_0.b.d, var_0.b.d), var_0.a.a.a.x), func_2(vec3<i32>(var_0.d.x, 1i, -23504i), var_0.c.x, vec2<i32>(-39488i, var_0.d.x), Struct_4(var_3.a, Struct_1(var_0.a.c.wy, vec2<f32>(var_0.e, var_0.a.b)), var_0.b, var_3.a.x)).c, select(vec4<bool>(false, var_3.a.x, false, var_0.a.c.x), vec4<bool>(var_3.a.x, var_3.a.x, true, false), true)), false)), Struct_1(var_3.a, var_0.a.a.b), func_2(vec3<i32>(0i, _wgslsmith_mod_i32(var_0.d.x, var_1) | abs(-2147483647i), -32863i), 47084u, vec2<i32>(-1i, _wgslsmith_clamp_i32(var_1, 8039i, -1i)) >> (var_0.c.wz % vec2<u32>(32u)), Struct_4(select(var_0.b.c.wy, vec2<bool>(false, var_0.b.a.a.x), vec2<bool>(var_0.b.c.x, var_0.a.c.x)), Struct_1(var_0.b.a.a, vec2<f32>(-204f, -363f)), var_0.a, true)), var_0.b.c.x & false);
    let x = u_input.a;
    s_output = StorageBuffer(global1[_wgslsmith_index_u32(var_2, 23u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1().b.x - _wgslsmith_f_op_f32(ceil(2382f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * var_0.b.a.b.x)))), 30164u, abs(vec4<i32>(max(-1i << (var_2 % 32u), var_0.d.x), 1i, -33113i, var_1)));
}

