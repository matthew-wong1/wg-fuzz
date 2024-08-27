struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: Struct_1 = Struct_1(vec4<i32>(-13737i, 1i, -20665i, 14551i), 1072f, false);

var<private> global2: vec2<bool> = vec2<bool>(false, true);

var<private> global3: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(vec4<i32>(24501i, 41539i, -16343i, 0i), -1981f, false), Struct_1(vec4<i32>(1i, 24293i, 14661i, 0i), 607f, false), Struct_1(vec4<i32>(-9930i, -1i, -1040i, -14612i), 707f, true), Struct_1(vec4<i32>(-1i, 1i, -39498i, 2147483647i), 1545f, true), Struct_1(vec4<i32>(10540i, 19121i, 1i, -12147i), 180f, true), Struct_1(vec4<i32>(31616i, 1i, 1i, 0i), -1791f, false), Struct_1(vec4<i32>(-1i, 0i, i32(-2147483648), 4471i), -239f, true), Struct_1(vec4<i32>(0i, 1i, i32(-2147483648), 15218i), 713f, true), Struct_1(vec4<i32>(1i, 12953i, 2147483647i, -87606i), -542f, true), Struct_1(vec4<i32>(37516i, 1i, -35303i, -1i), -1991f, false), Struct_1(vec4<i32>(12478i, -21688i, -1i, i32(-2147483648)), -753f, true), Struct_1(vec4<i32>(1i, -29241i, 1i, 19608i), -1316f, false), Struct_1(vec4<i32>(1i, 0i, -27311i, 1i), 1836f, false), Struct_1(vec4<i32>(-60344i, -16208i, 0i, 37864i), 542f, false), Struct_1(vec4<i32>(i32(-2147483648), 1i, 31169i, 20028i), 101f, false), Struct_1(vec4<i32>(i32(-2147483648), 0i, -38506i, 1i), -922f, false), Struct_1(vec4<i32>(-5867i, -47424i, 2147483647i, 76832i), 1948f, true), Struct_1(vec4<i32>(27669i, -41808i, -26071i, -23563i), -1396f, false), Struct_1(vec4<i32>(-21759i, 46830i, -19660i, -10344i), 821f, false), Struct_1(vec4<i32>(1i, -1i, -1i, 0i), -421f, true), Struct_1(vec4<i32>(-1i, 0i, 15102i, -25036i), 1000f, false), Struct_1(vec4<i32>(-1i, 2147483647i, -1i, -59808i), -912f, false), Struct_1(vec4<i32>(1i, i32(-2147483648), -98592i, 6282i), 1010f, true), Struct_1(vec4<i32>(64931i, -7083i, -18058i, -1i), -721f, true), Struct_1(vec4<i32>(-1i, -23962i, i32(-2147483648), -1i), -281f, false), Struct_1(vec4<i32>(2147483647i, -49759i, 10691i, 18235i), -1396f, false));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_1) -> vec3<u32> {
    var var_0 = Struct_1(vec4<i32>(arg_1.a.x, 1i >> (~abs(arg_0.x) % 32u), -46482i, ~(-36805i)), _wgslsmith_f_op_f32(f32(-1f) * -485f), !any(!vec4<bool>(true, global1.c, false, global2.x)));
    var var_1 = vec4<i32>(~(countOneBits(arg_1.a.x) & _wgslsmith_dot_vec4_i32(max(vec4<i32>(2147483647i, var_0.a.x, arg_1.a.x, 1i), var_0.a), _wgslsmith_div_vec4_i32(vec4<i32>(arg_1.a.x, global1.a.x, var_0.a.x, u_input.a.x), vec4<i32>(u_input.b.x, global1.a.x, global1.a.x, 22085i)))), -(~var_0.a.x), -1i, min(var_0.a.x, select(_wgslsmith_dot_vec2_i32(u_input.a.xx, vec2<i32>(arg_1.a.x, var_0.a.x)), 1i, any(vec4<bool>(var_0.c, global1.c, false, global2.x)) && true)));
    let var_2 = Struct_1(arg_1.a, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1065f * arg_1.b), var_0.b)), true);
    var var_3 = vec2<i32>(_wgslsmith_div_i32(reverseBits(max(-var_0.a.x, var_0.a.x)), (i32(-1i) * -1i) >> ((_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.x, arg_0.x, 4294967295u, 76174u), vec4<u32>(129212u, arg_0.x, 23554u, arg_0.x)) & abs(30862u)) % 32u)), 0i);
    global0 = _wgslsmith_dot_vec2_u32(arg_0, vec2<u32>(~_wgslsmith_mult_u32(countOneBits(1u), arg_0.x), ~arg_0.x));
    return max(vec3<u32>(3621u, arg_0.x, arg_0.x) | vec3<u32>(_wgslsmith_clamp_u32(1u, arg_0.x, arg_0.x) << (1u % 32u), arg_0.x | arg_0.x, countOneBits(arg_0.x & arg_0.x)), vec3<u32>(arg_0.x, select(abs(64171u << (1u % 32u)), firstTrailingBit(~arg_0.x), any(vec3<bool>(false, arg_1.c, true))), arg_0.x));
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: vec3<u32>) -> vec4<f32> {
    global0 = firstTrailingBit(0u);
    global2 = vec2<bool>(select(any(!(!vec3<bool>(true, global1.c, global1.c))), any(vec4<bool>(!global1.c, true, all(vec4<bool>(true, global1.c, arg_1.c, false)), !arg_1.c)), any(vec4<bool>(20880u != arg_0, global1.c, all(vec3<bool>(true, false, true)), global1.c))), global1.c);
    var var_0 = -vec3<i32>(global1.a.x, -1i, -2147483647i) | vec3<i32>(abs(_wgslsmith_div_i32(0i, i32(-1i) * -139i)), u_input.a.x, global1.a.x);
    global1 = global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(8559u, arg_3.x << (min(1u, countOneBits(arg_0) >> (~1u % 32u)) % 32u)), 26u)];
    return vec4<f32>(_wgslsmith_f_op_f32(-global1.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b)), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(global1.b)), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(arg_1.b, arg_1.b)))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(709f - -2062f))) + _wgslsmith_f_op_f32(round(global1.b))), global1.b)));
}

