struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: vec2<i32>,
    d: vec3<u32>,
    e: u32,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: Struct_3 = Struct_3(false, Struct_2(Struct_1(vec4<u32>(1u, 0u, 475u, 4294967295u), 1u, vec2<u32>(0u, 4294967295u)), vec2<u32>(74555u, 47294u), Struct_1(vec4<u32>(1u, 45198u, 4294967295u, 22321u), 1u, vec2<u32>(4294967295u, 49099u)), Struct_1(vec4<u32>(130560u, 71972u, 46458u, 4294967295u), 1u, vec2<u32>(32145u, 22288u))), vec2<i32>(33325i, -3493i), vec3<u32>(4294967295u, 0u, 63271u), 0u);

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_2(arg_0: i32, arg_1: f32) -> Struct_4 {
    global1 = Struct_3(global1.a, global1.b, vec2<i32>(1844i, _wgslsmith_div_i32(firstLeadingBit(_wgslsmith_div_i32(arg_0, global1.c.x)), ~(~global1.c.x))), u_input.b | u_input.b, ~0u);
    global0 = false;
    global0 = false;
    let var_0 = vec4<bool>(!(any(vec3<bool>(true, false, true)) & (-1017f > _wgslsmith_f_op_f32(arg_1 - arg_1))), all(!(!(!vec2<bool>(true, global1.a)))), global1.a, false);
    let var_1 = global1.b;
    return Struct_4(global1.b);
}

