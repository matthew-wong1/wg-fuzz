struct Struct_1 {
    a: vec2<i32>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
    c: i32,
    d: vec2<i32>,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec2<i32>(-1i, 0i), 1i), Struct_1(vec2<i32>(-16489i, 2147483647i), 46602i), Struct_1(vec2<i32>(29491i, 1i), 2147483647i));

var<private> global1: Struct_4;

var<private> global2: array<vec2<i32>, 24>;

var<private> global3: Struct_2;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3() -> vec2<i32> {
    global1 = Struct_4(all(select(select(vec2<bool>(true, global1.a), vec2<bool>(global1.a, global1.a), vec2<bool>(false, false)), vec2<bool>(true | global1.e, all(vec2<bool>(global1.a, global1.a))), select(select(vec2<bool>(true, false), vec2<bool>(true, global1.e), global1.a), select(vec2<bool>(global1.a, global1.e), vec2<bool>(false, global1.e), global1.e), true))), Struct_1(~vec2<i32>(firstTrailingBit(2147483647i), global3.b.a.x), -_wgslsmith_dot_vec3_i32(max(vec3<i32>(-6886i, -1i, 1i), vec3<i32>(u_input.b.x, u_input.b.x, 0i)), firstTrailingBit(vec3<i32>(-2147483647i, 0i, 2147483647i)))), ~global1.d.x, -min(u_input.b.yy, _wgslsmith_sub_vec2_i32(global2[_wgslsmith_index_u32(u_input.a, 24u)], vec2<i32>(18001i, global0.a.b))) << (_wgslsmith_add_vec2_u32(vec2<u32>(~0u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.a, 1u, 13712u), vec4<u32>(16035u, u_input.a, u_input.a, u_input.a))), _wgslsmith_div_vec2_u32(select(vec2<u32>(42872u, u_input.a), vec2<u32>(77351u, u_input.a), vec2<bool>(false, global1.e)), vec2<u32>(44631u, u_input.a))) % vec2<u32>(32u)), global1.a);
    var var_0 = _wgslsmith_f_op_f32(-1756f * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(559f, 397f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(666f, 448f))), _wgslsmith_f_op_f32(565f * 1330f))))));
    var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1835f);
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1647f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(186f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-340f * -1587f))))) * _wgslsmith_f_op_f32(-1460f * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1224f - _wgslsmith_f_op_f32(round(1000f)))))));
    let var_1 = Struct_2(global1.b, Struct_1(select(select(firstTrailingBit(vec2<i32>(global1.d.x, 91987i)), global1.b.a & vec2<i32>(-17959i, global1.d.x), vec2<bool>(global1.e, global1.e)), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(4294967295u, u_input.a, 0u, 45568u)), vec4<u32>(u_input.a, 4294967295u, u_input.a, u_input.a)), 24u)], select(select(vec2<bool>(true, global1.a), vec2<bool>(false, true), vec2<bool>(true, global1.e)), select(vec2<bool>(false, false), vec2<bool>(global1.e, false), false), false)), ~(-firstTrailingBit(u_input.b.x))), Struct_1(-select(global2[_wgslsmith_index_u32(0u, 24u)], ~u_input.b.xw, true), -reverseBits(global0.b.b) >> ((~0u >> (~u_input.a % 32u)) % 32u)));
    return -(~max(vec2<i32>(-global1.d.x, 0i), firstTrailingBit(vec2<i32>(10391i, global3.a.b))));
}

fn func_2() -> Struct_1 {
    global0 = Struct_2(Struct_1(vec2<i32>(16173i, -1i), ~(u_input.b.x << (_wgslsmith_clamp_u32(0u, u_input.a, u_input.a) % 32u))), Struct_1(~vec2<i32>(global3.a.b, 6368i) | max(func_3(), global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(1080u, u_input.a), 24u)]), select(_wgslsmith_mod_i32(abs(u_input.b.x), 1i), 43151i, select(global1.e & true, global1.a || global1.e, any(vec4<bool>(global1.e, global1.a, false, false))))), Struct_1(global0.c.a, global3.c.b));
    global3 = Struct_2(Struct_1(~(global1.b.a | ~global1.b.a), global1.d.x), Struct_1(global0.a.a, u_input.b.x), global1.b);
    return global3.b;
}

