struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: vec3<i32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec4<f32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: Struct_1 = Struct_1(vec4<f32>(-1125f, -1136f, 1000f, 603f), -14566i, vec3<i32>(1i, 0i, 16279i));

var<private> global2: Struct_2;

var<private> global3: array<vec4<f32>, 12> = array<vec4<f32>, 12>(vec4<f32>(-267f, -1897f, -366f, -489f), vec4<f32>(1216f, -486f, -1060f, 213f), vec4<f32>(204f, -1000f, -1539f, -885f), vec4<f32>(374f, 364f, -2165f, 723f), vec4<f32>(1152f, -268f, -215f, -1766f), vec4<f32>(177f, -1425f, -1000f, -418f), vec4<f32>(514f, 1000f, -1320f, 1000f), vec4<f32>(-518f, 1124f, 144f, -1078f), vec4<f32>(749f, -215f, 217f, 1945f), vec4<f32>(-694f, 149f, -628f, 561f), vec4<f32>(-682f, 910f, -317f, -903f), vec4<f32>(141f, 572f, 342f, -248f));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: vec2<f32>) -> vec3<u32> {
    let var_0 = vec2<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 1u), countOneBits(vec2<u32>(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(97633u, 4294967295u, 16602u, 37298u), vec4<u32>(62839u, 56354u, 4294967295u, 41308u))))), _wgslsmith_dot_vec2_u32(max(vec2<u32>(~4294967295u, _wgslsmith_add_u32(0u, 1u)), ~select(vec2<u32>(20351u, 63451u), vec2<u32>(4294967295u, 4294967295u), false)), ~vec2<u32>(1u, 1u) >> (vec2<u32>(1u, 1u) % vec2<u32>(32u))));
    global3 = array<vec4<f32>, 12>();
    global3 = array<vec4<f32>, 12>();
    let var_1 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(185f, global1.a.x)), -326f, -345f, -228f), -2147483647i, global2.c.c);
    var var_2 = global2.c;
    return _wgslsmith_mult_vec3_u32(vec3<u32>(0u, ~var_0.x ^ var_0.x, ~reverseBits(34094u)), min(min(firstLeadingBit(vec3<u32>(0u, var_0.x, 6948u)), vec3<u32>(var_0.x, 11170u, var_0.x) >> (vec3<u32>(1u, var_0.x, 4294967295u) % vec3<u32>(32u))), firstTrailingBit(vec3<u32>(0u, 40511u, 1u) ^ vec3<u32>(var_0.x, var_0.x, var_0.x)))) >> (vec3<u32>(1u, countOneBits(reverseBits(1u)), countOneBits(_wgslsmith_add_u32(70150u, 0u)) << (_wgslsmith_mult_u32(~var_0.x, ~var_0.x) % 32u)) % vec3<u32>(32u));
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: Struct_2, arg_3: vec3<u32>) -> Struct_2 {
    var var_0 = select(vec2<bool>(false, arg_1), vec2<bool>(false, arg_1), select(!select(vec2<bool>(arg_1, false), vec2<bool>(arg_1, arg_1), arg_1), select(vec2<bool>(true, !arg_1), select(!vec2<bool>(arg_1, true), vec2<bool>(true, arg_1), arg_1), all(vec4<bool>(true, arg_1, arg_1, arg_1))), false));
    var var_1 = vec3<bool>(!arg_1, arg_1, arg_1);
    global1 = global2.c;
    let var_2 = global2.c;
    var_1 = !vec3<bool>(all(!select(vec3<bool>(true, true, arg_1), vec3<bool>(true, var_1.x, arg_1), arg_1)), !(!(!var_0.x)), all(!(!vec3<bool>(var_1.x, true, true))));
    return arg_2;
}

fn func_1(arg_0: Struct_1) -> Struct_2 {
    return func_3(global2.c, false, Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(325f, _wgslsmith_f_op_f32(-global2.b.x), _wgslsmith_f_op_f32(ceil(global2.a.x)), -140f) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(global1.a - vec4<f32>(-431f, -182f, global1.a.x, global1.a.x)), vec4<f32>(-647f, global2.c.a.x, -695f, arg_0.a.x), true))), _wgslsmith_f_op_vec4_f32(floor(global3[_wgslsmith_index_u32(countOneBits(~0u), 12u)])), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(global2.a))), u_input.a.x, global2.c.c)), select(vec3<u32>(1u, 1u, 1u), ~max(func_2(arg_0.a.wx), vec3<u32>(51939u, 4294967295u, 4294967295u)), vec3<bool>(true, true, true)));
}

