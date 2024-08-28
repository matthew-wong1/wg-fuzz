struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: f32,
    d: i32,
    e: bool,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: vec4<bool>,
    b: u32,
    c: vec3<bool>,
    d: vec4<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
    c: vec3<u32>,
    d: Struct_3,
    e: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec4<bool>(false, false, true, true), 13002u, vec3<bool>(true, false, false), vec4<f32>(-637f, -537f, -175f, 257f));

var<private> global1: Struct_4 = Struct_4(Struct_1(vec4<u32>(1u, 91037u, 0u, 30891u), 1u, -220f, 2082i, true), i32(-2147483648), vec3<u32>(4294967295u, 0u, 4294967295u), Struct_3(vec4<bool>(true, false, true, true), 1u, vec3<bool>(false, false, true), vec4<f32>(-946f, 1086f, -331f, 1373f)), 0u);

var<private> global2: array<vec4<f32>, 23> = array<vec4<f32>, 23>(vec4<f32>(1194f, -1520f, 708f, -1795f), vec4<f32>(-1128f, -1550f, -1352f, -554f), vec4<f32>(1717f, -1683f, -1002f, -2618f), vec4<f32>(-1000f, 461f, -757f, -718f), vec4<f32>(-743f, -1155f, 1000f, -132f), vec4<f32>(180f, 552f, -357f, 215f), vec4<f32>(-538f, -1223f, -539f, 1648f), vec4<f32>(354f, -2039f, 2135f, -1202f), vec4<f32>(-714f, -1330f, 1876f, 1524f), vec4<f32>(-868f, -907f, -1854f, 737f), vec4<f32>(975f, 156f, -744f, 1196f), vec4<f32>(762f, -1807f, 840f, 1290f), vec4<f32>(-1000f, 268f, 671f, 808f), vec4<f32>(1060f, -1573f, -1478f, 155f), vec4<f32>(-668f, -1690f, 1070f, 1179f), vec4<f32>(1354f, -125f, 2287f, -1812f), vec4<f32>(1499f, -965f, -2243f, 1514f), vec4<f32>(-175f, 472f, 1099f, -596f), vec4<f32>(-903f, 2052f, 1036f, 517f), vec4<f32>(-1186f, 1355f, -1000f, -1538f), vec4<f32>(893f, 308f, 420f, -825f), vec4<f32>(2629f, 1000f, -578f, 265f), vec4<f32>(1000f, -353f, 855f, 117f));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_3) -> vec3<bool> {
    var var_0 = select(vec4<i32>(min(countOneBits(global1.b), ~u_input.d.x), 0i, 8097i, _wgslsmith_add_i32(u_input.d.x, -global1.a.d)) << (_wgslsmith_sub_vec4_u32(global1.a.a >> (firstLeadingBit(vec4<u32>(global0.b, 50636u, global1.e, global0.b)) % vec4<u32>(32u)), ~(vec4<u32>(u_input.a.x, 81912u, 59770u, global1.c.x) | global1.a.a)) % vec4<u32>(32u)), -firstTrailingBit(vec4<i32>(_wgslsmith_dot_vec2_i32(u_input.d, vec2<i32>(u_input.d.x, u_input.d.x)), u_input.d.x, -1i, 2147483647i >> (u_input.c % 32u))), !select(select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, global0.c.x, false, arg_0.c.x), vec4<bool>(true, global1.a.e, global1.d.c.x, arg_0.c.x)), global1.d.a, true), vec4<bool>(global1.d.a.x, all(vec4<bool>(global1.d.a.x, true, false, false)), true, false), select(!global1.d.a, vec4<bool>(false, false, global1.a.e, arg_0.c.x), global0.a.x)));
    let var_1 = Struct_4(Struct_1(vec4<u32>(~abs(arg_0.b), 0u, reverseBits(~global0.b), 4294967295u), 94145u, -248f, min(abs(var_0.x), i32(-1i) * -var_0.x), arg_0.a.x), ~(-25874i), select(~(~global1.c & global1.a.a.wwy), _wgslsmith_sub_vec3_u32(vec3<u32>(global1.c.x >> (1u % 32u), global0.b ^ u_input.c, ~35995u), ~vec3<u32>(u_input.a.x, arg_0.b, 1u)), !vec3<bool>(true, all(vec4<bool>(true, true, true, false)), true)), global1.d, (_wgslsmith_mod_u32(~4294967295u, 1u) & select(~u_input.b.x, global1.e, any(arg_0.c))) | global0.b);
    global0 = var_1.d;
    var var_2 = 19515u;
    let var_3 = vec2<i32>(_wgslsmith_clamp_i32(5436i, _wgslsmith_mult_i32(_wgslsmith_mod_i32(global1.b, var_0.x), _wgslsmith_add_i32(16070i, global1.a.d)), _wgslsmith_add_i32(var_1.b, ~_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -12027i), vec2<i32>(u_input.d.x, -6699i)))), global1.a.d);
    return !select(global1.d.a.xzz, arg_0.a.xzz, global1.d.a.yyy);
}

