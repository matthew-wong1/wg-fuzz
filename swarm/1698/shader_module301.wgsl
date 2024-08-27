struct Struct_1 {
    a: vec2<u32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<i32>,
    c: Struct_1,
    d: u32,
    e: vec4<bool>,
}

struct Struct_5 {
    a: Struct_3,
    b: bool,
    c: f32,
    d: vec4<f32>,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<u32>,
    c: f32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 5>;

var<private> global1: array<Struct_3, 16>;

var<private> global2: array<f32, 30> = array<f32, 30>(-272f, -1560f, -480f, 443f, 396f, -690f, -383f, -1915f, 1527f, -1126f, -336f, 1000f, -387f, 156f, 2040f, 1128f, -1517f, 607f, 1236f, -931f, 865f, 1570f, 1206f, 1232f, -438f, 963f, 493f, -1552f, 1995f, -1000f);

var<private> global3: Struct_5;

var<private> global4: array<vec4<f32>, 23> = array<vec4<f32>, 23>(vec4<f32>(408f, 669f, -697f, 1832f), vec4<f32>(-196f, 381f, 759f, -1000f), vec4<f32>(-1832f, -1567f, 121f, 746f), vec4<f32>(427f, 1536f, 868f, -149f), vec4<f32>(1627f, -358f, -389f, 1000f), vec4<f32>(-557f, 1550f, 689f, 1500f), vec4<f32>(682f, -1187f, -318f, 1065f), vec4<f32>(1190f, 367f, -790f, -224f), vec4<f32>(597f, 1000f, -875f, 1676f), vec4<f32>(-1086f, 717f, -124f, 1523f), vec4<f32>(671f, 1470f, -800f, 1890f), vec4<f32>(1517f, 878f, 1873f, 100f), vec4<f32>(2295f, -921f, 1714f, -1704f), vec4<f32>(-323f, 204f, 2102f, 1132f), vec4<f32>(-1273f, -878f, -964f, 1566f), vec4<f32>(-1000f, 435f, -1000f, 520f), vec4<f32>(-2478f, 1992f, -2003f, -1539f), vec4<f32>(-633f, 2144f, 1422f, 1229f), vec4<f32>(-222f, -2483f, 2049f, -1260f), vec4<f32>(-1065f, 1063f, 738f, -1476f), vec4<f32>(396f, -1326f, -247f, 271f), vec4<f32>(-347f, -210f, 1018f, 1000f), vec4<f32>(-735f, -1204f, 804f, -1000f));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
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

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<f32>) -> u32 {
    let var_0 = reverseBits(reverseBits(reverseBits(~0i)));
    let var_1 = u_input.b;
    let var_2 = Struct_3(~reverseBits((1i & global3.e.x) | _wgslsmith_mult_i32(var_0, -18832i)));
    var var_3 = 55503i;
    var var_4 = Struct_2(select(select(select(global0[_wgslsmith_index_u32(~4294967295u, 5u)], select(vec4<bool>(global3.b, false, global3.b, global3.b), global0[_wgslsmith_index_u32(var_1, 5u)], global0[_wgslsmith_index_u32(4294967295u, 5u)]), any(vec3<bool>(false, global3.b, false))), vec4<bool>(global3.b, all(vec2<bool>(false, true)), global3.b, !global3.b), select(global0[_wgslsmith_index_u32(48577u, 5u)], select(global0[_wgslsmith_index_u32(var_1, 5u)], vec4<bool>(global3.b, global3.b, true, false), global0[_wgslsmith_index_u32(1u, 5u)]), vec4<bool>(false, false, false, global3.b))), select(vec4<bool>(true, true, !global3.b, false), vec4<bool>(global3.b, true, any(vec2<bool>(global3.b, false)), any(vec3<bool>(true, global3.b, global3.b))), global0[_wgslsmith_index_u32(max(1u, var_1), 5u)]), global0[_wgslsmith_index_u32(var_1, 5u)]));
    return countOneBits(_wgslsmith_mod_u32(~firstLeadingBit(_wgslsmith_mod_u32(0u, var_1)), firstTrailingBit(4294967295u)));
}