fn func_4(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: bool) -> Struct_1 {
    let var_0 = ~(_wgslsmith_add_u32(~_wgslsmith_mod_u32(50231u, u_input.a), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, 4294967295u) ^ vec3<u32>(u_input.a, u_input.a, 0u), vec3<u32>(u_input.a, u_input.a, u_input.a) ^ vec3<u32>(u_input.a, u_input.a, 4294967295u))) ^ 56601u);
    global1 = Struct_4(arg_3, func_2(), arg_2.a.x, _wgslsmith_mult_vec2_i32(global0.a.a, min(max(max(global2[_wgslsmith_index_u32(u_input.a, 24u)], global1.b.a), _wgslsmith_mod_vec2_i32(arg_0.c.a, vec2<i32>(1i, -28514i))), vec2<i32>(u_input.b.x << (66596u % 32u), ~global3.b.b))), any(arg_1.xx));
    var var_1 = arg_1.yz;
    var_1 = !arg_1.xx;
    var var_2 = Struct_3(all(!vec4<bool>(true, global1.a, true, !arg_3)));
    return func_2();
}

fn func_1(arg_0: Struct_4, arg_1: Struct_2) -> Struct_4 {
    let var_0 = _wgslsmith_f_op_f32(ceil(511f));
    global2 = array<vec2<i32>, 24>();
    global0 = arg_1;
    global3 = Struct_2(arg_0.b, Struct_1(reverseBits(u_input.b.ww), -5714i), func_4(arg_1, !(!(!vec3<bool>(arg_0.a, false, true))), func_2(), _wgslsmith_f_op_f32(var_0 + _wgslsmith_f_op_f32(max(-138f, -587f))) != _wgslsmith_f_op_f32(var_0 - _wgslsmith_f_op_f32(var_0 - var_0))));
    let var_1 = Struct_2(func_4(Struct_2(func_4(Struct_2(Struct_1(u_input.b.zy, global0.b.b), Struct_1(vec2<i32>(global0.c.a.x, global1.b.b), -1i), Struct_1(arg_0.b.a, -39418i)), vec3<bool>(global1.a, global1.a, arg_0.a), func_2(), arg_0.a), Struct_1(_wgslsmith_clamp_vec2_i32(u_input.b.yy, vec2<i32>(0i, global1.d.x), vec2<i32>(global0.b.a.x, global1.b.a.x)), 0i), Struct_1(~u_input.b.yz, arg_1.b.a.x)), vec3<bool>(arg_0.a, (2147483647i > arg_0.b.b) & true, arg_0.e), func_2(), max(firstLeadingBit(15110u), _wgslsmith_sub_u32(u_input.a, u_input.a)) <= u_input.a), Struct_1(firstTrailingBit(-vec2<i32>(0i, global1.b.b)) & (vec2<i32>(global3.a.b, -72610i) | _wgslsmith_div_vec2_i32(global1.b.a, vec2<i32>(48203i, -16903i))), 26280i), Struct_1(firstTrailingBit(_wgslsmith_mult_vec2_i32(max(global3.a.a, vec2<i32>(0i, 56823i)), ~vec2<i32>(33369i, -1i))), _wgslsmith_mult_i32(select(15757i, -2147483647i, u_input.a > 4294967295u), 21235i)));
    return Struct_4(true, Struct_1(_wgslsmith_div_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(global0.c.a.x, -1i), vec2<i32>(global3.c.b, arg_1.c.b)) ^ var_1.a.a, func_2().a), ~(-1i)), 41540i, vec2<i32>(var_1.b.b, (1i << (~u_input.a % 32u)) >> (1u % 32u)), false & !select(0u <= u_input.a, any(vec4<bool>(false, false, false, global1.a)), global1.e));
}

