struct Struct_1 {
    a: i32,
    b: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 32>;

var<private> global1: f32 = 713f;

var<private> global2: Struct_1;

var<private> global3: Struct_1;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: i32) -> i32 {
    global0 = array<vec3<f32>, 32>();
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(407f, 913f, 605f, 2434f), vec4<f32>(-994f, -308f, 1348f, 321f))), vec4<f32>(326f, -1249f, -567f, -508f)))) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-388f, 1463f, 1279f, -2107f)) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(243f, 2388f, 183f, 665f))))))));
    var_0 = vec4<f32>(-1281f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(447f - -436f))) + var_0.x), var_0.x, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.x)))))));
    global3 = Struct_1(-(~(-17358i)), ~u_input.c);
    let var_1 = arg_0;
    return ~(~reverseBits(reverseBits(-44020i))) >> (firstTrailingBit(reverseBits(1u)) % 32u);
}

fn func_2(arg_0: vec3<i32>, arg_1: vec4<i32>, arg_2: f32) -> Struct_1 {
    var var_0 = Struct_1(func_3(Struct_1(1i, 44709u), !vec4<bool>(select(false, false, false), true, select(true, true, false), true), arg_1.x), _wgslsmith_mult_u32(global2.b, countOneBits(28111u)) >> (max(_wgslsmith_sub_u32(57030u, global2.b), select(~global2.b, 3426u & u_input.c, select(true, true, false))) % 32u));
    let var_1 = firstLeadingBit(select(31370u, ~_wgslsmith_add_u32(_wgslsmith_div_u32(15774u, 23618u), global3.b), true));
    var var_2 = Struct_1(-arg_1.x, global2.b);
    var var_3 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(-750f))));
    var_3 = arg_2;
    return Struct_1(-(min(min(var_2.a, 17598i), countOneBits(19784i)) >> (select(var_1, max(global2.b, 1u), true) % 32u)), var_0.b);
}

fn func_1() -> Struct_1 {
    global3 = func_2(vec3<i32>(_wgslsmith_dot_vec3_i32(~vec3<i32>(global3.a, -2493i, -2147483647i), vec3<i32>(global3.a, -1056i, global3.a) & -vec3<i32>(10476i, global2.a, global2.a)), 1i, _wgslsmith_mod_i32(global3.a, -11769i) & (1i ^ _wgslsmith_div_i32(global2.a, -68278i))), abs(vec4<i32>(_wgslsmith_div_i32(2147483647i, -27355i), ~min(1i, -46817i), -2147483647i, _wgslsmith_mult_i32(global3.a >> (4294967295u % 32u), global3.a))), _wgslsmith_f_op_f32(f32(-1f) * -262f));
    global2 = func_2(_wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(select(vec3<i32>(2147483647i, u_input.d, global3.a), vec3<i32>(u_input.a.x, 0i, global2.a), vec3<bool>(false, true, true)), vec3<i32>(-44993i, u_input.d, global2.a) ^ vec3<i32>(global2.a, global2.a, global3.a), _wgslsmith_sub_vec3_i32(vec3<i32>(-27890i, u_input.d, 14175i), vec3<i32>(-2147483647i, global2.a, global3.a))) >> ((vec3<u32>(4294967295u, global3.b, u_input.c) ^ min(vec3<u32>(global3.b, 37172u, global3.b), vec3<u32>(9794u, 4294967295u, 0u))) % vec3<u32>(32u)), firstTrailingBit(~(vec3<i32>(global2.a, 36525i, global2.a) << (vec3<u32>(global3.b, 1u, global3.b) % vec3<u32>(32u))))), abs(vec4<i32>(u_input.a.x, global3.a, i32(-1i) * -3357i, global3.a)) & ~(-(~vec4<i32>(19364i, u_input.a.x, -1i, -2147483647i))), 414f);
    var var_0 = ~vec3<i32>(countOneBits(-2147483647i), global2.a, 0i);
    let var_1 = func_2(vec3<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(var_0.xx, reverseBits(u_input.a), vec2<i32>(0i, global2.a)), u_input.a), ~(-(~u_input.d)), func_2(abs(vec3<i32>(-16542i, 1i, u_input.a.x)), _wgslsmith_mod_vec4_i32(vec4<i32>(23635i, global2.a, global3.a, -9020i), vec4<i32>(0i, -2147483647i, 1i, u_input.d) << (vec4<u32>(38632u, global3.b, 59439u, global3.b) % vec4<u32>(32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1107f - -1636f))).a), _wgslsmith_mult_vec4_i32(-countOneBits(vec4<i32>(var_0.x, -2147483647i, -2147483647i, global3.a)), firstTrailingBit(-vec4<i32>(-2502i, 0i, global2.a, global2.a))) >> (abs(_wgslsmith_sub_vec4_u32(vec4<u32>(global2.b, 12852u, global2.b, 1u), ~vec4<u32>(67061u, 49019u, 1u, 0u))) % vec4<u32>(32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-261f))) - _wgslsmith_f_op_f32(f32(-1f) * -114f)));
    let var_2 = Struct_1(_wgslsmith_mult_i32(2147483647i, _wgslsmith_div_i32(-(i32(-1i) * -2147483647i), _wgslsmith_add_i32(var_1.a, _wgslsmith_dot_vec2_i32(vec2<i32>(var_1.a, 0i), var_0.zy)))), countOneBits(u_input.c & var_1.b));
    return Struct_1(func_3(Struct_1(var_0.x, 30050u), vec4<bool>(all(vec4<bool>(false, true, false, false)), false, false, false), 0i), 89105u);
}

