struct Struct_1 {
    a: i32,
    b: f32,
    c: f32,
    d: vec3<i32>,
}

struct Struct_2 {
    a: u32,
    b: vec2<f32>,
    c: u32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_2,
    c: Struct_1,
    d: u32,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: f32,
    d: f32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 4682u;

var<private> global1: i32 = 29635i;

var<private> global2: Struct_1 = Struct_1(1i, 328f, 278f, vec3<i32>(i32(-2147483648), -61028i, 2147483647i));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_2() -> Struct_2 {
    return Struct_2(1u, _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.b, 369f)), firstTrailingBit(u_input.b));
}

fn func_3(arg_0: u32, arg_1: bool, arg_2: vec4<f32>) -> bool {
    let var_0 = vec3<bool>(true, any(vec3<bool>(arg_1, true, any(select(vec2<bool>(true, arg_1), vec2<bool>(true, arg_1), vec2<bool>(false, arg_1))))), (_wgslsmith_f_op_f32(941f - _wgslsmith_f_op_f32(arg_2.x - -1104f)) > _wgslsmith_div_f32(global2.b, _wgslsmith_div_f32(1000f, -1197f))) || arg_1);
    var var_1 = !vec3<bool>(var_0.x, !var_0.x, true);
    var_1 = var_0;
    global2 = Struct_1(_wgslsmith_add_i32(45313i, select(u_input.a.x, u_input.a.x, var_0.x)), _wgslsmith_div_f32(680f, arg_2.x), global2.b, -global2.d);
    global0 = ~u_input.b;
    return false;
}