fn func_5(arg_0: Struct_4, arg_1: i32, arg_2: Struct_4) -> u32 {
    global1 = Struct_4(func_1(Struct_4(true, global1.b, u_input.b.x, -(vec2<i32>(global0.b.a.x, -2147483647i) & vec2<i32>(global0.a.a.x, 78905i)), false), Struct_2(func_1(Struct_4(true, Struct_1(global2[_wgslsmith_index_u32(u_input.a, 24u)], 1i), 0i, vec2<i32>(-17036i, 0i), false), Struct_2(Struct_1(vec2<i32>(arg_0.b.b, u_input.b.x), -40129i), arg_2.b, Struct_1(arg_2.b.a, -1i))).b, arg_0.b, func_2())).a, global1.b, 2147483647i & global0.a.b, u_input.b.xw, false | global1.e);
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-480f + -1343f) - _wgslsmith_f_op_f32(-326f * -1133f)), true)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -558f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -670f) - _wgslsmith_f_op_f32(f32(-1f) * -232f)))), 1092f);
    var var_1 = _wgslsmith_clamp_vec3_u32(~select(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(1u, u_input.a, u_input.a) << (vec3<u32>(u_input.a, u_input.a, u_input.a) % vec3<u32>(32u)), vec3<bool>(arg_2.a, arg_0.e, false)), reverseBits(_wgslsmith_mod_vec3_u32(vec3<u32>(1u, 56690u, 41481u), abs(vec3<u32>(u_input.a, u_input.a, u_input.a)))), vec3<u32>(9289u & u_input.a, _wgslsmith_div_u32(u_input.a, 6098u), u_input.a) & _wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(36673u, 0u, u_input.a), vec3<u32>(0u, 1u, u_input.a)), abs(vec3<u32>(4294967295u, 4294967295u, 80312u)))) << (firstTrailingBit(countOneBits(vec3<u32>(u_input.a, 0u, 92606u) ^ vec3<u32>(u_input.a, 1u, 21046u))) % vec3<u32>(32u));
    return ~reverseBits(~_wgslsmith_add_u32(0u << (u_input.a % 32u), u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_2(global3.a, Struct_1(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(func_5(Struct_4(true, Struct_1(global1.b.a, global1.c), global0.a.a.x, global2[_wgslsmith_index_u32(u_input.a, 24u)], global1.a), _wgslsmith_div_i32(u_input.b.x, 1i), func_1(Struct_4(false, global3.b, 2147483647i, vec2<i32>(u_input.b.x, global0.c.a.x), true), Struct_2(global3.b, Struct_1(u_input.b.xy, -8496i), global1.b))), _wgslsmith_add_u32(4294967295u, ~u_input.a)), 24u)], -u_input.b.x), func_4(Struct_2(global1.b, func_4(Struct_2(global1.b, global1.b, Struct_1(global1.d, global3.a.a.x)), select(vec3<bool>(false, false, true), vec3<bool>(false, global1.e, true), true), global3.a, global1.e), func_4(Struct_2(global0.b, global1.b, global0.c), !vec3<bool>(true, global1.a, true), Struct_1(vec2<i32>(-1i, -1729i), global3.a.a.x), any(vec4<bool>(global1.a, true, false, global1.e)))), !vec3<bool>(false, global3.b.a.x <= global1.c, !global1.a), global0.c, false));
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1065f, 1f)) - _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(632f * _wgslsmith_f_op_f32(trunc(1000f))), _wgslsmith_f_op_f32(1134f - _wgslsmith_f_op_f32(ceil(-152f)))))));
    let var_1 = _wgslsmith_dot_vec3_i32(vec3<i32>(-9834i, global3.b.a.x, -2147483647i), reverseBits(u_input.b.wxx));
    let var_2 = vec4<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, 0u) << (~vec2<u32>(1u, 18559u) % vec2<u32>(32u)), ~(vec2<u32>(u_input.a, 4294967295u) & vec2<u32>(19131u, 30967u))), ~_wgslsmith_mod_vec2_u32(~vec2<u32>(58017u, 16136u), ~vec2<u32>(u_input.a, 20205u))), ~(~0u), 1u, ~(u_input.a & ~_wgslsmith_dot_vec2_u32(vec2<u32>(75784u, 1u), vec2<u32>(u_input.a, u_input.a))));
    let var_3 = Struct_3(!any(select(select(vec3<bool>(global1.e, global1.e, false), vec3<bool>(global1.e, true, false), vec3<bool>(false, global1.a, true)), vec3<bool>(global1.a, true, global1.e), select(vec3<bool>(global1.e, false, false), vec3<bool>(global1.e, true, global1.a), vec3<bool>(false, global1.a, global1.a)))));
    var var_4 = Struct_4(true, func_4(Struct_2(global0.b, func_1(func_1(Struct_4(true, global3.a, 46439i, vec2<i32>(global1.c, global0.b.a.x), false), Struct_2(global0.c, global0.b, Struct_1(vec2<i32>(0i, u_input.b.x), global1.d.x))), Struct_2(Struct_1(global1.b.a, var_1), Struct_1(vec2<i32>(-31251i, global1.b.a.x), 0i), Struct_1(global0.b.a, u_input.b.x))).b, global1.b), !select(vec3<bool>(global1.a, global1.e, var_3.a), select(vec3<bool>(false, false, true), vec3<bool>(true, global1.a, false), var_3.a), vec3<bool>(true, var_3.a, var_3.a)), func_2(), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(142f)))) != -1551f), ~_wgslsmith_add_i32(0i, abs(abs(-1i))), ~u_input.b.zw, global1.e);
    let x = u_input.a;
    s_output = StorageBuffer(-(~firstTrailingBit(vec3<i32>(u_input.b.x, global0.c.a.x, 40006i))), _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(step(2410f, var_0.x)), global3.a.a.x & var_4.c);
}