fn func_2(arg_0: f32, arg_1: vec2<f32>, arg_2: f32, arg_3: vec2<bool>) -> Struct_1 {
    global1 = array<Struct_3, 16>();
    var var_0 = false;
    let var_1 = Struct_1(vec2<u32>(u_input.b, ~(_wgslsmith_add_u32(u_input.b, 1u) >> (func_3(global3.d) % 32u))), global4[_wgslsmith_index_u32(u_input.b, 23u)]);
    var var_2 = Struct_5(global3.a, (any(!vec3<bool>(arg_3.x, global3.b, arg_3.x)) | global3.b) | global3.b, 483f, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global2[_wgslsmith_index_u32(u_input.b, 30u)], global3.c)) * arg_0)), arg_2, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(-global3.d.x)) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_1.x + 145f)))), -1029f), vec4<i32>(u_input.d.x, u_input.d.x, global3.e.x, ~u_input.d.x));
    var var_3 = Struct_5(Struct_3(-7827i), true, 1567f, vec4<f32>(-894f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(global3.d.x, -338f)), _wgslsmith_f_op_f32(select(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_1.a.x, 60831u), 30u)], _wgslsmith_f_op_f32(f32(-1f) * -543f), false)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1346f)) * _wgslsmith_div_f32(-1095f, arg_2)) - arg_2), -747f), vec4<i32>(firstTrailingBit(~min(32113i, var_2.e.x)), i32(-1i) * -2147483647i, _wgslsmith_div_i32(var_2.e.x, _wgslsmith_dot_vec3_i32(var_2.e.yxw, ~global3.e.xzz)), u_input.d.x));
    return Struct_1(min(var_1.a, var_1.a), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-632f, -754f, true)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.c))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(-2251f, -664f)))), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.b.x), global3.d.x))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 * 1960f) + _wgslsmith_f_op_f32(f32(-1f) * -1312f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -548f))), var_3.b && true))));
}