fn func_2(arg_0: f32, arg_1: vec2<u32>, arg_2: vec4<f32>) -> u32 {
    global2 = array<vec4<f32>, 23>();
    let var_0 = arg_2.x;
    let var_1 = Struct_3(vec4<bool>(!any(!vec2<bool>(false, global0.c.x)), global1.d.c.x, var_0 <= _wgslsmith_f_op_f32(floor(global0.d.x)), ~(~u_input.c) < ~arg_1.x), ~35687u, func_3(global1.d), vec4<f32>(_wgslsmith_f_op_f32(-916f + 306f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_2.x, 850f, global1.d.c.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-144f)) - _wgslsmith_div_f32(-808f, global0.d.x))), _wgslsmith_f_op_f32(var_0 * _wgslsmith_f_op_f32(sign(-1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1322f))));
    var var_2 = Struct_1(abs(global1.a.a), u_input.a.x, global1.a.c, -26677i, any(vec2<bool>(true, true)) || !global0.a.x);
    let var_3 = -179f;
    return reverseBits(~global1.a.a.x);
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_2) -> f32 {
    var var_0 = vec2<u32>(reverseBits(_wgslsmith_mod_u32(~global1.a.a.x ^ global1.d.b, ~0u)), ~0u);
    var var_1 = Struct_1(~(~vec4<u32>(~arg_0.x, func_2(-475f, vec2<u32>(12447u, 25906u), vec4<f32>(global1.d.d.x, 1814f, 1489f, global0.d.x)), ~global0.b, firstTrailingBit(22457u))), 4294967295u, _wgslsmith_f_op_f32(global1.a.c + -215f), ~(~(-select(u_input.d.x, -2147483647i, arg_1.a))), true);
    global2 = array<vec4<f32>, 23>();
    global1 = Struct_4(Struct_1(_wgslsmith_clamp_vec4_u32(~vec4<u32>(arg_0.x, arg_0.x, 17865u, arg_0.x), var_1.a, ~_wgslsmith_div_vec4_u32(vec4<u32>(0u, 4294967295u, 1u, 11480u), vec4<u32>(38068u, global1.e, var_0.x, 0u))), 4294967295u, var_1.c, -17770i, true), u_input.d.x, vec3<u32>(1u, _wgslsmith_div_u32(var_0.x, global0.b << (global1.e % 32u)), ~0u) << (~vec3<u32>(global1.d.b, global0.b, ~1u) % vec3<u32>(32u)), Struct_3(select(!(!vec4<bool>(arg_1.a, arg_1.a, global0.c.x, false)), !vec4<bool>(false, global1.a.e, false, var_1.e), select(vec4<bool>(true, false, true, var_1.e), !vec4<bool>(var_1.e, global1.a.e, var_1.e, false), select(global1.d.a, vec4<bool>(var_1.e, global1.a.e, global1.a.e, false), false))), global0.b, vec3<bool>(global0.c.x, arg_1.a, arg_1.a), global1.d.d), ~1u);
    global0 = global1.d;
    return -1255f;
}

