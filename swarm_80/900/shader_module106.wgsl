struct Struct_1 {
    a: vec4<f32>,
    b: vec4<bool>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: u32,
    c: Struct_2,
    d: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: Struct_1,
    d: u32,
    e: vec4<bool>,
}

struct Struct_5 {
    a: Struct_2,
    b: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
    c: f32,
    d: vec4<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, false, false, true);

var<private> global1: u32 = 32042u;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_5, arg_2: Struct_5) -> f32 {
    let var_0 = arg_1.a.d.a;
    global1 = ~33264u;
    global1 = _wgslsmith_clamp_u32(~min(0u, 64621u), ~arg_1.a.b & arg_2.a.b, arg_2.a.b);
    let var_1 = _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_2.b), _wgslsmith_f_op_f32(f32(-1f) * -1302f))) * _wgslsmith_f_op_f32(min(1207f, _wgslsmith_f_op_f32(arg_1.b - 254f)))), -1117f, _wgslsmith_f_op_f32(-1088f * _wgslsmith_f_op_f32(abs(-1289f))))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.a.c.a.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(trunc(var_1.x)))))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1009f))), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(arg_2.b, 496f))))));
    return _wgslsmith_div_f32(204f, _wgslsmith_f_op_f32(1924f - _wgslsmith_f_op_f32(f32(-1f) * -222f)));
}

fn func_4(arg_0: Struct_5, arg_1: Struct_4, arg_2: Struct_1, arg_3: i32) -> u32 {
    return ~18017u ^ _wgslsmith_clamp_u32(~(~0u), ~(~(~arg_1.b.a.x)), _wgslsmith_sub_u32(_wgslsmith_add_u32(27232u >> (arg_1.d % 32u), arg_0.a.b << (arg_0.a.b % 32u)), arg_1.b.b));
}

fn func_2(arg_0: vec4<bool>, arg_1: vec2<bool>, arg_2: Struct_4) -> u32 {
    global0 = arg_0;
    global1 = min(_wgslsmith_mod_u32(30143u, arg_2.d) & 2921u, 4294967295u & ~arg_2.b.a.x);
    var var_0 = ~u_input.a.yy;
    let var_1 = Struct_5(arg_2.b.c, arg_2.a.c.x);
    var var_2 = vec4<u32>(1u, select(1u, 56830u, var_1.a.b != var_1.a.b), min(~min(1u, ~1u), func_4(Struct_5(Struct_2(Struct_1(var_1.a.d.a, arg_2.c.b, var_1.a.c.a.yy), 1u, Struct_1(var_1.a.d.a, vec4<bool>(true, true, true, true), var_1.a.a.a.zw), var_1.a.d), _wgslsmith_f_op_f32(func_3(vec3<f32>(var_1.a.c.c.x, var_1.a.c.c.x, 1896f), Struct_5(var_1.a, -905f), Struct_5(var_1.a, -492f)))), Struct_4(Struct_1(arg_2.a.a, var_1.a.a.b, var_1.a.a.c), Struct_3(arg_2.b.a, var_1.a.b, Struct_2(Struct_1(var_1.a.a.a, vec4<bool>(true, arg_0.x, false, true), arg_2.a.a.wx), var_1.a.b, arg_2.b.c.a, Struct_1(vec4<f32>(132f, -538f, arg_2.c.c.x, var_1.b), vec4<bool>(false, var_1.a.a.b.x, true, arg_2.a.b.x), var_1.a.c.c)), var_1.a.c.a.x), Struct_1(vec4<f32>(var_1.b, -1334f, -946f, var_1.a.a.c.x), vec4<bool>(global0.x, true, arg_0.x, arg_2.c.b.x), arg_2.a.c), ~var_1.a.b, select(arg_0, vec4<bool>(false, var_1.a.c.b.x, false, true), arg_2.c.b.x)), arg_2.a, u_input.b.x)), _wgslsmith_div_u32(~(~4294967295u), var_1.a.b));
    return min(1u & (abs(var_1.a.b) >> (_wgslsmith_mult_u32(4294967295u, ~arg_2.d) % 32u)), 1u);
}

