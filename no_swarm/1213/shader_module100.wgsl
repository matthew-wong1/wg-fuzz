struct Struct_1 {
    a: vec4<f32>,
    b: vec3<i32>,
    c: vec2<i32>,
    d: vec3<bool>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<i32>,
    c: f32,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec3<i32>,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: f32,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 30>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_1(arg_0: vec4<f32>, arg_1: vec3<bool>, arg_2: Struct_3, arg_3: Struct_2) -> vec3<i32> {
    var var_0 = vec2<i32>(1i, -_wgslsmith_add_i32(1i, arg_2.e.b.x));
    return vec3<i32>(firstTrailingBit(~(1i << (u_input.a % 32u)) | _wgslsmith_mult_i32(_wgslsmith_sub_i32(2147483647i, u_input.b.x), arg_3.a.b.x)), firstLeadingBit(_wgslsmith_add_i32(~(~u_input.e), u_input.b.x)), min(_wgslsmith_sub_i32(~_wgslsmith_mult_i32(2147483647i, arg_3.a.b.x), i32(-1i) * -u_input.c.x), 2213i));
}

fn func_3() -> i32 {
    global0 = array<f32, 30>();
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1401f, global0[_wgslsmith_index_u32(4294967295u, 30u)], global0[_wgslsmith_index_u32(u_input.d.x, 30u)]), vec3<f32>(-617f, global0[_wgslsmith_index_u32(u_input.d.x, 30u)], global0[_wgslsmith_index_u32(u_input.d.x, 30u)]))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global0[_wgslsmith_index_u32(u_input.a, 30u)], global0[_wgslsmith_index_u32(u_input.d.x, 30u)], -1932f)))) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(global0[_wgslsmith_index_u32(1u, 30u)], 1452f, 1460f)))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(2408f, 423f, -263f) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global0[_wgslsmith_index_u32(32136u, 30u)], -2247f, global0[_wgslsmith_index_u32(u_input.d.x, 30u)]), vec3<f32>(global0[_wgslsmith_index_u32(u_input.d.x, 30u)], 439f, global0[_wgslsmith_index_u32(1u, 30u)]))), vec3<f32>(-282f, -1655f, global0[_wgslsmith_index_u32(18943u, 30u)]))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(u_input.d.x, 30u)], -1381f, global0[_wgslsmith_index_u32(u_input.d.x, 30u)])), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(317f, 125f, 370f)) + vec3<f32>(global0[_wgslsmith_index_u32(u_input.d.x, 30u)], global0[_wgslsmith_index_u32(u_input.d.x, 30u)], global0[_wgslsmith_index_u32(u_input.d.x, 30u)])))) - _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(global0[_wgslsmith_index_u32(u_input.a, 30u)], global0[_wgslsmith_index_u32(u_input.a, 30u)], global0[_wgslsmith_index_u32(u_input.a, 30u)]))) + vec3<f32>(-2134f, global0[_wgslsmith_index_u32(u_input.a, 30u)], global0[_wgslsmith_index_u32(0u, 30u)]))))));
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_0.x * 426f), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(14952u, 30u)] * 1298f), var_0.x, _wgslsmith_f_op_f32(abs(444f)))), _wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(abs(vec3<i32>(u_input.e, 2147483647i, 0i)), func_1(vec4<f32>(827f, global0[_wgslsmith_index_u32(u_input.d.x, 30u)], global0[_wgslsmith_index_u32(0u, 30u)], -2604f), vec3<bool>(true, false, true), Struct_3(Struct_1(vec4<f32>(global0[_wgslsmith_index_u32(u_input.d.x, 30u)], -278f, -1774f, global0[_wgslsmith_index_u32(40726u, 30u)]), u_input.c, u_input.b.yy, vec3<bool>(false, false, true), u_input.b.x), vec3<i32>(0i, u_input.e, u_input.e), 382f, Struct_1(vec4<f32>(var_0.x, -166f, var_0.x, global0[_wgslsmith_index_u32(u_input.a, 30u)]), u_input.b, u_input.c.zy, vec3<bool>(false, false, false), -38435i), Struct_1(vec4<f32>(-1377f, var_0.x, 448f, global0[_wgslsmith_index_u32(4402u, 30u)]), vec3<i32>(1i, u_input.b.x, u_input.b.x), vec2<i32>(21220i, -69321i), vec3<bool>(true, true, false), u_input.c.x)), Struct_2(Struct_1(vec4<f32>(var_0.x, 583f, 1195f, -1709f), u_input.c, vec2<i32>(1976i, u_input.c.x), vec3<bool>(true, false, false), u_input.c.x)))), abs(_wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, u_input.b.x, u_input.c.x), u_input.b))), vec2<i32>(_wgslsmith_mod_i32(-1i, u_input.b.x ^ u_input.e), func_1(_wgslsmith_div_vec4_f32(vec4<f32>(772f, 324f, -1019f, 503f), vec4<f32>(global0[_wgslsmith_index_u32(u_input.d.x, 30u)], var_0.x, -795f, var_0.x)), vec3<bool>(true, true, true), Struct_3(Struct_1(vec4<f32>(var_0.x, var_0.x, 1516f, var_0.x), vec3<i32>(-12601i, u_input.b.x, u_input.e), u_input.b.yz, vec3<bool>(false, false, false), u_input.b.x), u_input.b, 744f, Struct_1(vec4<f32>(var_0.x, global0[_wgslsmith_index_u32(u_input.d.x, 30u)], 816f, var_0.x), u_input.b, u_input.b.xy, vec3<bool>(true, true, true), u_input.e), Struct_1(vec4<f32>(-696f, global0[_wgslsmith_index_u32(4294967295u, 30u)], var_0.x, 583f), u_input.b, vec2<i32>(u_input.e, -1i), vec3<bool>(false, false, true), 23503i)), Struct_2(Struct_1(vec4<f32>(global0[_wgslsmith_index_u32(1u, 30u)], var_0.x, var_0.x, var_0.x), u_input.b, vec2<i32>(-1i, 58013i), vec3<bool>(true, true, true), -2147483647i))).x), select(vec3<bool>(true, true, true), !select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), !(global0[_wgslsmith_index_u32(u_input.a, 30u)] <= -335f)), ~(-u_input.b.x)));
    global0 = array<f32, 30>();
    global0 = array<f32, 30>();
    return reverseBits(-var_1.a.b.x) << (3837u % 32u);
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: bool, arg_3: vec2<bool>) -> u32 {
    var var_0 = Struct_1(arg_1.a.a, vec3<i32>(~(~(-arg_1.a.b.x)), func_3(), _wgslsmith_sub_i32(firstTrailingBit(~arg_1.a.c.x), _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(u_input.b.xy, u_input.b.zy), arg_1.a.e | u_input.c.x, _wgslsmith_dot_vec2_i32(u_input.c.zx, arg_1.a.c)))), abs(_wgslsmith_clamp_vec2_i32(vec2<i32>(arg_1.a.c.x, 29254i) << (~vec2<u32>(u_input.d.x, u_input.a) % vec2<u32>(32u)), _wgslsmith_mult_vec2_i32(reverseBits(arg_1.a.c), u_input.b.xy), arg_1.a.c)), select(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), arg_3.x & arg_1.a.d.x), select(vec3<bool>(any(vec3<bool>(true, true, arg_3.x)), arg_3.x, arg_1.a.d.x), arg_1.a.d, select(false, arg_2, arg_1.a.d.x) || !arg_1.a.d.x), !(!select(true, arg_3.x, arg_2))), -47200i);
    var var_1 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-arg_1.a.a.xyy), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-368f, -372f, _wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(4294967295u, 30u)])))))));
    let var_2 = arg_1;
    global0 = array<f32, 30>();
    var var_3 = true;
    return _wgslsmith_mod_u32(~u_input.a, min(~select(select(66458u, 4294967295u, arg_2), ~4294967295u, !arg_2), 12362u));
}

