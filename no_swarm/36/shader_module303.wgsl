struct Struct_1 {
    a: vec4<bool>,
    b: vec4<i32>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: vec4<i32>,
    d: vec4<u32>,
}

struct Struct_4 {
    a: vec2<u32>,
    b: vec3<u32>,
    c: u32,
    d: Struct_2,
    e: Struct_2,
}

struct Struct_5 {
    a: Struct_1,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, true, false, false);

var<private> global1: Struct_5;

var<private> global2: u32;

var<private> global3: array<Struct_1, 22> = array<Struct_1, 22>(Struct_1(vec4<bool>(false, false, true, false), vec4<i32>(-10883i, i32(-2147483648), -69981i, -32728i), vec3<i32>(-1i, -7813i, i32(-2147483648))), Struct_1(vec4<bool>(false, true, true, true), vec4<i32>(-15429i, 1i, -1i, i32(-2147483648)), vec3<i32>(i32(-2147483648), -38436i, 0i)), Struct_1(vec4<bool>(true, false, false, true), vec4<i32>(20471i, -19179i, -2655i, 28266i), vec3<i32>(-27668i, i32(-2147483648), 8807i)), Struct_1(vec4<bool>(true, false, false, true), vec4<i32>(0i, -45395i, -1i, 2147483647i), vec3<i32>(i32(-2147483648), 2147483647i, 20010i)), Struct_1(vec4<bool>(false, false, true, true), vec4<i32>(-46527i, 17639i, 59871i, 2147483647i), vec3<i32>(0i, 2147483647i, -1i)), Struct_1(vec4<bool>(false, false, false, true), vec4<i32>(2147483647i, 2147483647i, 2147483647i, i32(-2147483648)), vec3<i32>(10854i, i32(-2147483648), -1i)), Struct_1(vec4<bool>(true, true, true, true), vec4<i32>(i32(-2147483648), 0i, 405i, 0i), vec3<i32>(1752i, 0i, -1522i)), Struct_1(vec4<bool>(true, true, false, false), vec4<i32>(-45180i, 1i, -1i, 1i), vec3<i32>(1i, 1i, 1i)), Struct_1(vec4<bool>(true, false, true, true), vec4<i32>(2147483647i, -1i, -47762i, 0i), vec3<i32>(34810i, 22703i, 1i)), Struct_1(vec4<bool>(true, false, true, false), vec4<i32>(-32936i, 3397i, 2147483647i, -49530i), vec3<i32>(2147483647i, -1i, 0i)), Struct_1(vec4<bool>(false, true, true, false), vec4<i32>(-1i, -1i, 1i, -1i), vec3<i32>(-21118i, 86858i, 0i)), Struct_1(vec4<bool>(true, false, false, false), vec4<i32>(-6842i, i32(-2147483648), -13889i, i32(-2147483648)), vec3<i32>(0i, 34328i, -21512i)), Struct_1(vec4<bool>(true, true, false, false), vec4<i32>(-6125i, -53344i, 15815i, -21288i), vec3<i32>(-2687i, 2147483647i, -34835i)), Struct_1(vec4<bool>(false, false, false, false), vec4<i32>(2147483647i, -30866i, 0i, 14869i), vec3<i32>(1i, -58264i, -16647i)), Struct_1(vec4<bool>(true, false, false, false), vec4<i32>(-17359i, -1i, -232i, 0i), vec3<i32>(-23790i, -25755i, i32(-2147483648))), Struct_1(vec4<bool>(true, true, true, false), vec4<i32>(-1i, 2147483647i, -1i, 2772i), vec3<i32>(2147483647i, -13364i, -1i)), Struct_1(vec4<bool>(true, false, true, true), vec4<i32>(58761i, 0i, -9581i, -13695i), vec3<i32>(-1i, 10310i, -5491i)), Struct_1(vec4<bool>(false, false, false, true), vec4<i32>(-30013i, 1i, 1i, -8334i), vec3<i32>(-15316i, i32(-2147483648), -61375i)), Struct_1(vec4<bool>(false, false, true, true), vec4<i32>(0i, 0i, -1i, i32(-2147483648)), vec3<i32>(-15709i, -52215i, -1i)), Struct_1(vec4<bool>(true, true, false, true), vec4<i32>(i32(-2147483648), 2147483647i, -14780i, -1i), vec3<i32>(-1309i, 0i, i32(-2147483648))), Struct_1(vec4<bool>(true, false, true, false), vec4<i32>(i32(-2147483648), 35485i, -3046i, 0i), vec3<i32>(1i, 1i, 21908i)), Struct_1(vec4<bool>(false, true, true, true), vec4<i32>(-59116i, 39726i, 2147483647i, i32(-2147483648)), vec3<i32>(i32(-2147483648), i32(-2147483648), -45740i)));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_2(arg_0: vec2<u32>, arg_1: i32) -> Struct_2 {
    let var_0 = global1.a.b;
    var var_1 = Struct_5(global1.a, arg_0);
    global0 = vec4<bool>(all(global0.zy), true, all(!vec3<bool>(false, all(global1.a.a), var_1.a.c.x <= -84091i)), !(var_0.x > 1i));
    let var_2 = vec3<u32>(~var_1.b.x, ~(((4294967295u ^ global1.b.x) | (u_input.a & u_input.b.x)) ^ _wgslsmith_mult_u32(arg_0.x, global1.b.x)), _wgslsmith_div_u32(_wgslsmith_mod_u32(~arg_0.x, var_1.b.x), abs(14107u)));
    let var_3 = Struct_5(var_1.a, vec2<u32>(var_2.x, ~(~max(global1.b.x, arg_0.x))));
    return Struct_2(~countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(29835u, var_2.x), vec2<u32>(59129u, global1.b.x))));
}