fn func_1(arg_0: f32, arg_1: u32, arg_2: Struct_3) -> bool {
    let var_0 = ~(~firstLeadingBit(~func_2(vec4<bool>(arg_2.c.d.b.x, arg_2.c.c.b.x, true, true), arg_2.c.d.b.zx, Struct_4(arg_2.c.a, arg_2, Struct_1(vec4<f32>(arg_0, arg_2.c.a.a.x, arg_0, -208f), arg_2.c.c.b, vec2<f32>(1613f, arg_0)), 0u, vec4<bool>(global0.x, global0.x, global0.x, global0.x)))));
    global0 = arg_2.c.c.b;
    let var_1 = !global0.x;
    var var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.d, arg_0, arg_0)), vec3<f32>(_wgslsmith_f_op_f32(-1000f * 1172f), arg_2.d, _wgslsmith_f_op_f32(arg_0 - 1000f)))), Struct_5(arg_2.c, _wgslsmith_f_op_f32(trunc(-558f))), Struct_5(Struct_2(arg_2.c.a, 4294967295u ^ arg_2.a.x, Struct_1(vec4<f32>(arg_2.d, arg_2.c.a.c.x, 665f, arg_2.c.d.c.x), arg_2.c.d.b, vec2<f32>(-358f, arg_2.d)), arg_2.c.c), _wgslsmith_f_op_f32(ceil(679f))))), -442f));
    var var_3 = Struct_5(arg_2.c, arg_0);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-992f))) == _wgslsmith_f_op_f32(-1085f - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(arg_2.c.d.c.x)), -898f)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = abs(2466u);
    global0 = !vec4<bool>(false, !all(vec4<bool>(global0.x, global0.x, false, global0.x)) || global0.x, global0.x, true);
    let var_0 = all(!(!vec3<bool>(func_1(885f, 26963u, Struct_3(vec2<u32>(65467u, 21356u), 3105u, Struct_2(Struct_1(vec4<f32>(-1121f, 873f, -1022f, 1209f), vec4<bool>(true, global0.x, false, global0.x), vec2<f32>(-1700f, -2063f)), 90625u, Struct_1(vec4<f32>(-900f, -383f, 179f, 1304f), vec4<bool>(global0.x, false, false, false), vec2<f32>(1248f, 385f)), Struct_1(vec4<f32>(1108f, 949f, -1639f, 933f), vec4<bool>(global0.x, false, global0.x, global0.x), vec2<f32>(113f, 358f))), 190f)), func_1(1568f, 4294967295u, Struct_3(vec2<u32>(47006u, 1u), 1u, Struct_2(Struct_1(vec4<f32>(-812f, -943f, -746f, -352f), vec4<bool>(true, true, global0.x, global0.x), vec2<f32>(-1285f, -1851f)), 4294967295u, Struct_1(vec4<f32>(-2373f, 392f, 368f, -255f), vec4<bool>(global0.x, global0.x, false, global0.x), vec2<f32>(-229f, -221f)), Struct_1(vec4<f32>(-277f, -1000f, 1226f, 741f), vec4<bool>(false, global0.x, false, true), vec2<f32>(-319f, -1000f))), -891f)), global0.x || false)));
    var var_1 = Struct_5(Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1258f, 1000f, -545f, 492f), _wgslsmith_f_op_vec4_f32(vec4<f32>(808f, 905f, -1382f, -652f) * vec4<f32>(-1036f, 557f, -457f, -644f)), false)), select(vec4<bool>(global0.x, global0.x, true, var_0), !vec4<bool>(true, true, global0.x, var_0), select(vec4<bool>(true, var_0, var_0, var_0), vec4<bool>(true, false, true, true), vec4<bool>(false, false, global0.x, var_0))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1160f, -2776f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-181f, 105f)), global0.x))), ~5961u, Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(501f, 154f, 951f, 1147f) - vec4<f32>(-136f, 439f, 727f, -125f))), !(!vec4<bool>(var_0, global0.x, false, false)), vec2<f32>(_wgslsmith_f_op_f32(select(332f, 1131f, true)), 498f)), Struct_1(vec4<f32>(499f, _wgslsmith_div_f32(-268f, 787f), _wgslsmith_f_op_f32(-207f * 187f), -174f), vec4<bool>(false, global0.x, var_0 && true, false), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-884f, -458f), vec2<f32>(-504f, -548f), var_0)) + vec2<f32>(-1000f, 113f)))), _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-623f, -840f, -899f)))), Struct_5(Struct_2(Struct_1(vec4<f32>(562f, -608f, -645f, -451f), vec4<bool>(true, false, true, global0.x), vec2<f32>(1508f, 943f)), 75901u, Struct_1(vec4<f32>(-372f, -624f, -1210f, -619f), vec4<bool>(global0.x, true, var_0, true), vec2<f32>(-1693f, -1162f)), Struct_1(vec4<f32>(-356f, 2304f, 1555f, -1160f), vec4<bool>(false, false, global0.x, false), vec2<f32>(568f, 1250f))), _wgslsmith_f_op_f32(f32(-1f) * -917f)), Struct_5(Struct_2(Struct_1(vec4<f32>(1000f, -177f, -1772f, 561f), vec4<bool>(var_0, true, false, true), vec2<f32>(162f, 139f)), 1u, Struct_1(vec4<f32>(-1000f, 1236f, -1206f, 259f), vec4<bool>(false, true, var_0, true), vec2<f32>(1000f, 1042f)), Struct_1(vec4<f32>(-2251f, 1928f, 1253f, 544f), vec4<bool>(var_0, global0.x, var_0, true), vec2<f32>(-405f, 147f))), _wgslsmith_f_op_f32(f32(-1f) * -1301f))))));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a.c.a.x - -975f) + var_1.b), 1380f) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_1.a.a.c.x))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(var_1.b)))))));
    var var_3 = var_1.a.b;
    let var_4 = 34104i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(var_1.a.d.a.yzx * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1703f, 762f, var_2.x) - var_1.a.a.a.wzw) * var_1.a.a.a.zxz))), _wgslsmith_mod_vec3_u32(~(~(vec3<u32>(4294967295u, 15058u, 0u) | vec3<u32>(var_1.a.b, var_1.a.b, var_1.a.b))), max(min(vec3<u32>(23357u, var_1.a.b, 73503u), countOneBits(vec3<u32>(var_1.a.b, var_1.a.b, var_1.a.b))), reverseBits(vec3<u32>(var_1.a.b, var_1.a.b, 0u)))), _wgslsmith_f_op_f32(-1979f - 206f), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(1655f, 1437f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_2.x)) + -211f), _wgslsmith_f_op_f32(ceil(var_1.b)), var_2.x), var_1.a.b);
}

