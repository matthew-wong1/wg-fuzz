struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: vec3<i32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec3<i32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<f32>,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_4,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 14> = array<Struct_2, 14>(Struct_2(vec3<f32>(367f, 2392f, 1000f), Struct_1(vec2<f32>(280f, -595f)), Struct_1(vec2<f32>(799f, 766f)), Struct_1(vec2<f32>(-575f, 295f)), vec3<i32>(-1i, 10839i, 28097i)), Struct_2(vec3<f32>(-454f, 754f, 1412f), Struct_1(vec2<f32>(698f, 1004f)), Struct_1(vec2<f32>(385f, -1687f)), Struct_1(vec2<f32>(510f, 1000f)), vec3<i32>(i32(-2147483648), 51334i, -10746i)), Struct_2(vec3<f32>(-654f, -853f, -1578f), Struct_1(vec2<f32>(-1154f, -1000f)), Struct_1(vec2<f32>(504f, 970f)), Struct_1(vec2<f32>(-958f, 2109f)), vec3<i32>(i32(-2147483648), 0i, 1i)), Struct_2(vec3<f32>(751f, -1921f, 608f), Struct_1(vec2<f32>(-1567f, 311f)), Struct_1(vec2<f32>(-1450f, -442f)), Struct_1(vec2<f32>(261f, 1134f)), vec3<i32>(0i, 1i, 8803i)), Struct_2(vec3<f32>(574f, -479f, -289f), Struct_1(vec2<f32>(532f, 806f)), Struct_1(vec2<f32>(-1203f, -1277f)), Struct_1(vec2<f32>(897f, 1000f)), vec3<i32>(0i, 0i, i32(-2147483648))), Struct_2(vec3<f32>(1000f, -1963f, 1154f), Struct_1(vec2<f32>(510f, 655f)), Struct_1(vec2<f32>(1404f, 1756f)), Struct_1(vec2<f32>(968f, 505f)), vec3<i32>(227i, 56880i, 2147483647i)), Struct_2(vec3<f32>(735f, 818f, 1293f), Struct_1(vec2<f32>(651f, -1455f)), Struct_1(vec2<f32>(-1000f, -661f)), Struct_1(vec2<f32>(130f, -2208f)), vec3<i32>(1i, 0i, 1i)), Struct_2(vec3<f32>(365f, 928f, 1559f), Struct_1(vec2<f32>(-154f, -504f)), Struct_1(vec2<f32>(-1444f, -128f)), Struct_1(vec2<f32>(-386f, -292f)), vec3<i32>(i32(-2147483648), -24321i, -4612i)), Struct_2(vec3<f32>(-961f, 1506f, -417f), Struct_1(vec2<f32>(1000f, 177f)), Struct_1(vec2<f32>(149f, 916f)), Struct_1(vec2<f32>(1370f, -805f)), vec3<i32>(1i, -28030i, 2147483647i)), Struct_2(vec3<f32>(270f, -1628f, 530f), Struct_1(vec2<f32>(-723f, -187f)), Struct_1(vec2<f32>(-533f, 1090f)), Struct_1(vec2<f32>(1700f, -977f)), vec3<i32>(-81708i, i32(-2147483648), 0i)), Struct_2(vec3<f32>(-198f, -1081f, -1000f), Struct_1(vec2<f32>(-917f, -651f)), Struct_1(vec2<f32>(-1000f, 105f)), Struct_1(vec2<f32>(295f, -1000f)), vec3<i32>(0i, 27390i, 60561i)), Struct_2(vec3<f32>(-872f, -757f, 520f), Struct_1(vec2<f32>(-774f, -545f)), Struct_1(vec2<f32>(563f, 951f)), Struct_1(vec2<f32>(1000f, 1086f)), vec3<i32>(-24597i, 2147483647i, -12108i)), Struct_2(vec3<f32>(-983f, -1285f, 1000f), Struct_1(vec2<f32>(-1000f, -1852f)), Struct_1(vec2<f32>(-993f, 448f)), Struct_1(vec2<f32>(-1662f, -1027f)), vec3<i32>(51196i, -29275i, i32(-2147483648))), Struct_2(vec3<f32>(603f, -102f, -990f), Struct_1(vec2<f32>(-806f, 717f)), Struct_1(vec2<f32>(-1000f, -583f)), Struct_1(vec2<f32>(-1319f, 1000f)), vec3<i32>(1i, 31312i, -66388i)));

