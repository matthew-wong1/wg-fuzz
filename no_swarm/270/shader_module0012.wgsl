struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: vec4<f32>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_2,
    c: u32,
    d: vec4<bool>,
    e: i32,
}

struct Struct_4 {
    a: bool,
    b: vec2<u32>,
    c: vec4<u32>,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 21> = array<Struct_5, 21>(Struct_5(Struct_2(Struct_1(vec2<bool>(true, false), -656f, vec4<f32>(199f, -147f, -434f, 228f), 1u))), Struct_5(Struct_2(Struct_1(vec2<bool>(true, true), 312f, vec4<f32>(-1643f, 480f, 2361f, 593f), 9921u))), Struct_5(Struct_2(Struct_1(vec2<bool>(false, false), 1552f, vec4<f32>(453f, -304f, 1402f, -2479f), 9562u))), Struct_5(Struct_2(Struct_1(vec2<bool>(false, false), 632f, vec4<f32>(-130f, 1554f, 1000f, 729f), 29052u))), Struct_5(Struct_2(Struct_1(vec2<bool>(true, false), 1000f, vec4<f32>(-1974f, 1887f, -188f, -1126f), 2890u))), Struct_5(Struct_2(Struct_1(vec2<bool>(false, true), -562f, vec4<f32>(1000f, -1000f, 1038f, -875f), 28368u))), Struct_5(Struct_2(Struct_1(vec2<bool>(true, false), -184f, vec4<f32>(895f, 1000f, -729f, 883f), 71724u))), Struct_5(Struct_2(Struct_1(vec2<bool>(false, true), -185f, vec4<f32>(-157f, -1710f, -1808f, 2982f), 11274u))), Struct_5(Struct_2(Struct_1(vec2<bool>(false, false), -1000f, vec4<f32>(397f, -356f, 1000f, -851f), 1u))), Struct_5(Struct_2(Struct_1(vec2<bool>(true, true), -628f, vec4<f32>(540f, 1078f, 116f, 677f), 4294967295u))), Struct_5(Struct_2(Struct_1(vec2<bool>(false, true), -221f, vec4<f32>(-918f, 196f, -817f, -262f), 28067u))), Struct_5(Struct_2(Struct_1(vec2<bool>(true, true), -952f, vec4<f32>(-2034f, -2024f, 204f, 1042f), 1u))), Struct_5(Struct_2(Struct_1(vec2<bool>(false, true), 1000f, vec4<f32>(769f, 331f, 153f, -108f), 66941u))), Struct_5(Struct_2(Struct_1(vec2<bool>(true, true), -2514f, vec4<f32>(1034f, -847f, -1364f, 454f), 4294967295u))), Struct_5(Struct_2(Struct_1(vec2<bool>(false, true), -280f, vec4<f32>(-2247f, 2797f, 1000f, -1495f), 4294967295u))), Struct_5(Struct_2(Struct_1(vec2<bool>(false, true), 1249f, vec4<f32>(1135f, -263f, 1122f, 977f), 83123u))), Struct_5(Struct_2(Struct_1(vec2<bool>(true, true), 763f, vec4<f32>(176f, -1160f, 114f, 1072f), 55u))), Struct_5(Struct_2(Struct_1(vec2<bool>(true, true), -1972f, vec4<f32>(-160f, 328f, 940f, -537f), 74267u))), Struct_5(Struct_2(Struct_1(vec2<bool>(false, false), 1079f, vec4<f32>(-1254f, -721f, -410f, -442f), 1u))), Struct_5(Struct_2(Struct_1(vec2<bool>(false, false), -851f, vec4<f32>(1638f, 130f, 1078f, -1000f), 1u))), Struct_5(Struct_2(Struct_1(vec2<bool>(false, true), -1917f, vec4<f32>(516f, 838f, 321f, -354f), 83011u))));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> bool {
    var var_0 = -2147483647i;
    var var_1 = Struct_4(true, u_input.a.xw, u_input.a);
    global0 = array<Struct_5, 21>();
    global0 = array<Struct_5, 21>();
    var_0 = 0i;
    return max(_wgslsmith_div_u32(0u, ~var_1.c.x), ~_wgslsmith_dot_vec4_u32(~u_input.a, vec4<u32>(76928u, 4294967295u, 1u, 1u))) < _wgslsmith_clamp_u32(~(~(0u >> (u_input.a.x % 32u))), u_input.a.x, _wgslsmith_clamp_u32(countOneBits(firstLeadingBit(13222u)), _wgslsmith_dot_vec3_u32(u_input.a.wwy, var_1.c.wwz) ^ reverseBits(u_input.a.x), firstLeadingBit(var_1.b.x) << (~var_1.c.x % 32u)));
}

fn func_2(arg_0: vec4<i32>) -> vec2<bool> {
    var var_0 = arg_0.x;
    let var_1 = u_input.a.wxz;
    let var_2 = max(~(-_wgslsmith_mult_vec2_i32(arg_0.yx, arg_0.wy)), -vec2<i32>(reverseBits(_wgslsmith_add_i32(-51185i, -3958i)), arg_0.x));
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(step(2153f, 254f)), _wgslsmith_f_op_f32(step(925f, 1990f)), _wgslsmith_f_op_f32(3284f - 1207f), _wgslsmith_f_op_f32(1571f - -222f)))) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1088f, 761f, 106f, 1218f))))));
    global0 = array<Struct_5, 21>();
    return select(!select(select(vec2<bool>(false, false), vec2<bool>(true, false), true), !select(vec2<bool>(false, false), vec2<bool>(true, false), false), select(true, var_2.x <= -25837i, any(vec2<bool>(false, true)))), !select(vec2<bool>(true, true), vec2<bool>(u_input.a.x <= 9678u, func_3()), vec2<bool>(true, true)), any(select(vec2<bool>(false, false), vec2<bool>(false, true), true)) | select(true, all(select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, false))), any(vec2<bool>(true, true))));
}

