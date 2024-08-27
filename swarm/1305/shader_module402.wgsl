struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: f32,
    b: vec3<bool>,
    c: bool,
    d: vec4<i32>,
    e: vec2<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, false, true);

var<private> global1: array<u32, 8> = array<u32, 8>(0u, 1u, 7089u, 38100u, 0u, 9342u, 23071u, 0u);

var<private> global2: array<vec2<f32>, 25>;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec2<bool>, arg_2: Struct_2, arg_3: vec2<bool>) -> f32 {
    var var_0 = Struct_2(-871f, vec3<bool>(countOneBits(arg_2.d.x) < (-22416i << (~global1[_wgslsmith_index_u32(u_input.a, 8u)] % 32u)), !any(arg_0), true), false, vec4<i32>(-1i, arg_2.d.x, max(_wgslsmith_add_i32(arg_2.d.x, arg_2.d.x), 2147483647i), ~_wgslsmith_sub_i32(1i, 1i)) >> (vec4<u32>(101103u, u_input.a, 55997u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, arg_2.e.x, arg_2.e.x, arg_2.e.x), vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(22551u, 8u)], 8u)], global1[_wgslsmith_index_u32(21726u, 8u)], arg_2.e.x, global1[_wgslsmith_index_u32(u_input.a, 8u)]))) % vec4<u32>(32u)), vec2<u32>(~global1[_wgslsmith_index_u32(_wgslsmith_div_u32(~arg_2.e.x, ~1u), 8u)], countOneBits(u_input.a)));
    global2 = array<vec2<f32>, 25>();
    var var_1 = Struct_1(var_0.a, select(vec4<bool>(false, false, true, arg_3.x), select(vec4<bool>(all(vec4<bool>(true, true, var_0.c, true)), true, any(vec4<bool>(arg_2.c, true, false, arg_3.x)), arg_2.b.x), vec4<bool>(true, true, true, true), false), !any(!vec4<bool>(true, false, arg_3.x, true))), vec2<f32>(708f, arg_2.a));
    var var_2 = _wgslsmith_f_op_f32(-250f - var_1.c.x);
    var var_3 = select(var_0.b.zy, !arg_0.xx, true);
    return 430f;
}

fn func_2(arg_0: f32, arg_1: vec3<u32>, arg_2: bool) -> f32 {
    global2 = array<vec2<f32>, 25>();
    global1 = array<u32, 8>();
    var var_0 = Struct_2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2001f * arg_0) * arg_0))), -632f)), vec3<bool>(all(vec4<bool>(arg_2, true, global0.x, true)), false, true), 7065u <= u_input.a, -vec4<i32>(1i, 1i, 1i, 1i) << (max(~vec4<u32>(arg_1.x, u_input.a, 15772u, 424u), _wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(arg_1.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 8u)], 8u)], u_input.a, 23618u), vec4<u32>(0u, 71088u, arg_1.x, 0u)), reverseBits(vec4<u32>(44279u, 19227u, 4294967295u, 4294967295u)), countOneBits(vec4<u32>(18464u, 19047u, arg_1.x, arg_1.x)))) % vec4<u32>(32u)), arg_1.yz);
    var var_1 = 1i;
    global0 = var_0.b;
    return _wgslsmith_div_f32(_wgslsmith_div_f32(var_0.a, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(arg_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(var_0.b, vec2<bool>(false, global0.x), Struct_2(var_0.a, var_0.b, true, vec4<i32>(var_0.d.x, 0i, 2147483647i, var_0.d.x), var_0.e), global0.yz)))))), _wgslsmith_f_op_f32(-var_0.a));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3, arg_2: vec4<f32>, arg_3: vec3<f32>) -> Struct_3 {
    global0 = select(vec3<bool>(!arg_1.b, !arg_0.b, arg_0.a.b.x), select(arg_1.a.b.yyy, vec3<bool>(true, true, true), any(arg_1.a.b)), arg_1.a.b.wyw);
    global1 = array<u32, 8>();
    var var_0 = Struct_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1899f + _wgslsmith_f_op_f32(-arg_3.x)))), vec3<bool>(all(select(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(arg_0.a.b.x, true)), select(vec2<bool>(false, true), vec2<bool>(global0.x, true), arg_0.a.b.x), !vec2<bool>(arg_0.b, true))), u_input.a != ~(u_input.a >> (4294967295u % 32u)), arg_0.b), arg_1.b, select(vec4<i32>(68971i, 16741i, 2147483647i, _wgslsmith_clamp_i32(_wgslsmith_div_i32(1i, -1i), min(0i, -1i), -14483i)), vec4<i32>(1i, 1i, 1i, 1i) >> (firstLeadingBit(select(vec4<u32>(25563u, u_input.a, u_input.a, 94776u), vec4<u32>(25592u, u_input.a, 1u, global1[_wgslsmith_index_u32(17121u, 8u)]), global0.x)) % vec4<u32>(32u)), arg_0.a.b), ~min(_wgslsmith_sub_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(22170u, global1[_wgslsmith_index_u32(34628u, 8u)]), vec2<u32>(5093u, 108937u), vec2<u32>(global1[_wgslsmith_index_u32(1u, 8u)], u_input.a)), ~vec2<u32>(1u, u_input.a)), ~(~vec2<u32>(0u, u_input.a))));
    global0 = !select(arg_1.a.b.zyz, select(!vec3<bool>(false, false, arg_1.a.b.x), select(vec3<bool>(var_0.b.x, arg_1.b, var_0.c), !var_0.b, vec3<bool>(global0.x, global0.x, global0.x)), global0.x), all(vec3<bool>(true, true, true)));
    let var_1 = _wgslsmith_mult_i32(var_0.d.x, var_0.d.x);
    return arg_1;
}

