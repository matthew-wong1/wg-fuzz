struct Struct_1 {
    a: bool,
    b: u32,
    c: bool,
    d: i32,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec4<i32>,
    d: i32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(true, 1u, true, 2147483647i, 398f), Struct_1(true, 26390u, true, 47561i, -651f), Struct_1(true, 1u, false, 0i, -289f), Struct_1(true, 0u, false, -1i, 1000f), Struct_1(true, 34537u, false, -6917i, 344f), Struct_1(false, 0u, false, 2147483647i, 1824f), Struct_1(false, 0u, false, 2147483647i, 822f), Struct_1(false, 10761u, false, -52197i, -163f), Struct_1(false, 64541u, true, 19520i, -233f), Struct_1(true, 0u, false, i32(-2147483648), -1000f), Struct_1(false, 0u, true, 0i, -267f), Struct_1(true, 0u, true, i32(-2147483648), -437f), Struct_1(false, 11619u, true, 0i, 555f), Struct_1(false, 0u, false, 11676i, -105f), Struct_1(true, 19805u, false, 10649i, 436f), Struct_1(false, 67701u, true, 3941i, -606f), Struct_1(true, 1u, false, 0i, 876f), Struct_1(true, 4294967295u, false, -35214i, -168f), Struct_1(true, 4294967295u, false, 1i, -2248f), Struct_1(true, 16095u, false, -1i, 101f), Struct_1(false, 70137u, true, 9173i, 1734f), Struct_1(true, 1u, false, 0i, -250f), Struct_1(false, 31111u, false, i32(-2147483648), -1747f), Struct_1(false, 96631u, false, 2147483647i, -2865f), Struct_1(false, 1u, false, -27812i, 1506f), Struct_1(false, 52835u, true, -1i, 876f), Struct_1(true, 0u, false, -1i, -1555f), Struct_1(true, 30567u, true, -1i, 1033f), Struct_1(false, 1u, true, 1i, 975f), Struct_1(false, 4294967295u, false, -23980i, 481f));

var<private> global2: Struct_1 = Struct_1(true, 1u, true, i32(-2147483648), 300f);

var<private> global3: i32;

