struct Struct_1 {
    a: vec4<bool>,
    b: vec4<bool>,
    c: vec4<f32>,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: vec2<f32>,
    c: f32,
    d: Struct_3,
    e: vec3<u32>,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<u32>,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<i32>,
    c: vec4<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<Struct_2, 15> = array<Struct_2, 15>(Struct_2(Struct_1(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false), vec4<f32>(770f, -227f, 1715f, -917f), true, 1i), vec2<f32>(1000f, -826f)), Struct_2(Struct_1(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), vec4<f32>(541f, -154f, 1606f, -163f), false, -7402i), vec2<f32>(659f, -323f)), Struct_2(Struct_1(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true), vec4<f32>(682f, 1425f, -727f, 1127f), false, 54120i), vec2<f32>(-1641f, 336f)), Struct_2(Struct_1(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true), vec4<f32>(-958f, 516f, -1411f, -296f), false, 1i), vec2<f32>(715f, 952f)), Struct_2(Struct_1(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), vec4<f32>(2026f, -1385f, 764f, 984f), true, 17383i), vec2<f32>(-1131f, 427f)), Struct_2(Struct_1(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), vec4<f32>(821f, -1045f, -126f, 742f), false, -9816i), vec2<f32>(-1709f, 361f)), Struct_2(Struct_1(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true), vec4<f32>(1207f, -980f, 1685f, 696f), false, 59201i), vec2<f32>(-369f, -504f)), Struct_2(Struct_1(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true), vec4<f32>(1492f, -633f, -1000f, -996f), false, -1i), vec2<f32>(-565f, -1452f)), Struct_2(Struct_1(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), vec4<f32>(-2249f, -1336f, 1435f, 900f), true, 0i), vec2<f32>(1044f, -1797f)), Struct_2(Struct_1(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false), vec4<f32>(1079f, 917f, 942f, -623f), true, -27469i), vec2<f32>(-675f, -344f)), Struct_2(Struct_1(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), vec4<f32>(-2141f, 1518f, -997f, -649f), true, -51563i), vec2<f32>(-241f, 560f)), Struct_2(Struct_1(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true), vec4<f32>(-1000f, -912f, -1752f, 920f), false, 2147483647i), vec2<f32>(1019f, -992f)), Struct_2(Struct_1(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true), vec4<f32>(-1247f, -388f, -1982f, -1102f), true, 28710i), vec2<f32>(845f, 902f)), Struct_2(Struct_1(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true), vec4<f32>(1000f, 749f, 538f, -469f), true, -1i), vec2<f32>(-1724f, 585f)), Struct_2(Struct_1(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false), vec4<f32>(-899f, 1000f, -388f, 576f), false, 37626i), vec2<f32>(1240f, -962f)));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec2<bool> {
    global0 = true;
    global0 = _wgslsmith_div_f32(-1221f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(696f)))) > 709f;
    global0 = true;
    return select(vec2<bool>(any(vec4<bool>(true, true, true, true)), true), vec2<bool>(false, all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false), true), u_input.c.x < u_input.e.x))), !(u_input.a.x >= ~_wgslsmith_mult_u32(u_input.b, u_input.e.x)));
}

fn func_2() -> i32 {
    let var_0 = !(!select(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)), select(func_3(), vec2<bool>(true, true), true), true));
    global0 = false || ((~(~u_input.a.x) == ~(~64651u)) & true);
    let var_1 = Struct_5(Struct_1(vec4<bool>(u_input.e.x > 33649u, var_0.x, var_0.x, var_0.x), vec4<bool>(!(var_0.x || var_0.x), u_input.b <= ~1u, all(vec4<bool>(var_0.x, true, true, var_0.x)) & true, true), vec4<f32>(1f, _wgslsmith_f_op_f32(f32(-1f) * -144f), -607f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(140f * 920f))), !(-4675i >= -u_input.d), ~_wgslsmith_clamp_i32(u_input.d, u_input.d, 0i) | u_input.d));
    let var_2 = var_1.a.c.x < var_1.a.c.x;
    var var_3 = Struct_5(Struct_1(!(!var_1.a.b), !select(select(vec4<bool>(false, true, true, true), var_1.a.a, var_0.x), !var_1.a.b, var_1.a.a), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(268f + var_1.a.c.x) - _wgslsmith_f_op_f32(trunc(var_1.a.c.x))), _wgslsmith_f_op_f32(-var_1.a.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_1.a.c.x))), _wgslsmith_f_op_f32(1412f - _wgslsmith_f_op_f32(-var_1.a.c.x))), ~_wgslsmith_mult_u32(1u, u_input.c.x) <= 4294967295u, ~28506i));
    return -firstTrailingBit(-29654i);
}

