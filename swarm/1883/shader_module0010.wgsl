struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: f32,
    d: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec3<i32>,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<u32>,
    c: vec2<f32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 3> = array<vec2<u32>, 3>(vec2<u32>(4294967295u, 122793u), vec2<u32>(0u, 30080u), vec2<u32>(4294967295u, 0u));

var<private> global1: vec4<u32>;

var<private> global2: array<vec4<f32>, 6> = array<vec4<f32>, 6>(vec4<f32>(1080f, -1116f, 481f, -188f), vec4<f32>(768f, 919f, 258f, -985f), vec4<f32>(-661f, -502f, 1353f, -715f), vec4<f32>(875f, 1113f, -1081f, 852f), vec4<f32>(489f, 600f, 268f, -834f), vec4<f32>(-1513f, 106f, 716f, -338f));

var<private> global3: array<vec2<i32>, 17> = array<vec2<i32>, 17>(vec2<i32>(65950i, 25065i), vec2<i32>(53933i, -52898i), vec2<i32>(-2178i, 1i), vec2<i32>(3091i, 2147483647i), vec2<i32>(50968i, 5780i), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<i32>(2147483647i, -1i), vec2<i32>(1i, -192i), vec2<i32>(1i, 1672i), vec2<i32>(2147483647i, 14541i), vec2<i32>(0i, -37073i), vec2<i32>(46911i, 350i), vec2<i32>(-3423i, 2079i), vec2<i32>(33150i, 93955i), vec2<i32>(0i, -56335i), vec2<i32>(-43680i, -12413i), vec2<i32>(2802i, -1i));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: vec3<bool>) -> i32 {
    let var_0 = ~2147483647i;
    global1 = abs(u_input.d);
    let var_1 = arg_0;
    global3 = array<vec2<i32>, 17>();
    let var_2 = var_1;
    return -_wgslsmith_mod_i32(u_input.c, var_0 & arg_0.a.x);
}

fn func_2(arg_0: bool, arg_1: Struct_1) -> Struct_1 {
    var var_0 = Struct_2(arg_1, func_3(Struct_1(firstTrailingBit(_wgslsmith_add_vec4_i32(arg_1.a, arg_1.a)), -180f, arg_1.c, !arg_1.d), -1i, !(!(!vec3<bool>(arg_1.d.x, arg_1.d.x, arg_0)))), ~(vec3<i32>(-1i) * -reverseBits(arg_1.a.xyw)), abs(select(33076u, ~u_input.a, true)));
    var_0 = Struct_2(Struct_1(vec4<i32>(abs(u_input.e), -abs(u_input.e), -10093i, 41928i), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(786f, _wgslsmith_f_op_f32(-arg_1.b)))), 374f, vec2<bool>(false, !arg_1.d.x && true)), 26156i, ~(~_wgslsmith_mult_vec3_i32(vec3<i32>(var_0.c.x, 4977i, var_0.c.x), _wgslsmith_mult_vec3_i32(vec3<i32>(var_0.a.a.x, 2767i, 1i), arg_1.a.wyz))), _wgslsmith_clamp_u32(abs(global1.x), _wgslsmith_clamp_u32(u_input.a, global1.x, _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(u_input.d, vec4<u32>(u_input.d.x, u_input.d.x, 4294967295u, 1u)), _wgslsmith_sub_u32(var_0.d, 1u), 15604u)), (0u >> (global1.x % 32u)) >> (80663u % 32u)));
    var var_1 = Struct_2(var_0.a, arg_1.a.x, -arg_1.a.ywz, ~_wgslsmith_sub_u32(~_wgslsmith_mod_u32(global1.x, global1.x), 1u & global1.x));
    global3 = array<vec2<i32>, 17>();
    var var_2 = Struct_2(Struct_1(-min(~var_1.a.a, ~var_1.a.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.b)), _wgslsmith_f_op_f32(var_1.a.c - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.a.c, arg_1.b))), vec2<bool>(!arg_0, arg_0)), _wgslsmith_div_i32(_wgslsmith_div_i32(~var_0.c.x, -arg_1.a.x << ((global1.x << (global1.x % 32u)) % 32u)), -_wgslsmith_clamp_i32(reverseBits(-43174i), arg_1.a.x, -2147483647i)), arg_1.a.zww, ~_wgslsmith_add_u32(~(~0u), 4294967295u));
    return var_0.a;
}