fn func_1() -> f32 {
    var var_0 = func_4(Struct_3(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2281f - -1062f)), !select(vec4<bool>(global0.x, false, global0.x, global0.x), vec4<bool>(false, true, global0.x, global0.x), global0.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(480f, -1886f))), !select(global0.x && false, all(vec4<bool>(true, global0.x, false, true)), global0.x | true), -877f), Struct_3(Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -578f), _wgslsmith_f_op_f32(step(-1573f, 1462f)))), vec4<bool>(global0.x, all(vec4<bool>(true, global0.x, global0.x, false)), global0.x, select(global0.x, global0.x, global0.x)), global2[_wgslsmith_index_u32(u_input.a, 25u)]), false, _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(-1743f * -788f), ~vec3<u32>(u_input.a, u_input.a, 0u), all(vec3<bool>(true, global0.x, false)) && true))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -277f, -406f, -1363f) + vec4<f32>(331f, -478f, -1000f, -636f)))), vec4<f32>(753f, _wgslsmith_f_op_f32(-1956f - -218f), _wgslsmith_f_op_f32(select(1215f, 225f, false)), _wgslsmith_div_f32(814f, -567f))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 409f, -464f, 1000f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1680f, -2322f, 1422f, -1348f), vec4<f32>(-111f, 325f, -174f, 308f)) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-514f, 965f, 909f, 375f), vec4<f32>(-960f, 1394f, -1217f, -1602f)))))), any(select(select(global0.xy, global0.xz, true), select(global0.xx, vec2<bool>(global0.x, true), true), 4294967295u <= u_input.a)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1f, 1f, 1f))) + vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(558f)), _wgslsmith_f_op_f32(func_3(vec3<bool>(global0.x, global0.x, global0.x), global0.zy, Struct_2(1968f, vec3<bool>(global0.x, global0.x, global0.x), global0.x, vec4<i32>(41036i, 2147483647i, -2147483647i, -32841i), vec2<u32>(u_input.a, 13172u)), vec2<bool>(global0.x, true))), true)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-495f - 627f), -163f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_2(521f, vec3<u32>(27628u, 0u, u_input.a), true)), _wgslsmith_div_f32(1173f, 547f))))));
    var var_1 = Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(397f)))), -1000f), func_4(func_4(func_4(func_4(Struct_3(var_0.a, true, var_0.c), Struct_3(var_0.a, var_0.b, var_0.a.c.x), vec4<f32>(var_0.c, var_0.a.a, 583f, -1750f), vec3<f32>(var_0.a.a, var_0.a.a, var_0.a.c.x)), Struct_3(Struct_1(var_0.c, vec4<bool>(false, global0.x, global0.x, false), vec2<f32>(126f, var_0.a.c.x)), global0.x, var_0.c), vec4<f32>(696f, 588f, var_0.c, var_0.a.a), vec3<f32>(-571f, var_0.a.c.x, var_0.c)), Struct_3(func_4(Struct_3(Struct_1(-1000f, vec4<bool>(true, true, var_0.a.b.x, global0.x), global2[_wgslsmith_index_u32(38070u, 25u)]), false, var_0.c), Struct_3(Struct_1(var_0.a.c.x, vec4<bool>(var_0.a.b.x, var_0.b, global0.x, true), vec2<f32>(561f, var_0.c)), var_0.a.b.x, -154f), vec4<f32>(-528f, var_0.a.a, var_0.c, 1382f), vec3<f32>(120f, 837f, 540f)).a, var_0.a.b.x, var_0.a.c.x), _wgslsmith_div_vec4_f32(vec4<f32>(1000f, var_0.c, 379f, var_0.c), vec4<f32>(-1066f, var_0.c, -1489f, -245f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.a, -905f, -863f)) + vec3<f32>(-1157f, var_0.a.a, var_0.c))), Struct_3(Struct_1(_wgslsmith_f_op_f32(ceil(var_0.a.c.x)), var_0.a.b, global2[_wgslsmith_index_u32(1u, 25u)]), firstTrailingBit(u_input.a) != ~1u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(682f)) - -782f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(-498f, 917f)), _wgslsmith_f_op_f32(-var_0.c), _wgslsmith_f_op_f32(select(var_0.c, -590f, true)), _wgslsmith_f_op_f32(1183f * 573f))), vec3<f32>(517f, _wgslsmith_f_op_f32(-637f + var_0.c), func_4(Struct_3(Struct_1(var_0.c, var_0.a.b, var_0.a.c), global0.x, var_0.c), func_4(Struct_3(Struct_1(var_0.a.a, vec4<bool>(true, false, true, true), global2[_wgslsmith_index_u32(u_input.a, 25u)]), true, -529f), Struct_3(var_0.a, global0.x, var_0.c), vec4<f32>(410f, 188f, var_0.a.a, var_0.c), vec3<f32>(var_0.c, var_0.c, 590f)), vec4<f32>(472f, var_0.a.c.x, var_0.c, -567f), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-1000f, var_0.a.a, var_0.a.a)))).c)).a.b.xxx, global0.x, _wgslsmith_div_vec4_i32(-(~_wgslsmith_div_vec4_i32(vec4<i32>(-1i, 1i, 0i, -1714i), vec4<i32>(2147483647i, 37314i, 2147483647i, -1i))), ~_wgslsmith_div_vec4_i32(-vec4<i32>(-23066i, 1i, 1i, 2147483647i), ~vec4<i32>(-28436i, 0i, -2147483647i, 2147483647i))), vec2<u32>(~4294967295u, ~8731u));
    global0 = var_0.a.b.zyx;
    var var_2 = vec2<u32>(4294967295u, global1[_wgslsmith_index_u32(~u_input.a, 8u)]);
    var var_3 = min(~firstTrailingBit(i32(-1i) * -var_1.d.x), 1i);
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(step(var_1.a, var_0.a.a)), _wgslsmith_mod_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(12963u, 8u)], 31061u ^ global1[_wgslsmith_index_u32(85491u, 8u)], ~1u), abs(_wgslsmith_clamp_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(1u, 8u)], 4411u, global1[_wgslsmith_index_u32(1u, 8u)]), vec3<u32>(var_2.x, var_2.x, u_input.a), vec3<u32>(var_2.x, var_2.x, 50038u)))), all(vec4<bool>(var_0.a.b.x, true, global0.x, var_1.b.x || false))))));
}

