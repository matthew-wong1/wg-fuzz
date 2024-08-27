struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: i32,
    d: bool,
    e: vec3<i32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: u32,
    d: f32,
    e: bool,
}

struct Struct_5 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 21> = array<Struct_3, 21>(Struct_3(Struct_2(vec3<bool>(false, false, false), 1u), Struct_1(vec2<f32>(-517f, 1707f), 803f, 0i, false, vec3<i32>(-39838i, 2147483647i, 1i))), Struct_3(Struct_2(vec3<bool>(false, true, false), 15753u), Struct_1(vec2<f32>(357f, 1082f), 1000f, 2147483647i, true, vec3<i32>(69254i, 0i, -2885i))), Struct_3(Struct_2(vec3<bool>(true, false, false), 11136u), Struct_1(vec2<f32>(-1978f, 1505f), -1000f, -1i, false, vec3<i32>(25887i, 95i, -1i))), Struct_3(Struct_2(vec3<bool>(false, true, true), 0u), Struct_1(vec2<f32>(2073f, 1000f), -1177f, -55704i, false, vec3<i32>(1i, 0i, 0i))), Struct_3(Struct_2(vec3<bool>(true, false, false), 35940u), Struct_1(vec2<f32>(-431f, -918f), -202f, 10205i, false, vec3<i32>(i32(-2147483648), -1i, -31639i))), Struct_3(Struct_2(vec3<bool>(false, false, false), 1u), Struct_1(vec2<f32>(180f, 1739f), 395f, 19547i, false, vec3<i32>(i32(-2147483648), 0i, -1i))), Struct_3(Struct_2(vec3<bool>(false, true, true), 4294967295u), Struct_1(vec2<f32>(947f, -373f), -1056f, 1i, false, vec3<i32>(95397i, 1i, 16390i))), Struct_3(Struct_2(vec3<bool>(false, true, true), 87220u), Struct_1(vec2<f32>(775f, -443f), 1147f, 29163i, true, vec3<i32>(-7491i, -45713i, 10393i))), Struct_3(Struct_2(vec3<bool>(true, true, true), 91079u), Struct_1(vec2<f32>(254f, -760f), 912f, -26326i, true, vec3<i32>(44607i, -1i, 26411i))), Struct_3(Struct_2(vec3<bool>(true, false, false), 3153u), Struct_1(vec2<f32>(1390f, -1000f), 164f, -1i, false, vec3<i32>(-45384i, 48044i, 2147483647i))), Struct_3(Struct_2(vec3<bool>(false, false, false), 9722u), Struct_1(vec2<f32>(-1055f, 1880f), 135f, -47402i, false, vec3<i32>(2147483647i, 6005i, -3788i))), Struct_3(Struct_2(vec3<bool>(false, true, false), 1u), Struct_1(vec2<f32>(761f, -1433f), 680f, 0i, true, vec3<i32>(9244i, 0i, 1i))), Struct_3(Struct_2(vec3<bool>(false, true, false), 1u), Struct_1(vec2<f32>(502f, 369f), -1512f, 7364i, true, vec3<i32>(4543i, -20632i, -13484i))), Struct_3(Struct_2(vec3<bool>(true, false, true), 14595u), Struct_1(vec2<f32>(-889f, -329f), 311f, 7061i, true, vec3<i32>(2147483647i, -32782i, 0i))), Struct_3(Struct_2(vec3<bool>(false, false, true), 36256u), Struct_1(vec2<f32>(-305f, 1390f), -260f, 64171i, true, vec3<i32>(-1i, -20482i, 1i))), Struct_3(Struct_2(vec3<bool>(false, false, true), 1u), Struct_1(vec2<f32>(2105f, 532f), 259f, -34747i, true, vec3<i32>(-19483i, -48127i, -3413i))), Struct_3(Struct_2(vec3<bool>(false, true, false), 20264u), Struct_1(vec2<f32>(711f, 358f), -1697f, 36176i, true, vec3<i32>(-13178i, 1i, 1i))), Struct_3(Struct_2(vec3<bool>(true, true, true), 43076u), Struct_1(vec2<f32>(413f, 1324f), -456f, -5027i, false, vec3<i32>(-1i, -1i, 10747i))), Struct_3(Struct_2(vec3<bool>(true, true, false), 66213u), Struct_1(vec2<f32>(823f, -261f), -1245f, 25563i, true, vec3<i32>(-1135i, 1i, 24129i))), Struct_3(Struct_2(vec3<bool>(false, true, true), 4294967295u), Struct_1(vec2<f32>(-682f, 1124f), -696f, i32(-2147483648), false, vec3<i32>(-15677i, 85150i, -4627i))), Struct_3(Struct_2(vec3<bool>(false, true, true), 0u), Struct_1(vec2<f32>(-1000f, 1076f), -583f, 27158i, false, vec3<i32>(-61347i, 1i, -1i))));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> i32 {
    return _wgslsmith_dot_vec3_i32(u_input.d, vec3<i32>(u_input.b, 4061i, ~u_input.e));
}

