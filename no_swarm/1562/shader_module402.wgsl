struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: bool,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec2<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<bool>,
    c: f32,
    d: Struct_1,
    e: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: f32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 778f;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec4<f32>, arg_1: bool) -> bool {
    let var_0 = vec2<i32>(2147483647i, -_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b, 32108i, 0i, u_input.d), abs(vec4<i32>(-1i, 42529i, -551i, u_input.d)), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.b, u_input.b, -1i, u_input.b), vec4<i32>(-1i, u_input.d, u_input.d, u_input.b))), _wgslsmith_div_vec4_i32(vec4<i32>(17628i, u_input.d, u_input.b, -79037i), vec4<i32>(7959i, u_input.d, u_input.b, u_input.b))));
    global0 = _wgslsmith_f_op_f32(trunc(599f));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-787f - _wgslsmith_f_op_f32(sign(-1378f))) + -247f);
    global0 = var_1;
    var var_2 = Struct_3(u_input.a.x, ~(~firstLeadingBit(firstTrailingBit(26617u))));
    return any(vec3<bool>(arg_1, any(vec4<bool>(!arg_1, select(arg_1, arg_1, arg_1), arg_1, arg_1)), true));
}

fn func_2() -> vec2<i32> {
    let var_0 = Struct_1(vec4<u32>(~_wgslsmith_mod_u32(max(u_input.c, u_input.e), _wgslsmith_dot_vec3_u32(vec3<u32>(16925u, u_input.e, 51640u), vec3<u32>(56708u, 44051u, 0u))), 26090u, u_input.a.x, u_input.c), 4294967295u, u_input.c, any(!select(vec2<bool>(true, true), vec2<bool>(true, false), func_3(vec4<f32>(-1736f, 1873f, -355f, -504f), false))));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1104f, -1766f)) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-588f, -1000f))) * _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(352f, 793f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-416f, 195f))))));
    let var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(199f + _wgslsmith_f_op_f32(-1f))));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)) * var_2);
    let var_3 = _wgslsmith_div_u32(reverseBits(18395u), _wgslsmith_mod_u32(var_0.c & ~_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.a.x, var_0.b), var_0.a.ww), select(u_input.e, u_input.c, any(vec3<bool>(var_0.d, true, var_0.d)) & true)));
    return ~vec2<i32>(select(u_input.b, _wgslsmith_clamp_i32(-1i, i32(-1i) * -1i, 0i), select(select(true, false, false), all(vec2<bool>(var_0.d, true)), var_0.d)), firstLeadingBit(firstTrailingBit(firstTrailingBit(1i))));
}

fn func_4(arg_0: vec2<i32>, arg_1: i32) -> Struct_1 {
    var var_0 = -1018f;
    var_0 = 428f;
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-854f)) * 1203f), 437f)) + -1050f), _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1f)))));
    var var_1 = u_input.b;
    var var_2 = u_input.a | u_input.a;
    return Struct_1(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u & ~var_2.x, _wgslsmith_dot_vec2_u32(~u_input.a, vec2<u32>(var_2.x, 43103u)), 15575u, 34297u), ~(~abs(vec4<u32>(27824u, u_input.a.x, u_input.a.x, u_input.c)))), 125716u, 0u, false);
}

fn func_5(arg_0: i32, arg_1: Struct_1, arg_2: bool, arg_3: f32) -> Struct_3 {
    let var_0 = Struct_3(~(~(~11190u)), firstTrailingBit(u_input.c));
    let var_1 = Struct_4(var_0, select(!vec4<bool>(true, arg_2, all(vec3<bool>(true, arg_1.d, true)), true), !vec4<bool>(any(vec3<bool>(false, true, true)), true, arg_2, true), vec4<bool>(arg_1.d, (u_input.b & -30946i) <= reverseBits(u_input.d), _wgslsmith_sub_i32(0i, u_input.b) >= u_input.b, !arg_1.d)), arg_3, Struct_1(~vec4<u32>(_wgslsmith_add_u32(arg_1.a.x, 4294967295u), max(32799u, arg_1.b), arg_1.c, ~32672u), _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(u_input.a, _wgslsmith_sub_vec2_u32(arg_1.a.zz, arg_1.a.xw)), _wgslsmith_sub_u32(countOneBits(38472u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e, 50123u, u_input.e, 36707u), arg_1.a))), u_input.e, all(select(select(vec4<bool>(arg_2, arg_1.d, true, false), vec4<bool>(false, true, arg_1.d, false), arg_2), vec4<bool>(arg_2, false, arg_1.d, true), select(vec4<bool>(true, true, true, arg_2), vec4<bool>(arg_1.d, true, arg_1.d, true), arg_2)))), _wgslsmith_f_op_f32(trunc(arg_3)));
    global0 = var_1.e;
    var var_2 = ~arg_0;
    global0 = -1307f;
    return Struct_3(countOneBits(_wgslsmith_add_u32(~abs(var_0.b), 1u)), 0u);
}