fn func_4(arg_0: i32, arg_1: f32, arg_2: Struct_2) -> vec4<f32> {
    var var_0 = _wgslsmith_add_u32(55609u, _wgslsmith_mod_u32(~abs(firstTrailingBit(77571u)), ~34841u));
    let var_1 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(-273f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2399f * 563f))), arg_1, _wgslsmith_f_op_f32(-global2.b.x), _wgslsmith_f_op_f32(trunc(arg_2.b.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(global2.c.a)) - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(298f, 1000f, arg_2.b.x, 1895f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(615f, global1.a.x, global2.a.x, 651f)), true))), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -578f)), arg_2.b.x, func_1(Struct_1(global1.a, arg_2.c.c.x, vec3<i32>(arg_2.c.b, arg_0, global1.b))).b.x, arg_2.c.a.x), global2.c.b, global1.c));
    let var_2 = vec4<u32>(firstLeadingBit(46784u), ~(~4294967295u), ~1585u, 37308u) >> (vec4<u32>(50539u | func_2(var_1.c.a.wz).x, ~_wgslsmith_clamp_u32(1u, ~0u, 0u), 1u, 52744u) % vec4<u32>(32u));
    global3 = array<vec4<f32>, 12>();
    global0 = _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(-(0i | arg_0), max(-2147483647i ^ global2.c.c.x, firstTrailingBit(0i))), _wgslsmith_add_i32(global2.c.b, u_input.a.x), firstLeadingBit(var_1.c.c.x), -1i), select((_wgslsmith_add_vec4_i32(vec4<i32>(-8485i, 2147483647i, 15073i, u_input.a.x), vec4<i32>(-1i, -1i, -57556i, 0i)) ^ _wgslsmith_mod_vec4_i32(vec4<i32>(arg_0, 1i, var_1.c.b, 14665i), vec4<i32>(var_1.c.c.x, -3463i, global1.b, 15291i))) ^ (vec4<i32>(global2.c.b, 1i, -10820i, -1i) | vec4<i32>(global1.b, -716i, 27910i, 2147483647i)), vec4<i32>(1i, -arg_0, 2147483647i, abs(arg_0)) >> (select(var_2, _wgslsmith_add_vec4_u32(var_2, vec4<u32>(var_2.x, var_2.x, 0u, 94495u)), vec4<bool>(true, true, true, false)) % vec4<u32>(32u)), vec4<bool>(true, all(select(vec2<bool>(true, false), vec2<bool>(false, true), false)), false, !any(vec2<bool>(false, false)))));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(round(-992f)), _wgslsmith_f_op_f32(ceil(867f)), _wgslsmith_f_op_f32(359f - global2.c.a.x)) + var_1.c.a)));
}