fn func_1(arg_0: vec4<i32>) -> f32 {
    var var_0 = !(!any(select(vec2<bool>(true, true), func_2(vec4<i32>(31753i, u_input.b.x, -1i, -30754i)), any(vec3<bool>(true, true, true)))));
    var var_1 = ~(~92637u);
    var var_2 = ~(~max(~u_input.a.x, u_input.a.x) ^ _wgslsmith_sub_u32(~22554u, _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(u_input.a, u_input.a), 0u)));
    let var_3 = Struct_2(Struct_1(vec2<bool>(func_2(firstLeadingBit(vec4<i32>(-1i, 1i, -2147483647i, -2147483647i))).x, true), -321f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-502f, 1000f, -364f, 610f) - vec4<f32>(649f, -251f, -1000f, 911f))), ~(~(~1u))));
    var var_4 = vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-514f * -770f))), _wgslsmith_f_op_f32(max(var_3.a.b, -604f)))), -448f);
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-487f, _wgslsmith_f_op_f32(floor(var_4.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_4.x) * -598f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_3.a.c.x)) + -885f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-186f)) * var_4.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(u_input.c))))))) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(661f + _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1434f))) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(-778f, 153f) * _wgslsmith_f_op_f32(509f - -1000f))), all(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false))) && true)));
    global0 = array<Struct_5, 21>();
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, -1381f, 2054f));
    var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_1.x, var_1.x, var_0), vec3<f32>(var_1.x, 1687f, 1291f))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(1000f, -1762f, 499f), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, var_1.x, var_1.x) - vec3<f32>(var_1.x, var_1.x, var_1.x)))))) + vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), var_0, 1987f)) * vec3<f32>(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(select(-473f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1.x))), true)), 1663f));
    var var_2 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_sub_vec2_i32(u_input.b.ww, vec2<i32>(-1i) * -vec2<i32>(-26863i, u_input.c.x)), u_input.a.x << (u_input.a.x % 32u));
}

