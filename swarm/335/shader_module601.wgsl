struct Struct_1 {
    a: vec2<u32>,
    b: vec3<bool>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: Struct_1,
    d: bool,
    e: vec3<u32>,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: f32,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec2<u32>(1u, 0u), vec3<bool>(true, false, true), true), vec4<u32>(21110u, 32869u, 29563u, 0u), Struct_1(vec2<u32>(1u, 100378u), vec3<bool>(true, true, false), false), true, vec3<u32>(1u, 54467u, 1u));

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec4<bool>) -> vec2<i32> {
    var var_0 = u_input.b.x >= 1i;
    let var_1 = Struct_3(false);
    global0 = Struct_2(global0.c, ~_wgslsmith_sub_vec4_u32(global0.b, ~vec4<u32>(66444u, global0.c.a.x, 43848u, global0.b.x)), Struct_1(vec2<u32>(global0.e.x, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, global0.e.x), vec2<u32>(4294967295u, global0.e.x))), global0.c.b, false), ((100546i & select(2996i, u_input.b.x, var_1.a)) > u_input.a.x) | false, ~(~global0.b.zwz));
    global0 = Struct_2(Struct_1(vec2<u32>(~abs(global0.e.x), _wgslsmith_div_u32(4294967295u, 14137u)), vec3<bool>(!(global0.a.c && true), arg_0.x, arg_0.x), var_1.a), vec4<u32>(global0.b.x, firstLeadingBit(0u) << (1u % 32u), ~global0.c.a.x, min(global0.a.a.x, _wgslsmith_add_u32(36323u, global0.c.a.x))) << (vec4<u32>(~(global0.b.x >> (4294967295u % 32u)), ~global0.a.a.x, ~global0.e.x ^ ~global0.a.a.x, ~global0.c.a.x) % vec4<u32>(32u)), global0.c, true, global0.e);
    var_0 = !arg_0.x;
    return u_input.a;
}

fn func_2(arg_0: i32) -> u32 {
    let var_0 = _wgslsmith_mod_vec2_i32(u_input.a, ~(-func_3(!vec4<bool>(false, true, global0.a.b.x, global0.c.b.x))));
    let var_1 = abs(-vec3<i32>(arg_0, arg_0, ~1i));
    global0 = Struct_2(global0.c, _wgslsmith_mult_vec4_u32(reverseBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 0u, global0.e.x, global0.b.x), global0.b, global0.b)), global0.b) << (~(~select(vec4<u32>(global0.c.a.x, 0u, 4294967295u, 4294967295u), global0.b, vec4<bool>(global0.d, true, global0.c.c, global0.c.c))) % vec4<u32>(32u)), Struct_1(vec2<u32>(global0.a.a.x, _wgslsmith_div_u32(_wgslsmith_sub_u32(global0.c.a.x, 32883u), ~global0.b.x)), global0.a.b, false), global0.a.c, ~vec3<u32>(~(~global0.e.x), _wgslsmith_sub_u32(global0.e.x, ~15264u), (global0.e.x | global0.c.a.x) & 4294967295u));
    var var_2 = _wgslsmith_f_op_f32(abs(1295f));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(-1922f)), _wgslsmith_f_op_f32(sign(-728f))))))));
    return global0.a.a.x >> ((~countOneBits(50981u) << (global0.a.a.x % 32u)) % 32u);
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: vec3<bool>) -> f32 {
    global0 = Struct_2(arg_1, vec4<u32>(select(0u, arg_1.a.x << (_wgslsmith_sub_u32(arg_1.a.x, 8892u) % 32u), arg_0.x), _wgslsmith_sub_u32(~_wgslsmith_mod_u32(global0.e.x, global0.e.x), arg_1.a.x ^ select(1u, 22057u, global0.c.c)), ~_wgslsmith_clamp_u32(arg_1.a.x, select(4294967295u, 51587u, false), ~1u), _wgslsmith_dot_vec4_u32(~global0.b & select(global0.b, global0.b, vec4<bool>(arg_2.x, true, global0.d, arg_1.b.x)), ~vec4<u32>(global0.a.a.x, arg_1.a.x, 22373u, global0.a.a.x))), global0.a, false, vec3<u32>(global0.e.x, global0.c.a.x, 0u) & ~vec3<u32>(max(global0.e.x, 4294967295u), _wgslsmith_add_u32(global0.e.x, 87574u), _wgslsmith_add_u32(46208u, 39651u)));
    let var_0 = Struct_2(arg_1, _wgslsmith_add_vec4_u32(firstTrailingBit(_wgslsmith_div_vec4_u32(vec4<u32>(28602u, 0u, 4294967295u, global0.c.a.x), select(vec4<u32>(global0.b.x, arg_1.a.x, 12906u, global0.c.a.x), global0.b, arg_1.b.x))), vec4<u32>(_wgslsmith_div_u32(arg_1.a.x, global0.a.a.x), 0u, arg_1.a.x, func_2(u_input.a.x)) | _wgslsmith_clamp_vec4_u32(~vec4<u32>(44110u, arg_1.a.x, 50376u, global0.c.a.x), countOneBits(vec4<u32>(global0.e.x, 16620u, 1u, 1u)), ~vec4<u32>(1u, 0u, 4294967295u, 1u))), global0.a, all(!vec2<bool>(false, !arg_1.b.x)), global0.b.xyy);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1316f - -851f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -543f))))) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1145f - 189f))));
}

