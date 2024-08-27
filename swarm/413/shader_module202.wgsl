struct Struct_1 {
    a: u32,
    b: i32,
    c: f32,
    d: f32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec4<f32>,
}

struct Struct_4 {
    a: bool,
    b: u32,
    c: vec2<u32>,
    d: Struct_2,
    e: bool,
}

struct Struct_5 {
    a: bool,
    b: Struct_1,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: f32,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(0u, 11385i, -337f, 692f), Struct_1(4294967295u, 1i, 984f, 342f), Struct_1(4294967295u, 2147483647i, -267f, 1210f), Struct_1(72663u, -29178i, -416f, 348f), Struct_1(0u, 1i, -632f, 442f), Struct_1(0u, 85888i, -181f, 1880f), Struct_1(0u, i32(-2147483648), -1008f, -696f), Struct_1(23783u, 33977i, -132f, 2012f), Struct_1(5450u, 2147483647i, 1000f, 209f), Struct_1(1u, i32(-2147483648), 120f, 803f), Struct_1(1u, 17277i, 1442f, 1000f), Struct_1(1u, -15935i, -917f, 1000f), Struct_1(0u, -1i, -151f, -1000f), Struct_1(1u, 2147483647i, -1196f, -596f), Struct_1(1984u, 7755i, -781f, -1352f), Struct_1(0u, -1i, 674f, 587f), Struct_1(97715u, -16882i, 932f, -682f), Struct_1(1u, -65312i, 1001f, 1242f), Struct_1(0u, 2147483647i, -716f, -792f), Struct_1(1u, -55337i, 252f, -1664f), Struct_1(9352u, 2147483647i, -894f, -755f), Struct_1(4294967295u, 0i, 1000f, -1000f), Struct_1(13998u, 25156i, -772f, -993f), Struct_1(66771u, 0i, 2297f, 1000f), Struct_1(4294967295u, -6589i, -463f, -425f), Struct_1(11016u, 2147483647i, -748f, -192f), Struct_1(8461u, 49855i, 437f, 422f), Struct_1(2984u, 0i, -398f, -361f), Struct_1(13187u, -20844i, -740f, -327f), Struct_1(19079u, 1i, -180f, 906f), Struct_1(1u, -26641i, 2149f, 1000f), Struct_1(41159u, 52738i, -881f, -782f));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: bool, arg_1: u32) -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-183f, 232f, _wgslsmith_f_op_f32(627f + _wgslsmith_f_op_f32(-763f * -644f)), 257f) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(425f, -455f, _wgslsmith_f_op_f32(377f + 1114f), -397f)) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(564f, 1386f, -1329f, -1300f), vec4<f32>(1860f, 821f, 2557f, 798f))) - _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(720f, 557f, 630f, -1625f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)))));
    var var_1 = Struct_5(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.x * _wgslsmith_div_f32(var_0.x, var_0.x)), _wgslsmith_div_f32(907f, 1374f))) == var_0.x, global0[_wgslsmith_index_u32(~reverseBits(~1u), 32u)], !select(select(!vec2<bool>(arg_0, arg_0), select(vec2<bool>(arg_0, true), vec2<bool>(arg_0, false), vec2<bool>(true, true)), arg_0), vec2<bool>(false, true), select(!vec2<bool>(arg_0, arg_0), !vec2<bool>(arg_0, arg_0), false)));
    var var_2 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.x, 1530f, var_0.x, 1000f), vec4<f32>(var_1.b.c, -274f, var_0.x, -394f))))))));
    var_1 = Struct_5(all(vec4<bool>(var_1.c.x, (var_1.c.x || false) | all(vec2<bool>(false, true)), var_1.c.x, arg_1 >= ~u_input.b)), Struct_1(firstLeadingBit(18305u), var_1.b.b, var_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, var_0.x)), -551f)), select(var_1.c, select(vec2<bool>(true, all(var_1.c)), !vec2<bool>(arg_0, false), arg_0), vec2<bool>(!all(vec4<bool>(arg_0, false, var_1.c.x, false)), true)));
    var_2 = vec4<f32>(_wgslsmith_f_op_f32(floor(var_0.x)), var_1.b.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(floor(578f))) - _wgslsmith_f_op_f32(var_2.x + _wgslsmith_f_op_f32(var_0.x * var_2.x))) - 791f), var_0.x);
    return _wgslsmith_sub_vec4_u32(~(~(~vec4<u32>(69136u, 1u, arg_1, 4294967295u))) | min(~min(vec4<u32>(arg_1, arg_1, var_1.b.a, 67649u), vec4<u32>(var_1.b.a, arg_1, arg_1, 25534u)), vec4<u32>(35786u >> (1u % 32u), ~0u, max(arg_1, var_1.b.a), u_input.b)), _wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(max(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, var_1.b.a, arg_1, arg_1), vec4<u32>(44715u, arg_1, arg_1, u_input.b)), _wgslsmith_div_vec4_u32(vec4<u32>(arg_1, arg_1, u_input.b, arg_1), vec4<u32>(19163u, 23362u, 57365u, 23824u))), vec4<u32>(4294967295u, u_input.b & 20084u, 0u, ~var_1.b.a), ~(~vec4<u32>(u_input.b, 1u, 0u, var_1.b.a))), select(abs(min(vec4<u32>(var_1.b.a, var_1.b.a, 4294967295u, 0u), vec4<u32>(var_1.b.a, var_1.b.a, 0u, arg_1))), _wgslsmith_mult_vec4_u32(vec4<u32>(var_1.b.a, arg_1, u_input.b, u_input.b), vec4<u32>(arg_1, 0u, 29882u, 1085u)) >> (vec4<u32>(arg_1, 21488u, 13051u, var_1.b.a) % vec4<u32>(32u)), any(select(vec4<bool>(true, var_1.a, var_1.a, var_1.a), vec4<bool>(arg_0, arg_0, true, arg_0), false)))));
}

