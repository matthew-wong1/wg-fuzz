struct Struct_1 {
    a: vec3<bool>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: vec3<u32>,
    d: bool,
    e: bool,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec2<f32>,
    c: i32,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 12> = array<Struct_3, 12>(Struct_3(vec4<bool>(false, false, false, true), vec2<f32>(-1406f, 1004f), 0i, vec3<f32>(962f, 918f, -375f)), Struct_3(vec4<bool>(true, true, false, false), vec2<f32>(925f, -2088f), 48591i, vec3<f32>(-1083f, -2196f, -467f)), Struct_3(vec4<bool>(false, false, true, false), vec2<f32>(-1191f, 904f), 1i, vec3<f32>(1744f, -266f, 595f)), Struct_3(vec4<bool>(false, true, false, true), vec2<f32>(650f, -332f), -1955i, vec3<f32>(259f, 1000f, -238f)), Struct_3(vec4<bool>(false, false, false, false), vec2<f32>(109f, 223f), i32(-2147483648), vec3<f32>(310f, -925f, -495f)), Struct_3(vec4<bool>(true, true, true, true), vec2<f32>(576f, 406f), 2147483647i, vec3<f32>(485f, 1000f, -259f)), Struct_3(vec4<bool>(true, false, true, false), vec2<f32>(-870f, 1435f), -14055i, vec3<f32>(-150f, -983f, 1302f)), Struct_3(vec4<bool>(true, false, false, false), vec2<f32>(141f, 2145f), 2147483647i, vec3<f32>(2585f, -880f, -980f)), Struct_3(vec4<bool>(true, true, true, true), vec2<f32>(939f, -400f), -1i, vec3<f32>(-1753f, 1314f, 724f)), Struct_3(vec4<bool>(true, true, false, true), vec2<f32>(-1931f, -106f), 16087i, vec3<f32>(-512f, -1272f, 1000f)), Struct_3(vec4<bool>(false, true, true, true), vec2<f32>(760f, -1611f), 21053i, vec3<f32>(1210f, -216f, 1000f)), Struct_3(vec4<bool>(true, false, true, true), vec2<f32>(-342f, -240f), i32(-2147483648), vec3<f32>(-620f, 548f, -249f)));

var<private> global1: bool;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> i32 {
    var var_0 = max(max(~vec2<i32>(_wgslsmith_clamp_i32(u_input.a, u_input.a, u_input.a), 5237i), min(vec2<i32>(firstTrailingBit(2147483647i), -u_input.a), vec2<i32>(_wgslsmith_div_i32(u_input.a, 2147483647i), 36042i))), select(vec2<i32>(countOneBits(u_input.a), -2147483647i), vec2<i32>(_wgslsmith_mod_i32(u_input.a, abs(u_input.a)), countOneBits(u_input.a >> (103022u % 32u))), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true)), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), true), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true))))));
    var var_1 = true;
    let var_2 = (vec3<i32>(countOneBits(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 50455i), vec2<i32>(-1i, var_0.x))), firstLeadingBit(u_input.a), 0i) >> (~_wgslsmith_mult_vec3_u32(select(u_input.b.zwx, u_input.b.xxz, vec3<bool>(false, true, false)), ~vec3<u32>(35383u, 1u, u_input.b.x)) % vec3<u32>(32u))) >> (u_input.b.zwy % vec3<u32>(32u));
    let var_3 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 431f, -426f, _wgslsmith_f_op_f32(trunc(-2061f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(392f)), _wgslsmith_f_op_f32(f32(-1f) * -3249f))), 2921f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(966f - 1841f), _wgslsmith_f_op_f32(f32(-1f) * -863f)), _wgslsmith_f_op_f32(select(-1000f, 1000f, any(vec4<bool>(true, true, true, false)))))), select(vec4<bool>(true, true, true, true), vec4<bool>(any(vec3<bool>(false, true, false)), any(vec3<bool>(true, true, true)), any(vec3<bool>(false, false, true)), any(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false)))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false))), true))));
    var_0 = vec2<i32>(firstLeadingBit(var_2.x), firstTrailingBit(0i));
    return _wgslsmith_mult_i32(abs(countOneBits(var_0.x)) >> ((select(u_input.b.x & u_input.b.x, 5833u << (0u % 32u), true) | u_input.b.x) % 32u), var_0.x >> (u_input.b.x % 32u));
}

