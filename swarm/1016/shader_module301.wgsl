struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec4<f32>,
    b: f32,
    c: vec3<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: Struct_1,
    d: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 20> = array<Struct_3, 20>(Struct_3(Struct_2(vec4<f32>(-1524f, -1314f, -266f, 1442f), 506f, vec3<i32>(33489i, i32(-2147483648), 1i)), -468f, Struct_1(false), false), Struct_3(Struct_2(vec4<f32>(-1620f, -1300f, -182f, 253f), 324f, vec3<i32>(-1i, 1i, i32(-2147483648))), -2205f, Struct_1(false), true), Struct_3(Struct_2(vec4<f32>(-1000f, 1478f, -1584f, 671f), -1000f, vec3<i32>(-30673i, 0i, -25835i)), -302f, Struct_1(false), true), Struct_3(Struct_2(vec4<f32>(355f, 2420f, 379f, -1010f), 2125f, vec3<i32>(-1i, 0i, -5127i)), 156f, Struct_1(true), false), Struct_3(Struct_2(vec4<f32>(111f, -1551f, -517f, 356f), 144f, vec3<i32>(-24450i, -19230i, i32(-2147483648))), 467f, Struct_1(true), false), Struct_3(Struct_2(vec4<f32>(817f, 134f, -108f, 1299f), -2434f, vec3<i32>(-66075i, -83437i, 61051i)), 1000f, Struct_1(false), true), Struct_3(Struct_2(vec4<f32>(584f, -1484f, 1194f, 530f), -288f, vec3<i32>(-43542i, -1i, 2147483647i)), -406f, Struct_1(false), true), Struct_3(Struct_2(vec4<f32>(196f, -356f, -128f, 460f), -279f, vec3<i32>(i32(-2147483648), i32(-2147483648), -151i)), -870f, Struct_1(true), true), Struct_3(Struct_2(vec4<f32>(888f, -392f, 316f, -1947f), 1771f, vec3<i32>(-38744i, -21259i, 1i)), 335f, Struct_1(false), true), Struct_3(Struct_2(vec4<f32>(-979f, -1038f, 1311f, -1000f), 1000f, vec3<i32>(i32(-2147483648), 19410i, 2147483647i)), 1152f, Struct_1(true), false), Struct_3(Struct_2(vec4<f32>(662f, 522f, 879f, -632f), 2051f, vec3<i32>(2147483647i, 40715i, 1i)), 743f, Struct_1(false), true), Struct_3(Struct_2(vec4<f32>(2188f, 1035f, -1629f, -1238f), 678f, vec3<i32>(-65588i, 46985i, -8949i)), 1186f, Struct_1(false), false), Struct_3(Struct_2(vec4<f32>(-560f, -253f, -623f, 374f), -1271f, vec3<i32>(7379i, i32(-2147483648), -1i)), -232f, Struct_1(true), false), Struct_3(Struct_2(vec4<f32>(1000f, 1156f, 1028f, -761f), 509f, vec3<i32>(2147483647i, -1i, 22871i)), -390f, Struct_1(false), true), Struct_3(Struct_2(vec4<f32>(3585f, 2355f, 381f, -408f), -772f, vec3<i32>(0i, 5586i, 2147483647i)), -431f, Struct_1(true), false), Struct_3(Struct_2(vec4<f32>(-1159f, -1256f, 1835f, -725f), -106f, vec3<i32>(-6353i, -31252i, 1i)), -288f, Struct_1(true), true), Struct_3(Struct_2(vec4<f32>(-1334f, -636f, 2107f, -604f), -1070f, vec3<i32>(-1i, -10886i, -17226i)), -841f, Struct_1(true), true), Struct_3(Struct_2(vec4<f32>(-1000f, -137f, 2243f, 1463f), 843f, vec3<i32>(-1i, 1i, -35360i)), 1679f, Struct_1(true), false), Struct_3(Struct_2(vec4<f32>(-1010f, 1298f, -908f, -1640f), -1000f, vec3<i32>(22340i, 1i, i32(-2147483648))), 421f, Struct_1(false), false), Struct_3(Struct_2(vec4<f32>(771f, -745f, -1000f, 311f), -695f, vec3<i32>(-1i, -34214i, -1i)), -1958f, Struct_1(false), true));