fn func_4(arg_0: bool, arg_1: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-global0.d.ywz);
    global0 = Struct_3(vec4<bool>(false, false, ((arg_1.c <= arg_1.c) && true) | true, false), 31700u, vec3<bool>(global1.d.c.x, all(!global0.a), !arg_1.e), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global0.d.x, arg_1.c, 840f, var_0.x))), _wgslsmith_f_op_vec4_f32(floor(global2[_wgslsmith_index_u32(36369u, 23u)])), u_input.d.x >= arg_1.d)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-597f, -673f, var_0.x, 759f))))));
    var var_1 = Struct_4(Struct_1(vec4<u32>(select(~global1.c.x, 0u, true), 0u, ~0u, _wgslsmith_div_u32(global1.c.x, global1.d.b) >> (1u % 32u)), min(0u ^ arg_1.a.x, countOneBits(~3982u)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.d.x), 481f) + global1.a.c), _wgslsmith_clamp_i32(0i, _wgslsmith_mult_i32(-50056i, abs(arg_1.d)), 7959i), true), ~0i, abs(max(firstLeadingBit(u_input.a), abs(u_input.b)) ^ global1.c), global1.d, 0u);
    let var_2 = Struct_3(global1.d.a, _wgslsmith_div_u32(1u, _wgslsmith_mult_u32(var_1.a.b, var_1.d.b)), select(select(vec3<bool>(9098u > u_input.b.x, true, global0.d.x >= arg_1.c), vec3<bool>(true, var_1.a.e | arg_1.e, var_1.d.a.x), global0.c), var_1.d.a.wwy, select(vec3<bool>(true, true, func_3(Struct_3(global0.a, global0.b, vec3<bool>(arg_0, arg_0, true), vec4<f32>(var_0.x, -454f, -1019f, 289f))).x), vec3<bool>(all(vec2<bool>(false, arg_0)), arg_0, false), func_3(var_1.d).x)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(748f, global1.a.c)) - var_1.d.d.x)), var_1.a.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.d.x * var_1.d.d.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - arg_1.c))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0.x - -693f)))));
    global0 = var_1.d;
    return Struct_1(~_wgslsmith_mult_vec4_u32(global1.a.a, _wgslsmith_add_vec4_u32(~vec4<u32>(var_2.b, var_2.b, var_2.b, global1.a.a.x), countOneBits(vec4<u32>(u_input.b.x, global1.d.b, var_1.e, u_input.b.x)))), 1u, _wgslsmith_f_op_f32(-global0.d.x), select(~(-43835i), var_1.b, var_2.c.x) << (var_1.e % 32u), all(vec4<bool>(var_2.c.x, true, var_2.a.x, all(global0.a.zx))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = global1.d;
    let var_0 = func_4(global0.c.x, Struct_1(~reverseBits(global1.a.a), _wgslsmith_dot_vec4_u32(vec4<u32>(global1.a.a.x, global1.e, 30176u, 0u) | global1.a.a, ~vec4<u32>(0u, 24847u, global0.b, global0.b)), _wgslsmith_f_op_f32(global0.d.x - _wgslsmith_f_op_f32(func_1(~global1.a.a, Struct_2(global1.a.e)))), -_wgslsmith_mult_i32(global1.b, u_input.d.x) | _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 17868i), vec2<i32>(16090i, 1i)), reverseBits(-1i)), global0.c.x));
    global2 = array<vec4<f32>, 23>();
    var var_1 = Struct_4(var_0, _wgslsmith_div_i32(~firstTrailingBit(var_0.d), -(~(global1.b ^ var_0.d))), ~vec3<u32>(global0.b, _wgslsmith_mod_u32(16100u, var_0.b), 4294967295u) | var_0.a.zyw, global1.d, firstLeadingBit(_wgslsmith_sub_u32(~min(13588u, 962u), _wgslsmith_mult_u32(_wgslsmith_mult_u32(global1.c.x, u_input.b.x), abs(var_0.a.x)))));
    let var_2 = Struct_2((!var_0.e && ((var_0.d < -1i) && all(global0.a))) & !(!var_1.d.c.x));
    var var_3 = 0i;
    let var_4 = false;
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, ~_wgslsmith_sub_u32(~(~u_input.b.x), _wgslsmith_dot_vec2_u32(var_1.a.a.xx, abs(vec2<u32>(28579u, var_1.d.b)))));
}

