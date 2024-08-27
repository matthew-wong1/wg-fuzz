struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: bool,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: bool,
    d: vec3<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<f32>,
}

struct Struct_5 {
    a: vec4<i32>,
    b: Struct_3,
    c: bool,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec4<u32>,
    d: vec3<f32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5 = Struct_5(vec4<i32>(-24942i, -1i, 31881i, 10924i), Struct_3(false, Struct_1(vec4<i32>(1i, 2147483647i, 24610i, i32(-2147483648))), true, vec3<u32>(58762u, 16156u, 4294967295u)), false, vec2<f32>(581f, -776f));

var<private> global1: array<Struct_2, 21> = array<Struct_2, 21>(Struct_2(vec3<u32>(12503u, 4294967295u, 0u), Struct_1(vec4<i32>(15164i, 1378i, -2231i, 16204i)), false, Struct_1(vec4<i32>(0i, 1i, -1i, -1i)), Struct_1(vec4<i32>(23435i, -1i, 67720i, 1i))), Struct_2(vec3<u32>(15582u, 0u, 1u), Struct_1(vec4<i32>(25008i, 0i, 2147483647i, 2147483647i)), false, Struct_1(vec4<i32>(3165i, 51022i, 17541i, 1i)), Struct_1(vec4<i32>(-29515i, 11320i, 11376i, 2147483647i))), Struct_2(vec3<u32>(16359u, 53143u, 14886u), Struct_1(vec4<i32>(-7653i, 0i, 1i, 14907i)), true, Struct_1(vec4<i32>(i32(-2147483648), 0i, 37165i, 41695i)), Struct_1(vec4<i32>(i32(-2147483648), -12305i, 23609i, 40232i))), Struct_2(vec3<u32>(4941u, 0u, 44u), Struct_1(vec4<i32>(1i, 29361i, -1i, -2255i)), true, Struct_1(vec4<i32>(-34182i, -35885i, -18440i, 48616i)), Struct_1(vec4<i32>(-28136i, 19612i, 18271i, -1i))), Struct_2(vec3<u32>(23814u, 22507u, 4294967295u), Struct_1(vec4<i32>(21133i, -7581i, i32(-2147483648), 2147483647i)), false, Struct_1(vec4<i32>(21922i, 2147483647i, 33808i, 0i)), Struct_1(vec4<i32>(i32(-2147483648), -21228i, 1i, -1714i))), Struct_2(vec3<u32>(20989u, 1u, 0u), Struct_1(vec4<i32>(52725i, -26771i, -56352i, 2147483647i)), false, Struct_1(vec4<i32>(-6768i, i32(-2147483648), 0i, 17949i)), Struct_1(vec4<i32>(i32(-2147483648), -12977i, 76415i, -1i))), Struct_2(vec3<u32>(71291u, 0u, 39145u), Struct_1(vec4<i32>(22763i, i32(-2147483648), -27171i, i32(-2147483648))), true, Struct_1(vec4<i32>(-4834i, 2147483647i, 2147483647i, -1i)), Struct_1(vec4<i32>(21847i, i32(-2147483648), 1i, -44187i))), Struct_2(vec3<u32>(0u, 18380u, 30531u), Struct_1(vec4<i32>(i32(-2147483648), -26749i, 0i, -1i)), false, Struct_1(vec4<i32>(i32(-2147483648), 0i, 0i, i32(-2147483648))), Struct_1(vec4<i32>(0i, i32(-2147483648), i32(-2147483648), -40704i))), Struct_2(vec3<u32>(1u, 18590u, 1u), Struct_1(vec4<i32>(34495i, -1i, 1i, -1i)), false, Struct_1(vec4<i32>(-22334i, 2147483647i, 0i, 1i)), Struct_1(vec4<i32>(1i, -4177i, -14037i, -13416i))), Struct_2(vec3<u32>(4294967295u, 1u, 46264u), Struct_1(vec4<i32>(0i, 42959i, 5648i, 43045i)), true, Struct_1(vec4<i32>(-17612i, -6592i, -1i, 2147483647i)), Struct_1(vec4<i32>(1i, 0i, 10967i, -29305i))), Struct_2(vec3<u32>(0u, 19090u, 4294967295u), Struct_1(vec4<i32>(20387i, -5822i, 1i, i32(-2147483648))), false, Struct_1(vec4<i32>(i32(-2147483648), -1i, -2130i, 53697i)), Struct_1(vec4<i32>(2147483647i, 0i, 48821i, 0i))), Struct_2(vec3<u32>(19705u, 114962u, 7917u), Struct_1(vec4<i32>(31541i, 1i, 1i, 19340i)), true, Struct_1(vec4<i32>(306i, i32(-2147483648), -12764i, 0i)), Struct_1(vec4<i32>(-10004i, -1i, -17155i, 14355i))), Struct_2(vec3<u32>(0u, 255u, 1u), Struct_1(vec4<i32>(1i, i32(-2147483648), 0i, i32(-2147483648))), true, Struct_1(vec4<i32>(-36265i, -8381i, -1i, 77201i)), Struct_1(vec4<i32>(-43582i, 19697i, 2147483647i, 46772i))), Struct_2(vec3<u32>(0u, 0u, 0u), Struct_1(vec4<i32>(1i, -44664i, 30884i, -1i)), true, Struct_1(vec4<i32>(-9556i, 1i, 2147483647i, 1i)), Struct_1(vec4<i32>(1i, 1i, 1i, 51540i))), Struct_2(vec3<u32>(29023u, 4294967295u, 43328u), Struct_1(vec4<i32>(2147483647i, -1i, 3086i, -1917i)), true, Struct_1(vec4<i32>(i32(-2147483648), -9985i, i32(-2147483648), 0i)), Struct_1(vec4<i32>(-12898i, 1i, -79171i, -25110i))), Struct_2(vec3<u32>(9170u, 27854u, 0u), Struct_1(vec4<i32>(0i, 12625i, 1i, i32(-2147483648))), true, Struct_1(vec4<i32>(9435i, -28817i, i32(-2147483648), -1509i)), Struct_1(vec4<i32>(-8756i, 2147483647i, -1i, 33710i))), Struct_2(vec3<u32>(8496u, 4294967295u, 1u), Struct_1(vec4<i32>(0i, 30824i, -1i, 2147483647i)), false, Struct_1(vec4<i32>(36640i, -31790i, -34716i, -15900i)), Struct_1(vec4<i32>(2147483647i, i32(-2147483648), -19948i, 1i))), Struct_2(vec3<u32>(0u, 18652u, 1u), Struct_1(vec4<i32>(33374i, -42081i, 0i, i32(-2147483648))), false, Struct_1(vec4<i32>(2147483647i, 30184i, -30585i, 1i)), Struct_1(vec4<i32>(14125i, 58480i, -75455i, -77982i))), Struct_2(vec3<u32>(406u, 4294967295u, 1u), Struct_1(vec4<i32>(22335i, 0i, -1i, -15005i)), true, Struct_1(vec4<i32>(i32(-2147483648), i32(-2147483648), 0i, i32(-2147483648))), Struct_1(vec4<i32>(-1i, 0i, 2147483647i, 0i))), Struct_2(vec3<u32>(33992u, 4294967295u, 13381u), Struct_1(vec4<i32>(i32(-2147483648), -7607i, -1i, 0i)), true, Struct_1(vec4<i32>(43659i, i32(-2147483648), 23881i, -1654i)), Struct_1(vec4<i32>(44714i, 0i, 0i, 89834i))), Struct_2(vec3<u32>(14383u, 0u, 4294967295u), Struct_1(vec4<i32>(-1i, 2147483647i, -41487i, 12601i)), false, Struct_1(vec4<i32>(0i, -7268i, -11916i, -1i)), Struct_1(vec4<i32>(24362i, -32487i, -40963i, -31526i))));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: Struct_3) -> Struct_5 {
    var var_0 = ~u_input.a.x;
    return Struct_5(abs(firstTrailingBit(-arg_0.b.a)), Struct_3(false, arg_0.b, all(select(!vec3<bool>(false, true, arg_0.a), vec3<bool>(true, true, true), vec3<bool>(true, true, global0.b.c))), u_input.c), true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(global0.d)) + global0.d))));
}