fn func_3() -> vec3<f32> {
    var var_0 = func_2(abs(~select(~global1.b, ~u_input.b, vec2<bool>(false, true))), global1.a.c.x);
    let var_1 = select(countOneBits(_wgslsmith_dot_vec2_u32(global1.b, ~(vec2<u32>(0u, 55761u) << (global1.b % vec2<u32>(32u))))), 1u, true);
    global3 = array<Struct_1, 22>();
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1315f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-193f)), -1795f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(319f, 1662f))))));
    global2 = firstTrailingBit(4294967295u ^ min(~(~97450u), var_1));
    return vec3<f32>(_wgslsmith_f_op_f32(-var_2.x), -1254f, 495f);
}

fn func_1(arg_0: f32) -> Struct_4 {
    let var_0 = func_2(~vec2<u32>(~_wgslsmith_add_u32(global1.b.x, 25142u), countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(523u, 48920u, 0u), vec3<u32>(4294967295u, 88034u, global1.b.x)))), global1.a.c.x);
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(122f, -494f, 1502f)))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-1035f, arg_0, arg_0) + vec3<f32>(arg_0, arg_0, arg_0))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_0, -841f, -662f), vec3<f32>(-1000f, arg_0, 944f))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0, arg_0, arg_0), vec3<f32>(arg_0, -908f, 644f), vec3<bool>(false, global0.x, global1.a.a.x))), !vec3<bool>(global1.a.a.x, false, global1.a.a.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, arg_0)) + vec3<f32>(arg_0, arg_0, arg_0)))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(func_3()))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(654f, arg_0, arg_0)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0, 1000f, arg_0), vec3<f32>(-695f, -335f, -646f), global1.a.a.x)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(249f, arg_0, -1375f), vec3<f32>(arg_0, 228f, arg_0), global1.a.a.wwx)))) + _wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_0, -484f, 195f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, -680f))))), true)));
    var var_2 = global1.a.c.x;
    var_1 = _wgslsmith_f_op_vec3_f32(func_3());
    global0 = global1.a.a;
    return Struct_4(u_input.b ^ ~abs(~vec2<u32>(4294967295u, 4294967295u)), _wgslsmith_mult_vec3_u32(~(vec3<u32>(global1.b.x, 1u, 1u) | vec3<u32>(u_input.a, 1u, var_0.a)), min(vec3<u32>(0u, 57248u, global1.b.x) & vec3<u32>(var_0.a, global1.b.x, u_input.a), ~vec3<u32>(u_input.a, u_input.a, u_input.b.x))) | (vec3<u32>(~u_input.b.x, u_input.b.x, u_input.a) >> (vec3<u32>(~global1.b.x, ~u_input.a, ~u_input.a) % vec3<u32>(32u))), 21095u, Struct_2(_wgslsmith_mult_u32(countOneBits(~47611u), _wgslsmith_add_u32(~u_input.b.x, ~44960u))), var_0);
}

fn func_4(arg_0: i32, arg_1: Struct_4) -> f32 {
    let var_0 = true;
    let var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1797f)));
    let var_2 = u_input.b;
    let var_3 = 35467u;
    var var_4 = arg_1.e;
    return var_1;
}