var<private> global1: array<Struct_3, 2>;

var<private> global2: array<u32, 12>;

var<private> global3: array<vec4<f32>, 17>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_3, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: Struct_1) -> u32 {
    global2 = array<u32, 12>();
    var var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(-arg_0.a.a), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -495f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-508f))) * -1000f))), vec3<i32>(2147483647i, 0i, 0i));
    let var_1 = _wgslsmith_clamp_vec3_u32(((vec3<u32>(u_input.c.x, 0u, 116993u) & _wgslsmith_mod_vec3_u32(vec3<u32>(809u, u_input.b.x, global2[_wgslsmith_index_u32(81330u, 12u)]), vec3<u32>(global2[_wgslsmith_index_u32(1u, 12u)], u_input.b.x, u_input.b.x))) << (vec3<u32>(~4294967295u, reverseBits(u_input.b.x), global2[_wgslsmith_index_u32(~0u, 12u)]) % vec3<u32>(32u))) >> (abs(min(vec3<u32>(4294967295u, global2[_wgslsmith_index_u32(14824u, 12u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 12u)], 12u)]) & u_input.b.yyx, u_input.b.wzz)) % vec3<u32>(32u)), vec3<u32>(1u, u_input.b.x, _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 4294967295u, 56844u), ~u_input.b.yyz, min(u_input.b.yzy, vec3<u32>(u_input.b.x, 0u, global2[_wgslsmith_index_u32(u_input.b.x, 12u)]))), ~(~vec3<u32>(u_input.c.x, 0u, global2[_wgslsmith_index_u32(1u, 12u)])))), abs(min(vec3<u32>(u_input.c.x, abs(u_input.b.x), u_input.b.x), ~u_input.b.ywz)));
    var_0 = arg_0.a;
    global2 = array<u32, 12>();
    return 10925u;
}

fn func_2() -> u32 {
    var var_0 = global0[_wgslsmith_index_u32(19845u, 20u)];
    var var_1 = u_input.c.x;
    var var_2 = var_0.a;
    return select(0u, ~(_wgslsmith_add_u32(func_3(global0[_wgslsmith_index_u32(u_input.b.x, 20u)], var_0.c, vec2<bool>(var_0.d, var_0.d), var_0.c), 4294967295u) & _wgslsmith_clamp_u32(0u | global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b.x, 12u)], 12u)], _wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(52071u, u_input.c.x, 58176u, 33542u)), firstLeadingBit(u_input.c.x))), true);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2, arg_2: vec4<f32>) -> vec3<u32> {
    let var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(281f + _wgslsmith_f_op_f32(f32(-1f) * -899f))));
    var var_1 = u_input.c.x;
    let var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(-arg_2), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(arg_2.x)), _wgslsmith_div_f32(-636f, arg_1.b))), arg_2.x)), arg_0.a.c);
    let var_3 = firstTrailingBit(firstLeadingBit(u_input.c.x));
    let var_4 = Struct_1(false);
    return ~_wgslsmith_mod_vec3_u32(~vec3<u32>(4294967295u, _wgslsmith_mod_u32(u_input.b.x, 1u), 28452u | var_3), vec3<u32>(0u, 104564u, 1u));
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_3, arg_2: vec4<bool>) -> vec3<bool> {
    var var_0 = _wgslsmith_clamp_vec3_u32(u_input.b.zzz, u_input.b.yyw, func_4(Struct_3(arg_1.a, -2063f, Struct_1(all(vec2<bool>(arg_2.x, arg_1.d))), 48570u != func_2()), arg_1.a, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-global3[_wgslsmith_index_u32(u_input.b.x, 17u)]), global3[_wgslsmith_index_u32(~14795u, 17u)])), arg_1.a.a, arg_2.x))));
    var_0 = countOneBits(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b.x & u_input.c.x, global2[_wgslsmith_index_u32(45566u, 12u)], ~countOneBits(38605u)), u_input.b.wzz));
    return select(vec3<bool>(-396f <= _wgslsmith_f_op_f32(-arg_0.x), true, arg_1.d), select(arg_2.xwy, !vec3<bool>(true, !arg_2.x, arg_2.x), false), all(vec2<bool>(_wgslsmith_dot_vec2_i32(arg_1.a.c.zz, arg_1.a.c.xy) < ~(-4401i), any(!arg_2.wx))));
}

