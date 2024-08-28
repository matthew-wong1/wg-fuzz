struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: f32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: bool,
    e: vec3<bool>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_1,
    c: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-10968i, vec3<bool>(false, false, false), 927f);

var<private> global1: array<Struct_2, 7>;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: bool, arg_1: Struct_2, arg_2: vec4<bool>) -> i32 {
    var var_0 = arg_1.c;
    global1 = array<Struct_2, 7>();
    let var_1 = Struct_1(global0.a, var_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(387f))));
    let var_2 = Struct_1(-_wgslsmith_add_i32(abs(firstTrailingBit(15997i)), _wgslsmith_mod_i32(6947i ^ arg_1.c.a, _wgslsmith_add_i32(var_1.a, global0.a))), vec3<bool>(arg_1.d, arg_0, true), _wgslsmith_f_op_f32(var_1.c * -194f));
    global0 = arg_1.c;
    return -9510i;
}

fn func_2(arg_0: Struct_2) -> Struct_2 {
    var var_0 = Struct_1(arg_0.c.a, vec3<bool>(!global0.b.x | false, all(!arg_0.c.b.yy), (select(u_input.b, arg_0.c.a, arg_0.e.x) <= abs(-18659i)) | arg_0.c.b.x), global0.c);
    var_0 = arg_0.c;
    var var_1 = Struct_3(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(-678f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_0.b.c - -1607f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-239f * global0.c) * _wgslsmith_f_op_f32(1008f * global0.c))))), Struct_1(~var_0.a, arg_0.e, _wgslsmith_f_op_f32(step(var_0.c, global0.c))), Struct_2(global0.b.x, arg_0.c, arg_0.b, !(!all(vec2<bool>(arg_0.c.b.x, false))), global0.b));
    let var_2 = u_input.c;
    let var_3 = abs(_wgslsmith_mult_vec3_i32(vec3<i32>(arg_0.b.a, func_3(var_0.b.x, Struct_2(var_1.b.b.x, Struct_1(var_1.b.a, var_0.b, var_0.c), arg_0.b, false, vec3<bool>(true, arg_0.c.b.x, global0.b.x)), vec4<bool>(false, true, false, true)), global0.a) ^ vec3<i32>(0i, 0i, _wgslsmith_dot_vec2_i32(vec2<i32>(var_1.b.a, 0i), vec2<i32>(-1i, 1i))), abs(~_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b, -20024i, u_input.b), vec3<i32>(u_input.a, arg_0.c.a, 0i)))));
    return Struct_2(all(!select(!vec4<bool>(arg_0.e.x, true, arg_0.b.b.x, arg_0.c.b.x), vec4<bool>(var_0.b.x, true, true, true), false)), Struct_1(~(-(global0.a | 41457i)), vec3<bool>(true, all(var_1.c.e), !any(vec3<bool>(true, true, true))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(379f * _wgslsmith_f_op_f32(-var_0.c)), -2040f)), var_1.b, ~(reverseBits(u_input.b) & abs(var_0.a)) >= 1i, !select(vec3<bool>(all(vec3<bool>(var_1.b.b.x, false, false)), !var_1.c.b.b.x, !arg_0.b.b.x), !select(var_0.b, vec3<bool>(true, global0.b.x, global0.b.x), global0.b.x), false));
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: i32) -> Struct_4 {
    let var_0 = func_2(arg_0);
    let var_1 = _wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(~(~(~vec2<u32>(60289u, 4294967295u))), ~vec2<u32>(~u_input.c, u_input.c | u_input.c)), vec2<u32>(21701u, ~9344u));
    global0 = arg_0.b;
    let var_2 = Struct_1(abs(1i), !arg_0.c.b, -594f);
    let var_3 = _wgslsmith_f_op_f32(step(arg_0.b.c, _wgslsmith_f_op_f32(f32(-1f) * -2403f))) >= -719f;
    return Struct_4(_wgslsmith_dot_vec2_i32(-(vec2<i32>(7413i, u_input.a) ^ -vec2<i32>(u_input.b, arg_1)), _wgslsmith_mult_vec2_i32(abs(~vec2<i32>(0i, 1i)), countOneBits(vec2<i32>(-1i, var_0.b.a) >> (vec2<u32>(u_input.c, 0u) % vec2<u32>(32u))))), _wgslsmith_clamp_vec3_i32(min(countOneBits(vec3<i32>(-18678i, arg_2, u_input.b) | vec3<i32>(var_2.a, arg_1, -2147483647i)), ~vec3<i32>(447i, -27634i, 4214i)), vec3<i32>(-_wgslsmith_sub_i32(-3158i, arg_1), 2147483647i, arg_2), _wgslsmith_clamp_vec3_i32(-vec3<i32>(-1i, 1i, arg_1), _wgslsmith_clamp_vec3_i32(~vec3<i32>(-51158i, arg_0.b.a, -9390i), ~vec3<i32>(-4866i, global0.a, arg_2), _wgslsmith_mult_vec3_i32(vec3<i32>(0i, arg_2, arg_1), vec3<i32>(arg_2, 30401i, -23656i))), -_wgslsmith_sub_vec3_i32(vec3<i32>(arg_0.b.a, arg_1, 2147483647i), vec3<i32>(2147483647i, u_input.b, 42341i)))));
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: Struct_4, arg_3: vec2<u32>) -> vec3<bool> {
    var var_0 = 68479i;
    var var_1 = ~u_input.c;
    var_1 = _wgslsmith_mult_u32(4294967295u, 0u);
    var var_2 = 45987u;
    var var_3 = arg_2.b ^ countOneBits(_wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(arg_2.b, arg_2.b), max(select(vec3<i32>(global0.a, 6888i, 35669i), arg_2.b, vec3<bool>(arg_1.c.b.x, arg_1.c.b.x, false)), _wgslsmith_clamp_vec3_i32(vec3<i32>(0i, arg_2.a, 59304i), vec3<i32>(arg_1.c.a, 0i, global0.a), vec3<i32>(global0.a, 1i, arg_1.b.a)))));
    return !vec3<bool>(false, true && (!arg_1.a || arg_1.b.b.x), true);
}

