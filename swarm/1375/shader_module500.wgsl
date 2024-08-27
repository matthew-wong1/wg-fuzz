struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: vec3<i32>,
    d: vec3<bool>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec4<u32>,
    c: f32,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: vec2<bool>,
    b: vec2<bool>,
    c: i32,
    d: Struct_2,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec2<i32>,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<f32>,
    c: u32,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 21519u;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_2(arg_0: Struct_2, arg_1: bool, arg_2: vec2<f32>) -> f32 {
    global0 = u_input.e;
    var var_0 = i32(-1i) * -32222i;
    let var_1 = vec2<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(~4294967295u, _wgslsmith_dot_vec2_u32(arg_0.a.xy, vec2<u32>(6932u, arg_0.a.x)), 21643u), _wgslsmith_div_vec3_u32(arg_0.a.wwz >> (vec3<u32>(arg_0.a.x, arg_0.a.x, u_input.b.x) % vec3<u32>(32u)), _wgslsmith_div_vec3_u32(vec3<u32>(0u, arg_0.a.x, 4294967295u), vec3<u32>(u_input.e, 19945u, arg_0.a.x)))), vec3<u32>(arg_0.a.x >> (abs(arg_0.a.x) % 32u), u_input.a.x, select(0u, 1u, true))), _wgslsmith_mod_u32((u_input.e << ((u_input.a.x & arg_0.a.x) % 32u)) >> (abs(reverseBits(u_input.a.x)) % 32u), arg_0.a.x << (~u_input.b.x % 32u)));
    var var_2 = vec2<i32>(u_input.d.x, select(u_input.d.x ^ 42706i, 14428i, select(true, !any(vec3<bool>(false, arg_1, true)), true)));
    var var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(min(arg_2, arg_2)), _wgslsmith_f_op_f32(abs(-964f)), u_input.d.xzx, vec3<bool>(false, arg_1, true), arg_0.a.wyz);
    return var_3.b;
}

fn func_3(arg_0: Struct_3, arg_1: u32, arg_2: Struct_3, arg_3: Struct_3) -> f32 {
    var var_0 = (vec2<i32>(u_input.c.x, u_input.d.x) ^ u_input.c) >> ((vec2<u32>(0u, ~_wgslsmith_dot_vec4_u32(arg_0.b, arg_3.b)) ^ abs(~vec2<u32>(0u, arg_0.a.x))) % vec2<u32>(32u));
    var var_1 = false;
    var_1 = any(!select(select(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false)), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), true)), vec2<bool>(select(false, true, false), true), true | all(vec2<bool>(false, true))));
    var_1 = true;
    let var_2 = select(vec4<bool>(!(true && select(false, false, true)), !(true && all(vec3<bool>(true, true, true))), 79729u > _wgslsmith_sub_u32(u_input.a.x, 71101u), false), !vec4<bool>(_wgslsmith_f_op_f32(select(-510f, arg_2.c, true)) != arg_2.c, !all(vec4<bool>(false, true, true, true)), true, true), select(vec4<bool>(true, any(vec2<bool>(false, false)), !all(vec4<bool>(false, false, true, false)), true), vec4<bool>(true, true, true | select(false, false, true), true), false));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_2.c - _wgslsmith_div_f32(_wgslsmith_div_f32(arg_3.c, 749f), 561f)))) - arg_2.c);
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: f32, arg_3: Struct_3) -> Struct_5 {
    var var_0 = true;
    let var_1 = u_input.a;
    var var_2 = arg_3.b.x;
    var_0 = true;
    global0 = select(abs(_wgslsmith_div_u32(arg_3.a.x, 4294967295u)), 0u, true);
    return Struct_5(!(!vec2<bool>(false, arg_1.a.x > u_input.e)), vec2<bool>(any(vec4<bool>(any(vec2<bool>(false, false)), true, any(vec4<bool>(true, true, true, false)), true)), true), _wgslsmith_div_i32(abs(u_input.d.x), -1i), arg_1, u_input.d);
}