fn func_2(arg_0: u32, arg_1: Struct_3) -> Struct_2 {
    return Struct_2(Struct_1(arg_1.a.yyw, _wgslsmith_div_i32(~func_3(), u_input.a)), reverseBits(vec3<u32>(arg_0, 4294967295u, ~arg_0)) & reverseBits(_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, u_input.b.x, 1u), u_input.b.ywx)), ~vec3<u32>(firstTrailingBit(~u_input.b.x), 4294967295u, ~u_input.b.x), !(_wgslsmith_clamp_i32(-1i, _wgslsmith_add_i32(0i, u_input.a), arg_1.c) != -31707i), arg_1.a.x);
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: bool) -> bool {
    var var_0 = true;
    var var_1 = true;
    global0 = array<Struct_3, 12>();
    global0 = array<Struct_3, 12>();
    let var_2 = 0u;
    return !arg_1.e;
}

fn func_1(arg_0: vec3<f32>, arg_1: vec3<i32>, arg_2: vec2<i32>, arg_3: vec2<bool>) -> vec2<bool> {
    let var_0 = vec3<f32>(-1993f, arg_0.x, -1679f);
    global1 = 1808f != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.x, _wgslsmith_f_op_f32(trunc(arg_0.x)), true)) + 1608f);
    var var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, _wgslsmith_f_op_f32(sign(-1000f)), _wgslsmith_f_op_f32(ceil(1034f)))), vec3<f32>(_wgslsmith_div_f32(126f, arg_0.x), _wgslsmith_f_op_f32(-arg_0.x), var_0.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0) * _wgslsmith_f_op_vec3_f32(arg_0 + arg_0))) + var_0), !arg_3.x));
    var var_2 = ~(~u_input.b);
    var var_3 = true;
    return !vec2<bool>(func_4(firstLeadingBit(vec3<u32>(8841u, u_input.b.x, var_2.x)), func_2(0u, Struct_3(vec4<bool>(arg_3.x, arg_3.x, true, arg_3.x), vec2<f32>(var_1.x, var_0.x), -1i, var_0)), true), !((arg_2.x | -2147483647i) != _wgslsmith_sub_i32(0i, arg_1.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = false;
    var var_0 = !(!select(vec2<bool>(u_input.a != u_input.a, true), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false)), any(vec4<bool>(true, true, true, true))), select(vec2<bool>(true, true), func_1(vec3<f32>(2084f, 642f, 1237f), vec3<i32>(1451i, u_input.a, u_input.a), vec2<i32>(3181i, u_input.a), vec2<bool>(true, false)), false)));
    let var_1 = Struct_3(!select(vec4<bool>(true, !var_0.x, false, !var_0.x), !select(vec4<bool>(false, var_0.x, false, false), vec4<bool>(var_0.x, false, true, var_0.x), vec4<bool>(true, true, var_0.x, var_0.x)), select(!vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), select(vec4<bool>(var_0.x, var_0.x, true, var_0.x), vec4<bool>(true, var_0.x, var_0.x, true), var_0.x), true)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 1147f) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-296f, -533f) - vec2<f32>(152f, -135f)))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(1514f + 662f), _wgslsmith_f_op_f32(min(-987f, -866f))))), _wgslsmith_add_i32((1i & func_3()) << (~(~u_input.b.x) % 32u), ~(~u_input.a) | reverseBits(u_input.a)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(min(-413f, 1541f)), _wgslsmith_f_op_f32(round(-1043f)), -313f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(211f, -1495f, 1000f)) + vec3<f32>(215f, -287f, -2147f)), all(vec2<bool>(var_0.x, true)) & var_0.x)))));
    let var_2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_1.d.x, var_1.d.x, any(select(vec3<bool>(true, false, false), vec3<bool>(true, var_1.a.x, false), var_1.a.wyx)))))));
    global1 = var_1.a.x;
    global0 = array<Struct_3, 12>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(sign(1045f)), var_2, var_1.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_2 + 2410f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1570f - var_1.d.x) * _wgslsmith_f_op_f32(var_2 + var_2)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1090f))));
}

