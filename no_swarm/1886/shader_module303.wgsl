struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: i32,
}

struct Struct_2 {
    a: bool,
    b: vec3<u32>,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 31> = array<vec4<u32>, 31>(vec4<u32>(28827u, 19675u, 0u, 1u), vec4<u32>(1u, 0u, 61496u, 17195u), vec4<u32>(3451u, 1u, 4294967295u, 92897u), vec4<u32>(2697u, 43879u, 46432u, 1u), vec4<u32>(1u, 38410u, 33595u, 99996u), vec4<u32>(603u, 0u, 131u, 1u), vec4<u32>(4294967295u, 45559u, 26564u, 0u), vec4<u32>(1u, 15573u, 4294967295u, 4294967295u), vec4<u32>(1u, 0u, 93294u, 4294967295u), vec4<u32>(1u, 11531u, 45485u, 1u), vec4<u32>(4406u, 105253u, 1u, 3305u), vec4<u32>(0u, 38651u, 8223u, 81795u), vec4<u32>(23204u, 0u, 2776u, 1u), vec4<u32>(1u, 51101u, 23097u, 4294967295u), vec4<u32>(4294967295u, 0u, 0u, 1u), vec4<u32>(1u, 0u, 1u, 37663u), vec4<u32>(57604u, 85870u, 0u, 75772u), vec4<u32>(34613u, 3697u, 4294967295u, 43441u), vec4<u32>(4294967295u, 0u, 58057u, 30426u), vec4<u32>(4294967295u, 4294967295u, 2898u, 1u), vec4<u32>(4294967295u, 4294967295u, 46397u, 60264u), vec4<u32>(0u, 0u, 19493u, 1u), vec4<u32>(0u, 1u, 0u, 43886u), vec4<u32>(14230u, 0u, 25954u, 4294967295u), vec4<u32>(83120u, 0u, 1u, 0u), vec4<u32>(1u, 94528u, 26118u, 38807u), vec4<u32>(33649u, 0u, 0u, 4294967295u), vec4<u32>(4294967295u, 4294967295u, 43458u, 16986u), vec4<u32>(38660u, 72110u, 3445u, 1u), vec4<u32>(46559u, 7769u, 16419u, 1u), vec4<u32>(0u, 0u, 8061u, 0u));

var<private> global1: f32 = -307f;

var<private> global2: Struct_1 = Struct_1(vec2<u32>(0u, 18062u), 424f, 0i);

var<private> global3: Struct_2;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: u32) -> i32 {
    global0 = array<vec4<u32>, 31>();
    var var_0 = Struct_1(~(~vec2<u32>(select(66400u, 4294967295u, true), 52256u)), 1000f, u_input.d);
    var_0 = Struct_1(vec2<u32>(_wgslsmith_dot_vec3_u32(select(~vec3<u32>(4294967295u, u_input.c.x, 0u), vec3<u32>(34672u, u_input.c.x, arg_0), any(vec4<bool>(true, global3.a, true, global3.a))), ~vec3<u32>(arg_0, global3.b.x, arg_0)), var_0.a.x ^ (8363u << ((var_0.a.x ^ var_0.a.x) % 32u))), -1541f, _wgslsmith_add_i32((i32(-1i) * -1i) & max(countOneBits(u_input.b), global2.c >> (global3.b.x % 32u)), 1i));
    let var_1 = _wgslsmith_dot_vec2_i32(~max(select(_wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, -65024i), vec2<i32>(u_input.b, var_0.c), vec2<i32>(6171i, var_0.c)), vec2<i32>(-2147483647i, var_0.c), !global3.a), countOneBits(vec2<i32>(var_0.c, var_0.c)) >> (~u_input.e.zx % vec2<u32>(32u))), ~vec2<i32>(14664i, -2147483647i));
    var var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(1555f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global3.c, global3.c))))))));
    return 15206i;
}

fn func_2() -> vec2<i32> {
    var var_0 = _wgslsmith_dot_vec3_i32(select(~_wgslsmith_add_vec3_i32(vec3<i32>(u_input.d, 8856i, global2.c), vec3<i32>(u_input.b, -54314i, -8997i)), _wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, u_input.d, u_input.b), vec3<i32>(u_input.b, global2.c, global2.c)), _wgslsmith_sub_vec3_i32(vec3<i32>(-3518i, u_input.d, u_input.b), vec3<i32>(u_input.b, global2.c, -2147483647i))), vec3<bool>(false, true, true)), max(vec3<i32>(u_input.d, global2.c, u_input.d), ~vec3<i32>(u_input.b, -23213i, global2.c)) ^ _wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b, 1i, 1i), vec3<i32>(u_input.b, global2.c, global2.c)), vec3<i32>(global2.c, global2.c, -5190i))) | 1i;
    let var_1 = !vec2<bool>(true, -1267f > _wgslsmith_f_op_f32(step(1000f, _wgslsmith_f_op_f32(f32(-1f) * -938f))));
    var var_2 = global2.b;
    let var_3 = global2.b;
    let var_4 = vec2<u32>(~(~(~1u)) | firstLeadingBit(37668u ^ global3.b.x), _wgslsmith_clamp_u32(53646u, _wgslsmith_sub_u32(~_wgslsmith_sub_u32(u_input.e.x, u_input.c.x), 92083u), ~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.a), global2.a) >> (26447u % 32u)));
    return _wgslsmith_mod_vec2_i32(~select(~vec2<i32>(u_input.b, global2.c), vec2<i32>(_wgslsmith_sub_i32(-87757i, global2.c), global2.c | global2.c), any(select(vec4<bool>(false, global3.a, global3.a, false), vec4<bool>(var_1.x, var_1.x, global3.a, false), vec4<bool>(var_1.x, var_1.x, var_1.x, false)))), _wgslsmith_mod_vec2_i32(-firstLeadingBit(vec2<i32>(2147483647i, 16238i)) << ((vec2<u32>(var_4.x, u_input.e.x) << (vec2<u32>(62244u, 4294967295u) % vec2<u32>(32u))) % vec2<u32>(32u)), vec2<i32>(abs(i32(-1i) * -21348i), func_3(1u))));
}