fn func_6(arg_0: Struct_3, arg_1: Struct_3) -> Struct_3 {
    var var_0 = false;
    var_0 = true;
    var var_1 = Struct_2(vec4<u32>(select(abs(4294967295u), _wgslsmith_clamp_u32(u_input.a.x, arg_1.b, u_input.e), func_3(vec4<f32>(-671f, 2660f, -1137f, 1262f), true)), _wgslsmith_dot_vec4_u32(vec4<u32>(31202u, 13236u, u_input.a.x, 1u) & vec4<u32>(arg_0.a, u_input.a.x, arg_1.a, 57405u), vec4<u32>(61668u, arg_0.a, 1u, 4294967295u)), 100353u, ~func_4(vec2<i32>(1i, u_input.b), u_input.d).b) | firstLeadingBit(vec4<u32>(arg_0.a & 31024u, u_input.e, 4294967295u, ~0u)), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1953f, 1045f)) + _wgslsmith_f_op_f32(422f + -601f)), -543f), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1047f, 178f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(666f, 111f) * vec2<f32>(-257f, -863f))))))), func_4(vec2<i32>(1i, abs(u_input.d)) ^ min(-vec2<i32>(u_input.d, -1i), vec2<i32>(u_input.d, u_input.b)), _wgslsmith_mod_i32(~(u_input.b ^ u_input.b), _wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.b, -4234i, -2147483647i), ~vec3<i32>(u_input.d, u_input.b, 1i)))));
    var var_2 = func_5(~(i32(-1i) * -1i), var_1.c, false, var_1.b.x);
    var var_3 = i32(-1i) * -35231i;
    return Struct_3(~21888u, func_4(-func_2(), ~abs(26427i)).b);
}

fn func_1(arg_0: vec4<bool>, arg_1: vec2<f32>) -> vec3<bool> {
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -507f);
    global0 = -476f;
    var var_0 = Struct_4(func_6(func_5(u_input.d, func_4(func_2(), ~0i), !any(arg_0.zzx), arg_1.x), Struct_3(_wgslsmith_mult_u32(14522u, 1u) & (102269u & u_input.c), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, u_input.c, u_input.a.x), min(vec3<u32>(u_input.a.x, u_input.a.x, 0u), vec3<u32>(4294967295u, u_input.e, 1u))))), select(!select(arg_0, arg_0, false), arg_0, arg_0.x), arg_1.x, Struct_1(_wgslsmith_div_vec4_u32(~abs(vec4<u32>(2495u, u_input.e, 31718u, 1u)), vec4<u32>(u_input.c, firstLeadingBit(u_input.c), u_input.c | 4294967295u, 59519u)), u_input.a.x | _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.e, u_input.a.x, u_input.a.x), ~vec3<u32>(1u, u_input.c, u_input.a.x)), _wgslsmith_add_u32(4294967295u, _wgslsmith_div_u32(u_input.c, 65976u)), false), _wgslsmith_f_op_f32(round(570f)));
    var var_1 = (!func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-305f, var_0.c, 1744f, arg_1.x)), false) || true) || func_4(vec2<i32>(_wgslsmith_div_i32(_wgslsmith_clamp_i32(-2147483647i, u_input.d, u_input.d), _wgslsmith_mult_i32(u_input.d, u_input.b)), 1i), ~_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, -1i), vec2<i32>(u_input.b, -2147483647i)), firstLeadingBit(vec2<i32>(u_input.b, 0i)))).d;
    var var_2 = var_0.a;
    return arg_0.zyx;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(Struct_3(40245u, min(_wgslsmith_mult_u32(58664u, _wgslsmith_mult_u32(60131u, 0u)), abs(0u))), vec4<bool>(any(func_1(select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true), true), _wgslsmith_f_op_vec2_f32(vec2<f32>(154f, 540f) - vec2<f32>(-150f, 811f)))), any(vec4<bool>(true, true, true, true)), all(!select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), false)), true), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(2333f)), 1393f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(-731f, -886f)))))), func_4(vec2<i32>(-1i >> (u_input.c % 32u), abs(-14090i)), 11420i), -418f);
    let var_1 = _wgslsmith_f_op_f32(sign(var_0.c));
    var_0 = Struct_4(Struct_3(var_0.d.c, 1u), var_0.b, 182f, Struct_1(var_0.d.a, var_0.a.a, 0u, false), _wgslsmith_f_op_f32(ceil(787f)));
    var_0 = Struct_4(var_0.a, !(!vec4<bool>(false, all(vec4<bool>(false, false, var_0.b.x, var_0.b.x)), var_0.d.d, true)), -721f, var_0.d, -559f);
    let var_2 = func_5(u_input.d << (reverseBits(23279u) % 32u), Struct_1(~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c, var_0.d.b, var_0.a.b, var_0.a.a), vec4<u32>(u_input.c, 1u, var_0.a.a, u_input.a.x), vec4<u32>(62790u, u_input.c, 1u, 1u))), 17074u, u_input.c, (u_input.d == ~(-38786i)) && var_0.d.d), _wgslsmith_f_op_f32(select(-1219f, -519f, var_0.d.d && var_0.d.d)) >= var_0.e, 668f);
    let x = u_input.a;
    s_output = StorageBuffer(-1i, _wgslsmith_mult_u32(52557u, reverseBits(0u)), -654f, _wgslsmith_div_vec2_i32(firstTrailingBit(vec2<i32>(-52040i, -34476i | u_input.d)), vec2<i32>(firstTrailingBit(u_input.d), ~u_input.b) ^ (~vec2<i32>(-1i, 2147483647i) | countOneBits(vec2<i32>(u_input.d, u_input.d)))));
}