var<private> global4: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(false, 77169u, true, -1i, 1000f), Struct_1(false, 1u, false, 25315i, -287f), Struct_1(false, 0u, false, -43832i, 412f), Struct_1(false, 3776u, true, 1i, -807f), Struct_1(false, 14859u, false, 2147483647i, 150f), Struct_1(true, 3429u, true, i32(-2147483648), -160f), Struct_1(false, 22158u, false, 0i, -115f), Struct_1(true, 4294967295u, true, i32(-2147483648), -285f), Struct_1(true, 17381u, false, 43073i, -401f), Struct_1(false, 4294967295u, true, 17891i, 774f), Struct_1(true, 1u, true, 27789i, -579f), Struct_1(false, 24973u, true, -8303i, -1048f), Struct_1(true, 0u, false, -9542i, 106f), Struct_1(false, 1u, true, 0i, -1595f), Struct_1(true, 1u, true, 0i, 142f), Struct_1(false, 67367u, false, 2147483647i, -716f), Struct_1(true, 0u, false, -1i, 708f), Struct_1(true, 32521u, false, -1i, 1277f), Struct_1(true, 20045u, true, 0i, 1239f), Struct_1(false, 1u, true, -1i, 233f), Struct_1(false, 4294967295u, false, -31092i, 657f), Struct_1(true, 0u, false, -42164i, -351f), Struct_1(false, 259u, false, i32(-2147483648), -542f), Struct_1(false, 4294967295u, true, 0i, 153f), Struct_1(true, 64832u, true, 57264i, 1521f), Struct_1(false, 82583u, true, -1i, -516f), Struct_1(false, 4294967295u, false, -1i, -685f), Struct_1(true, 4294967295u, true, -18834i, -906f), Struct_1(false, 1u, true, i32(-2147483648), -102f));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32, arg_1: u32) -> u32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global2.e, global2.e, global2.e, -587f), vec4<f32>(-771f, -118f, -283f, -474f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global2.e), 1593f, global2.e, _wgslsmith_f_op_f32(floor(-1481f))))));
    var var_1 = _wgslsmith_clamp_vec4_i32(vec4<i32>(~u_input.b, u_input.b, 1120i, i32(-1i) * -1i), min(~abs(vec4<i32>(32695i, -2147483647i, u_input.b, global2.d)), ~vec4<i32>(u_input.b, -43321i, u_input.b, global2.d) >> (~vec4<u32>(25726u, 4294967295u, global2.b, global2.b) % vec4<u32>(32u))), _wgslsmith_sub_vec4_i32(min(vec4<i32>(60115i, global2.d, global2.d, -31036i) | vec4<i32>(2147483647i, u_input.b, u_input.b, global2.d), vec4<i32>(global2.d, u_input.b, u_input.b, u_input.b) | vec4<i32>(global2.d, global2.d, 53457i, 27362i)), vec4<i32>(-1i) * -vec4<i32>(17471i, global2.d, u_input.b, global2.d))) & _wgslsmith_clamp_vec4_i32(~(~(~vec4<i32>(26148i, 2147483647i, global2.d, 2147483647i))), -(~(vec4<i32>(u_input.b, global2.d, 2147483647i, 2147483647i) >> (vec4<u32>(4294967295u, arg_1, 0u, u_input.a) % vec4<u32>(32u)))), min(countOneBits(abs(vec4<i32>(-2147483647i, -2147483647i, 0i, global2.d))), vec4<i32>(-29238i, _wgslsmith_div_i32(u_input.b, global2.d), 1i, ~2147483647i)));
    let var_2 = _wgslsmith_add_u32(max(arg_0, ~(~79085u >> (arg_1 % 32u))), global2.b);
    let var_3 = Struct_1(!(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.e) - global2.e) > 1f), 4294967295u, true, -1i, _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.x, 1990f))))));
    var var_4 = Struct_1(true, _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_mult_u32(u_input.a, 1u), ~var_2), ~global2.b), min(vec2<u32>(min(arg_0, u_input.a), var_2), vec2<u32>(4294967295u, 1u))), 1245f <= global2.e, u_input.b, var_0.x);
    return firstLeadingBit(u_input.a);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: f32, arg_3: i32) -> i32 {
    let var_0 = -859f;
    let var_1 = ~66377u;
    let var_2 = ~select(-1i, firstTrailingBit(34014i), all(vec2<bool>(arg_1.a, true))) != global2.d;
    var var_3 = Struct_1(arg_1.a, var_1, var_2 | select(false, !(arg_1.b != u_input.a), var_2 && true), 0i, 1000f);
    var var_4 = global1[_wgslsmith_index_u32(arg_0.a.b, 30u)];
    return arg_0.c;
}

fn func_2(arg_0: Struct_2) -> vec3<u32> {
    global0 = arg_0.a.b;
    global3 = global2.d;
    var var_0 = vec2<i32>(func_4(Struct_2(Struct_1(false, func_3(global2.b, arg_0.b), all(vec3<bool>(false, false, arg_0.a.c)), 0i, _wgslsmith_f_op_f32(abs(1000f))), arg_0.b, ~_wgslsmith_dot_vec3_i32(vec3<i32>(0i, -66171i, arg_0.c), vec3<i32>(-6276i, global2.d, -1i))), Struct_1(true, ~502u, true, 1i, _wgslsmith_f_op_f32(1744f + _wgslsmith_f_op_f32(883f * arg_0.a.e))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.e) * -1432f) - -461f), ~u_input.b), -2147483647i);
    let var_1 = vec4<i32>(-2147483647i, _wgslsmith_add_i32(global2.d, 1i) ^ -10722i, abs(global2.d), var_0.x ^ 0i);
    global0 = ~firstLeadingBit(u_input.a);
    return vec3<u32>(1u, ~firstTrailingBit(arg_0.b), _wgslsmith_div_u32(108592u, global2.b));
}