fn func_2(arg_0: bool, arg_1: i32) -> vec4<f32> {
    var var_0 = ~_wgslsmith_clamp_vec4_u32(~(~(~vec4<u32>(u_input.b, 9908u, u_input.b, u_input.b))), vec4<u32>(select(u_input.b, ~44778u, true), ~(~2540u), max(_wgslsmith_sub_u32(u_input.b, u_input.b), _wgslsmith_div_u32(1u, u_input.b)), u_input.b), _wgslsmith_div_vec4_u32(func_3(!arg_0, firstLeadingBit(4294967295u)), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, 4294967295u, u_input.b, u_input.b), vec4<u32>(u_input.b, 1u, u_input.b, 4294967295u))));
    global0 = array<Struct_1, 32>();
    return _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(638f)), _wgslsmith_div_f32(-399f, -1685f), _wgslsmith_f_op_f32(ceil(729f)), _wgslsmith_f_op_f32(-650f * -558f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-635f, 1000f, 1000f, -1581f))))));
}

fn func_1(arg_0: vec3<f32>, arg_1: i32) -> Struct_2 {
    global0 = array<Struct_1, 32>();
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(209f, arg_0.x, arg_0.x, 1197f) - vec4<f32>(553f, -1229f, 351f, 1875f)) - _wgslsmith_f_op_vec4_f32(func_2(false, 1i))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(823f, arg_0.x, arg_0.x, -286f)))));
    let var_1 = Struct_5(all(select(vec4<bool>(true, all(vec3<bool>(true, false, false)), true, true), !select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false), true), true && all(vec4<bool>(true, false, false, true)))), Struct_1(~_wgslsmith_div_u32(22358u, u_input.b) >> (~u_input.b % 32u), arg_1, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(1000f, 172f)), _wgslsmith_f_op_f32(step(var_0.x, 776f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + arg_0.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(409f))))), select(select(!select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false)), !select(vec2<bool>(false, false), vec2<bool>(false, false), true), select(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(true, true), false)), select(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false)), 32961u >= u_input.b), vec2<bool>(true, true), vec2<bool>(false, any(vec4<bool>(false, true, false, true)))), select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true)), true), select(vec2<bool>(true, false), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(true, true)), any(vec2<bool>(true, true)))));
    var var_2 = Struct_4(true, var_1.b.a, ~_wgslsmith_add_vec2_u32(vec2<u32>(14277u, u_input.b), ~_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b, var_1.b.a), vec2<u32>(25238u, 1u))), Struct_2(abs(0i)), var_1.a || var_1.a);
    let var_3 = vec3<bool>(all(!select(vec2<bool>(var_2.a, var_2.a), vec2<bool>(true, false), select(var_1.c, vec2<bool>(false, true), var_1.a))), var_2.e, var_2.e);
    return Struct_2(min(-(~(103964i | var_2.d.a)), arg_1));
}

fn func_4(arg_0: Struct_4, arg_1: vec2<i32>) -> Struct_2 {
    var var_0 = abs(countOneBits(_wgslsmith_add_vec3_i32(u_input.a.zwx, ~vec3<i32>(arg_1.x, -2147483647i, -9743i))));
    global0 = array<Struct_1, 32>();
    var var_1 = Struct_1(_wgslsmith_div_u32(~u_input.b, ~_wgslsmith_add_u32(arg_0.c.x, 1u)), 1i, -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -981f)));
    var_0 = vec3<i32>(arg_1.x, _wgslsmith_mod_i32(var_1.b, 2147483647i), 79410i);
    var_1 = Struct_1(max(4294967295u, ~var_1.a), var_0.x, _wgslsmith_f_op_f32(-1000f - -396f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c + _wgslsmith_f_op_vec4_f32(func_2(arg_0.a, var_0.x)).x)));
    return arg_0.d;
}