var<private> global1: vec3<u32>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: vec4<f32>) -> Struct_1 {
    let var_0 = arg_0.ww;
    global0 = array<Struct_2, 14>();
    global1 = ~firstLeadingBit(vec3<u32>(1u, u_input.a.x, 51058u));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x));
    let var_2 = _wgslsmith_f_op_f32(-var_0.x);
    return Struct_1(arg_0.yy);
}

fn func_1() -> vec2<i32> {
    global0 = array<Struct_2, 14>();
    let var_0 = all(!select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), any(vec4<bool>(false, false, true, false))), vec4<bool>(true, true, any(vec2<bool>(true, true)), true), !select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false), true)));
    let var_1 = Struct_3(!select(!(!vec2<bool>(true, var_0)), vec2<bool>(var_0 & var_0, var_0), !select(vec2<bool>(false, true), vec2<bool>(var_0, false), vec2<bool>(true, true))), vec3<i32>(-1i, ~_wgslsmith_clamp_i32(-25431i, -1i, -1i) ^ (_wgslsmith_mod_i32(-10467i, -34487i) >> (global1.x % 32u)), _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(11969i, 0i, -7988i, -28601i), ~vec4<i32>(10924i, 0i, 0i, -25794i)), -57926i)));
    var var_2 = Struct_5(func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-329f, -355f, 709f, -764f) - vec4<f32>(467f, -621f, 1000f, 999f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-704f, -900f, -370f, 1353f)))), Struct_4(global0[_wgslsmith_index_u32(u_input.a.x, 14u)], _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1000f, 322f, -1356f, -747f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(912f, 2406f, -1105f, -1195f)), true)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2302f, -1000f, -1519f, 151f))))));
    global0 = array<Struct_2, 14>();
    return var_2.b.a.e.xx;
}

fn func_3(arg_0: vec3<i32>, arg_1: i32, arg_2: bool) -> i32 {
    let var_0 = !(!(!vec3<bool>(all(vec4<bool>(arg_2, true, arg_2, false)), true, any(vec4<bool>(arg_2, arg_2, arg_2, arg_2)))));
    let var_1 = vec3<u32>(reverseBits(global1.x), global1.x, ~(~0u));
    global0 = array<Struct_2, 14>();
    var var_2 = Struct_3(select(select(vec2<bool>(arg_2, true), vec2<bool>(true, true), true), var_0.yz, false), arg_0);
    var_2 = Struct_3(vec2<bool>(_wgslsmith_add_i32(countOneBits(1i), -17572i) != (firstLeadingBit(arg_1) >> (~42586u % 32u)), true), -(select(vec3<i32>(arg_1, arg_0.x, 1i), _wgslsmith_mod_vec3_i32(arg_0, arg_0), var_0) << (~(var_1 & vec3<u32>(global1.x, 0u, 21739u)) % vec3<u32>(32u))));
    return 2147483647i;
}