fn func_1(arg_0: f32) -> Struct_1 {
    var var_0 = u_input.d;
    global1 = array<Struct_2, 15>();
    global1 = array<Struct_2, 15>();
    global1 = array<Struct_2, 15>();
    var var_1 = Struct_4(_wgslsmith_dot_vec4_i32(vec4<i32>(~u_input.d, func_2(), u_input.d, -5498i), ~abs(~vec4<i32>(-1i, 1i, 1510i, 26245i))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-458f, 222f)))) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_div_f32(1064f, -2027f), -1000f), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(594f, arg_0) * vec2<f32>(852f, -894f)))), select(vec2<bool>(false, true), vec2<bool>(false, true), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false)))))), _wgslsmith_f_op_f32(select(arg_0, _wgslsmith_f_op_f32(arg_0 - arg_0), ~39903u == u_input.c.x)), Struct_3(global1[_wgslsmith_index_u32(firstLeadingBit(u_input.c.x), 15u)]), u_input.c);
    return var_1.d.a.a;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec4<u32>) -> vec2<f32> {
    let var_0 = arg_1.c.x;
    var var_1 = Struct_2(func_1(-418f), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1148f, _wgslsmith_div_f32(200f, -292f)) - _wgslsmith_f_op_f32(arg_1.c.x * _wgslsmith_f_op_f32(-arg_1.c.x))), _wgslsmith_f_op_f32(f32(-1f) * -376f)));
    global1 = array<Struct_2, 15>();
    global0 = var_1.a.a.x;
    global1 = array<Struct_2, 15>();
    return vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-337f)))), 390f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec4<i32>(~u_input.d, -11723i, -1i, -(~u_input.d)), vec4<i32>(-2147483647i, 1i, u_input.d, u_input.d), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, any(vec4<bool>(true, true, false, true))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true)))) >> ((u_input.e << (u_input.e % vec4<u32>(32u))) % vec4<u32>(32u));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(486f - 1f), -1565f, 861f);
    let var_2 = false || select(true, any(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<bool>(true, true))), !(false || select(true, false, false)));
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.zy + _wgslsmith_f_op_vec2_f32(func_4(Struct_2(func_1(-465f), _wgslsmith_div_vec2_f32(vec2<f32>(var_1.x, var_1.x), vec2<f32>(var_1.x, -768f))), Struct_1(vec4<bool>(false, false, var_2, true), vec4<bool>(var_2, true, true, true), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x) - vec4<f32>(var_1.x, -1733f, var_1.x, 1318f)), var_2 != var_2, abs(1i)), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, 0u, 88228u, 43774u), u_input.e)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_1.yx, _wgslsmith_f_op_vec2_f32(abs(var_1.yy)))));
    var var_4 = Struct_5(func_1(var_3.x));
    var var_5 = Struct_4(reverseBits(var_0.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_4(global1[_wgslsmith_index_u32(4294967295u, 15u)], var_4.a, u_input.e)).x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_1.x)))) + var_3), var_4.a.c.x, Struct_3(Struct_2(Struct_1(vec4<bool>(false, true, var_2, false), func_1(var_4.a.c.x).b, _wgslsmith_f_op_vec4_f32(-var_4.a.c), !var_2, _wgslsmith_dot_vec2_i32(vec2<i32>(15759i, u_input.d), vec2<i32>(7540i, 1i))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.yy)))), firstTrailingBit(u_input.c));
    let x = u_input.a;
    s_output = StorageBuffer(var_5.d.a.a.c, (vec4<i32>(-1i) * -countOneBits(vec4<i32>(5038i, 18479i, -2147483647i, var_5.a))) << (~(~(~u_input.e)) % vec4<u32>(32u)), u_input.e, 81589u);
}