fn func_3() -> Struct_3 {
    return global0.b;
}

fn func_1(arg_0: Struct_4) -> Struct_1 {
    var var_0 = func_2(global0.b);
    global1 = array<Struct_2, 21>();
    let var_1 = func_2(func_3());
    let var_2 = ~u_input.b;
    var var_3 = Struct_1(var_0.b.b.a);
    return var_0.b.b;
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_1) -> Struct_5 {
    return func_2(func_2(Struct_3(func_2(global0.b).c & (arg_0.x & true), Struct_1(max(vec4<i32>(2147483647i, 2147483647i, 41656i, arg_1.a.x), arg_1.a)), !(global0.b.c != global0.c), global0.b.d)).b);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 21>();
    let var_0 = func_4(vec3<bool>(!any(!vec3<bool>(global0.b.c, global0.c, global0.b.a)), false, any(vec2<bool>(global0.c, any(vec2<bool>(false, false))))), func_1(Struct_4(Struct_1(global0.a), global0.d)));
    global0 = func_4(select(select(select(vec3<bool>(true, true, false), vec3<bool>(true, var_0.c, global0.b.a), vec3<bool>(global0.c, var_0.b.c, false)), vec3<bool>(any(vec4<bool>(global0.c, true, false, true)), false, false), select(!vec3<bool>(var_0.b.a, global0.c, var_0.b.c), !vec3<bool>(true, true, global0.b.c), select(vec3<bool>(var_0.b.c, false, true), vec3<bool>(var_0.b.a, global0.b.c, true), false))), !vec3<bool>(false, false, all(vec4<bool>(true, global0.c, var_0.c, var_0.b.a))), true), global0.b.b);
    let var_1 = Struct_1(select(_wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(reverseBits(var_0.b.b.a), ~vec4<i32>(u_input.a.x, -2147483647i, 53208i, var_0.b.b.a.x), _wgslsmith_div_vec4_i32(global0.a, vec4<i32>(0i, global0.b.b.a.x, 35937i, global0.b.b.a.x))), select(vec4<i32>(3610i, 48809i, 0i, var_0.b.b.a.x) ^ global0.b.b.a, _wgslsmith_div_vec4_i32(global0.a, global0.b.b.a), !global0.b.a)), global0.b.b.a, vec4<bool>(!(!global0.b.a), false, 1u <= global0.b.d.x, var_0.c)));
    global0 = var_0;
    var var_2 = vec2<f32>(934f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(var_0.d.x)), _wgslsmith_f_op_f32(var_0.d.x + -859f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1000f, -846f, var_2.x, global0.d.x))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.d.x, 2830f, var_0.d.x, -1429f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(2701f, -1000f, var_2.x, global0.d.x), vec4<f32>(global0.d.x, 1140f, var_0.d.x, 2076f))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1391f, var_0.d.x, var_2.x, -582f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_2(Struct_3(false, Struct_1(var_1.a), global0.b.c, u_input.c)).d.x * _wgslsmith_f_op_f32(var_0.d.x + -974f))))), (select(vec4<u32>(35375u, global0.b.d.x, var_0.b.d.x, u_input.c.x), vec4<u32>(var_0.b.d.x, global0.b.d.x, var_0.b.d.x, global0.b.d.x), !var_0.b.c) ^ _wgslsmith_add_vec4_u32(vec4<u32>(u_input.c.x, 1677u, 1u, global0.b.d.x) >> (vec4<u32>(4294967295u, 43226u, global0.b.d.x, var_0.b.d.x) % vec4<u32>(32u)), ~vec4<u32>(38150u, global0.b.d.x, var_0.b.d.x, global0.b.d.x))) << (vec4<u32>(u_input.c.x, 0u, func_2(var_0.b).b.d.x, u_input.b << (~36449u % 32u)) % vec4<u32>(32u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_0.d.x * -448f), var_2.x, _wgslsmith_f_op_f32(max(global0.d.x, -2008f))) + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_2.x, -200f, global0.d.x))), vec3<f32>(-1650f, -1285f, var_0.d.x))))), abs(vec4<i32>(~func_2(Struct_3(var_0.b.c, Struct_1(vec4<i32>(var_0.a.x, var_1.a.x, -12463i, var_1.a.x)), global0.c, vec3<u32>(11585u, global0.b.d.x, 4294967295u))).a.x, var_0.a.x, func_2(func_2(global0.b).b).a.x, -43664i >> (global0.b.d.x % 32u))));
}

