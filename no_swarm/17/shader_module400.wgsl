struct Struct_1 {
    a: bool,
    b: f32,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<u32>,
    d: vec2<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 19> = array<vec4<f32>, 19>(vec4<f32>(1341f, -645f, -1101f, 149f), vec4<f32>(-1344f, 466f, 1651f, -397f), vec4<f32>(-570f, -426f, -1000f, 769f), vec4<f32>(-798f, 1650f, 1139f, -679f), vec4<f32>(-976f, 1000f, 123f, 887f), vec4<f32>(-1533f, -506f, 1269f, 1041f), vec4<f32>(-1000f, 1000f, -446f, 383f), vec4<f32>(-108f, 1195f, -812f, 210f), vec4<f32>(789f, -322f, 1293f, 125f), vec4<f32>(1307f, -944f, 739f, -610f), vec4<f32>(-1987f, 1067f, 154f, -1301f), vec4<f32>(-642f, 319f, -688f, 922f), vec4<f32>(168f, 874f, -1039f, -540f), vec4<f32>(-1492f, 919f, -1056f, 1103f), vec4<f32>(-137f, -247f, 414f, -207f), vec4<f32>(858f, 1670f, 1321f, -1347f), vec4<f32>(-116f, 646f, 1000f, 397f), vec4<f32>(-1000f, 1202f, -1210f, 2346f), vec4<f32>(297f, 814f, 644f, 2417f));

var<private> global1: vec2<bool>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3() -> vec2<bool> {
    var var_0 = 403f;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1939f, _wgslsmith_f_op_f32(floor(2210f)))) + _wgslsmith_f_op_f32(trunc(257f))));
    let var_1 = select(-vec4<i32>(-16251i, u_input.b, u_input.b, _wgslsmith_mod_i32(-45513i, _wgslsmith_mult_i32(2147483647i, u_input.c))), vec4<i32>(_wgslsmith_sub_i32(i32(-1i) * -2147483647i, 1i) >> (_wgslsmith_clamp_u32(firstTrailingBit(4294967295u), _wgslsmith_mult_u32(101178u, u_input.d), 1u ^ u_input.a) % 32u), firstLeadingBit(abs(_wgslsmith_sub_i32(u_input.b, u_input.c))), _wgslsmith_sub_i32(2147483647i, countOneBits(u_input.c)), _wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.b, 51151i, 2147483647i, 0i), -(~vec4<i32>(u_input.c, 0i, u_input.b, u_input.c)))), !vec4<bool>(select(global1.x, !global1.x, true), global1.x, false, global1.x));
    let var_2 = _wgslsmith_sub_vec2_i32(abs(abs(var_1.yw)) << (vec2<u32>(u_input.d, abs(1u)) % vec2<u32>(32u)), var_1.wz);
    global0 = array<vec4<f32>, 19>();
    return select(!(!(!select(vec2<bool>(false, false), vec2<bool>(global1.x, true), vec2<bool>(true, false)))), select(vec2<bool>(false, !all(vec3<bool>(true, global1.x, global1.x))), vec2<bool>(_wgslsmith_mult_i32(var_1.x, 10922i) >= (var_2.x ^ 2147483647i), all(!vec3<bool>(false, global1.x, global1.x))), vec2<bool>(true, true)), !vec2<bool>(global1.x, all(vec4<bool>(global1.x, global1.x, true, global1.x))));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: f32, arg_3: vec4<f32>) -> bool {
    let var_0 = vec3<u32>(1u, firstTrailingBit(~42172u), abs(u_input.d));
    let var_1 = Struct_2(54714u, _wgslsmith_f_op_f32(-969f * arg_0.b), arg_0);
    global1 = vec2<bool>(arg_0.a, any(!select(select(vec3<bool>(var_1.c.a, false, true), vec3<bool>(true, false, arg_0.a), false), vec3<bool>(global1.x, arg_0.a, true), any(vec4<bool>(false, true, false, var_1.c.a)))));
    var var_2 = ~_wgslsmith_mult_vec2_u32(~select(vec2<u32>(44946u, 0u), var_0.xy, vec2<bool>(false, arg_0.a)) << (~(~var_0.xx) % vec2<u32>(32u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(~76228u, u_input.d), var_0.yz, vec2<u32>(_wgslsmith_mod_u32(var_0.x, 28421u), _wgslsmith_sub_u32(u_input.d, 4294967295u))));
    var_2 = var_0.yy;
    return true;
}

fn func_2() -> vec4<u32> {
    global0 = array<vec4<f32>, 19>();
    global1 = select(vec2<bool>(true, global1.x), vec2<bool>(true, global1.x & global1.x), vec2<bool>(true, global1.x));
    global0 = array<vec4<f32>, 19>();
    global0 = array<vec4<f32>, 19>();
    global1 = vec2<bool>(func_4(Struct_1(any(func_3()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1338f, 1598f)))), _wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.b, -1i, 0i), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.c, 2147483647i, -42377i), vec3<i32>(0i, u_input.b, u_input.b))), ~(~vec3<i32>(u_input.c, 32364i, u_input.b))), _wgslsmith_f_op_f32(-808f + _wgslsmith_f_op_f32(sign(1000f))), _wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(~u_input.d, 19u)])), select(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.a, 12026u), vec3<u32>(22775u, 1u, u_input.a)), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 1u, u_input.d), vec3<u32>(15780u, u_input.d, 0u))), 1u, false) > 33225u);
    return countOneBits(~max(~(~vec4<u32>(0u, 12569u, 42454u, 1u)), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, 0u, u_input.d, u_input.d), select(vec4<u32>(u_input.d, 1u, 5466u, 55043u), vec4<u32>(1u, u_input.d, u_input.a, 38550u), true))));
}