fn func_5(arg_0: f32, arg_1: vec2<bool>, arg_2: bool) -> Struct_4 {
    let var_0 = !global0.xwz;
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-2260f, -651f, 1000f, -917f) + vec4<f32>(594f, -233f, -771f, arg_0)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(492f, -831f, arg_0, arg_0)), ~4953u < ~global1.b.x)), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(sign(-437f))), _wgslsmith_f_op_f32(-283f + _wgslsmith_f_op_f32(sign(1202f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1036f, arg_0))), _wgslsmith_div_f32(1119f, _wgslsmith_f_op_f32(func_4(-17931i, Struct_4(u_input.b, vec3<u32>(global1.b.x, 1u, 25501u), u_input.a, Struct_2(global1.b.x), Struct_2(u_input.b.x)))))), select(!select(vec4<bool>(false, global0.x, true, true), vec4<bool>(global1.a.a.x, global1.a.a.x, true, var_0.x), vec4<bool>(global1.a.a.x, true, arg_2, global1.a.a.x)), select(!global1.a.a, select(global1.a.a, global1.a.a, global1.a.a), vec4<bool>(true, var_0.x, true, arg_2)), global1.a.a))));
    global0 = vec4<bool>(any(vec4<bool>(arg_1.x, arg_2, false, all(!vec2<bool>(global1.a.a.x, false)))), !(arg_2 && true), select(false, global1.a.a.x, all(!vec4<bool>(global1.a.a.x, var_0.x, var_0.x, var_0.x))), true);
    global3 = array<Struct_1, 22>();
    var var_2 = _wgslsmith_mult_vec3_u32(vec3<u32>(min(global1.b.x >> (~u_input.b.x % 32u), global1.b.x & (u_input.a >> (u_input.b.x % 32u))), 0u, func_1(arg_0).b.x), firstLeadingBit(vec3<u32>(_wgslsmith_mod_u32(firstLeadingBit(68270u), 1u), ~(~u_input.b.x), global1.b.x >> (38291u % 32u))));
    return Struct_4(~u_input.b, _wgslsmith_sub_vec3_u32(~(~(~vec3<u32>(global1.b.x, u_input.b.x, var_2.x))), ~(~vec3<u32>(u_input.b.x, 26943u, global1.b.x))), 24147u, func_2(~_wgslsmith_mod_vec2_u32(vec2<u32>(0u, 7369u), select(vec2<u32>(var_2.x, 4294967295u), vec2<u32>(21629u, 48528u), var_0.x)), ~_wgslsmith_clamp_i32(54402i, 1i, global1.a.c.x << (60963u % 32u))), func_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1071f) - _wgslsmith_f_op_f32(arg_0 + var_1.x))))).e);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~vec4<u32>(124183u, 4294967295u, global1.b.x, 100001u) | ~vec4<u32>(u_input.a, global1.b.x, 4294967295u, 32316u)) << (vec4<u32>(global1.b.x, 8139u, 0u, u_input.a) % vec4<u32>(32u));
    let var_1 = func_5(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -481f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(abs(global1.a.c.x), func_1(-866f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1166f)) * _wgslsmith_f_op_f32(-1351f + -1437f))))), select(!select(select(global0.zx, vec2<bool>(global1.a.a.x, global0.x), true), select(global0.wz, vec2<bool>(global1.a.a.x, true), true), global1.a.a.x), !global0.wx, select(vec2<bool>(true, any(vec4<bool>(global1.a.a.x, global0.x, false, true))), select(global1.a.a.wy, !global0.xx, global1.a.a.x & true), !(!global0.zx))), !global0.x);
    let var_2 = global1.b.x;
    var var_3 = _wgslsmith_f_op_f32(func_4(reverseBits(global1.a.c.x), func_5(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-812f)) + -717f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(-195f)))))), global1.a.a.xw, global0.x)));
    let var_4 = Struct_3(func_1(-491f).e, _wgslsmith_f_op_f32(round(1f)), global1.a.b << ((abs(vec4<u32>(var_1.b.x, 1u, 12350u, 0u)) >> (max(min(vec4<u32>(u_input.b.x, global1.b.x, var_1.d.a, 0u), vec4<u32>(16747u, var_1.b.x, var_0.x, global1.b.x)), abs(vec4<u32>(global1.b.x, global1.b.x, 1u, u_input.b.x))) % vec4<u32>(32u))) % vec4<u32>(32u)), abs(vec4<u32>(_wgslsmith_div_u32(0u, var_0.x), var_1.d.a, abs(0u), var_1.c | 4294967295u)) ^ _wgslsmith_mult_vec4_u32(~vec4<u32>(global1.b.x, var_1.a.x, var_0.x, var_0.x) | vec4<u32>(34115u, 47733u, 82128u, 4294967295u), firstLeadingBit(vec4<u32>(var_1.a.x, global1.b.x, 96914u, var_1.c))));
    global3 = array<Struct_1, 22>();
    global0 = vec4<bool>(true, global0.x, any(vec3<bool>(true, var_4.b > _wgslsmith_f_op_f32(step(var_4.b, var_4.b)), global0.x)), global0.x);
    var var_5 = var_0.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec3_i32(-vec3<i32>(var_4.c.x, 31382i, global1.a.c.x), -global1.a.b.xwz), vec4<u32>(33765u, ~1u, select(u_input.a, 1u, _wgslsmith_f_op_f32(exp2(var_4.b)) >= _wgslsmith_f_op_f32(f32(-1f) * -812f)), (~1u | firstLeadingBit(var_4.d.x)) >> (4294967295u % 32u)), abs(~(~var_0.xxx)));
}