fn func_1(arg_0: u32, arg_1: vec2<bool>) -> vec4<i32> {
    var var_0 = func_2(true, Struct_1(vec4<i32>(_wgslsmith_sub_i32(u_input.c, -13718i), u_input.c, -1i & u_input.e, _wgslsmith_mod_i32(u_input.e, u_input.c)) & vec4<i32>(u_input.c, max(u_input.c, u_input.c), _wgslsmith_mod_i32(u_input.e, u_input.e), -u_input.c), 3066f, 831f, arg_1));
    global3 = array<vec2<i32>, 17>();
    let var_1 = !select(!vec3<bool>(var_0.d.x, any(vec3<bool>(var_0.d.x, false, true)), arg_1.x), vec3<bool>(var_0.b == var_0.c, all(vec3<bool>(arg_1.x, true, arg_1.x)) == false, true), true);
    let var_2 = func_2(true, Struct_1(reverseBits(vec4<i32>(var_0.a.x, u_input.c, ~var_0.a.x, u_input.c)), func_2(!(var_0.c >= var_0.b), Struct_1(_wgslsmith_sub_vec4_i32(var_0.a, var_0.a), _wgslsmith_f_op_f32(1173f - -1399f), _wgslsmith_f_op_f32(select(var_0.b, var_0.c, var_1.x)), !arg_1)).c, 225f, !var_1.zz));
    global3 = array<vec2<i32>, 17>();
    return ~var_0.a;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    global1 = countOneBits(u_input.d);
    var var_0 = Struct_1(_wgslsmith_sub_vec4_i32(arg_0.a, _wgslsmith_clamp_vec4_i32(min(~arg_0.a, _wgslsmith_div_vec4_i32(arg_0.a, vec4<i32>(arg_0.a.x, -13470i, u_input.c, arg_1.a.x))), (vec4<i32>(7624i, u_input.c, arg_0.a.x, 1i) & vec4<i32>(arg_1.a.x, -2147483647i, -2147483647i, u_input.c)) ^ select(arg_1.a, arg_0.a, vec4<bool>(arg_0.d.x, arg_1.d.x, false, arg_1.d.x)), _wgslsmith_add_vec4_i32(~vec4<i32>(37400i, u_input.c, u_input.e, arg_1.a.x), -vec4<i32>(-1i, u_input.c, u_input.e, -8384i)))), _wgslsmith_div_f32(-1936f, _wgslsmith_f_op_f32(arg_0.c + _wgslsmith_f_op_f32(-arg_1.c))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.c * _wgslsmith_f_op_f32(1943f * 729f))) * arg_1.b), arg_1.d);
    let var_1 = Struct_1(-var_0.a, -913f, 355f, var_0.d);
    global1 = u_input.d;
    var var_2 = arg_1.b;
    return func_2(arg_0.d.x, Struct_1(-vec4<i32>(28801i, -2410i, u_input.e, -1i) & ~(-vec4<i32>(var_0.a.x, var_1.a.x, var_1.a.x, -2147483647i)), var_0.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.c) * -2419f), !var_1.d));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~62153u);
    let var_1 = ~abs(u_input.e);
    let var_2 = func_4(Struct_1(func_1(firstLeadingBit(u_input.d.x), vec2<bool>(true, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -881f)), _wgslsmith_f_op_f32(f32(-1f) * -1909f), vec2<bool>(true, false)), func_2(true, func_2(false, Struct_1(reverseBits(vec4<i32>(-11133i, var_1, u_input.e, u_input.e)), _wgslsmith_f_op_f32(f32(-1f) * -2293f), _wgslsmith_f_op_f32(f32(-1f) * -1903f), vec2<bool>(true, true)))));
    var_0 = ~4294967295u;
    var var_3 = (~reverseBits(vec3<i32>(2147483647i, -1i, -31510i) >> (global1.zyw % vec3<u32>(32u))) ^ (_wgslsmith_add_vec3_i32(~var_2.a.zyw, select(var_2.a.xyz, vec3<i32>(0i, 58468i, -12150i), vec3<bool>(true, true, var_2.d.x))) | _wgslsmith_clamp_vec3_i32(vec3<i32>(var_2.a.x, -7861i, var_1) ^ vec3<i32>(var_1, var_2.a.x, 31563i), vec3<i32>(var_2.a.x, var_1, var_1), _wgslsmith_mod_vec3_i32(var_2.a.wzy, vec3<i32>(6190i, var_1, var_1))))) << (_wgslsmith_div_vec3_u32(~select(vec3<u32>(global1.x, u_input.a, 59392u), _wgslsmith_clamp_vec3_u32(global1.wyw, global1.zww, global1.zww), !vec3<bool>(var_2.d.x, var_2.d.x, false)), vec3<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(u_input.d, u_input.d), ~u_input.d), 1u, 4561u)) % vec3<u32>(32u));
    var var_4 = select(~u_input.b.x << (select(u_input.b.x, _wgslsmith_mult_u32(u_input.a, 1u), all(vec2<bool>(true, true))) % 32u), global1.x, any(select(select(vec4<bool>(false, var_2.d.x, true, var_2.d.x), select(vec4<bool>(var_2.d.x, var_2.d.x, false, var_2.d.x), vec4<bool>(var_2.d.x, false, true, false), false), select(vec4<bool>(true, var_2.d.x, var_2.d.x, true), vec4<bool>(false, false, false, var_2.d.x), var_2.d.x)), select(select(vec4<bool>(var_2.d.x, var_2.d.x, true, var_2.d.x), vec4<bool>(false, false, false, var_2.d.x), var_2.d.x), !vec4<bool>(var_2.d.x, var_2.d.x, false, true), func_4(Struct_1(vec4<i32>(42757i, var_1, var_3.x, var_1), var_2.c, -273f, var_2.d), var_2).d.x), var_2.d.x & false)));
    let var_5 = _wgslsmith_f_op_f32(var_2.b - _wgslsmith_f_op_f32(762f + 676f));
    global0 = array<vec2<u32>, 3>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(func_2(false, var_2).c, 1f, var_2.c, _wgslsmith_f_op_f32(-662f * var_5)))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_5, -177f, _wgslsmith_f_op_f32(step(1000f, var_2.b)), _wgslsmith_f_op_f32(-var_2.c))))), vec3<u32>(17209u, u_input.a, _wgslsmith_add_u32(reverseBits(u_input.a) ^ _wgslsmith_dot_vec2_u32(global1.wy, global0[_wgslsmith_index_u32(global1.x, 3u)]), global1.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1556f, var_2.b)), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.c, 987f) - vec2<f32>(1435f, var_2.c)))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1464f, var_2.c))) + _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.c, -322f) - vec2<f32>(var_5, 1210f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-237f, 628f)))))), _wgslsmith_div_vec4_f32(vec4<f32>(var_2.c, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_5))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(474f + -495f)), 768f), _wgslsmith_f_op_vec4_f32(-global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(~global1.x, 69167u), 6u)])));
}