fn func_1(arg_0: Struct_1, arg_1: u32) -> f32 {
    global0 = array<vec4<f32>, 19>();
    var var_0 = abs(-2147483647i);
    var var_1 = min(func_2(), ~(~(vec4<u32>(arg_1, arg_1, u_input.a, 48530u) & vec4<u32>(arg_1, 60409u, arg_1, 0u))) & firstTrailingBit(~(~vec4<u32>(4294967295u, 4294967295u, 1u, 1u))));
    return -738f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !global1.x;
    global0 = array<vec4<f32>, 19>();
    global1 = select(vec2<bool>(!var_0, global1.x), vec2<bool>(true, true), !(!(!vec2<bool>(var_0, false))));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1100f * 1151f) + 727f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1310f - 1048f), _wgslsmith_f_op_f32(-114f + 1537f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_1(false, 887f), u_input.a)) * _wgslsmith_f_op_f32(min(1084f, -1771f))))));
    let var_2 = ((-(vec2<i32>(0i, 0i) >> (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u))) | (-vec2<i32>(u_input.b, 2147483647i) << (~vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u)))) & (((vec2<i32>(4153i, 1i) & vec2<i32>(u_input.c, -34770i)) ^ _wgslsmith_add_vec2_i32(vec2<i32>(u_input.b, -16836i), vec2<i32>(-7277i, u_input.b))) >> ((_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, u_input.d), vec2<u32>(u_input.a, 9851u)) << ((vec2<u32>(u_input.d, 1u) & vec2<u32>(58523u, u_input.a)) % vec2<u32>(32u))) % vec2<u32>(32u)))) ^ vec2<i32>(_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.c, 21439i), vec2<i32>(u_input.c, u_input.c)), ~vec2<i32>(u_input.b, -27245i)), -countOneBits(u_input.b), -2147483647i), -_wgslsmith_add_i32(9287i, 24743i | u_input.c));
    let var_3 = vec4<bool>(true, false, true, !any(select(vec3<bool>(false, var_0, false), select(vec3<bool>(global1.x, var_0, global1.x), vec3<bool>(global1.x, true, global1.x), vec3<bool>(true, global1.x, global1.x)), var_0)));
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_1(Struct_1(var_0, _wgslsmith_f_op_f32(var_1.x + -108f)), ~countOneBits(1u))))) - 149f);
    let var_5 = _wgslsmith_f_op_f32(f32(-1f) * -150f);
    global0 = array<vec4<f32>, 19>();
    let x = u_input.a;
    s_output = StorageBuffer((-_wgslsmith_sub_vec4_i32(vec4<i32>(-1i, 1i, 6737i, u_input.c), vec4<i32>(var_2.x, -1i, -2147483647i, -1i)) << (vec4<u32>(u_input.a, 9926u >> (u_input.a % 32u), 4294967295u, u_input.d | 4294967295u) % vec4<u32>(32u))) & ~vec4<i32>(-1699i, min(var_2.x, -2147483647i), _wgslsmith_clamp_i32(41885i, u_input.b, u_input.c), u_input.c), reverseBits(u_input.a), vec3<u32>(u_input.d, u_input.a, firstTrailingBit(u_input.a)), ~var_2, u_input.a);
}