fn func_5(arg_0: Struct_2, arg_1: bool) -> Struct_2 {
    let var_0 = Struct_1(global2.c.a, ~(-1i), vec3<i32>(abs(global1.c.x), ~(global2.c.c.x >> (1u % 32u)), ~(-func_3(global2.c, arg_1, Struct_2(global2.c.a, vec4<f32>(arg_0.a.x, 1246f, global1.a.x, global1.a.x), Struct_1(global2.a, 3737i, u_input.a)), vec3<u32>(70329u, 19025u, 1u)).c.c.x)));
    global3 = array<vec4<f32>, 12>();
    var var_1 = ~vec2<u32>(max(~6874u, ~0u), 0u);
    global0 = _wgslsmith_dot_vec4_i32(firstLeadingBit(min(min(vec4<i32>(-32530i, 23180i, var_0.b, u_input.a.x), vec4<i32>(0i, global1.c.x, -37808i, -1i)), vec4<i32>(-11022i, 0i, -33801i, var_0.b) << (vec4<u32>(var_1.x, 1u, 0u, 17285u) % vec4<u32>(32u))) & _wgslsmith_div_vec4_i32(abs(vec4<i32>(arg_0.c.b, 21383i, global2.c.b, u_input.a.x)), firstTrailingBit(vec4<i32>(-12453i, global1.c.x, -47625i, global2.c.b)))), vec4<i32>(-func_1(Struct_1(vec4<f32>(559f, var_0.a.x, -1043f, global2.a.x), -6360i, vec3<i32>(u_input.a.x, u_input.a.x, global1.c.x))).c.b, -var_0.b, global2.c.c.x, global2.c.c.x));
    let var_2 = ~countOneBits(vec3<u32>(_wgslsmith_mult_u32(9182u, var_1.x), var_1.x, reverseBits(14283u)));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(Struct_2(_wgslsmith_f_op_vec4_f32(func_4(_wgslsmith_div_i32(-31003i, global1.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global1.a.x)) - 425f), func_1(global2.c))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1.a.x, global2.c.a.x, 243f, 106f), _wgslsmith_div_vec4_f32(global3[_wgslsmith_index_u32(14079u, 12u)], vec4<f32>(global1.a.x, -1220f, global1.a.x, -100f)), vec4<bool>(false, true, false, true))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(917f, global2.b.x, 1000f, global1.a.x) - vec4<f32>(332f, global2.c.a.x, -1000f, -693f))), global2.c), true);
    var var_1 = var_0;
    var_1 = func_1(func_1(Struct_1(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.b.x, -572f, 841f, -635f), var_1.a))), global2.c.c.x | ~5902i, func_5(Struct_2(var_0.b, vec4<f32>(920f, var_0.b.x, var_1.a.x, -1144f), Struct_1(vec4<f32>(998f, 701f, var_0.a.x, -648f), 1i, vec3<i32>(global1.b, 13844i, 0i))), true).c.c)).c);
    var_1 = func_3(func_3(Struct_1(vec4<f32>(func_5(Struct_2(vec4<f32>(global2.b.x, 286f, global2.c.a.x, var_1.b.x), vec4<f32>(var_0.a.x, 196f, var_0.c.a.x, 164f), Struct_1(global2.b, global2.c.c.x, vec3<i32>(var_0.c.c.x, var_0.c.b, -2147483647i))), false).a.x, -402f, global1.a.x, global2.a.x), max(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.c.b, u_input.a.x), var_0.c.c.zy), _wgslsmith_clamp_i32(global2.c.b, global2.c.b, -3851i)), countOneBits(abs(global2.c.c))), var_0.c.c.x < u_input.a.x, var_0, _wgslsmith_sub_vec3_u32(select(vec3<u32>(1u, 1u, 1u), reverseBits(vec3<u32>(29070u, 57014u, 23612u)), vec3<bool>(false, true, true)), ~vec3<u32>(1u, 1u, 1u))).c, false || (all(vec2<bool>(false, false)) || (all(vec4<bool>(false, false, false, false)) & false)), var_0, select(~max(vec3<u32>(4294967295u, 3213u, 1u), _wgslsmith_clamp_vec3_u32(vec3<u32>(47469u, 30487u, 26738u), vec3<u32>(35948u, 6456u, 52382u), vec3<u32>(34806u, 4294967295u, 0u))), vec3<u32>(24174u, min(select(34934u, 0u, false), _wgslsmith_mult_u32(0u, 0u)), 86045u), select(false, true, select(0i < u_input.a.x, select(false, false, false), true))));
    var_1 = var_0;
    var var_2 = Struct_2(var_1.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1279f, 2291f, 313f, global2.b.x)) + _wgslsmith_f_op_vec4_f32(global3[_wgslsmith_index_u32(22778u, 12u)] + vec4<f32>(-995f, var_1.a.x, -1000f, global1.a.x)))) + _wgslsmith_f_op_vec4_f32(ceil(var_0.c.a))), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a.x, -1470f, var_1.a.x, 539f))), 0i, vec3<i32>(min(-var_0.c.b, firstLeadingBit(global2.c.c.x)), global2.c.c.x, _wgslsmith_add_i32(-2147483647i, firstLeadingBit(34945i)))));
    let var_3 = -325f;
    global2 = Struct_2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1349f, global2.a.x, global1.a.x, var_0.b.x))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(2525f, -991f, var_1.b.x, var_1.a.x))), var_2.c.a, true)))), global1.a, true)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(var_0.a))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.c.a.x, -830f, var_1.c.a.x, 467f)) + var_0.c.a)))), func_1(var_1.c).c);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(1u, 1u), firstTrailingBit(u_input.a.x | 2147483647i));
}