fn func_4(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: Struct_3, arg_3: Struct_1) -> Struct_3 {
    global2 = arg_2.c;
    global0 = min(21114u, (arg_2.e.x << ((_wgslsmith_dot_vec3_u32(arg_2.e.wyy, vec3<u32>(39281u, arg_2.d, 4294967295u)) << (arg_0.d % 32u)) % 32u)) << (arg_2.b.a % 32u));
    let var_0 = _wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(arg_2.c.a, u_input.a.x, -2147483647i), select(global2.d, arg_0.c.d, true)), select(vec3<i32>(-12401i, arg_2.c.d.x, u_input.d.x), countOneBits(vec3<i32>(62109i, arg_0.c.a, arg_2.c.a)), vec3<bool>(false, arg_1.x, arg_0.a.x)), ~_wgslsmith_mod_vec3_i32(vec3<i32>(arg_0.c.a, arg_0.c.a, -68090i), arg_0.c.d)), vec3<i32>(~(-3557i), _wgslsmith_dot_vec2_i32(~vec2<i32>(arg_2.c.a, arg_0.c.d.x), u_input.d), _wgslsmith_mult_i32(arg_2.c.a, 2147483647i) & 1i)) | firstLeadingBit(~(vec3<i32>(-1i) * -vec3<i32>(arg_3.a, u_input.d.x, -6830i)));
    var var_1 = global2.a;
    let var_2 = select(!arg_0.a, !arg_1, !(!arg_1));
    return Struct_3(vec2<bool>(all(vec3<bool>(arg_1.x, true, true)) | false, arg_0.a.x), arg_2.b, arg_0.c, 1u, firstTrailingBit(arg_2.e));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_3) -> vec3<i32> {
    let var_0 = arg_0.d.x < 1i;
    let var_1 = func_4(Struct_3(vec2<bool>(arg_1.a.x, true), func_2(), arg_1.c, max(4294967295u, arg_1.e.x), arg_1.e), select(vec2<bool>(false, false), select(!(!vec2<bool>(arg_1.a.x, false)), !(!vec2<bool>(var_0, var_0)), func_3(u_input.c, true, vec4<f32>(global2.c, global2.b, global2.b, arg_0.c)) || (false & var_0)), var_0), Struct_3(vec2<bool>(arg_1.a.x, all(!arg_1.a)), func_2(), Struct_1(u_input.a.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(-597f)), 1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -267f) - _wgslsmith_f_op_f32(step(460f, global2.c))), _wgslsmith_add_vec3_i32(vec3<i32>(arg_1.c.a, 0i, arg_1.c.d.x), countOneBits(arg_1.c.d))), firstLeadingBit(~firstLeadingBit(43584u)), arg_1.e >> (vec4<u32>(~u_input.b, ~u_input.e, _wgslsmith_div_u32(arg_1.d, u_input.c), u_input.c) % vec4<u32>(32u))), arg_0);
    var var_2 = func_4(Struct_3(!(!arg_1.a), Struct_2(arg_1.e.x, vec2<f32>(_wgslsmith_f_op_f32(arg_0.b + var_1.b.b.x), global2.c), _wgslsmith_div_u32(_wgslsmith_sub_u32(var_1.b.a, u_input.c), firstTrailingBit(1u))), func_4(var_1, vec2<bool>(true, select(false, true, var_1.a.x)), Struct_3(vec2<bool>(false, var_1.a.x), Struct_2(48095u, vec2<f32>(337f, arg_0.c), arg_1.b.a), var_1.c, arg_1.b.a, _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, arg_1.e.x, arg_1.e.x, 0u), vec4<u32>(3707u, 2611u, u_input.c, 1u), vec4<u32>(u_input.c, 0u, u_input.b, arg_1.d))), var_1.c).c, arg_1.b.a, max(~firstTrailingBit(vec4<u32>(28188u, 0u, 9242u, var_1.e.x)), select(vec4<u32>(var_1.d, u_input.b, var_1.b.a, arg_1.d), vec4<u32>(u_input.c, 46884u, 0u, 20005u), arg_1.a.x) ^ ~vec4<u32>(14384u, arg_1.e.x, 48467u, 23468u))), var_1.a, Struct_3(!arg_1.a, arg_1.b, arg_0, ~(func_2().c ^ 53598u), ~var_1.e), arg_0).c;
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.b * 1000f)) * -566f);
    global1 = -(max(_wgslsmith_sub_i32(arg_1.c.a, _wgslsmith_sub_i32(-37073i, u_input.a.x)), arg_1.c.d.x) << (reverseBits(0u) % 32u));
    return _wgslsmith_sub_vec3_i32(-u_input.a, u_input.a ^ max(~vec3<i32>(9373i, 714i, -1i) & var_2.d, select(arg_1.c.d, u_input.a, vec3<bool>(var_0, true, arg_1.a.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(~(0i), global2.c, _wgslsmith_f_op_f32(-340f + _wgslsmith_div_f32(_wgslsmith_div_f32(1000f, _wgslsmith_div_f32(global2.b, -1425f)), _wgslsmith_f_op_f32(step(global2.b, global2.b)))), func_1(Struct_1(~(-1i), 314f, _wgslsmith_f_op_f32(round(-1990f)), global2.d), Struct_3(vec2<bool>(true, true), Struct_2(3160u, vec2<f32>(global2.b, -115f), u_input.e), Struct_1(global2.d.x, 1126f, global2.c, vec3<i32>(-18352i, global2.a, -32134i)), 9829u, countOneBits(vec4<u32>(u_input.b, 4294967295u, 37969u, u_input.c)))) >> (_wgslsmith_sub_vec3_u32(abs(vec3<u32>(31110u, 0u, u_input.b)), ~(vec3<u32>(64287u, u_input.c, 68878u) << (vec3<u32>(2808u, u_input.e, 13288u) % vec3<u32>(32u)))) % vec3<u32>(32u)));
    let var_1 = Struct_1(0i, var_0.b, global2.c, -_wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, u_input.a.x ^ u_input.d.x, -var_0.a), global2.d));
    var var_2 = func_4(Struct_3(select(func_4(Struct_3(vec2<bool>(false, false), Struct_2(1u, vec2<f32>(var_1.c, var_1.c), u_input.c), var_0, 0u, vec4<u32>(u_input.b, 0u, 22835u, u_input.b)), vec2<bool>(true, true), func_4(Struct_3(vec2<bool>(false, false), Struct_2(0u, vec2<f32>(-405f, global2.c), u_input.b), Struct_1(-20854i, global2.b, 1541f, vec3<i32>(u_input.a.x, 0i, global2.d.x)), 24454u, vec4<u32>(u_input.e, 4899u, 1u, 17801u)), vec2<bool>(true, false), Struct_3(vec2<bool>(false, true), Struct_2(17188u, vec2<f32>(-468f, global2.b), u_input.e), Struct_1(0i, global2.c, -1132f, var_1.d), u_input.e, vec4<u32>(4294967295u, u_input.e, u_input.e, 4294967295u)), Struct_1(37458i, 107f, 336f, var_0.d)), var_0).a, vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true))), func_4(func_4(Struct_3(vec2<bool>(false, true), Struct_2(u_input.c, vec2<f32>(-1165f, 403f), u_input.e), var_1, 1u, vec4<u32>(14177u, 62417u, 1u, 4294967295u)), vec2<bool>(false, false), func_4(Struct_3(vec2<bool>(false, true), Struct_2(u_input.c, vec2<f32>(794f, var_1.b), u_input.b), Struct_1(u_input.a.x, global2.c, 615f, vec3<i32>(var_0.a, 1i, var_1.d.x)), u_input.b, vec4<u32>(u_input.b, u_input.e, 76135u, u_input.e)), vec2<bool>(true, false), Struct_3(vec2<bool>(true, true), Struct_2(u_input.b, vec2<f32>(var_1.c, -403f), u_input.b), var_0, 4294967295u, vec4<u32>(112571u, 1u, 49035u, 30497u)), var_0), func_4(Struct_3(vec2<bool>(false, false), Struct_2(u_input.b, vec2<f32>(-238f, var_1.b), u_input.e), var_1, 5556u, vec4<u32>(20050u, u_input.c, u_input.b, u_input.b)), vec2<bool>(false, false), Struct_3(vec2<bool>(false, false), Struct_2(11593u, vec2<f32>(432f, global2.b), 62796u), var_1, u_input.c, vec4<u32>(u_input.c, u_input.b, u_input.b, 4294967295u)), var_0).c), vec2<bool>(true, true), Struct_3(vec2<bool>(true, true), func_2(), func_4(Struct_3(vec2<bool>(false, true), Struct_2(53647u, vec2<f32>(global2.c, 551f), 26146u), var_1, 9879u, vec4<u32>(57226u, 4294967295u, 4294967295u, u_input.c)), vec2<bool>(true, true), Struct_3(vec2<bool>(false, false), Struct_2(10015u, vec2<f32>(var_1.b, global2.b), u_input.c), var_0, u_input.b, vec4<u32>(2838u, u_input.e, u_input.e, u_input.c)), var_1).c, 25166u, vec4<u32>(9714u, 1u, u_input.c, 4294967295u)), var_1).b, Struct_1(-reverseBits(-32994i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c)), _wgslsmith_f_op_f32(-global2.b), ~(-var_1.d)), 1u, min(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, 1u, 9970u, 4294967295u), vec4<u32>(u_input.b, u_input.e, u_input.c, 1u)), vec4<u32>(159729u, 0u, _wgslsmith_dot_vec4_u32(vec4<u32>(63418u, u_input.c, 17278u, u_input.e), vec4<u32>(u_input.c, 23268u, u_input.e, u_input.b)), _wgslsmith_mod_u32(u_input.b, u_input.b)))), vec2<bool>(false, all(select(vec2<bool>(true, true), vec2<bool>(false, true), false))), func_4(Struct_3(!select(vec2<bool>(false, true), vec2<bool>(true, true), false), func_2(), Struct_1(2147483647i ^ global2.a, -1289f, var_1.b, firstLeadingBit(u_input.a)), 57489u, vec4<u32>(u_input.c, u_input.b, max(u_input.e, 16957u), u_input.e & u_input.b)), !vec2<bool>(select(false, false, true), any(vec3<bool>(false, true, true))), func_4(func_4(func_4(Struct_3(vec2<bool>(true, false), Struct_2(0u, vec2<f32>(var_1.c, 1000f), u_input.e), var_0, 1u, vec4<u32>(0u, u_input.c, u_input.c, 15414u)), vec2<bool>(false, true), Struct_3(vec2<bool>(true, false), Struct_2(56844u, vec2<f32>(-1147f, 908f), 9239u), var_1, 39769u, vec4<u32>(4294967295u, u_input.b, u_input.c, u_input.e)), var_1), vec2<bool>(true, true), func_4(Struct_3(vec2<bool>(true, true), Struct_2(u_input.e, vec2<f32>(329f, var_1.b), u_input.e), Struct_1(var_0.d.x, var_0.c, var_1.b, u_input.a), u_input.b, vec4<u32>(36258u, 53788u, u_input.b, 1u)), vec2<bool>(true, false), Struct_3(vec2<bool>(false, true), Struct_2(36808u, vec2<f32>(670f, var_1.b), u_input.e), var_0, u_input.c, vec4<u32>(u_input.e, 4294967295u, 1u, u_input.c)), Struct_1(-1i, var_1.b, 256f, vec3<i32>(u_input.d.x, -4969i, var_1.d.x))), Struct_1(u_input.a.x, global2.c, var_0.c, u_input.a)), func_4(func_4(Struct_3(vec2<bool>(false, true), Struct_2(u_input.e, vec2<f32>(-317f, -1141f), u_input.b), Struct_1(global2.a, 551f, var_1.b, u_input.a), 4294967295u, vec4<u32>(4294967295u, u_input.e, u_input.c, u_input.b)), vec2<bool>(false, true), Struct_3(vec2<bool>(true, false), Struct_2(u_input.c, vec2<f32>(2085f, global2.b), u_input.c), var_0, u_input.c, vec4<u32>(u_input.c, 1u, 51850u, 4294967295u)), var_0), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false)), Struct_3(vec2<bool>(false, true), Struct_2(u_input.e, vec2<f32>(-189f, var_0.b), u_input.e), var_0, 9286u, vec4<u32>(u_input.b, u_input.b, u_input.c, u_input.e)), Struct_1(var_0.a, var_1.b, global2.c, vec3<i32>(-8458i, 1i, 20669i))).a, Struct_3(select(vec2<bool>(true, true), vec2<bool>(false, false), false), Struct_2(u_input.e, vec2<f32>(-635f, var_1.b), 1u), Struct_1(41993i, -1000f, 538f, var_1.d), ~4294967295u, ~vec4<u32>(7757u, 57325u, u_input.c, u_input.b)), func_4(func_4(Struct_3(vec2<bool>(true, true), Struct_2(u_input.c, vec2<f32>(-1246f, global2.b), 4294967295u), var_1, 26997u, vec4<u32>(4294967295u, 50914u, 4294967295u, u_input.c)), vec2<bool>(false, false), Struct_3(vec2<bool>(false, false), Struct_2(u_input.b, vec2<f32>(var_0.b, global2.b), u_input.e), Struct_1(global2.d.x, -584f, var_0.c, var_1.d), u_input.b, vec4<u32>(u_input.c, u_input.c, u_input.b, u_input.c)), Struct_1(4338i, global2.c, var_0.b, var_1.d)), func_4(Struct_3(vec2<bool>(true, false), Struct_2(42995u, vec2<f32>(var_0.c, var_1.c), 4294967295u), Struct_1(global2.d.x, var_1.c, 656f, var_0.d), 42748u, vec4<u32>(u_input.e, 0u, 0u, u_input.c)), vec2<bool>(false, true), Struct_3(vec2<bool>(true, false), Struct_2(u_input.b, vec2<f32>(var_1.c, var_1.c), u_input.b), var_0, u_input.b, vec4<u32>(4294967295u, u_input.c, u_input.c, 0u)), Struct_1(0i, var_1.c, var_1.b, vec3<i32>(u_input.a.x, u_input.d.x, u_input.d.x))).a, func_4(Struct_3(vec2<bool>(true, true), Struct_2(0u, vec2<f32>(global2.b, 273f), u_input.b), Struct_1(-1i, var_0.c, var_0.c, var_0.d), u_input.e, vec4<u32>(1u, 1u, u_input.e, 1u)), vec2<bool>(true, true), Struct_3(vec2<bool>(true, true), Struct_2(u_input.c, vec2<f32>(262f, var_1.b), u_input.e), var_1, 23156u, vec4<u32>(4294967295u, 0u, u_input.e, u_input.e)), Struct_1(-2147483647i, var_1.c, var_1.c, vec3<i32>(u_input.d.x, 0i, u_input.d.x))), Struct_1(7943i, var_1.c, global2.c, vec3<i32>(58620i, 1i, -7908i))).c), var_1), Struct_1(u_input.a.x, var_1.c, -982f, select(~_wgslsmith_mod_vec3_i32(u_input.a, var_1.d), abs(u_input.a), func_3(_wgslsmith_mult_u32(1u, 4294967295u), false, _wgslsmith_f_op_vec4_f32(vec4<f32>(-3074f, var_1.b, 978f, -834f) + vec4<f32>(global2.b, -723f, -540f, 1040f))))));
    global1 = ~var_2.c.a;
    var var_3 = vec4<bool>(!(!(!var_2.a.x)), true, ~(~(var_2.c.a ^ u_input.a.x)) != (0i ^ max(global2.d.x, _wgslsmith_mult_i32(0i, -60792i))), select(true && any(vec2<bool>(true, false)), true, !(var_2.a.x | true) || var_2.a.x));
    var_2 = Struct_3(vec2<bool>(true, true), func_4(func_4(func_4(func_4(Struct_3(vec2<bool>(true, var_2.a.x), var_2.b, Struct_1(0i, var_2.c.c, -1037f, vec3<i32>(0i, global2.d.x, -2147483647i)), 1u, vec4<u32>(u_input.c, var_2.d, 1u, 21809u)), var_2.a, Struct_3(var_3.xz, var_2.b, var_1, var_2.d, var_2.e), var_2.c), var_3.yw, func_4(Struct_3(var_3.wx, var_2.b, Struct_1(13685i, -798f, -2116f, vec3<i32>(-1i, -41728i, var_1.a)), 13631u, vec4<u32>(27731u, var_2.e.x, 1u, 1u)), var_3.xy, Struct_3(vec2<bool>(false, true), var_2.b, var_1, 0u, vec4<u32>(64016u, 10112u, u_input.e, 27318u)), var_0), Struct_1(2147483647i, var_2.b.b.x, var_1.c, global2.d)), var_3.wx, func_4(func_4(Struct_3(vec2<bool>(false, true), Struct_2(55618u, vec2<f32>(var_1.c, global2.b), u_input.e), var_1, var_2.e.x, var_2.e), vec2<bool>(var_2.a.x, false), Struct_3(var_3.zx, Struct_2(var_2.b.a, var_2.b.b, var_2.d), Struct_1(var_2.c.a, global2.b, global2.b, var_2.c.d), 1u, vec4<u32>(0u, u_input.e, 9400u, var_2.d)), Struct_1(u_input.d.x, 1000f, -992f, var_2.c.d)), !var_3.zz, Struct_3(vec2<bool>(true, var_3.x), var_2.b, var_1, 4589u, var_2.e), Struct_1(var_1.d.x, var_0.b, var_2.b.b.x, var_2.c.d)), var_2.c), vec2<bool>(true, any(vec3<bool>(true, var_2.a.x, var_2.a.x))), Struct_3(var_2.a, func_4(Struct_3(var_3.xw, var_2.b, Struct_1(-1i, -1641f, var_2.c.c, u_input.a), 37096u, var_2.e), func_4(Struct_3(var_3.xw, Struct_2(15097u, vec2<f32>(1004f, 850f), var_2.b.a), Struct_1(3155i, var_2.b.b.x, -1258f, var_2.c.d), u_input.b, vec4<u32>(var_2.b.c, 1u, var_2.e.x, 51790u)), vec2<bool>(var_2.a.x, false), Struct_3(vec2<bool>(true, true), Struct_2(var_2.d, var_2.b.b, var_2.d), var_1, u_input.e, var_2.e), Struct_1(var_2.c.d.x, var_1.b, -1000f, vec3<i32>(-1i, var_0.d.x, var_1.d.x))).a, func_4(Struct_3(var_2.a, Struct_2(u_input.c, var_2.b.b, var_2.b.c), Struct_1(u_input.d.x, global2.c, var_1.c, u_input.a), 35676u, vec4<u32>(var_2.b.a, 0u, 4294967295u, 1u)), vec2<bool>(var_2.a.x, true), Struct_3(vec2<bool>(false, false), var_2.b, Struct_1(global2.a, -1000f, var_1.b, global2.d), 0u, var_2.e), Struct_1(-1i, -870f, var_2.c.b, global2.d)), func_4(Struct_3(vec2<bool>(true, false), var_2.b, var_2.c, u_input.b, vec4<u32>(50080u, u_input.e, 4294967295u, 0u)), var_2.a, Struct_3(vec2<bool>(true, var_2.a.x), var_2.b, var_1, var_2.d, var_2.e), Struct_1(u_input.a.x, var_2.c.b, var_2.b.b.x, u_input.a)).c).b, Struct_1(~(-2147483647i), -1210f, var_1.b, vec3<i32>(var_2.c.d.x, u_input.d.x, 1i)), ~reverseBits(7614u), var_2.e), func_4(func_4(func_4(Struct_3(vec2<bool>(var_2.a.x, true), var_2.b, Struct_1(-16201i, 163f, 396f, var_1.d), 4294967295u, var_2.e), var_3.yx, Struct_3(var_3.yw, var_2.b, Struct_1(0i, -258f, -200f, var_2.c.d), u_input.b, vec4<u32>(var_2.e.x, u_input.e, 0u, 51458u)), Struct_1(global2.a, var_2.b.b.x, var_2.c.b, vec3<i32>(global2.d.x, -37825i, 2147483647i))), vec2<bool>(var_3.x, var_3.x), Struct_3(vec2<bool>(var_3.x, var_2.a.x), var_2.b, var_1, 4294967295u, var_2.e), func_4(Struct_3(vec2<bool>(var_2.a.x, var_3.x), Struct_2(1739u, vec2<f32>(var_0.c, 709f), u_input.b), var_1, u_input.b, vec4<u32>(47996u, 20355u, var_2.d, 22728u)), vec2<bool>(var_2.a.x, var_2.a.x), Struct_3(vec2<bool>(false, var_2.a.x), var_2.b, var_0, var_2.e.x, var_2.e), var_2.c).c), vec2<bool>(var_2.a.x | var_3.x, var_2.a.x), func_4(Struct_3(vec2<bool>(true, true), var_2.b, Struct_1(var_1.d.x, 780f, 1280f, var_1.d), u_input.c, vec4<u32>(u_input.c, var_2.b.c, 4294967295u, 54095u)), select(vec2<bool>(false, var_3.x), var_3.wx, var_3.yw), func_4(Struct_3(vec2<bool>(var_3.x, false), Struct_2(u_input.b, vec2<f32>(global2.c, var_2.c.c), 2609u), Struct_1(1i, 173f, var_1.c, vec3<i32>(2147483647i, u_input.a.x, 1i)), var_2.e.x, vec4<u32>(14763u, 0u, var_2.b.c, u_input.e)), vec2<bool>(false, false), Struct_3(var_2.a, Struct_2(50600u, vec2<f32>(-2190f, 1763f), var_2.d), Struct_1(var_0.a, var_1.b, 377f, var_2.c.d), 1u, vec4<u32>(u_input.b, 24412u, 40540u, u_input.e)), Struct_1(-2147483647i, 1273f, 799f, u_input.a)), var_0), Struct_1(i32(-1i) * -84682i, var_0.b, _wgslsmith_div_f32(709f, var_0.b), var_1.d)).c).b, func_4(func_4(Struct_3(var_2.a, var_2.b, Struct_1(u_input.a.x, global2.b, -1283f, global2.d), _wgslsmith_dot_vec3_u32(vec3<u32>(21418u, 1u, 0u), vec3<u32>(u_input.e, 64973u, 1u)), ~var_2.e), !var_2.a, Struct_3(select(var_2.a, var_3.ww, true), func_4(Struct_3(vec2<bool>(var_3.x, var_3.x), var_2.b, var_1, var_2.e.x, vec4<u32>(var_2.d, u_input.b, 4294967295u, u_input.c)), var_2.a, Struct_3(vec2<bool>(var_3.x, true), Struct_2(u_input.b, var_2.b.b, u_input.e), Struct_1(u_input.a.x, var_2.b.b.x, var_2.b.b.x, global2.d), u_input.e, var_2.e), var_0).b, func_4(Struct_3(vec2<bool>(true, true), var_2.b, Struct_1(0i, var_0.b, -113f, var_1.d), 19282u, vec4<u32>(u_input.b, u_input.c, 58821u, u_input.e)), vec2<bool>(false, false), Struct_3(var_2.a, Struct_2(u_input.b, vec2<f32>(2819f, 1069f), var_2.b.c), Struct_1(48759i, -1162f, var_1.c, vec3<i32>(u_input.d.x, 0i, var_0.a)), var_2.d, vec4<u32>(var_2.d, u_input.c, var_2.b.a, var_2.b.a)), var_0).c, var_2.b.a, _wgslsmith_div_vec4_u32(var_2.e, vec4<u32>(12997u, var_2.b.a, var_2.b.c, 0u))), func_4(func_4(Struct_3(vec2<bool>(var_2.a.x, true), var_2.b, var_1, 4294967295u, var_2.e), vec2<bool>(false, false), Struct_3(vec2<bool>(var_2.a.x, var_3.x), Struct_2(var_2.e.x, vec2<f32>(var_2.c.c, var_0.b), u_input.b), Struct_1(2147483647i, 414f, var_2.c.b, var_1.d), 41661u, vec4<u32>(var_2.d, var_2.e.x, 1u, 35896u)), var_0), var_2.a, func_4(Struct_3(var_3.xz, var_2.b, var_0, 1u, vec4<u32>(u_input.b, var_2.b.a, u_input.c, 66506u)), vec2<bool>(false, false), Struct_3(vec2<bool>(false, false), Struct_2(41341u, vec2<f32>(var_2.b.b.x, -1000f), u_input.c), var_0, u_input.c, var_2.e), var_2.c), func_4(Struct_3(vec2<bool>(false, var_2.a.x), var_2.b, Struct_1(2147483647i, 119f, var_0.b, u_input.a), 1u, vec4<u32>(u_input.e, 4907u, var_2.b.a, var_2.b.c)), vec2<bool>(true, false), Struct_3(var_3.xy, Struct_2(var_2.b.a, var_2.b.b, u_input.b), Struct_1(var_1.a, var_0.c, var_0.b, vec3<i32>(var_0.d.x, 8780i, -9003i)), u_input.c, var_2.e), var_0).c).c), vec2<bool>(true, true), Struct_3(var_3.yy, Struct_2(_wgslsmith_add_u32(1u, u_input.b), _wgslsmith_f_op_vec2_f32(var_2.b.b + vec2<f32>(var_2.c.c, var_0.c)), ~var_2.b.a), func_4(Struct_3(var_3.xw, var_2.b, Struct_1(3597i, global2.b, var_1.b, var_1.d), u_input.e, vec4<u32>(var_2.e.x, 53435u, 73679u, u_input.c)), !vec2<bool>(var_2.a.x, var_3.x), func_4(Struct_3(var_2.a, var_2.b, Struct_1(var_2.c.a, global2.b, -186f, vec3<i32>(-28295i, -1325i, 0i)), var_2.b.c, vec4<u32>(u_input.c, 71907u, 15942u, 0u)), var_2.a, Struct_3(vec2<bool>(var_3.x, var_2.a.x), var_2.b, Struct_1(u_input.d.x, var_0.c, 1213f, var_2.c.d), u_input.c, var_2.e), Struct_1(var_1.d.x, -295f, 933f, vec3<i32>(global2.d.x, var_2.c.d.x, var_1.d.x))), Struct_1(-1i, global2.b, -201f, var_0.d)).c, _wgslsmith_sub_u32(~var_2.e.x, func_2().a), abs(var_2.e)), var_2.c).c, 42627u, vec4<u32>(_wgslsmith_mult_u32(~var_2.b.a, u_input.e), 0u, ~var_2.d, u_input.c));
    var var_4 = var_2.c;
    let x = u_input.a;
    s_output = StorageBuffer(218f, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_2.b.b.x))), _wgslsmith_f_op_f32(step(var_2.c.c, var_2.c.b)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1178f), var_0.b))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.c, _wgslsmith_f_op_f32(ceil(var_4.c)), _wgslsmith_div_f32(1000f, 1649f)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c, var_4.b, -120f) - vec3<f32>(-1000f, global2.b, 881f)) * _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-1999f, var_2.c.b, -482f)))))), _wgslsmith_f_op_f32(-func_4(Struct_3(vec2<bool>(var_2.a.x, var_2.a.x), func_4(Struct_3(var_2.a, Struct_2(var_2.e.x, var_2.b.b, u_input.b), var_1, var_2.b.c, var_2.e), vec2<bool>(var_3.x, false), Struct_3(vec2<bool>(var_2.a.x, var_2.a.x), var_2.b, Struct_1(-2147483647i, var_2.b.b.x, 1912f, vec3<i32>(-1i, -5388i, var_2.c.a)), u_input.e, vec4<u32>(41697u, var_2.d, u_input.c, 82661u)), Struct_1(2147483647i, 662f, 919f, var_4.d)).b, var_1, var_2.b.c, var_2.e), vec2<bool>(true, true), func_4(Struct_3(var_2.a, var_2.b, var_2.c, 4294967295u, vec4<u32>(u_input.e, var_2.b.a, 1u, u_input.b)), vec2<bool>(var_3.x, var_3.x), func_4(Struct_3(var_2.a, var_2.b, var_2.c, 1u, vec4<u32>(6943u, u_input.e, 1u, 0u)), vec2<bool>(var_3.x, true), Struct_3(var_3.wz, Struct_2(34233u, vec2<f32>(var_4.b, var_1.b), 1u), Struct_1(1i, -775f, var_1.c, vec3<i32>(global2.a, var_1.a, -62718i)), 67005u, vec4<u32>(1u, var_2.d, 1u, u_input.c)), var_1), var_0), Struct_1(~var_4.d.x, var_0.b, 150f, -vec3<i32>(var_0.d.x, global2.d.x, -40033i))).c.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_4(Struct_3(vec2<bool>(true, false), Struct_2(4294967295u, vec2<f32>(-1125f, -1000f), 7402u), var_2.c, var_2.b.a, vec4<u32>(u_input.c, 10400u, u_input.c, u_input.b)), !vec2<bool>(true, var_3.x), Struct_3(var_2.a, Struct_2(u_input.b, vec2<f32>(-1104f, -700f), 22601u), Struct_1(var_4.a, 1141f, -1492f, var_4.d), u_input.b, vec4<u32>(0u, 4294967295u, u_input.e, u_input.b)), var_2.c).c.c)), _wgslsmith_mod_vec2_i32(-var_1.d.yx, global2.d.xy));
}