fn func_6(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: vec2<f32>, arg_3: Struct_4) -> Struct_1 {
    global1 = array<Struct_2, 7>();
    global1 = array<Struct_2, 7>();
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -233f) + global0.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0.c))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1412f))));
    global1 = array<Struct_2, 7>();
    var var_1 = all(func_2(Struct_2(any(vec4<bool>(false, false, global0.b.x, global0.b.x)), arg_0, arg_0, true, global0.b)).c.b.xy);
    return func_2(global1[_wgslsmith_index_u32(4294967295u, 7u)]).c;
}

fn func_1() -> bool {
    global0 = func_6(Struct_1(_wgslsmith_add_i32(_wgslsmith_mult_i32(-29892i, firstLeadingBit(global0.a)), -78761i), func_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-748f, -1728f, global0.c, 860f), vec4<f32>(global0.c, global0.c, global0.c, -392f)))), Struct_2(all(vec2<bool>(global0.b.x, true)), Struct_1(-7032i, vec3<bool>(global0.b.x, global0.b.x, false), 1972f), Struct_1(u_input.b, vec3<bool>(false, global0.b.x, false), 1195f), -1i >= u_input.a, vec3<bool>(false, global0.b.x, global0.b.x)), func_4(func_2(global1[_wgslsmith_index_u32(u_input.c, 7u)]), 1i, 0i), ~vec2<u32>(35268u, u_input.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c)) * _wgslsmith_f_op_f32(f32(-1f) * -547f))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(-1324f)))), -1391f, 731f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-121f * global0.c))), -619f) + _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-439f, _wgslsmith_f_op_f32(-global0.c))))), func_4(func_2(func_2(global1[_wgslsmith_index_u32(u_input.c << (u_input.c % 32u), 7u)])), ~_wgslsmith_add_i32(2147483647i, u_input.a) << (_wgslsmith_add_u32(u_input.c, ~27370u) % 32u), u_input.a));
    var var_0 = _wgslsmith_div_f32(global0.c, global0.c);
    var var_1 = func_2(Struct_2(global0.b.x, Struct_1(14251i, global0.b, -1000f), func_2(Struct_2(true, func_6(Struct_1(global0.a, vec3<bool>(global0.b.x, true, false), global0.c), vec3<f32>(-718f, 2974f, -1361f), vec2<f32>(global0.c, global0.c), Struct_4(-10178i, vec3<i32>(global0.a, -2147483647i, 2147483647i))), Struct_1(global0.a, vec3<bool>(true, true, true), -743f), 535f >= global0.c, select(global0.b, vec3<bool>(global0.b.x, false, false), vec3<bool>(global0.b.x, global0.b.x, true)))).c, all(!select(vec4<bool>(global0.b.x, global0.b.x, false, global0.b.x), vec4<bool>(true, global0.b.x, true, global0.b.x), vec4<bool>(true, global0.b.x, global0.b.x, true))), !func_6(func_6(Struct_1(u_input.a, global0.b, 599f), vec3<f32>(global0.c, 451f, -463f), vec2<f32>(-1170f, 1000f), Struct_4(global0.a, vec3<i32>(global0.a, -41156i, -9864i))), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.c, global0.c, global0.c) + vec3<f32>(global0.c, global0.c, -1000f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1890f, -1396f) - vec2<f32>(801f, global0.c)), func_4(Struct_2(global0.b.x, Struct_1(-70379i, vec3<bool>(false, false, true), global0.c), Struct_1(u_input.a, vec3<bool>(global0.b.x, global0.b.x, global0.b.x), global0.c), global0.b.x, vec3<bool>(false, false, true)), 14860i, -2147483647i)).b));
    let var_2 = vec3<u32>(~firstTrailingBit(~abs(6244u)), 65576u, ~32065u);
    let var_3 = func_6(Struct_1(-u_input.b ^ (-global0.a << (var_2.x % 32u)), !(!select(vec3<bool>(global0.b.x, false, true), var_1.e, vec3<bool>(var_1.d, global0.b.x, false))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(562f))))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(728f - global0.c)) * -1360f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1490f))), var_1.b.c), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(vec2<f32>(1148f, var_1.b.c), vec2<f32>(-829f, var_1.b.c)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.b.c, -489f))))))), Struct_4(u_input.b, -firstTrailingBit(select(vec3<i32>(-38020i, 25370i, global0.a), vec3<i32>(-1i, -1i, -6795i), var_1.e))));
    return select(!global0.b.x, var_3.b.x, true);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 7>();
    let var_0 = vec3<bool>(false, !func_1(), false);
    var var_1 = func_2(func_2(Struct_2(all(vec4<bool>(var_0.x, var_0.x, global0.b.x, var_0.x)), Struct_1(_wgslsmith_clamp_i32(global0.a, 4989i, global0.a), var_0, -399f), Struct_1(9176i, !vec3<bool>(global0.b.x, var_0.x, global0.b.x), _wgslsmith_f_op_f32(-global0.c)), !(global0.a <= u_input.b), global0.b))).b;
    var var_2 = _wgslsmith_f_op_f32(func_2(func_2(func_2(Struct_2(var_1.b.x, Struct_1(var_1.a, vec3<bool>(var_1.b.x, true, true), 865f), Struct_1(18060i, var_1.b, 389f), var_0.x, vec3<bool>(global0.b.x, true, var_0.x))))).b.c - var_1.c);
    let var_3 = func_4(Struct_2(false, func_2(Struct_2(!var_1.b.x, Struct_1(u_input.a, var_1.b, 117f), func_6(Struct_1(21635i, vec3<bool>(var_1.b.x, true, false), var_1.c), vec3<f32>(1339f, global0.c, global0.c), vec2<f32>(var_1.c, -230f), Struct_4(global0.a, vec3<i32>(-8040i, global0.a, -32556i))), !var_0.x, var_0)).c, func_2(Struct_2(var_0.x, Struct_1(var_1.a, var_0, 923f), func_2(Struct_2(true, Struct_1(56970i, vec3<bool>(true, var_0.x, true), var_1.c), Struct_1(global0.a, vec3<bool>(global0.b.x, true, var_1.b.x), global0.c), var_1.b.x, global0.b)).c, global0.b.x & false, func_6(Struct_1(u_input.a, var_1.b, global0.c), vec3<f32>(447f, 1820f, -1000f), vec2<f32>(474f, 1578f), Struct_4(-5048i, vec3<i32>(-42843i, u_input.b, -50441i))).b)).c, global0.b.x, vec3<bool>(any(func_6(Struct_1(global0.a, vec3<bool>(false, false, false), -127f), vec3<f32>(var_1.c, global0.c, global0.c), vec2<f32>(-664f, -919f), Struct_4(2147483647i, vec3<i32>(-2147483647i, global0.a, 32325i))).b), var_0.x, false)), _wgslsmith_add_i32(abs(global0.a), ~u_input.b) << (_wgslsmith_clamp_u32(countOneBits(u_input.c >> (u_input.c % 32u)), u_input.c, firstLeadingBit(u_input.c)) % 32u), ~_wgslsmith_dot_vec4_i32(-(~vec4<i32>(u_input.b, global0.a, 2147483647i, u_input.b)), ~select(vec4<i32>(u_input.b, 2147483647i, 0i, 10776i), vec4<i32>(global0.a, 1i, var_1.a, 0i), vec4<bool>(true, false, var_1.b.x, var_1.b.x))));
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-444f + global0.c) + var_1.c);
    var_2 = -457f;
    let x = u_input.a;
    s_output = StorageBuffer(1i);
}