fn func_1(arg_0: vec2<u32>) -> Struct_1 {
    let var_0 = Struct_2(vec4<bool>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(2927u, 30u)] + -1469f))) >= 116f, any(select(select(vec3<bool>(global3.b, global3.b, false), vec3<bool>(true, global3.b, global3.b), global3.b), select(vec3<bool>(false, false, true), vec3<bool>(global3.b, false, global3.b), true), true)), true, !global3.b));
    global1 = array<Struct_3, 16>();
    var var_1 = _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global3.c, -986f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.c)), -340f)));
    var var_2 = global3.b;
    var_2 = _wgslsmith_sub_u32(abs(arg_0.x), arg_0.x) <= ~1u;
    return func_2(-1173f, global3.d.xx, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global3.d.x))), !var_0.a.yy);
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: Struct_2) -> Struct_5 {
    let var_0 = ~u_input.d;
    var var_1 = select(select(!(!arg_3.a.yy), vec2<bool>(false, (u_input.c.x >= arg_1.a.x) | (arg_1.b.x >= 366f)), select(arg_2.x, (-2147483647i < global3.e.x) | (611f > global3.d.x), !all(arg_2))), select(select(!select(vec2<bool>(arg_3.a.x, arg_2.x), arg_2.zy, arg_2.yy), vec2<bool>(false, 2147483647i != global3.e.x), vec2<bool>(false, true)), select(vec2<bool>(arg_1.a.x != 4294967295u, arg_2.x & arg_2.x), vec2<bool>(arg_3.a.x, arg_3.a.x), !vec2<bool>(arg_3.a.x, arg_3.a.x)), false), (~62319u & ~(arg_1.a.x | 10647u)) < firstLeadingBit(~func_1(vec2<u32>(1u, u_input.b)).a.x));
    var var_2 = Struct_5(global1[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_dot_vec3_u32(u_input.c, ~vec3<u32>(arg_1.a.x, u_input.c.x, 1u)) << (_wgslsmith_mult_u32(0u, 41574u) % 32u)), 16u)], !((!var_1.x && !arg_2.x) | !global3.b), _wgslsmith_f_op_f32(max(func_1(arg_1.a).b.x, _wgslsmith_f_op_f32(trunc(1000f)))), global3.d, ~(~(-vec4<i32>(var_0.x, global3.e.x, 0i, -2147483647i)) >> ((vec4<u32>(0u, 12374u, arg_1.a.x, u_input.b) ^ ~vec4<u32>(arg_1.a.x, 44425u, 1u, u_input.c.x)) % vec4<u32>(32u))));
    global2 = array<f32, 30>();
    global1 = array<Struct_3, 16>();
    return Struct_5(Struct_3(select(select(var_0.x, ~2147483647i, any(global0[_wgslsmith_index_u32(arg_1.a.x, 5u)])), _wgslsmith_dot_vec2_i32(global3.e.wz, vec2<i32>(2147483647i, -50455i)), false)), (-1i >> (func_1(func_1(vec2<u32>(1u, u_input.c.x)).a).a.x % 32u)) <= _wgslsmith_add_i32(global3.e.x, 110541i), -1869f, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.b.x + 1039f)) - _wgslsmith_f_op_f32(step(-1189f, _wgslsmith_f_op_f32(1138f - -594f)))), 1000f, 610f, _wgslsmith_f_op_f32(arg_1.b.x * _wgslsmith_f_op_f32(-1199f + -324f))), reverseBits(_wgslsmith_clamp_vec4_i32(vec4<i32>(~(-2147483647i), ~var_0.x, _wgslsmith_div_i32(var_2.a.a, var_2.e.x), var_0.x), countOneBits(vec4<i32>(var_2.e.x, -26569i, global3.a.a, -1i)), -firstTrailingBit(vec4<i32>(0i, global3.a.a, -1i, global3.a.a)))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = func_4(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(1552f, global3.c)), 1527f)), func_1(u_input.c.xx), !global0[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_mod_u32(1u, u_input.b)) & 49553u, 5u)], Struct_2(global0[_wgslsmith_index_u32(4294967295u, 5u)]));
    let var_0 = _wgslsmith_add_u32(func_2(global3.c, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(global3.d.zz)), _wgslsmith_div_vec2_f32(vec2<f32>(global3.d.x, -2117f), global3.d.xz)) * vec2<f32>(350f, global2[_wgslsmith_index_u32(48571u, 30u)])), _wgslsmith_div_f32(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(~u_input.b, 4294967295u), 30u)], global2[_wgslsmith_index_u32(firstTrailingBit(abs(u_input.b)), 30u)]), !vec2<bool>(!global3.b, all(vec2<bool>(true, global3.b)))).a.x, reverseBits(~u_input.c.x));
    global3 = func_4(global3.c, func_2(-625f, vec2<f32>(-1474f, -218f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global3.c))))), vec2<bool>(global3.b, any(vec4<bool>(false, global3.b, global3.b, true)))), !select(!global0[_wgslsmith_index_u32(1u, 5u)], global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(var_0, var_0, 58115u, 17836u)), min(vec4<u32>(var_0, 34264u, 0u, var_0), vec4<u32>(var_0, var_0, u_input.b, 44553u))), 5u)], !func_4(-437f, Struct_1(vec2<u32>(51570u, u_input.c.x), global4[_wgslsmith_index_u32(u_input.c.x, 23u)]), global0[_wgslsmith_index_u32(0u, 5u)], Struct_2(vec4<bool>(false, true, false, true))).b), Struct_2(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_0, firstTrailingBit(var_0)), 5u)]));
    let var_1 = ~(~(~(22425u >> (var_0 % 32u))));
    var var_2 = select(select(vec3<bool>(true && global3.b, _wgslsmith_add_u32(25484u, 60233u) == u_input.b, true), !vec3<bool>(select(global3.b, global3.b, false), select(global3.b, global3.b, global3.b), func_4(global3.d.x, Struct_1(vec2<u32>(u_input.c.x, 4294967295u), vec4<f32>(global2[_wgslsmith_index_u32(52444u, 30u)], global2[_wgslsmith_index_u32(16730u, 30u)], global2[_wgslsmith_index_u32(var_1, 30u)], -336f)), global0[_wgslsmith_index_u32(69150u, 5u)], Struct_2(vec4<bool>(global3.b, global3.b, false, false))).b), (1000f <= global2[_wgslsmith_index_u32(17635u, 30u)]) & true), select(vec3<bool>(true, false, any(vec3<bool>(global3.b, global3.b, global3.b))), select(!select(vec3<bool>(global3.b, true, true), vec3<bool>(true, global3.b, global3.b), true), select(vec3<bool>(false, global3.b, global3.b), !vec3<bool>(global3.b, true, global3.b), vec3<bool>(true, true, global3.b)), !(!vec3<bool>(global3.b, global3.b, global3.b))), select(!(!vec3<bool>(true, global3.b, global3.b)), !(!vec3<bool>(global3.b, false, true)), vec3<bool>(true, global3.b | true, all(vec4<bool>(global3.b, true, global3.b, global3.b))))), !vec3<bool>(all(select(global0[_wgslsmith_index_u32(var_0, 5u)], global0[_wgslsmith_index_u32(u_input.c.x, 5u)], vec4<bool>(global3.b, false, true, global3.b))), global3.b, false));
    var var_3 = u_input.c;
    let x = u_input.a;
    s_output = StorageBuffer(global4[_wgslsmith_index_u32(var_0, 23u)], _wgslsmith_mult_vec3_u32(vec3<u32>(var_3.x, var_1, _wgslsmith_add_u32(0u, _wgslsmith_dot_vec3_u32(u_input.c, vec3<u32>(var_1, 4294967295u, u_input.b)))), _wgslsmith_clamp_vec3_u32(vec3<u32>(~var_3.x, var_0, 112054u), vec3<u32>(55031u, var_3.x, abs(4294967295u)), ~firstTrailingBit(u_input.c))), _wgslsmith_f_op_f32(668f * -268f), func_1(abs(max(vec2<u32>(var_0, var_1), select(var_3.xy, var_3.yx, global3.b)))).a);
}