fn func_2(arg_0: vec4<i32>, arg_1: vec3<bool>) -> f32 {
    global0 = array<Struct_3, 21>();
    let var_0 = _wgslsmith_add_vec4_u32(vec4<u32>(countOneBits(u_input.a.x), ~50225u, u_input.a.x, 79728u) ^ vec4<u32>(u_input.a.x, reverseBits(81293u), u_input.a.x, u_input.a.x & abs(u_input.a.x)), firstTrailingBit(~vec4<u32>(u_input.a.x, 43928u, u_input.a.x ^ u_input.a.x, _wgslsmith_div_u32(36731u, u_input.a.x))));
    let var_1 = global0[_wgslsmith_index_u32(28138u, 21u)];
    var var_2 = arg_0.x != func_3();
    let var_3 = vec3<bool>(arg_1.x, var_1.a.b == 44357u, !(!(!(arg_1.x || arg_1.x))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.b.b - _wgslsmith_f_op_f32(-var_1.b.b)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.b))) - 395f);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_4) -> u32 {
    let var_0 = ~u_input.a.yxy;
    let var_1 = arg_1.b.a.x;
    let var_2 = Struct_4(arg_1.a, arg_1.a.b, _wgslsmith_div_u32(_wgslsmith_clamp_u32(62999u, _wgslsmith_sub_u32(select(var_0.x, 12921u, arg_1.e), 4294967295u), 67260u), firstTrailingBit(_wgslsmith_add_u32(~38839u, firstTrailingBit(u_input.a.x)))), _wgslsmith_f_op_f32(-var_1), true);
    global0 = array<Struct_3, 21>();
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_1, 926f))) * _wgslsmith_div_vec2_f32(vec2<f32>(var_1, var_1), vec2<f32>(arg_1.b.a.x, var_1)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1.b.a)))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-600f, var_1) + arg_1.b.a));
    return abs(1u) << (var_2.c % 32u);
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_5, arg_2: u32) -> Struct_2 {
    let var_0 = ~vec4<u32>(func_4(Struct_2(select(arg_0.xzx, vec3<bool>(arg_0.x, true, arg_0.x), true), 4756u), Struct_4(global0[_wgslsmith_index_u32(u_input.a.x, 21u)], Struct_1(vec2<f32>(arg_1.a.x, arg_1.a.x), arg_1.a.x, u_input.c, false, u_input.d), _wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, u_input.a.x), _wgslsmith_f_op_f32(func_2(vec4<i32>(-3436i, u_input.e, 0i, u_input.d.x), arg_0.yyy)), !arg_0.x)), _wgslsmith_mult_u32(_wgslsmith_add_u32(_wgslsmith_sub_u32(u_input.a.x, arg_2), 0u), firstTrailingBit(countOneBits(0u))), ~arg_2, u_input.a.x);
    let var_1 = Struct_5(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(arg_1.a.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1855f - arg_1.a.x) - 222f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -770f), -481f)))));
    let var_2 = -73616i;
    let var_3 = _wgslsmith_mult_vec2_u32(vec2<u32>(1u, 1u) ^ vec2<u32>(~4294967295u, 44124u >> (u_input.a.x % 32u)), var_0.wx);
    global0 = array<Struct_3, 21>();
    return Struct_2(select(vec3<bool>(any(select(vec4<bool>(arg_0.x, arg_0.x, false, true), arg_0, vec4<bool>(arg_0.x, arg_0.x, true, arg_0.x))), arg_0.x, arg_0.x), vec3<bool>(false, !(true | arg_0.x), all(select(vec4<bool>(false, true, arg_0.x, true), arg_0, arg_0))), select(vec3<bool>(true || arg_0.x, any(arg_0), any(arg_0.xx)), vec3<bool>(false, true, all(vec2<bool>(arg_0.x, true))), select(!vec3<bool>(arg_0.x, arg_0.x, true), vec3<bool>(arg_0.x, arg_0.x, false), u_input.a.x < 12479u))), var_0.x);
}

