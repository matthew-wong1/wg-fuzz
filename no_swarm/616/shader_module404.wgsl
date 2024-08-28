struct Struct_1 {
    a: f32,
    b: vec4<i32>,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: vec3<bool>,
    d: vec2<bool>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec3<f32>,
    c: Struct_2,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_1,
}

struct Struct_5 {
    a: u32,
    b: vec4<u32>,
    c: vec2<u32>,
    d: u32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 10>;

var<private> global1: array<i32, 29>;

var<private> global2: u32 = 9757u;

var<private> global3: array<vec2<u32>, 10>;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_3, arg_2: vec2<bool>, arg_3: f32) -> f32 {
    var var_0 = arg_1.c.c;
    let var_1 = Struct_3(_wgslsmith_div_vec4_u32(~(~vec4<u32>(21035u, 9074u, arg_1.a.x, arg_1.a.x)), arg_1.a >> (reverseBits(vec4<u32>(u_input.d, u_input.d, arg_1.a.x, 1u)) % vec4<u32>(32u))), vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3 - arg_3) - _wgslsmith_f_op_f32(-arg_1.c.b)), arg_3)), _wgslsmith_f_op_f32(f32(-1f) * -865f), arg_3), arg_1.c);
    let var_2 = ~(~(~countOneBits(vec4<u32>(var_1.a.x, 28429u, 1u, 10291u))));
    global2 = select(abs(~28532u), max(23522u | abs(var_1.a.x), _wgslsmith_dot_vec4_u32(~select(vec4<u32>(var_1.a.x, 22719u, 50708u, var_1.a.x), vec4<u32>(arg_1.a.x, 4294967295u, 42849u, 14385u), false), var_1.a | ~arg_1.a)), 19213i == u_input.a.x);
    var var_3 = var_1.c;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_1.b.x - 462f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.c.b) - 795f));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: bool, arg_3: Struct_4) -> vec4<i32> {
    global1 = array<i32, 29>();
    global2 = abs(_wgslsmith_sub_u32(4294967295u, u_input.d));
    global2 = firstLeadingBit(abs(abs(4294967295u)));
    global1 = array<i32, 29>();
    let var_0 = _wgslsmith_f_op_f32(round(1000f));
    return arg_0.b;
}

fn func_2(arg_0: Struct_3) -> Struct_2 {
    global2 = _wgslsmith_dot_vec3_u32(abs(vec3<u32>(arg_0.a.x, 50545u, 2369u)), global0[_wgslsmith_index_u32(~u_input.d, 10u)]);
    let var_0 = Struct_4(arg_0.c.d, Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1020f, arg_0.c.b) + _wgslsmith_f_op_f32(arg_0.c.a + arg_0.c.a)))), func_4(Struct_1(_wgslsmith_f_op_f32(trunc(arg_0.b.x)), -vec4<i32>(-2147483647i, -1i, global1[_wgslsmith_index_u32(arg_0.a.x, 29u)], u_input.b)), Struct_2(_wgslsmith_f_op_f32(min(-1000f, -362f)), _wgslsmith_f_op_f32(func_3(vec3<i32>(global1[_wgslsmith_index_u32(4294967295u, 29u)], 1i, 72492i), arg_0, vec2<bool>(arg_0.c.c.x, arg_0.c.d.x), 582f)), vec3<bool>(true, true, true), !arg_0.c.c.zx), all(select(vec4<bool>(false, false, true, arg_0.c.c.x), vec4<bool>(true, true, arg_0.c.c.x, false), false)), Struct_4(arg_0.c.d, Struct_1(arg_0.c.a, vec4<i32>(global1[_wgslsmith_index_u32(u_input.d, 29u)], u_input.c, global1[_wgslsmith_index_u32(u_input.d, 29u)], global1[_wgslsmith_index_u32(1u, 29u)]))))));
    var var_1 = Struct_1(1286f, vec4<i32>(-12234i, -2147483647i, -abs(~u_input.c), min(-var_0.b.b.x | _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.b.b.x, var_0.b.b.x, var_0.b.b.x), vec3<i32>(global1[_wgslsmith_index_u32(4294967295u, 29u)], var_0.b.b.x, u_input.a.x)), reverseBits(_wgslsmith_div_i32(2147483647i, var_0.b.b.x)))));
    return arg_0.c;
}