fn func_4(arg_0: vec2<i32>, arg_1: vec3<i32>, arg_2: vec3<u32>, arg_3: vec2<bool>) -> Struct_4 {
    let var_0 = ~48730u;
    global0 = array<Struct_2, 14>();
    var var_1 = Struct_5(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-func_2(vec4<f32>(-1204f, -1000f, -245f, 136f)).a) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-114f, -1122f), vec2<f32>(1093f, -803f))))), Struct_4(Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(741f, -1251f, 1036f) - vec3<f32>(-1935f, -140f, 310f))), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(694f, 687f))), func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -639f, -502f, -1000f) + vec4<f32>(438f, -334f, -1164f, -1043f))), func_2(vec4<f32>(-1797f, 1255f, -1421f, -1462f)), vec3<i32>(_wgslsmith_mult_i32(arg_0.x, -19244i), arg_0.x, i32(-1i) * -56378i)), vec4<f32>(1446f, _wgslsmith_f_op_f32(860f * -622f), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-1577f, 495f))), -109f)));
    var_1 = Struct_5(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.a.a))), Struct_4(Struct_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_1.a.a.x, var_1.b.a.b.a.x, -167f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -875f, var_1.b.a.d.a.x) * vec3<f32>(var_1.a.a.x, var_1.b.a.b.a.x, var_1.b.b.x))), var_1.b.a.c, var_1.b.a.c, func_2(_wgslsmith_f_op_vec4_f32(var_1.b.b + vec4<f32>(-900f, var_1.b.b.x, var_1.a.a.x, var_1.a.a.x))), (vec3<i32>(var_1.b.a.e.x, -37033i, arg_0.x) ^ var_1.b.a.e) & -arg_1), vec4<f32>(-1147f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_1.b.b.x + var_1.a.a.x), _wgslsmith_div_f32(var_1.a.a.x, var_1.a.a.x))), _wgslsmith_f_op_f32(-288f + _wgslsmith_f_op_f32(-139f * var_1.a.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -420f))));
    var var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(vec3<f32>(var_1.b.b.x, var_1.a.a.x, 638f), var_1.b.a.a)))) * _wgslsmith_f_op_vec3_f32(-var_1.b.b.wxy)), var_1.a, func_2(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_1.a.a.x, 2307f, var_1.b.a.d.a.x, 182f), vec4<f32>(1310f, var_1.a.a.x, -761f, -840f))))))), var_1.a, var_1.b.a.e);
    return var_1.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    let var_1 = reverseBits(-2147483647i);
    var var_2 = func_4(_wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(-_wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, -1999i), vec2<i32>(2147483647i, 33023i), vec2<i32>(var_1, var_1)), -vec2<i32>(var_1, -19609i) & func_1()), abs(vec2<i32>(-1i) * -vec2<i32>(1i, var_1))), vec3<i32>(7675i, func_3(_wgslsmith_clamp_vec3_i32(vec3<i32>(var_1, -1i, var_1), vec3<i32>(-45122i, var_1, -26446i), vec3<i32>(var_1, 21441i, 9129i)) >> (_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, global1.x, u_input.a.x), vec3<u32>(global1.x, u_input.a.x, 13596u)) % vec3<u32>(32u)), -_wgslsmith_sub_i32(var_1, var_1), true), 24686i), select(vec3<u32>(countOneBits(~37159u), u_input.a.x, countOneBits(~global1.x)), vec3<u32>(_wgslsmith_mod_u32(~u_input.a.x, 0u), ~global1.x, abs(4294967295u >> (0u % 32u))), select(-var_1 < abs(var_1), var_0, true)), select(select(select(!vec2<bool>(false, var_0), vec2<bool>(var_0, false), vec2<bool>(var_0, var_0)), vec2<bool>(false, var_0 || false), any(select(vec4<bool>(false, true, true, var_0), vec4<bool>(false, var_0, false, var_0), var_0))), select(!select(vec2<bool>(var_0, true), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(false | var_0, any(vec4<bool>(var_0, var_0, var_0, true))), select(!var_0, true, var_0)), var_1 == var_1));
    var var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-739f, var_2.a.a.x), vec2<f32>(var_2.b.x, var_2.a.d.a.x)))) + _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(180f, -119f)))))));
    global0 = array<Struct_2, 14>();
    let var_4 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(704f + var_3.a.x)), 488f));
    let x = u_input.a;
    s_output = StorageBuffer(400f);
}