fn func_4(arg_0: vec2<u32>, arg_1: vec4<f32>, arg_2: f32, arg_3: Struct_1) -> Struct_3 {
    var var_0 = max(vec3<i32>(-1i, _wgslsmith_dot_vec4_i32(abs(vec4<i32>(u_input.b.x, u_input.b.x, -7256i, 27030i)), abs(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x))), countOneBits(min(u_input.a.x, -29466i))) ^ vec3<i32>(abs(u_input.a.x), abs(reverseBits(8278i)), abs(u_input.a.x)), vec3<i32>(u_input.a.x, u_input.a.x, firstLeadingBit(u_input.a.x) & u_input.a.x));
    var var_1 = Struct_2(Struct_1(countOneBits(~arg_0), !select(global0.c.b, select(arg_3.b, global0.c.b, false), all(global0.a.b.yy)), all(select(select(arg_3.b.xx, arg_3.b.xy, arg_3.b.x), select(global0.a.b.zz, vec2<bool>(arg_3.b.x, true), global0.d), arg_3.b.x))), ~vec4<u32>(countOneBits(global0.a.a.x), global0.c.a.x, arg_3.a.x, max(77264u, arg_3.a.x >> (arg_3.a.x % 32u))), Struct_1(vec2<u32>(abs(12869u), ~select(20159u, 7148u, global0.d)), arg_3.b, false), any(select(!select(vec3<bool>(global0.a.b.x, true, arg_3.b.x), vec3<bool>(global0.d, false, arg_3.b.x), vec3<bool>(global0.d, global0.c.c, global0.d)), arg_3.b, arg_3.c)), global0.b.zyw);
    global0 = Struct_2(global0.a, countOneBits(vec4<u32>(~var_1.e.x, ~(~1u), ~_wgslsmith_sub_u32(arg_0.x, 4294967295u), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, arg_3.a.x, var_1.c.a.x, 64545u), _wgslsmith_mod_vec4_u32(vec4<u32>(46234u, 0u, global0.b.x, 81579u), global0.b)))), Struct_1(_wgslsmith_mult_vec2_u32(~arg_3.a, var_1.a.a), global0.c.b, all(var_1.a.b)), any(vec2<bool>(!(!arg_3.c), false)), global0.e);
    let var_2 = true;
    var_1 = Struct_2(global0.c, vec4<u32>(func_2(_wgslsmith_dot_vec3_i32(~vec3<i32>(36329i, u_input.a.x, 29230i), max(vec3<i32>(-44320i, u_input.b.x, u_input.b.x), vec3<i32>(2147483647i, var_0.x, 47957i)))), reverseBits(~(~54177u)), ~(~1u) | _wgslsmith_mult_u32(1u, countOneBits(arg_0.x)), _wgslsmith_mod_u32(global0.e.x ^ func_2(var_0.x), _wgslsmith_dot_vec3_u32(~var_1.b.zxz, ~var_1.b.zzy))), Struct_1(~_wgslsmith_div_vec2_u32(vec2<u32>(var_1.c.a.x, arg_0.x), _wgslsmith_sub_vec2_u32(vec2<u32>(arg_0.x, 4294967295u), vec2<u32>(global0.a.a.x, arg_0.x))), select(select(select(vec3<bool>(global0.d, false, true), vec3<bool>(arg_3.c, false, global0.c.c), vec3<bool>(global0.d, false, false)), !vec3<bool>(var_1.d, var_2, global0.c.c), any(vec4<bool>(global0.a.b.x, var_1.c.c, var_1.a.c, true))), vec3<bool>(true, true, true), false), var_2), var_1.c.b.x, ~_wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(var_1.a.a.x, arg_3.a.x), 1u, 28776u ^ var_1.a.a.x), global0.b.yxw ^ (vec3<u32>(114873u, 7078u, 1u) | vec3<u32>(var_1.b.x, var_1.b.x, 35689u))));
    return Struct_3(!all(select(vec4<bool>(false, true, false, global0.d), !vec4<bool>(false, global0.a.c, var_2, true), var_1.d)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(vec3<u32>(global0.b.x, firstTrailingBit(_wgslsmith_clamp_u32(global0.c.a.x, global0.c.a.x, global0.e.x)), 1u) | global0.e);
    var var_1 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(543f, -290f, global0.d)) - _wgslsmith_f_op_f32(floor(-361f)))), 290f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(419f, _wgslsmith_f_op_f32(156f - -464f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-326f * 754f)))));
    var var_2 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -306f))), 1f), -223f);
    var_2 = _wgslsmith_f_op_f32(f32(-1f) * -313f);
    var var_3 = Struct_3(global0.c.b.x);
    var_3 = func_4(~global0.e.yx, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(1850f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-827f)) - -1322f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1078f + 106f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1553f + -1474f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-584f, _wgslsmith_f_op_f32(func_1(global0.c.b.yy, Struct_1(vec2<u32>(global0.b.x, var_0.x), vec3<bool>(var_3.a, true, false), var_3.a), vec3<bool>(true, global0.c.b.x, var_3.a))), 604f, _wgslsmith_f_op_f32(select(-614f, -1215f, false))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -856f)) * 1313f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(366f, _wgslsmith_f_op_f32(-646f * 1093f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(536f - 214f))))), Struct_1(~var_0.xz, select(select(!global0.a.b, vec3<bool>(var_3.a, global0.c.c, var_3.a), false), global0.a.b, true || !global0.a.c), !global0.a.c));
    var var_4 = select(global0.b, reverseBits(~countOneBits(~vec4<u32>(0u, var_0.x, var_0.x, var_0.x))), !(!vec4<bool>(true, true, all(vec3<bool>(global0.a.b.x, false, true)), true)));
    let var_5 = select(global0.a.b, vec3<bool>(global0.a.c & func_4(vec2<u32>(global0.a.a.x, global0.c.a.x), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-440f, 1432f, 281f, 331f), vec4<f32>(408f, 972f, -916f, 234f))), _wgslsmith_f_op_f32(456f + -1154f), Struct_1(vec2<u32>(0u, 39548u), global0.c.b, var_3.a)).a, false, !select(var_3.a, true, any(vec4<bool>(global0.d, global0.d, false, global0.d)))), global0.c.b);
    var var_6 = any(select(!select(select(vec4<bool>(false, false, false, var_5.x), vec4<bool>(false, var_3.a, global0.a.c, global0.d), vec4<bool>(var_5.x, global0.d, var_5.x, var_5.x)), vec4<bool>(false, true, global0.a.b.x, false), select(vec4<bool>(var_3.a, true, false, global0.a.b.x), vec4<bool>(global0.d, true, var_3.a, var_5.x), true)), vec4<bool>(true, true, all(!vec4<bool>(true, false, var_5.x, true)), false), true));
    let x = u_input.a;
    s_output = StorageBuffer(-1689f, max(vec3<u32>(var_0.x, 4294967295u >> (var_0.x % 32u), 21164u), _wgslsmith_sub_vec3_u32(global0.b.yyz, vec3<u32>(var_0.x, global0.e.x, var_4.x)) & (vec3<u32>(61437u, var_4.x, var_0.x) | vec3<u32>(19860u, 0u, var_0.x))) >> ((_wgslsmith_clamp_vec3_u32(~global0.b.xww, vec3<u32>(global0.a.a.x, global0.c.a.x, var_0.x), var_4.yxx >> (global0.b.xzy % vec3<u32>(32u))) | vec3<u32>(_wgslsmith_add_u32(global0.c.a.x, 52938u), 47414u, var_4.x)) % vec3<u32>(32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(615f)), -186f)) * _wgslsmith_f_op_f32(-395f * _wgslsmith_f_op_f32(abs(-463f)))) + 1383f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-449f + -325f)) + _wgslsmith_f_op_f32(f32(-1f) * -1056f)) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -201f)))), u_input.a.x);
}