fn func_5(arg_0: Struct_4) -> Struct_3 {
    let var_0 = Struct_4(true, arg_0.c.x, _wgslsmith_mod_vec2_u32(vec2<u32>(reverseBits(19745u), u_input.b ^ 17123u) << (~abs(vec2<u32>(44797u, u_input.b)) % vec2<u32>(32u)), vec2<u32>(38951u, _wgslsmith_mult_u32(1u, arg_0.b))), func_1(_wgslsmith_f_op_vec4_f32(func_2(arg_0.e | true, u_input.a.x)).zwz, arg_0.d.a), true);
    let var_1 = 0i;
    let var_2 = 2147483647i;
    let var_3 = -34594i;
    let var_4 = abs(~abs(arg_0.c.x));
    return Struct_3(Struct_1(4294967295u, _wgslsmith_clamp_i32(func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(691f, 891f, 727f)), 1i).a, ~(~0i), arg_0.d.a), -1000f, _wgslsmith_f_op_f32(f32(-1f) * -1242f)), Struct_2(var_0.d.a & -77340i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(969f, -1098f, 299f, 1354f))) - vec4<f32>(-688f, 823f, -1000f, 520f)) + vec4<f32>(_wgslsmith_f_op_f32(904f + -1832f), _wgslsmith_div_f32(-764f, -711f), 1579f, _wgslsmith_f_op_f32(abs(-289f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -2147483647i;
    var var_1 = vec2<bool>(all(vec4<bool>(true, true, true, true)) != (_wgslsmith_sub_u32(49498u, u_input.b) < 0u), any(select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)), select(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true)), vec2<bool>(true, true), vec2<bool>(true, true)), -1588f < _wgslsmith_f_op_f32(round(-953f)))));
    global0 = array<Struct_1, 32>();
    var var_2 = func_5(Struct_4(!(0i > _wgslsmith_mod_i32(var_0, var_0)), abs(u_input.b), vec2<u32>(~46173u, ~u_input.b) & (_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, 96365u), vec2<u32>(u_input.b, 85338u), vec2<u32>(0u, 1u)) << (vec2<u32>(u_input.b, 9147u) % vec2<u32>(32u))), func_4(Struct_4(true, 0u, ~vec2<u32>(u_input.b, 87474u), func_1(vec3<f32>(2804f, 1019f, -801f), 1i), true), min(u_input.a.zw, vec2<i32>(var_0, u_input.a.x) << (vec2<u32>(u_input.b, u_input.b) % vec2<u32>(32u)))), !var_1.x));
    var var_3 = var_2.b;
    var_1 = vec2<bool>(select(var_1.x || select(!var_1.x, false, true), true, !var_1.x & true), var_1.x);
    var var_4 = Struct_5(!(!all(vec3<bool>(var_1.x, var_1.x, var_1.x)) && var_1.x), Struct_1(u_input.b, (var_0 | ~(-70482i)) << (~29192u % 32u), _wgslsmith_f_op_f32(sign(var_2.a.c)), var_2.c.x), vec2<bool>(u_input.b == 0u, any(!select(vec3<bool>(false, var_1.x, var_1.x), vec3<bool>(true, true, var_1.x), false))));
    let var_5 = Struct_3(global0[_wgslsmith_index_u32(~4294967295u, 32u)], var_2.b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-481f, _wgslsmith_f_op_f32(step(-332f, var_4.b.c)), -1339f, var_4.b.c)));
    let var_6 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.c.x));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, var_4.b.a, var_4.b.a), ~vec3<u32>(4294967295u, 25883u, 1u)), _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_5.a.a, var_4.b.a, 0u, 4294967295u), vec4<u32>(111366u, u_input.b, 1u, 29258u), vec4<u32>(var_4.b.a, u_input.b, u_input.b, u_input.b)), ~vec4<u32>(var_4.b.a, var_2.a.a, var_2.a.a, var_2.a.a))), var_6, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(153f - _wgslsmith_div_f32(266f, var_2.a.c)) - _wgslsmith_f_op_f32(var_2.a.c * _wgslsmith_f_op_f32(abs(-1547f))))), -51725i, func_5(Struct_4(_wgslsmith_f_op_f32(-var_6) != var_5.a.d, countOneBits(4294967295u), ~_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b, 0u), vec2<u32>(4294967295u, 58827u)), func_4(Struct_4(var_4.c.x, 31697u, vec2<u32>(4294967295u, 60238u), var_2.b, false), ~vec2<i32>(-21865i, u_input.a.x)), !all(vec3<bool>(true, var_1.x, var_1.x)))).a.d);
}