fn func_1(arg_0: Struct_2, arg_1: f32) -> u32 {
    let var_0 = firstTrailingBit(_wgslsmith_add_vec3_u32(vec3<u32>(43429u, ~global2.b, 26214u >> (global2.b % 32u)) | vec3<u32>(arg_0.a.b, ~1u, 1u ^ arg_0.a.b), ~func_2(arg_0)));
    let var_1 = vec2<i32>(arg_0.a.d, -2147483647i);
    global0 = firstLeadingBit(~u_input.a);
    var var_2 = select(vec4<bool>(!all(!vec4<bool>(true, true, arg_0.a.a, arg_0.a.a)), global2.c, true | global2.c, true), !vec4<bool>(true, any(select(vec2<bool>(true, true), vec2<bool>(global2.a, true), vec2<bool>(false, global2.a))), arg_0.a.a, arg_0.a.a), !(!vec4<bool>(!arg_0.a.c, true, any(vec3<bool>(false, false, false)), !arg_0.a.a)));
    var var_3 = Struct_2(Struct_1(true, firstLeadingBit(arg_0.a.b & max(27243u, var_0.x)), !(_wgslsmith_f_op_f32(global2.e - arg_1) <= _wgslsmith_f_op_f32(max(-306f, 2108f))), -arg_0.a.d, global2.e), _wgslsmith_clamp_u32(0u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(52699u, u_input.a, 2990u, 0u), vec4<u32>(arg_0.b, 12799u, 4294967295u, arg_0.b)), 35197u), _wgslsmith_sub_i32(u_input.b, 47121i));
    return _wgslsmith_clamp_u32(~(~70786u), 5393u, var_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_mod_u32(_wgslsmith_clamp_u32(func_1(Struct_2(Struct_1(false, 0u, global2.c, global2.d, global2.e), 4294967295u, 1i), _wgslsmith_f_op_f32(-1220f + global2.e)), _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a, u_input.a, 0u), max(vec3<u32>(1u, global2.b, global2.b), vec3<u32>(78007u, 4294967295u, u_input.a))), 14980u), 4294967295u) | ~48089u;
    global4 = array<Struct_1, 29>();
    global1 = array<Struct_1, 30>();
    let var_0 = Struct_1(all(!(!vec2<bool>(global2.a, false))), global2.b, !(global2.c && false), firstLeadingBit(abs(_wgslsmith_div_i32(-4452i, _wgslsmith_div_i32(-28243i, u_input.b)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -758f), global2.e)))), global2.e)));
    var var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-486f, 749f)));
    var var_2 = vec4<u32>(u_input.a, ~1u, var_0.b >> (0u % 32u), _wgslsmith_div_u32(var_0.b | var_0.b, ~abs(var_0.b >> (var_0.b % 32u))));
    let var_3 = _wgslsmith_f_op_f32(f32(-1f) * -887f);
    let var_4 = vec3<bool>(false, all(select(vec3<bool>(10385i != global2.d, any(vec4<bool>(var_0.a, global2.c, false, global2.c)), global2.a), vec3<bool>(global2.c, global2.c, true), any(vec3<bool>(true, true, true)))), true);
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(vec3<u32>(_wgslsmith_sub_u32(global2.b, _wgslsmith_div_u32(0u, 1u)), reverseBits(81562u), 4294967295u)), _wgslsmith_mult_vec2_i32(~(~firstTrailingBit(vec2<i32>(var_0.d, 2147483647i))), vec2<i32>(-1i, _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(global2.d, -48914i), vec2<i32>(0i, var_0.d)), -var_0.d))), _wgslsmith_mod_vec4_i32(~vec4<i32>(u_input.b, global2.d, _wgslsmith_dot_vec3_i32(vec3<i32>(16391i, var_0.d, 2147483647i), vec3<i32>(1i, u_input.b, 0i)), global2.d), vec4<i32>(_wgslsmith_mult_i32(u_input.b, ~global2.d), _wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.b, -1i), min(vec2<i32>(-2147483647i, -42498i), vec2<i32>(0i, -1i))), global2.d, -1i)), -(~global2.d), vec3<f32>(var_3, 594f, 141f));
}