fn func_4(arg_0: vec2<i32>) -> vec4<bool> {
    global1 = -727f;
    return !vec4<bool>(!any(!vec2<bool>(false, global3.a)), all(vec2<bool>(false, true)), !select(global3.a, global3.a & global3.a, any(vec4<bool>(true, global3.a, true, false))), false);
}

fn func_1() -> f32 {
    var var_0 = !select(select(vec4<bool>(any(vec2<bool>(false, true)), all(vec3<bool>(true, true, global3.a)), false, global3.a), func_4(func_2()), all(!vec4<bool>(true, false, false, global3.a))), vec4<bool>(!(!global3.a), global3.a, false, true), any(vec2<bool>(true, func_4(vec2<i32>(30794i, -32289i)).x)));
    var var_1 = func_4(~(((vec2<i32>(-503i, u_input.b) ^ vec2<i32>(global2.c, -58238i)) << (~vec2<u32>(global3.b.x, 15664u) % vec2<u32>(32u))) & (~vec2<i32>(global2.c, u_input.b) >> (_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, 0u), global3.b.xx) % vec2<u32>(32u))))).wxw;
    var var_2 = Struct_1(~vec2<u32>(select(global2.a.x ^ global2.a.x, 24201u, true | var_1.x), 1u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.b + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(global2.b, 1300f, false))))) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -627f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1902f)), var_0.x))), ~9203i);
    var var_3 = vec4<i32>(1i, 43272i, _wgslsmith_sub_i32((global2.c | var_2.c) & var_2.c, -_wgslsmith_sub_i32(var_2.c, 27907i)), -global2.c) & min(_wgslsmith_mod_vec4_i32(-vec4<i32>(2147483647i, 27424i, -2147483647i, 25601i), ~select(vec4<i32>(u_input.b, u_input.d, global2.c, -1i), vec4<i32>(-5152i, 65438i, var_2.c, -56175i), true)), _wgslsmith_mult_vec4_i32(vec4<i32>(global2.c, -1i, 49147i, global2.c), firstTrailingBit(vec4<i32>(u_input.d, -43742i, 5867i, global2.c))) >> (~abs(u_input.e) % vec4<u32>(32u)));
    global1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b)), global2.b);
    return global3.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(!select(select(all(vec4<bool>(global3.a, false, global3.a, true)), global3.a, global3.a), global3.a, false), u_input.c, _wgslsmith_f_op_f32(func_1()));
    global0 = array<vec4<u32>, 31>();
    let var_1 = var_0;
    var var_2 = (~41293u | countOneBits(global2.a.x)) ^ 1u;
    let var_3 = !((all(func_4(vec2<i32>(1i, 3791i)).yx) | (u_input.d <= -global2.c)) & true);
    global1 = -1128f;
    global2 = Struct_1(var_1.b.yy, var_0.c, abs(i32(-1i) * -(~u_input.d)));
    global0 = array<vec4<u32>, 31>();
    let var_4 = Struct_2(false, vec3<u32>(_wgslsmith_dot_vec3_u32(var_1.b, _wgslsmith_add_vec3_u32(firstTrailingBit(u_input.e.zyx), firstTrailingBit(vec3<u32>(u_input.e.x, global2.a.x, var_1.b.x)))), abs(global3.b.x >> (select(57187u, u_input.e.x, true) % 32u)), select(~global3.b.x, _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.b.x, 66635u, u_input.e.x), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.e.x, global3.b.x, global2.a.x), vec3<u32>(0u, u_input.c.x, var_0.b.x))), true)), var_1.c);
    let x = u_input.a;
    s_output = StorageBuffer(~var_1.b.x, vec3<i32>(-(_wgslsmith_add_i32(u_input.b, u_input.b) << (30423u % 32u)), -2147483647i, _wgslsmith_add_i32(0i, -_wgslsmith_dot_vec2_i32(vec2<i32>(global2.c, u_input.b), vec2<i32>(13669i, -1i)))), -1i, u_input.d, 0i);
}