fn func_4(arg_0: vec3<u32>, arg_1: u32) -> Struct_3 {
    global0 = array<f32, 30>();
    var var_0 = _wgslsmith_add_vec2_i32(u_input.c.yy, _wgslsmith_mod_vec2_i32(select(u_input.b.yx, u_input.b.xz | vec2<i32>(u_input.b.x, -1i), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true))), reverseBits(select(select(vec2<i32>(u_input.e, -4687i), vec2<i32>(u_input.c.x, u_input.c.x), false), vec2<i32>(u_input.e, u_input.c.x), all(vec2<bool>(true, false))))));
    var var_1 = arg_0;
    global0 = array<f32, 30>();
    let var_2 = any(select(vec3<bool>(true, any(select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false))), true), vec3<bool>(true, (u_input.a | arg_0.x) >= firstLeadingBit(4294967295u), true & any(vec3<bool>(true, false, true))), true));
    return Struct_3(Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-381f, global0[_wgslsmith_index_u32(44346u, 30u)], global0[_wgslsmith_index_u32(u_input.d.x, 30u)], global0[_wgslsmith_index_u32(1u, 30u)]))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1120f, -428f, global0[_wgslsmith_index_u32(var_1.x, 30u)], global0[_wgslsmith_index_u32(1860u, 30u)]), vec4<f32>(935f, global0[_wgslsmith_index_u32(arg_0.x, 30u)], 750f, -1368f))))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(17888u, 30u)], global0[_wgslsmith_index_u32(u_input.a, 30u)], global0[_wgslsmith_index_u32(0u, 30u)], global0[_wgslsmith_index_u32(0u, 30u)]) * vec4<f32>(global0[_wgslsmith_index_u32(30620u, 30u)], 1000f, -551f, global0[_wgslsmith_index_u32(arg_0.x, 30u)]))))), reverseBits(u_input.c), select(u_input.b.yx, _wgslsmith_div_vec2_i32(vec2<i32>(15652i, -1i), reverseBits(u_input.c.zz)), select(vec2<bool>(var_2, var_2), select(vec2<bool>(var_2, true), vec2<bool>(var_2, var_2), vec2<bool>(true, var_2)), true)), vec3<bool>(-1376f == _wgslsmith_f_op_f32(min(-1429f, global0[_wgslsmith_index_u32(1u, 30u)])), any(vec3<bool>(true, true, true)), var_2), u_input.b.x), vec3<i32>(_wgslsmith_dot_vec4_i32(countOneBits(reverseBits(vec4<i32>(var_0.x, var_0.x, 1i, var_0.x))), ~(~vec4<i32>(-11639i, -30694i, var_0.x, u_input.b.x))), -1i, countOneBits(0i)), _wgslsmith_div_f32(-1598f, _wgslsmith_f_op_f32(round(-622f))), Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(min(4294967295u, 9628u), 30u)], _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.d.x, 30u)]), 1071f, global0[_wgslsmith_index_u32(1u, 30u)]) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(39915u, 30u)], global0[_wgslsmith_index_u32(arg_0.x, 30u)], global0[_wgslsmith_index_u32(var_1.x, 30u)], global0[_wgslsmith_index_u32(43985u, 30u)])) + vec4<f32>(493f, global0[_wgslsmith_index_u32(10100u, 30u)], -522f, global0[_wgslsmith_index_u32(0u, 30u)]))), ~firstLeadingBit(firstTrailingBit(vec3<i32>(54289i, var_0.x, 0i))), u_input.c.zx, !select(vec3<bool>(false, var_2, false), vec3<bool>(var_2, var_2, false), any(vec4<bool>(var_2, true, var_2, true))), firstTrailingBit(-27616i)), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(173f, global0[_wgslsmith_index_u32(4294967295u, 30u)], global0[_wgslsmith_index_u32(arg_1, 30u)], global0[_wgslsmith_index_u32(1u, 30u)]) - _wgslsmith_f_op_vec4_f32(vec4<f32>(854f, 1000f, -760f, global0[_wgslsmith_index_u32(arg_0.x, 30u)]) * vec4<f32>(-1936f, global0[_wgslsmith_index_u32(var_1.x, 30u)], -1000f, 1000f))) + vec4<f32>(-871f, _wgslsmith_f_op_f32(f32(-1f) * -1520f), _wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(5969u, 30u)])), global0[_wgslsmith_index_u32(~55330u, 30u)])), max(u_input.b, vec3<i32>(var_0.x, var_0.x >> (var_1.x % 32u), -55791i)), firstLeadingBit(countOneBits(vec2<i32>(-2147483647i, u_input.c.x)) ^ countOneBits(u_input.c.zx)), select(!vec3<bool>(false, var_2, var_2), select(select(vec3<bool>(var_2, true, true), vec3<bool>(false, var_2, true), true), !vec3<bool>(var_2, var_2, false), vec3<bool>(true, var_2, var_2)), !any(vec3<bool>(var_2, var_2, var_2))), -28420i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_clamp_i32(u_input.e, -(~_wgslsmith_dot_vec3_i32(func_1(vec4<f32>(global0[_wgslsmith_index_u32(u_input.a, 30u)], global0[_wgslsmith_index_u32(u_input.a, 30u)], -184f, global0[_wgslsmith_index_u32(u_input.d.x, 30u)]), vec3<bool>(true, false, false), Struct_3(Struct_1(vec4<f32>(global0[_wgslsmith_index_u32(7580u, 30u)], 162f, global0[_wgslsmith_index_u32(u_input.d.x, 30u)], -926f), u_input.c, vec2<i32>(-41594i, 2147483647i), vec3<bool>(false, false, false), u_input.b.x), vec3<i32>(7235i, 2147483647i, -2147483647i), -2983f, Struct_1(vec4<f32>(398f, global0[_wgslsmith_index_u32(u_input.d.x, 30u)], 1361f, -880f), u_input.b, u_input.c.zx, vec3<bool>(true, false, true), u_input.e), Struct_1(vec4<f32>(-2084f, 427f, global0[_wgslsmith_index_u32(u_input.a, 30u)], 1000f), u_input.c, vec2<i32>(-15843i, 2147483647i), vec3<bool>(false, true, false), u_input.c.x)), Struct_2(Struct_1(vec4<f32>(global0[_wgslsmith_index_u32(12093u, 30u)], global0[_wgslsmith_index_u32(4294967295u, 30u)], global0[_wgslsmith_index_u32(u_input.a, 30u)], -1327f), vec3<i32>(u_input.b.x, -2147483647i, -10057i), u_input.c.zx, vec3<bool>(false, true, false), -1i))), -vec3<i32>(u_input.b.x, u_input.b.x, -1i))), ~u_input.c.x);
    var var_1 = func_4(firstLeadingBit(vec3<u32>(~u_input.a, 76777u, 0u)), ~max(~countOneBits(4294967295u), ~func_2(vec4<u32>(32470u, 0u, 12666u, 24794u), Struct_2(Struct_1(vec4<f32>(global0[_wgslsmith_index_u32(40549u, 30u)], global0[_wgslsmith_index_u32(48141u, 30u)], global0[_wgslsmith_index_u32(u_input.a, 30u)], global0[_wgslsmith_index_u32(0u, 30u)]), vec3<i32>(u_input.c.x, u_input.c.x, u_input.b.x), u_input.b.yx, vec3<bool>(true, true, true), 1i)), false, vec2<bool>(true, false))));
    global0 = array<f32, 30>();
    var var_2 = var_1.d.a.zw;
    var var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(var_1.d.a * var_1.a.a), -(~_wgslsmith_mod_vec3_i32(firstTrailingBit(var_1.d.b), ~var_1.e.b)), var_1.d.b.yz, select(!(!(!vec3<bool>(var_1.e.d.x, true, false))), var_1.e.d, !var_1.d.d), _wgslsmith_dot_vec3_i32(u_input.c, select(var_1.e.b << (vec3<u32>(u_input.d.x, u_input.d.x, 0u) % vec3<u32>(32u)), min(var_1.a.b, u_input.b), all(vec2<bool>(var_1.d.d.x, true))) >> (~reverseBits(vec3<u32>(22051u, 52086u, u_input.d.x)) % vec3<u32>(32u))));
    let var_4 = _wgslsmith_clamp_i32(i32(-1i) * -_wgslsmith_sub_i32(-8808i >> (0u % 32u), -69787i), _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(-var_3.c, var_1.b.zx), u_input.c.x), _wgslsmith_add_i32(-1i, (var_1.d.c.x | reverseBits(-6383i)) | u_input.e));
    var_2 = var_1.d.a.wy;
    global0 = array<f32, 30>();
    let x = u_input.a;
    s_output = StorageBuffer(-235f, u_input.b.x, _wgslsmith_div_f32(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(abs(select(u_input.a, u_input.d.x, var_3.d.x)), ~0u), 30u)], -1633f), _wgslsmith_sub_i32(-1i, -1i), ~u_input.d.x);
}