fn func_2(arg_0: Struct_1) -> vec2<u32> {
    global0 = 11676u;
    let var_0 = global2.x;
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1669f, global1.b, global1.b, 636f)) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_0.b, global1.b, arg_0.b, -194f)))) * _wgslsmith_f_op_vec4_f32(func_4(4294967295u, global3[_wgslsmith_index_u32(select(56672u, 44768u, global2.x), 26u)], ~vec4<u32>(4294967295u, 66738u, 4294967295u, 44083u), func_3(vec2<u32>(46639u, 92289u), Struct_1(vec4<i32>(global1.a.x, u_input.b.x, arg_0.a.x, arg_0.a.x), 1625f, true)))))));
    var var_2 = vec3<f32>(1162f, 1000f, -1173f);
    var_2 = vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(var_2.x, 1514f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) - var_2.x), any(vec3<bool>(false, false, all(vec3<bool>(arg_0.c, false, global2.x)))))), _wgslsmith_f_op_f32(round(869f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(-1270f, _wgslsmith_f_op_f32(-arg_0.b))))) - _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_vec4_f32(func_4(21658u, arg_0, vec4<u32>(13424u, 4294967295u, 34752u, 0u), vec3<u32>(4294967295u, 95441u, 4294967295u))).x, _wgslsmith_f_op_f32(ceil(var_2.x)))))));
    return select(max(vec2<u32>(4294967295u, 76379u), ~firstLeadingBit(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(4294967295u, 0u)))), ~(~reverseBits(~vec2<u32>(67784u, 1u))), min(firstTrailingBit(_wgslsmith_mult_u32(46031u, 68543u)), max(_wgslsmith_mult_u32(0u, 4294967295u), ~30040u)) < 1u);
}