fn func_4(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: bool, arg_3: Struct_1) -> Struct_1 {
    global1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-847f)) - _wgslsmith_f_op_f32(f32(-1f) * -682f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1478f)))));
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(-283f, _wgslsmith_f_op_f32(select(-224f, 1000f, arg_2))))))), 171f, -1540f);
    global1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.x + var_0.x))) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(-477f, var_0.x, arg_2)), 565f))) * _wgslsmith_f_op_f32(step(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, 1258f)))))));
    let var_1 = arg_3;
    global1 = var_0.x;
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(func_1(), firstTrailingBit(_wgslsmith_add_vec3_i32(~(-vec3<i32>(-1i, global2.a, u_input.d)), select(vec3<i32>(-28527i, u_input.d, u_input.d), select(vec3<i32>(global3.a, -2147483647i, -2147483647i), vec3<i32>(u_input.a.x, global3.a, 0i), true), select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false))))), true, func_1());
    global3 = Struct_1(_wgslsmith_mult_i32(global2.a, 2147483647i), _wgslsmith_mod_u32(~global3.b, global2.b));
    let var_1 = firstLeadingBit(select(~vec4<u32>(var_0.b, ~64871u, ~10784u, global3.b), abs(_wgslsmith_add_vec4_u32(~vec4<u32>(global3.b, global3.b, var_0.b, 4294967295u), ~vec4<u32>(0u, u_input.b, global3.b, global2.b))), all(select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true)))));
    global3 = func_4(var_0, max(max(firstTrailingBit(vec3<i32>(-1i, global3.a, global3.a)) & vec3<i32>(2147483647i, var_0.a, -5730i), vec3<i32>(-1i) * -vec3<i32>(var_0.a, var_0.a, 0i)), ~firstLeadingBit(-vec3<i32>(-2147483647i, global3.a, var_0.a))), false, Struct_1(1i, abs(_wgslsmith_sub_u32(var_0.b, 1u)) ^ 4294967295u));
    var var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1769f, -139f, 445f, -329f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1390f, -321f, -393f, 2120f) - vec4<f32>(-696f, 613f, 2578f, 858f))))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1356f, -116f, 1876f, -417f)))))), all(!select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(633f, 755f, -1000f, -158f), vec4<f32>(546f, 1772f, -423f, 319f))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -986f), _wgslsmith_f_op_f32(554f * -2040f), _wgslsmith_f_op_f32(-1745f - 1672f), _wgslsmith_f_op_f32(1320f + 214f)), true)), vec4<f32>(573f, -777f, _wgslsmith_f_op_f32(-769f - -646f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-125f - -878f))))));
    let var_3 = all(vec3<bool>(true, true, true));
    var_2 = _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(ceil(var_2.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) - _wgslsmith_f_op_f32(-var_2.x)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(1829f)))), _wgslsmith_f_op_f32(var_2.x * _wgslsmith_div_f32(1509f, -1263f)))), var_2.x)));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.zz << (~var_1.zw % vec2<u32>(32u)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_2.x), -347f, 1245f, -387f) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1847f, 492f, -472f, 746f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(var_2.x)), _wgslsmith_f_op_f32(-var_2.x), -665f, var_2.x) + vec4<f32>(_wgslsmith_f_op_f32(-var_2.x), -519f, var_2.x, _wgslsmith_f_op_f32(step(var_2.x, var_2.x))))), _wgslsmith_div_u32(~var_0.b, var_1.x));
}