fn func_5(arg_0: vec2<f32>, arg_1: vec4<bool>, arg_2: vec3<i32>, arg_3: Struct_2) -> Struct_3 {
    global1 = array<u32, 8>();
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0)));
    let var_1 = _wgslsmith_div_vec3_u32(vec3<u32>(~arg_3.e.x, 0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 8u)], 8u)]) | (abs(~vec3<u32>(u_input.a, 39145u, global1[_wgslsmith_index_u32(0u, 8u)])) | ~vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 8u)], 8u)], 25495u, 69919u)), firstLeadingBit(min(vec3<u32>(reverseBits(43321u), u_input.a << (global1[_wgslsmith_index_u32(53115u, 8u)] % 32u), u_input.a), _wgslsmith_div_vec3_u32(reverseBits(vec3<u32>(0u, 77389u, 1u)), ~vec3<u32>(20137u, u_input.a, u_input.a)))));
    let var_2 = firstLeadingBit(~(-firstTrailingBit(arg_3.d))) & ~_wgslsmith_div_vec4_i32(countOneBits(_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_2.x, 1i, arg_2.x, -31185i), arg_3.d, arg_3.d)), arg_3.d);
    var var_3 = func_4(Struct_3(Struct_1(var_0.x, arg_1, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(232f, 436f)) - global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~arg_3.e.x, 8u)], 25u)])), true, var_0.x), func_4(Struct_3(func_4(func_4(Struct_3(Struct_1(arg_0.x, vec4<bool>(arg_3.b.x, false, arg_1.x, arg_1.x), vec2<f32>(982f, -672f)), global0.x, 2136f), Struct_3(Struct_1(var_0.x, vec4<bool>(false, true, arg_1.x, false), global2[_wgslsmith_index_u32(1u, 25u)]), arg_3.b.x, -562f), vec4<f32>(var_0.x, -2662f, var_0.x, arg_0.x), vec3<f32>(808f, 844f, arg_0.x)), Struct_3(Struct_1(-1000f, vec4<bool>(true, false, true, arg_1.x), vec2<f32>(1093f, arg_0.x)), arg_3.c, var_0.x), _wgslsmith_div_vec4_f32(vec4<f32>(-1918f, var_0.x, var_0.x, arg_3.a), vec4<f32>(1039f, arg_3.a, var_0.x, -688f)), _wgslsmith_div_vec3_f32(vec3<f32>(-1237f, 603f, var_0.x), vec3<f32>(1763f, -1084f, 1200f))).a, any(select(arg_1, vec4<bool>(true, arg_3.c, true, false), true)), _wgslsmith_f_op_f32(-arg_3.a)), Struct_3(func_4(Struct_3(Struct_1(arg_3.a, arg_1, vec2<f32>(arg_3.a, 222f)), global0.x, 1428f), Struct_3(Struct_1(340f, arg_1, vec2<f32>(-278f, -1000f)), global0.x, -395f), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(1000f, 610f, 228f, -276f), vec4<f32>(278f, 1032f, var_0.x, arg_0.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, arg_3.a, 2422f))).a, (global0.x && true) & false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(arg_1.wwx, global0.xx, Struct_2(arg_0.x, vec3<bool>(arg_3.c, global0.x, false), arg_3.c, arg_3.d, var_1.zy), arg_1.wx)) - 1f)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1551f), arg_0.x, _wgslsmith_f_op_f32(abs(-2219f)), _wgslsmith_div_f32(1305f, 106f)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(arg_3.a, arg_0.x, 269f, 1326f), vec4<f32>(-765f, -1172f, var_0.x, 392f)), vec4<f32>(var_0.x, var_0.x, var_0.x, -257f), true)))), vec3<f32>(_wgslsmith_f_op_f32(arg_3.a + _wgslsmith_f_op_f32(step(arg_3.a, -611f))), _wgslsmith_div_f32(-110f, _wgslsmith_f_op_f32(-790f + arg_3.a)), _wgslsmith_f_op_f32(-1357f - var_0.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -1259f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - 214f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(453f - 464f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1194f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-626f, arg_3.a))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.x)))) - vec3<f32>(_wgslsmith_f_op_f32(-1189f - 696f), _wgslsmith_f_op_f32(trunc(789f)), arg_3.a)));
    return func_4(Struct_3(func_4(func_4(Struct_3(var_3.a, false, 504f), Struct_3(var_3.a, var_3.b, -970f), _wgslsmith_div_vec4_f32(vec4<f32>(252f, arg_3.a, arg_3.a, var_0.x), vec4<f32>(arg_0.x, -186f, arg_3.a, 224f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.c, arg_3.a, arg_0.x))), func_4(func_4(Struct_3(var_3.a, var_3.a.b.x, arg_3.a), Struct_3(Struct_1(399f, vec4<bool>(var_3.a.b.x, arg_1.x, false, arg_1.x), vec2<f32>(arg_3.a, var_3.a.a)), var_3.a.b.x, 1834f), vec4<f32>(var_3.a.c.x, -254f, 330f, var_3.c), vec3<f32>(arg_3.a, var_0.x, arg_0.x)), func_4(Struct_3(var_3.a, true, 1961f), Struct_3(var_3.a, true, var_0.x), vec4<f32>(905f, var_3.c, -881f, 1829f), vec3<f32>(949f, arg_0.x, 696f)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(534f, var_0.x, var_0.x, arg_0.x))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0.x, var_3.c, 326f)))), vec4<f32>(_wgslsmith_f_op_f32(-arg_3.a), _wgslsmith_f_op_f32(-arg_3.a), _wgslsmith_f_op_f32(-276f * -1228f), _wgslsmith_f_op_f32(min(var_3.c, -879f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3.a, -1972f, arg_3.a) * vec3<f32>(arg_3.a, 226f, arg_0.x))).a, _wgslsmith_f_op_f32(-arg_0.x) < _wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(f32(-1f) * -1084f)), func_4(Struct_3(func_4(func_4(Struct_3(var_3.a, true, 877f), Struct_3(var_3.a, false, arg_0.x), vec4<f32>(var_3.a.c.x, 294f, arg_0.x, arg_0.x), vec3<f32>(565f, var_0.x, 1000f)), Struct_3(var_3.a, false, -1089f), _wgslsmith_div_vec4_f32(vec4<f32>(1000f, var_0.x, var_3.c, 2946f), vec4<f32>(arg_0.x, arg_3.a, var_0.x, 582f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2252f, -462f, 1080f))).a, var_3.b, arg_0.x), func_4(func_4(Struct_3(Struct_1(-1076f, vec4<bool>(false, global0.x, true, global0.x), global2[_wgslsmith_index_u32(60429u, 25u)]), true, var_0.x), Struct_3(Struct_1(-1329f, arg_1, var_3.a.c), true, var_3.c), vec4<f32>(572f, arg_3.a, 412f, -496f), vec3<f32>(arg_3.a, var_3.a.a, 229f)), Struct_3(func_4(Struct_3(var_3.a, false, arg_3.a), Struct_3(var_3.a, true, var_0.x), vec4<f32>(arg_0.x, 1568f, var_0.x, arg_3.a), vec3<f32>(-1271f, var_3.a.c.x, 494f)).a, var_3.a.b.x, _wgslsmith_f_op_f32(-1467f * -117f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1590f, var_0.x, -190f, var_3.c) + vec4<f32>(arg_0.x, 1000f, arg_3.a, var_3.a.a))), vec3<f32>(-2036f, _wgslsmith_f_op_f32(-arg_0.x), 787f)), vec4<f32>(func_4(Struct_3(var_3.a, true, 275f), func_4(Struct_3(Struct_1(var_3.a.c.x, vec4<bool>(arg_3.b.x, true, arg_3.b.x, true), vec2<f32>(arg_0.x, arg_3.a)), false, arg_0.x), Struct_3(Struct_1(-533f, vec4<bool>(true, false, false, true), arg_0), arg_1.x, arg_0.x), vec4<f32>(-678f, -1764f, -342f, arg_0.x), vec3<f32>(arg_0.x, 1015f, var_0.x)), vec4<f32>(-126f, var_0.x, var_0.x, -1671f), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1277f, var_3.a.a, -1640f)))).c, _wgslsmith_f_op_f32(trunc(-363f)), _wgslsmith_f_op_f32(step(arg_0.x, _wgslsmith_f_op_f32(-arg_0.x))), _wgslsmith_f_op_f32(-2057f + _wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-605f, 517f, _wgslsmith_f_op_f32(-2219f * 565f)) + vec3<f32>(arg_3.a, arg_0.x, arg_0.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_3.a, arg_3.a, var_0.x, 202f))), vec4<f32>(-286f, _wgslsmith_f_op_f32(444f + arg_0.x), arg_0.x, 171f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_3.a, 579f, arg_0.x, 772f), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_0.x, -2717f, -1683f, -1849f), vec4<f32>(-187f, -2194f, arg_0.x, arg_0.x)))) * vec4<f32>(3174f, _wgslsmith_f_op_f32(floor(arg_0.x)), arg_3.a, arg_0.x))), vec3<f32>(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -744f), var_3.c)), func_4(func_4(Struct_3(Struct_1(arg_3.a, vec4<bool>(arg_1.x, arg_3.c, arg_1.x, true), arg_0), true, arg_0.x), Struct_3(var_3.a, false, arg_3.a), _wgslsmith_f_op_vec4_f32(vec4<f32>(-140f, var_3.a.c.x, var_0.x, var_3.c) + vec4<f32>(485f, 829f, var_3.c, arg_0.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(158f, arg_3.a, 175f) * vec3<f32>(arg_0.x, var_3.c, -285f))), func_4(Struct_3(Struct_1(arg_0.x, vec4<bool>(false, global0.x, false, arg_3.c), arg_0), arg_1.x, 345f), Struct_3(Struct_1(-719f, arg_1, arg_0), false, -680f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1843f, var_3.c, arg_3.a, var_0.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(663f, 1000f, -325f) + vec3<f32>(var_3.a.a, -168f, arg_0.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(713f, arg_3.a, var_0.x, arg_0.x) + vec4<f32>(var_3.c, arg_3.a, -1000f, 163f)) * _wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_3.a, arg_0.x, arg_3.a, -870f), vec4<f32>(arg_3.a, arg_0.x, arg_3.a, arg_0.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1936f, -1559f, var_3.c)))).c));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<u32, 8>();
    let var_0 = reverseBits(firstTrailingBit(vec3<u32>(countOneBits(~global1[_wgslsmith_index_u32(4294967295u, 8u)]), ~3558u, ~(~u_input.a))));
    let var_1 = func_5(vec2<f32>(641f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -542f) + _wgslsmith_f_op_f32(-785f - 1062f)))), !(!vec4<bool>(!global0.x, all(vec3<bool>(global0.x, false, false)), select(global0.x, true, false), true)), min(vec3<i32>(1i, 1i, 1i), vec3<i32>(1i, 1i, 1i) << (firstTrailingBit(vec3<u32>(global1[_wgslsmith_index_u32(41963u, 8u)], u_input.a, global1[_wgslsmith_index_u32(0u, 8u)])) % vec3<u32>(32u))), Struct_2(_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(func_1()), var_0, any(global0.xz))), vec3<bool>(false, true, false), all(select(select(vec4<bool>(global0.x, global0.x, global0.x, true), vec4<bool>(true, true, false, global0.x), global0.x), vec4<bool>(true, false, global0.x, false), false)), min(vec4<i32>(firstTrailingBit(20357i), max(17652i, -82156i), firstLeadingBit(-1i), 1i), vec4<i32>(firstTrailingBit(0i), 0i, reverseBits(-24933i), min(-68115i, -2147483647i))), countOneBits(select(select(var_0.zy, vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(25309u, 8u)], 8u)], 1u), false), var_0.xx, !global0.x))));
    var var_2 = max(vec4<i32>(select(abs(1i << (1u % 32u)), ~_wgslsmith_mult_i32(0i, -33442i), true), 0i, -3359i, _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, -2147483647i, -199i), vec3<i32>(70652i, 0i, -2147483647i)), ~(-34536i)) >> (34369u % 32u)), min(vec4<i32>(_wgslsmith_div_i32(i32(-1i) * -46939i, -7874i), ~(~0i), _wgslsmith_dot_vec4_i32(vec4<i32>(2379i, -1i, -16565i, -1i), vec4<i32>(-27852i, 11792i, 2147483647i, 23188i)), min(0i << (0u % 32u), 31065i)), -vec4<i32>(~(-2147483647i), select(0i, 8962i, true), i32(-1i) * -1i, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, -2147483647i, -2147483647i, 1i), vec4<i32>(36758i, -14184i, -1i, 1i)))));
    var var_3 = vec3<bool>(1i >= _wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(var_2.x, var_2.x, var_2.x, -1i), ~vec4<i32>(var_2.x, 1i, var_2.x, 45657i)), _wgslsmith_f_op_f32(func_1()) < _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(1000f, var_1.c)), _wgslsmith_f_op_f32(ceil(var_1.c)))))), any(!var_1.a.b));
    let var_4 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.a.a, func_4(Struct_3(var_1.a, true, 619f), func_5(vec2<f32>(394f, 1000f), vec4<bool>(true, false, false, true), vec3<i32>(0i, var_2.x, 0i), Struct_2(var_1.c, var_1.a.b.zwx, var_1.a.b.x, vec4<i32>(var_2.x, 0i, 2147483647i, 38589i), vec2<u32>(global1[_wgslsmith_index_u32(0u, 8u)], 1u))), vec4<f32>(272f, -514f, var_1.c, 413f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(487f, var_1.a.a, -646f))).a.c.x) * var_1.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_1.a.c.x * _wgslsmith_f_op_f32(var_1.c * -444f))))));
    var var_5 = min(2147483647i, ~_wgslsmith_add_i32(~_wgslsmith_mult_i32(var_2.x, -14197i), var_2.x));
    let var_6 = _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(!var_1.a.b.wxw, global0.zz, Struct_2(var_4.x, vec3<bool>(false, var_1.b, global0.x), true, vec4<i32>(var_2.x, 7768i, var_2.x, var_2.x), vec2<u32>(u_input.a, global1[_wgslsmith_index_u32(29704u, 8u)])), var_1.a.b.ww))), _wgslsmith_f_op_f32(ceil(2926f))), 1511f, !(!any(vec4<bool>(true, true, var_3.x, true)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.c, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -263f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -814f))))), u_input.a, var_2.x);
}