fn func_5(arg_0: Struct_2, arg_1: f32, arg_2: bool) -> bool {
    global1 = array<i32, 29>();
    let var_0 = u_input.d;
    let var_1 = arg_0.b;
    global1 = array<i32, 29>();
    global1 = array<i32, 29>();
    return arg_0.c.x;
}

fn func_6(arg_0: bool, arg_1: vec4<i32>, arg_2: vec2<u32>, arg_3: vec2<bool>) -> Struct_2 {
    let var_0 = arg_3.x | select(true, func_5(func_2(Struct_3(vec4<u32>(1u, 35248u, u_input.d, 0u), vec3<f32>(-719f, 1124f, -196f), Struct_2(-1319f, 1447f, vec3<bool>(arg_0, true, arg_0), vec2<bool>(true, false)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-481f)) - -821f), arg_0 && true), true);
    var var_1 = Struct_5(abs(abs(_wgslsmith_dot_vec3_u32(global0[_wgslsmith_index_u32(2002u, 10u)], global0[_wgslsmith_index_u32(arg_2.x, 10u)]) ^ 10174u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(~firstTrailingBit(arg_2.x), 1u, ~44753u, 1u), _wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(arg_2.x, 0u, 4294967295u, arg_2.x), ~vec4<u32>(0u, u_input.d, 22576u, u_input.d)), ~select(vec4<u32>(u_input.d, u_input.d, u_input.d, 4294967295u), vec4<u32>(u_input.d, 71551u, u_input.d, arg_2.x), vec4<bool>(var_0, false, var_0, arg_3.x))), reverseBits(select(vec4<u32>(4294967295u, u_input.d, arg_2.x, u_input.d), vec4<u32>(u_input.d, arg_2.x, 4294967295u, 97057u), var_0) >> (reverseBits(vec4<u32>(u_input.d, 0u, 4294967295u, arg_2.x)) % vec4<u32>(32u)))), ~vec2<u32>(max(arg_2.x | u_input.d, abs(1u)), ~_wgslsmith_mult_u32(0u, u_input.d)), _wgslsmith_sub_u32(44698u, u_input.d) >> (arg_2.x % 32u), Struct_1(-555f, select(arg_1, -arg_1 >> (~vec4<u32>(arg_2.x, 4294967295u, arg_2.x, 49175u) % vec4<u32>(32u)), vec4<bool>(all(vec3<bool>(false, false, true)), any(vec2<bool>(true, var_0)), true, all(arg_3)))));
    var var_2 = firstTrailingBit(max(max(vec3<u32>(1u, 27501u, ~arg_2.x), _wgslsmith_div_vec3_u32(firstTrailingBit(vec3<u32>(32927u, arg_2.x, var_1.b.x)), vec3<u32>(2836u, arg_2.x, arg_2.x))), reverseBits(var_1.b.xxy & var_1.b.zwx) | select(firstLeadingBit(var_1.b.zyx), abs(vec3<u32>(60240u, 0u, arg_2.x)), select(vec3<bool>(var_0, false, var_0), vec3<bool>(true, false, arg_0), true))));
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1113f, var_1.e.a)))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.e.a, -1999f)))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(-2403f, 707f), vec2<f32>(931f, 499f)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_1.e.a, -464f))), arg_3.x)))) - vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(-136f, var_1.e.a), _wgslsmith_f_op_f32(f32(-1f) * -290f)) * 348f), _wgslsmith_div_f32(135f, var_1.e.a)));
    var var_4 = 14123u;
    return func_2(Struct_3(countOneBits(var_1.b), vec3<f32>(-1948f, _wgslsmith_f_op_f32(-var_3.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1339f * var_1.e.a)))), Struct_2(509f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(121f * -2071f) + _wgslsmith_f_op_f32(sign(var_1.e.a))), vec3<bool>(var_0 & var_0, all(vec4<bool>(true, true, var_0, false)), !var_0), arg_3)));
}