fn func_1(arg_0: vec4<i32>, arg_1: vec4<i32>, arg_2: vec4<f32>) -> u32 {
    global3 = array<Struct_1, 26>();
    let var_0 = 96341u;
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(885f)), arg_2.x, arg_2.x));
    var var_2 = countOneBits(countOneBits(~func_2(global3[_wgslsmith_index_u32(~var_0, 26u)])));
    global0 = var_0;
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global3[_wgslsmith_index_u32(func_1(vec4<i32>(1i, u_input.a.x, _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, 12772i, u_input.a.x), vec3<i32>(global1.a.x, u_input.b.x, u_input.a.x)), u_input.a >> (vec3<u32>(4294967295u, 1u, 13626u) % vec3<u32>(32u))), _wgslsmith_div_i32(global1.a.x << (18186u % 32u), global1.a.x)), global1.a, vec4<f32>(_wgslsmith_f_op_f32(-574f + _wgslsmith_f_op_f32(select(-439f, global1.b, global2.x))), global1.b, global1.b, _wgslsmith_f_op_f32(ceil(1550f)))) | ~_wgslsmith_clamp_u32(1u, _wgslsmith_add_u32(_wgslsmith_mult_u32(4294967295u, 0u), min(0u, 0u)), firstLeadingBit(reverseBits(90624u))), 26u)];
    let var_1 = global3[_wgslsmith_index_u32(_wgslsmith_div_u32(firstTrailingBit(_wgslsmith_mod_u32(min(1u, 1u), func_1(var_0.a & vec4<i32>(0i, u_input.b.x, 1i, u_input.a.x), vec4<i32>(var_0.a.x, 1i, -2147483647i, -2147483647i), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1.b, 1639f, global1.b, 466f), vec4<f32>(1000f, global1.b, global1.b, var_0.b), global1.c))))), _wgslsmith_sub_u32(_wgslsmith_mod_u32(func_1(global1.a, var_0.a, vec4<f32>(-509f, -1000f, var_0.b, var_0.b)) >> (47519u % 32u), ~1u), firstTrailingBit(func_3(~vec2<u32>(23006u, 42903u), global3[_wgslsmith_index_u32(19233u, 26u)]).x))), 26u)];
    var var_2 = Struct_1(countOneBits(-select(-global1.a, vec4<i32>(var_1.a.x, var_1.a.x, var_1.a.x, -16247i), !vec4<bool>(global2.x, var_0.c, false, var_0.c))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(-143f, var_1.b)), _wgslsmith_f_op_f32(var_1.b - global1.b)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b + var_1.b))))), !global1.c);
    global1 = global3[_wgslsmith_index_u32(~(~(~(~12725u))), 26u)];
    var var_3 = func_2(global3[_wgslsmith_index_u32(~(~1u), 26u)]).x & (_wgslsmith_sub_u32(24984u, func_3(vec2<u32>(96717u, 56784u), global3[_wgslsmith_index_u32(~6890u, 26u)]).x) ^ ~1u);
    let var_4 = vec3<f32>(1621f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(floor(-2253f))) * -888f), -197f)), var_0.b);
    let var_5 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(var_1.b)), _wgslsmith_f_op_f32(var_1.b - var_0.b))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1350f), -337f), var_0.b, var_4.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(781f, global1.b, var_2.b, 925f) - vec4<f32>(1029f, 934f, global1.b, 499f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.b, 886f, var_0.b, var_4.x) - vec4<f32>(var_1.b, global1.b, var_0.b, 597f))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(296f, var_2.b, var_4.x, 1157f) + vec4<f32>(var_4.x, -1417f, -1026f, var_2.b)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_1.b, var_0.b, global1.b, 1689f))), vec4<bool>(var_0.c, false, var_0.c, false))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1030f, var_1.b, global1.b, var_4.x))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1014f, var_1.b, var_4.x, global1.b)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-107f, -1633f, global1.b, 1252f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.b, var_0.b, 849f, var_4.x) + vec4<f32>(981f, 1000f, var_1.b, -115f))))));
    var var_6 = global1.c;
    global0 = max(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, ~func_2(Struct_1(global1.a, var_4.x, var_2.c)).x), _wgslsmith_add_vec2_u32(~vec2<u32>(47026u, 4294967295u), vec2<u32>(~0u, func_3(vec2<u32>(10062u, 4294967295u), global3[_wgslsmith_index_u32(0u, 26u)]).x))), ~_wgslsmith_mod_u32(~6885u, 59562u));
    let x = u_input.a;
    s_output = StorageBuffer(var_5.x, _wgslsmith_sub_i32(-_wgslsmith_sub_i32(~global1.a.x, _wgslsmith_dot_vec2_i32(var_1.a.yx, vec2<i32>(0i, 2147483647i))), -_wgslsmith_add_i32(-1i, 62500i)));
}