fn func_5(arg_0: vec3<f32>, arg_1: bool, arg_2: Struct_4, arg_3: bool) -> Struct_1 {
    var var_0 = vec3<bool>(_wgslsmith_clamp_i32(-2147483647i << (~u_input.c.x % 32u), u_input.a, u_input.a) != u_input.a, false, !(!(all(arg_2.b.zy) & true)));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-303f + _wgslsmith_f_op_f32(-arg_0.x))), arg_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -318f))))));
    var var_2 = 16926u;
    var var_3 = vec4<bool>(true, (true || !(31233u < global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.c.x, 12u)], 12u)])) & !(!var_0.x), var_0.x, arg_2.a.a);
    let var_4 = _wgslsmith_f_op_f32(arg_0.x * 944f);
    return arg_2.a;
}

fn func_6(arg_0: Struct_4, arg_1: vec3<f32>, arg_2: Struct_2, arg_3: vec3<f32>) -> Struct_1 {
    global1 = array<Struct_3, 2>();
    let var_0 = Struct_4(func_5(vec3<f32>(_wgslsmith_f_op_f32(select(arg_2.b, -155f, true & arg_0.a.a)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1078f - arg_2.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_1.x)) + _wgslsmith_f_op_f32(select(589f, -1000f, false)))), false, Struct_4(Struct_1(arg_0.a.a), !(!vec3<bool>(arg_0.b.x, arg_0.a.a, arg_0.a.a))), (all(vec4<bool>(arg_0.a.a, false, arg_0.b.x, arg_0.b.x)) | true) || !(39874u > u_input.c.x)), func_1(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_div_f32(arg_2.b, -775f), _wgslsmith_f_op_f32(-502f + 1069f), _wgslsmith_f_op_f32(-1260f * arg_3.x)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-112f, arg_3.x, arg_2.b), _wgslsmith_f_op_vec3_f32(ceil(arg_3)), arg_0.a.a))), Struct_3(Struct_2(vec4<f32>(953f, arg_2.a.x, -905f, -1033f), arg_2.b, abs(vec3<i32>(940i, arg_2.c.x, -1i))), -817f, func_5(_wgslsmith_f_op_vec3_f32(-arg_3), true, arg_0, arg_0.b.x), global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u, 4294967295u), 12u)] < 61609u), select(!(!vec4<bool>(arg_0.b.x, false, arg_0.b.x, true)), !select(vec4<bool>(false, true, false, arg_0.a.a), vec4<bool>(true, true, true, arg_0.b.x), vec4<bool>(false, arg_0.b.x, arg_0.a.a, arg_0.b.x)), select(vec4<bool>(arg_0.a.a, arg_0.b.x, false, arg_0.b.x), vec4<bool>(true, true, arg_0.a.a, arg_0.b.x), vec4<bool>(true, false, false, false)))));
    var var_1 = Struct_4(arg_0.a, arg_0.b);
    var var_2 = (firstTrailingBit(-vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a)) ^ ((vec4<i32>(-1i) * -vec4<i32>(29729i, 2147483647i, u_input.a, 0i)) | firstLeadingBit(firstTrailingBit(vec4<i32>(arg_2.c.x, arg_2.c.x, arg_2.c.x, 2147483647i))))) ^ vec4<i32>(abs(reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(-17083i, 0i, u_input.a, -36135i), vec4<i32>(u_input.a, arg_2.c.x, 0i, u_input.a)))), arg_2.c.x, u_input.a, min(_wgslsmith_div_i32(arg_2.c.x, abs(arg_2.c.x)), arg_2.c.x));
    var var_3 = arg_2;
    return func_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(arg_3)), _wgslsmith_f_op_vec3_f32(var_3.a.zww * vec3<f32>(arg_1.x, arg_1.x, -473f)))) + arg_1), var_0.a.a, Struct_4(func_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_3.b, 149f, -407f), arg_2.a.xzy, var_1.b)) - vec3<f32>(arg_2.b, var_3.b, var_3.a.x)), var_1.a.a, Struct_4(Struct_1(var_1.a.a), func_1(vec3<f32>(-227f, var_3.a.x, arg_2.b), global0[_wgslsmith_index_u32(u_input.b.x, 20u)], vec4<bool>(var_1.a.a, var_1.b.x, var_1.b.x, var_0.b.x))), all(select(arg_0.b.yx, vec2<bool>(var_1.a.a, var_0.b.x), vec2<bool>(var_0.a.a, true)))), vec3<bool>(!var_0.b.x || false, func_5(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_2.a.x, arg_1.x, var_3.a.x))), var_2.x <= var_3.c.x, Struct_4(Struct_1(true), vec3<bool>(true, arg_0.b.x, true)), true).a, var_1.a.a)), true);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 20>();
    let var_0 = false;
    var var_1 = 2147483647i;
    global3 = array<vec4<f32>, 17>();
    let var_2 = u_input.a;
    let var_3 = func_6(Struct_4(func_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(281f, -827f, 1090f), vec3<f32>(-1333f, 145f, 972f))), ~u_input.a <= (19221i >> (0u % 32u)), Struct_4(Struct_1(true), func_1(vec3<f32>(-452f, 1871f, 130f), Struct_3(Struct_2(global3[_wgslsmith_index_u32(u_input.b.x, 17u)], 1151f, vec3<i32>(50857i, u_input.a, -1572i)), 300f, Struct_1(true), var_0), vec4<bool>(false, false, var_0, var_0))), !(true & var_0)), func_1(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1000f, 257f, -883f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-900f, -895f, 750f)))), global1[_wgslsmith_index_u32(0u, 2u)], !select(vec4<bool>(true, true, true, var_0), vec4<bool>(var_0, var_0, false, true), true))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1f, 1f, 1f))), Struct_2(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 12u)], 17u)])))), -1033f, vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(35661i, 1i), vec2<i32>(var_2, u_input.a)), _wgslsmith_mod_i32(-1i, 9828i) >> (u_input.c.x % 32u), firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(34528i, u_input.a, var_2, var_2), vec4<i32>(u_input.a, var_2, 14556i, u_input.a))))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-389f, 992f, 1387f), vec3<f32>(1386f, 612f, -1746f))) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(208f, 1000f, 672f), vec3<f32>(-1634f, -674f, -2280f))))))));
    global3 = array<vec4<f32>, 17>();
    global3 = array<vec4<f32>, 17>();
    let var_4 = Struct_4(Struct_1(!(!(!var_0))), select(!vec3<bool>(any(vec3<bool>(true, var_3.a, true)), var_0, true), vec3<bool>(all(vec2<bool>(false, true)), false, !(!var_0)), !vec3<bool>(var_3.a != var_0, var_3.a, var_3.a)));
    let x = u_input.a;
    s_output = StorageBuffer(~firstTrailingBit(-35646i), var_2);
}