fn func_1() -> StorageBuffer {
    global3 = array<vec2<u32>, 10>();
    var var_0 = func_6(any(vec4<bool>(!select(false, true, false), true, all(vec3<bool>(false, false, false)), 1u < u_input.d)), firstLeadingBit(abs(~(vec4<i32>(global1[_wgslsmith_index_u32(24550u, 29u)], 2262i, global1[_wgslsmith_index_u32(1u, 29u)], global1[_wgslsmith_index_u32(u_input.d, 29u)]) >> (vec4<u32>(u_input.d, u_input.d, u_input.d, u_input.d) % vec4<u32>(32u))))), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.d, ~(~u_input.d)), _wgslsmith_mod_vec2_u32(vec2<u32>(~0u, 133986u), global3[_wgslsmith_index_u32(~u_input.d, 10u)] << (~vec2<u32>(0u, u_input.d) % vec2<u32>(32u)))), select(vec2<bool>(abs(u_input.d) != 16594u, all(vec2<bool>(false, false))), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), true), func_5(func_2(Struct_3(vec4<u32>(u_input.d, 82325u, 4294967295u, 3775u), vec3<f32>(827f, 1285f, 654f), Struct_2(-1195f, 845f, vec3<bool>(false, false, false), vec2<bool>(true, false)))), _wgslsmith_f_op_f32(floor(338f)), true)), vec2<bool>(false, true)));
    let var_1 = global3[_wgslsmith_index_u32(~u_input.d, 10u)];
    let var_2 = vec2<u32>(0u, firstTrailingBit(94737u));
    var_0 = func_6(false, abs(firstLeadingBit(countOneBits(vec4<i32>(1i, global1[_wgslsmith_index_u32(0u, 29u)], -2147483647i, u_input.c)))) & _wgslsmith_mult_vec4_i32(func_4(Struct_1(var_0.a, vec4<i32>(7029i, -2147483647i, u_input.c, 2147483647i)), Struct_2(var_0.b, var_0.b, vec3<bool>(var_0.d.x, true, var_0.d.x), vec2<bool>(var_0.c.x, false)), var_0.d.x, Struct_4(var_0.d, Struct_1(var_0.b, vec4<i32>(global1[_wgslsmith_index_u32(147829u, 29u)], 23480i, 21391i, -34568i)))) & -vec4<i32>(2147483647i, u_input.b, u_input.c, -9887i), ~(vec4<i32>(-1i, global1[_wgslsmith_index_u32(13204u, 29u)], global1[_wgslsmith_index_u32(var_2.x, 29u)], 17772i) & vec4<i32>(25731i, -26445i, 1i, 2147483647i))), var_2, select(vec2<bool>(true, true), !select(vec2<bool>(var_0.d.x, true), vec2<bool>(true, false), var_0.d.x), var_0.d));
    return StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(var_0.a)), -850f)) + _wgslsmith_div_vec2_f32(vec2<f32>(func_2(Struct_3(vec4<u32>(0u, 50789u, var_2.x, 1u), vec3<f32>(-884f, -1029f, var_0.b), Struct_2(564f, var_0.a, vec3<bool>(false, false, true), var_0.d))).b, var_0.b), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1220f, 1000f) + vec2<f32>(var_0.a, var_0.b)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = u_input.d;
    let var_0 = 0u < ~(~_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(global3[_wgslsmith_index_u32(u_input.d, 10u)], global3[_wgslsmith_index_u32(1u, 10u)]), global3[_wgslsmith_index_u32(0u, 10u)]));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-388f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-372f)) * _wgslsmith_f_op_f32(f32(-1f) * -665f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(-603f, -817f))))))));
    global0 = array<vec3<u32>, 10>();
    let var_2 = u_input.d;
    let x = u_input.a;
    s_output = func_1();
}