fn func_1() -> Struct_5 {
    let var_0 = Struct_3(u_input.b, _wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.e, 0u, 7639u, u_input.e), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b.x, u_input.e, 0u, u_input.e), vec4<u32>(u_input.e, u_input.a.x, u_input.b.x, 36678u))), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b.x, 3580u, u_input.b.x, u_input.e) >> (vec4<u32>(1u, u_input.a.x, u_input.a.x, u_input.a.x) % vec4<u32>(32u)), ~vec4<u32>(u_input.b.x, 0u, 0u, u_input.b.x)), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.e, 1u, 20694u, u_input.a.x) | vec4<u32>(u_input.b.x, u_input.e, 1u, u_input.a.x), vec4<u32>(u_input.b.x, 1u, u_input.e, 24142u))), ~vec4<u32>(_wgslsmith_mult_u32(0u, u_input.b.x), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, u_input.b.x), u_input.b), ~u_input.a.x, 0u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(685f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1151f - 1645f), _wgslsmith_f_op_f32(761f - -549f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(-1236f + -1349f))) * _wgslsmith_f_op_f32(max(-520f, 1f)))));
    global0 = ~4294967295u;
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(868f - var_0.c), var_0.c, _wgslsmith_f_op_f32(812f * 1000f), _wgslsmith_f_op_f32(-var_0.c))))));
    global0 = _wgslsmith_clamp_u32(0u << (~4294967295u % 32u), firstLeadingBit(max(69915u, 30722u)), 32968u);
    let var_2 = 51206u;
    return func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.c + var_0.c))), _wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(func_2(Struct_2(vec4<u32>(u_input.b.x, u_input.b.x, 1u, u_input.b.x)), false, var_1.yy))), var_0.c)), Struct_2(var_0.b), _wgslsmith_f_op_f32(func_3(Struct_3(abs(~var_0.b.wzw), vec4<u32>(firstTrailingBit(0u), firstLeadingBit(22164u), _wgslsmith_dot_vec2_u32(var_0.a.yz, var_0.b.zw), u_input.b.x), var_1.x), ~0u, var_0, var_0)), var_0);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = var_0.d.a;
    var_0 = Struct_5(var_0.a, !func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-482f, 404f, 1018f)), func_4(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-927f, 1011f, 416f))), Struct_2(vec4<u32>(1u, var_1.x, var_1.x, u_input.b.x)), _wgslsmith_div_f32(-923f, 2334f), Struct_3(var_1.zyx, var_0.d.a, 303f)).d, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-632f, 327f))), Struct_3(u_input.b, ~vec4<u32>(4089u, 28202u, var_0.d.a.x, 1u), _wgslsmith_f_op_f32(f32(-1f) * -446f))).b, u_input.d.x, func_4(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1678f, 169f, -408f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1100f, -979f, -1655f) * vec3<f32>(639f, 347f, 1768f))), any(select(vec3<bool>(false, var_0.a.x, true), vec3<bool>(true, true, true), vec3<bool>(var_0.b.x, var_0.b.x, var_0.a.x))))), var_0.d, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -334f), _wgslsmith_f_op_f32(sign(1190f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-684f, -1338f)))), Struct_3(vec3<u32>(var_0.d.a.x, _wgslsmith_clamp_u32(var_0.d.a.x, 13936u, u_input.b.x), 33198u), _wgslsmith_mult_vec4_u32(abs(vec4<u32>(var_0.d.a.x, 7255u, var_1.x, u_input.b.x)), ~vec4<u32>(var_1.x, u_input.b.x, 4294967295u, u_input.e)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, -252f)))).d, var_0.e);
    let var_2 = 81186u;
    var var_3 = !vec3<bool>(!var_0.a.x, true, var_0.b.x);
    let var_4 = _wgslsmith_f_op_f32(func_3(Struct_3(func_1().d.a.zyx, vec4<u32>(~78448u, 4294967295u, ~(~1u), u_input.a.x), 893f), func_4(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-275f, _wgslsmith_div_f32(-306f, 721f), _wgslsmith_f_op_f32(-1448f - -705f)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(vec3<f32>(-1357f, -643f, -2353f), vec3<f32>(654f, 1512f, 743f)))))), Struct_2(var_0.d.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(258f, 611f)))), Struct_3(var_0.d.a.yxx & var_1.wzx, vec4<u32>(~u_input.a.x, 1u, var_2, func_1().d.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1000f, -282f, true))))).d.a.x, Struct_3(var_0.d.a.xzy, _wgslsmith_mod_vec4_u32(~abs(var_0.d.a), var_0.d.a), -716f), Struct_3(vec3<u32>(~u_input.a.x, func_1().d.a.x, 35178u), abs(~vec4<u32>(11388u, 3087u, var_0.d.a.x, var_2)), _wgslsmith_f_op_f32(abs(1155f)))));
    let var_5 = ~(~(~firstLeadingBit(vec2<u32>(3010u, 0u)))) & ~abs(vec2<u32>(72016u, 106915u) >> (~vec2<u32>(var_0.d.a.x, var_2) % vec2<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(i32(-1i) * -var_0.e.x, u_input.c.x, _wgslsmith_dot_vec3_i32(u_input.d.wwy, max(vec3<i32>(var_0.c, 1i, -880i), vec3<i32>(3555i, 2147483647i, u_input.d.x))), 0i), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_4, _wgslsmith_f_op_f32(var_4 * -417f), _wgslsmith_f_op_f32(abs(-740f)), var_4))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(336f, 1096f, var_4, var_4))))) + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1000f, var_4, var_4, -1780f))), vec4<f32>(var_4, var_4, var_4, -677f)))), var_0.a.x)), ~30239u, 346f, -569f);
}