fn func_1(arg_0: i32, arg_1: vec3<u32>) -> vec2<u32> {
    let var_0 = func_2(global1.c.x, 151f);
    let var_1 = -vec2<i32>(min(max(global1.c.x, -1059i), u_input.a), _wgslsmith_dot_vec3_i32(vec3<i32>(38611i, 0i, 0i), _wgslsmith_add_vec3_i32(u_input.c, u_input.c))) >> (var_0.a.a.a.wz % vec2<u32>(32u));
    let var_2 = Struct_4(global1.b);
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -981f), _wgslsmith_f_op_f32(-1084f + -753f), -202f), vec3<f32>(1005f, _wgslsmith_f_op_f32(616f + -1176f), _wgslsmith_f_op_f32(floor(359f))), false))));
    let var_4 = max(var_1.x, (global1.c.x >> (_wgslsmith_clamp_u32(_wgslsmith_sub_u32(u_input.b.x, 74340u), ~4294967295u, _wgslsmith_mod_u32(arg_1.x, 4294967295u)) % 32u)) >> (var_0.a.a.c.x % 32u));
    return vec2<u32>(var_0.a.d.a.x, var_2.a.a.b);
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: vec2<f32>) -> i32 {
    var var_0 = firstLeadingBit(_wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.a, 59332i), vec2<i32>(max(-60152i, arg_0), ~global1.c.x))) ^ ~u_input.c.x;
    global0 = (any(select(select(vec3<bool>(true, true, global1.a), vec3<bool>(true, global1.a, true), false), select(vec3<bool>(global1.a, global1.a, global1.a), vec3<bool>(global1.a, global1.a, false), global1.a), false)) | select(!(!global1.a), global1.e < arg_1.b, false)) == global1.a;
    let var_1 = select(global1.a, global1.a, any(select(!vec4<bool>(false, global1.a, true, false), vec4<bool>(true, global1.a, false || global1.a, true), global1.a)));
    let var_2 = select(~(~_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 53016u, 3464u, u_input.b.x) >> (vec4<u32>(arg_1.c.x, 0u, 4294967295u, 70105u) % vec4<u32>(32u)), vec4<u32>(1u, 18999u, 56601u, 4294967295u))), vec4<u32>(4294967295u, ~0u, ~func_1(_wgslsmith_dot_vec3_i32(vec3<i32>(-15464i, -33635i, 24298i), u_input.c), vec3<u32>(0u, 78377u, arg_1.a.x)).x, _wgslsmith_add_u32(~49793u, abs(_wgslsmith_mult_u32(4294967295u, arg_1.c.x)))), !(!(!select(vec4<bool>(var_1, false, global1.a, false), vec4<bool>(var_1, false, global1.a, global1.a), vec4<bool>(true, var_1, var_1, var_1)))));
    global1 = Struct_3(all(vec4<bool>(var_1, var_1, any(vec2<bool>(false, var_1)), !(global1.a || true))), func_2(arg_0, arg_2.x).a, ~_wgslsmith_sub_vec2_i32(-u_input.c.zx, _wgslsmith_add_vec2_i32(vec2<i32>(u_input.c.x, arg_0), u_input.c.xx)) & global1.c, func_2(35722i, _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2.x, 509f) - arg_2.x)).a.d.a.zyy, ~global1.e);
    return max(-14021i, reverseBits(arg_0 | -2147483647i));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: Struct_4) -> Struct_3 {
    let var_0 = arg_0.a;
    global1 = Struct_3(true, Struct_2(global1.b.d, vec2<u32>(4294967295u, 100023u), arg_2.a.c, Struct_1(vec4<u32>(~var_0.x, 1u, ~50362u, func_1(arg_1.x, u_input.b).x), firstTrailingBit(~0u), select(vec2<u32>(31879u, arg_2.a.b.x), vec2<u32>(4294967295u, u_input.b.x), global1.a))), _wgslsmith_clamp_vec2_i32(vec2<i32>(-33462i, _wgslsmith_dot_vec4_i32(arg_1, arg_1)) << (~(vec2<u32>(21857u, 37255u) ^ vec2<u32>(78215u, arg_2.a.c.c.x)) % vec2<u32>(32u)), vec2<i32>(abs(4451i), 18211i), max(_wgslsmith_clamp_vec2_i32(vec2<i32>(arg_1.x, -2147483647i), arg_1.yx, arg_1.yw) >> (select(vec2<u32>(1u, u_input.b.x), var_0.zx, vec2<bool>(true, false)) % vec2<u32>(32u)), -abs(vec2<i32>(0i, -39162i)))), _wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, ~arg_0.b, arg_2.a.b.x) >> (_wgslsmith_add_vec3_u32(vec3<u32>(116492u, u_input.b.x, 108440u) | arg_2.a.a.a.wxz, var_0.wyx) % vec3<u32>(32u)), vec3<u32>(u_input.b.x, arg_0.a.x, ~var_0.x) & _wgslsmith_sub_vec3_u32(arg_0.a.yyw, vec3<u32>(arg_0.c.x, var_0.x, u_input.b.x))), ~arg_2.a.b.x);
    global0 = any(vec3<bool>(!any(vec3<bool>(true, true, global1.a)) && false, _wgslsmith_f_op_f32(f32(-1f) * -927f) < _wgslsmith_f_op_f32(ceil(1039f)), false));
    global1 = Struct_3(!global1.a, arg_2.a, arg_1.xx, arg_2.a.a.a.yzy, 14701u);
    let var_1 = arg_2.a.d;
    return Struct_3(!select(any(select(vec3<bool>(global1.a, true, true), vec3<bool>(false, global1.a, global1.a), global1.a)), false, any(select(vec4<bool>(global1.a, true, global1.a, false), vec4<bool>(global1.a, global1.a, global1.a, false), vec4<bool>(global1.a, false, true, false)))), global1.b, global1.c, reverseBits(func_2(2147483647i, _wgslsmith_f_op_f32(f32(-1f) * -746f)).a.a.a.xxz), ~(_wgslsmith_dot_vec3_u32(~u_input.b, select(global1.d, vec3<u32>(arg_2.a.a.a.x, global1.b.b.x, u_input.b.x), global1.a)) << ((934u >> (arg_2.a.a.b % 32u)) % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = true;
    global1 = func_4(Struct_1(firstLeadingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b.x, 4294967295u, global1.b.b.x, global1.e), global1.b.d.a, vec4<u32>(57876u, 81015u, global1.e, 34633u))) >> (global1.b.a.a % vec4<u32>(32u)), ~(~5372u), func_1(u_input.a, vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, global1.e, 65626u), vec3<u32>(u_input.b.x, 39647u, 10425u)), abs(28710u), 10514u))), vec4<i32>(min(abs(func_3(-1i, global1.b.a, vec2<f32>(-1418f, 1617f))), firstTrailingBit(abs(39938i))), ~global1.c.x, ~(reverseBits(global1.c.x) | 0i), -1i), Struct_4(global1.b));
    let var_0 = Struct_4(Struct_2(func_2(_wgslsmith_mod_i32(_wgslsmith_mult_i32(u_input.a, 21462i), 1i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1328f) - 602f)).a.a, func_1(u_input.a, vec3<u32>(9499u, global1.d.x ^ global1.b.d.c.x, func_1(13429i, u_input.b).x)), func_4(func_4(Struct_1(vec4<u32>(4294967295u, 12532u, 4294967295u, global1.d.x), 45910u, global1.d.yy), _wgslsmith_div_vec4_i32(vec4<i32>(0i, u_input.a, u_input.a, global1.c.x), vec4<i32>(-3957i, u_input.c.x, global1.c.x, 0i)), func_2(global1.c.x, 658f)).b.c, vec4<i32>(firstTrailingBit(12498i), _wgslsmith_div_i32(0i, u_input.a), 1i, i32(-1i) * -3889i), Struct_4(Struct_2(Struct_1(vec4<u32>(global1.e, 126866u, 39360u, 25249u), 0u, vec2<u32>(39860u, 0u)), u_input.b.xz, Struct_1(vec4<u32>(u_input.b.x, global1.e, global1.e, global1.d.x), u_input.b.x, vec2<u32>(4294967295u, global1.d.x)), Struct_1(global1.b.c.a, 0u, global1.b.d.c)))).b.c, global1.b.c));
    var var_1 = select(select(vec4<bool>(any(vec4<bool>(true, true, false, global1.a)), global1.a, global1.a | true, true), vec4<bool>(false, !all(vec2<bool>(global1.a, global1.a)), true, global1.a), vec4<bool>(true, all(select(vec4<bool>(global1.a, true, global1.a, global1.a), vec4<bool>(false, global1.a, false, true), vec4<bool>(false, global1.a, true, global1.a))), global1.a, !global1.a)), vec4<bool>(true, false, reverseBits(4294967295u) >= ~select(0u, u_input.b.x, false), global1.a), select(select(vec4<bool>(global1.a & global1.a, true, select(global1.a, global1.a, global1.a), !global1.a), !select(vec4<bool>(global1.a, global1.a, global1.a, true), vec4<bool>(global1.a, true, global1.a, global1.a), false), select(!vec4<bool>(false, global1.a, global1.a, global1.a), vec4<bool>(false, false, global1.a, true), vec4<bool>(false, true, true, global1.a))), !vec4<bool>(all(vec4<bool>(false, global1.a, false, global1.a)), false, false, global1.a && true), global1.a));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -673f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(var_0.a.a.b, 0u, 1u), ~vec3<u32>(0u, 10584u, 10626u), vec3<u32>(0u, u_input.b.x, 0u)) << (var_0.a.d.a.ywx % vec3<u32>(32u)), u_input.b), _wgslsmith_sub_u32(37200u, abs(u_input.b.x)), (vec2<i32>(-1i) * -_wgslsmith_div_vec2_i32(global1.c, vec2<i32>(-1i, -1i))) << (max(~vec2<u32>(1u, global1.d.x), vec2<u32>(countOneBits(36740u), _wgslsmith_clamp_u32(u_input.b.x, u_input.b.x, global1.d.x))) % vec2<u32>(32u)), -329f);
}