fn func_5(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: Struct_2, arg_3: vec4<u32>) -> f32 {
    var var_0 = firstTrailingBit(~vec4<i32>(~select(-13820i, -20991i, arg_1.a.x), abs(u_input.e), _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c, 1i, u_input.e, u_input.b), vec4<i32>(-40046i, u_input.b, -5704i, u_input.d.x)), vec4<i32>(u_input.e, u_input.b, u_input.d.x, u_input.c)), -abs(u_input.d.x)));
    var var_1 = ~(-var_0.x);
    var var_2 = 104f;
    global0 = array<Struct_3, 21>();
    let var_3 = arg_1;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-187f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2039f))) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -720f) + -456f), _wgslsmith_f_op_f32(-2464f * -592f)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 21>();
    let var_0 = vec4<f32>(443f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_5(vec3<bool>(true, true, true), Struct_2(vec3<bool>(false, true, true), 4294967295u), func_1(vec4<bool>(true, true, true, true), Struct_5(vec4<f32>(-1990f, 216f, -1232f, 491f)), u_input.a.x), _wgslsmith_mult_vec4_u32(~u_input.a, _wgslsmith_div_vec4_u32(u_input.a, u_input.a)))), _wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -596f), -3089f))))), _wgslsmith_f_op_f32(-690f * _wgslsmith_f_op_f32(select(1209f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -308f) * _wgslsmith_f_op_f32(min(-1863f, 1508f))), true))), 934f);
    global0 = array<Struct_3, 21>();
    let var_1 = Struct_4(Struct_3(func_1(vec4<bool>(true, true, true, true), Struct_5(_wgslsmith_f_op_vec4_f32(var_0 - var_0)), firstLeadingBit(_wgslsmith_mult_u32(u_input.a.x, u_input.a.x))), Struct_1(var_0.wx, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-118f - var_0.x)), u_input.c ^ -1i, !all(vec3<bool>(true, true, false)), reverseBits(~u_input.d))), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.yz)), _wgslsmith_f_op_f32(min(798f, _wgslsmith_f_op_f32(abs(-1362f)))), _wgslsmith_clamp_i32(-(9553i & u_input.d.x), ~u_input.c, countOneBits(u_input.b)), var_0.x < -838f, u_input.d), ~_wgslsmith_dot_vec3_u32(~u_input.a.yyx, _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, 4779u, 11729u), u_input.a.wzw) & vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.x + var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-829f, -210f)))))), func_1(vec4<bool>(true, true, true, true), Struct_5(var_0), _wgslsmith_add_u32(16029u, u_input.a.x)).a.x || true);
    let var_2 = var_1.a.b;
    let var_3 = vec2<bool>(any(var_1.a.a.a.yx), var_2.d);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(_wgslsmith_sub_u32(~1u, ~_wgslsmith_div_u32(u_input.a.x, var_1.a.a.b)), _wgslsmith_div_u32(1u, ~(~var_1.c))), abs(-2147483647i), vec2<f32>(_wgslsmith_f_op_f32(-var_2.b), _wgslsmith_f_op_f32(-var_2.b)), -25334i);
}

