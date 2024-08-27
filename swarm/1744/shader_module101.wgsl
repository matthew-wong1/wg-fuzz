struct Struct_1 {
    a: vec3<u32>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: u32,
    b: vec3<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec3<i32>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_2,
    c: i32,
    d: f32,
    e: Struct_3,
}

struct Struct_5 {
    a: Struct_1,
    b: vec3<f32>,
    c: i32,
    d: Struct_1,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<f32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(true, false);

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_2(arg_0: Struct_1) -> Struct_2 {
    var var_0 = Struct_4(~arg_0.a, Struct_2(_wgslsmith_mult_u32(firstTrailingBit(arg_0.b.x), (arg_0.a.x << (24260u % 32u)) & 0u), u_input.d.xwy, arg_0), firstLeadingBit(-2147483647i), _wgslsmith_f_op_f32(-880f * -714f), Struct_3(Struct_2(0u, u_input.b.zzw, arg_0), Struct_1(_wgslsmith_sub_vec3_u32(u_input.c & arg_0.b.wxz, arg_0.b.yxw), _wgslsmith_div_vec4_u32(vec4<u32>(arg_0.b.x, 15467u, 4199u, arg_0.b.x), ~vec4<u32>(u_input.c.x, u_input.c.x, 0u, 5481u))), max(_wgslsmith_mod_vec3_i32(-vec3<i32>(-7925i, -1i, 0i), ~u_input.b.zxy), countOneBits(vec3<i32>(u_input.d.x, 35670i, 82618i)))));
    let var_1 = vec4<bool>(true, global0.x, !any(select(vec3<bool>(global0.x, global0.x, global0.x), select(vec3<bool>(global0.x, true, false), vec3<bool>(true, false, false), true), select(vec3<bool>(global0.x, false, true), vec3<bool>(false, false, global0.x), vec3<bool>(global0.x, global0.x, global0.x)))), (2147483647i & u_input.d.x) != -min(u_input.a, u_input.d.x));
    let var_2 = Struct_5(Struct_1(~(~min(vec3<u32>(var_0.b.c.a.x, u_input.c.x, 98614u), vec3<u32>(4294967295u, 4294967295u, 46125u))), ~abs(vec4<u32>(var_0.a.x, arg_0.a.x, u_input.c.x, 125031u)) >> (~_wgslsmith_sub_vec4_u32(vec4<u32>(arg_0.b.x, 112899u, 1u, var_0.a.x), var_0.e.b.b) % vec4<u32>(32u))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-195f, var_0.d, var_0.d), vec3<f32>(var_0.d, 280f, -615f)))))), vec3<f32>(_wgslsmith_f_op_f32(760f - _wgslsmith_f_op_f32(trunc(var_0.d))), _wgslsmith_f_op_f32(f32(-1f) * -1134f), -587f))), -2147483647i, Struct_1(vec3<u32>(~u_input.c.x, u_input.c.x, _wgslsmith_dot_vec2_u32(u_input.c.yz, abs(arg_0.a.zz))), ~select(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_0.a.x, var_0.a.x, 7126u, 40303u), var_0.e.a.c.b), ~vec4<u32>(arg_0.b.x, 1u, var_0.e.b.a.x, 1u), select(vec4<bool>(var_1.x, global0.x, global0.x, false), var_1, var_1.x))), true);
    var var_3 = var_0.b.a;
    let var_4 = var_0.a.x;
    return Struct_2(~arg_0.b.x, ~vec3<i32>(~1i, 1i, _wgslsmith_mod_i32(u_input.d.x, var_2.c)), Struct_1(~(~var_0.b.c.a << (var_0.e.b.a % vec3<u32>(32u))), vec4<u32>(var_0.a.x, _wgslsmith_add_u32(firstLeadingBit(var_0.a.x), 4294967295u), reverseBits(firstTrailingBit(0u)), ~(~u_input.c.x))));
}

fn func_1(arg_0: Struct_4, arg_1: vec4<bool>) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(675f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -2090f))), _wgslsmith_f_op_f32(-1023f * _wgslsmith_div_f32(1228f, 234f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(768f, -1716f, arg_0.d, -439f))))))));
    var var_1 = vec3<bool>(true, 13916u != ~u_input.c.x, !(all(vec3<bool>(global0.x, true, true)) && false));
    var var_2 = func_2(arg_0.e.b);
    let var_3 = arg_0.e;
    let var_4 = ~(~var_3.a.a);
    return arg_1.xzx;
}

fn func_3(arg_0: vec2<i32>) -> i32 {
    return u_input.a;
}

fn func_4(arg_0: f32, arg_1: i32, arg_2: Struct_2, arg_3: i32) -> f32 {
    global0 = select(vec2<bool>(true, func_1(Struct_4(vec3<u32>(arg_2.a, u_input.c.x, 0u), func_2(arg_2.c), u_input.d.x, _wgslsmith_f_op_f32(ceil(150f)), Struct_3(Struct_2(55497u, vec3<i32>(-1i, arg_3, 1i), arg_2.c), Struct_1(u_input.c, vec4<u32>(u_input.c.x, 1870u, 0u, 33599u)), arg_2.b)), vec4<bool>(u_input.d.x <= -2147483647i, true, arg_3 < 19362i, global0.x)).x), vec2<bool>(false, true), (abs(arg_2.a & 1u) > abs(_wgslsmith_sub_u32(1u, arg_2.c.b.x))) | all(vec3<bool>(global0.x, func_1(Struct_4(vec3<u32>(arg_2.c.b.x, 4294967295u, 6951u), Struct_2(1u, arg_2.b, Struct_1(vec3<u32>(u_input.c.x, 53178u, u_input.c.x), arg_2.c.b)), u_input.b.x, -1111f, Struct_3(arg_2, arg_2.c, vec3<i32>(48211i, 0i, u_input.a))), vec4<bool>(true, false, global0.x, global0.x)).x, true)));
    var var_0 = all(vec3<bool>(arg_0 <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2425f)), all(!select(vec2<bool>(global0.x, false), vec2<bool>(true, global0.x), false)), (u_input.c.x >= 0u) || false));
    let var_1 = ~_wgslsmith_add_vec3_i32(abs(reverseBits(_wgslsmith_clamp_vec3_i32(u_input.b.www, u_input.d.wxz, u_input.b.wwx))), ~abs(u_input.b.xyz) >> (u_input.c % vec3<u32>(32u)));
    let var_2 = _wgslsmith_div_i32(_wgslsmith_clamp_i32(-1i, arg_3, 1i), i32(-1i) * -1i);
    var var_3 = abs(-var_1.xz);
    return -739f;
}

fn func_5(arg_0: f32, arg_1: Struct_2, arg_2: Struct_3, arg_3: Struct_3) -> vec2<bool> {
    var var_0 = -abs(~select(u_input.b, vec4<i32>(0i, -2147483647i, u_input.a, arg_2.a.b.x), global0.x)) & -vec4<i32>(37458i, 43755i, ~1i, 40054i);
    global0 = func_1(Struct_4(~arg_1.c.b.xww, Struct_2(abs(4294967295u), _wgslsmith_sub_vec3_i32(arg_3.c | vec3<i32>(u_input.d.x, -1i, var_0.x), select(vec3<i32>(-2147483647i, -5476i, arg_2.c.x), vec3<i32>(-67871i, 11620i, arg_2.a.b.x), vec3<bool>(true, global0.x, global0.x))), arg_2.a.c), arg_3.a.b.x, 255f, Struct_3(Struct_2(0u, -var_0.yyy, func_2(Struct_1(arg_1.c.b.zwx, arg_3.a.c.b)).c), arg_3.a.c, arg_2.a.b)), vec4<bool>(global0.x, !(!global0.x), !global0.x, func_1(Struct_4(arg_1.c.b.xwy, arg_3.a, arg_3.c.x, -4348f, Struct_3(arg_1, arg_2.a.c, vec3<i32>(-45831i, arg_2.c.x, -1i))), select(vec4<bool>(true, global0.x, false, global0.x), vec4<bool>(false, false, global0.x, true), vec4<bool>(global0.x, false, false, true))).x | global0.x)).yx;
    global0 = select(vec2<bool>(true, u_input.d.x >= (-20397i & var_0.x)), vec2<bool>(!(51020u > arg_1.c.a.x), false), true);
    let var_1 = ~_wgslsmith_div_u32(arg_1.c.a.x, 27318u);
    return vec2<bool>(arg_0 <= _wgslsmith_f_op_f32(-177f * _wgslsmith_f_op_f32(-arg_0)), !func_1(Struct_4(vec3<u32>(1761u, 33220u, 5431u), Struct_2(0u, vec3<i32>(arg_2.a.b.x, arg_1.b.x, var_0.x), arg_3.b), arg_2.c.x ^ u_input.a, -526f, arg_3), vec4<bool>(global0.x, true, global0.x, !global0.x)).x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec2<bool>(!select(global0.x, all(func_1(Struct_4(u_input.c, Struct_2(u_input.c.x, vec3<i32>(u_input.a, -25846i, 33172i), Struct_1(u_input.c, vec4<u32>(26195u, 1u, 1u, 1u))), u_input.b.x, -813f, Struct_3(Struct_2(10793u, u_input.b.zzx, Struct_1(u_input.c, vec4<u32>(29364u, u_input.c.x, 1u, u_input.c.x))), Struct_1(u_input.c, vec4<u32>(u_input.c.x, u_input.c.x, 23986u, 4294967295u)), vec3<i32>(-2147483647i, -2147483647i, -2147483647i))), vec4<bool>(true, global0.x, global0.x, false))), func_1(Struct_4(vec3<u32>(74u, 4294967295u, u_input.c.x), Struct_2(u_input.c.x, u_input.d.zzw, Struct_1(u_input.c, vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 0u))), u_input.d.x, -983f, Struct_3(Struct_2(u_input.c.x, vec3<i32>(u_input.d.x, u_input.b.x, u_input.b.x), Struct_1(vec3<u32>(u_input.c.x, u_input.c.x, 0u), vec4<u32>(10604u, u_input.c.x, u_input.c.x, 25936u))), Struct_1(u_input.c, vec4<u32>(u_input.c.x, u_input.c.x, 13500u, u_input.c.x)), u_input.d.wwy)), vec4<bool>(false, global0.x, true, global0.x)).x && global0.x), any(func_5(_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(-1026f * 391f), func_3(vec2<i32>(u_input.d.x, u_input.d.x)), Struct_2(u_input.c.x, u_input.b.yxx, Struct_1(vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x), vec4<u32>(0u, 40625u, 1u, 60554u))), -42274i)), func_2(Struct_1(u_input.c, vec4<u32>(0u, u_input.c.x, 23780u, u_input.c.x))), Struct_3(Struct_2(40657u, u_input.b.zyy, Struct_1(u_input.c, vec4<u32>(u_input.c.x, 3554u, 38201u, u_input.c.x))), func_2(Struct_1(vec3<u32>(89598u, u_input.c.x, 1u), vec4<u32>(26492u, u_input.c.x, u_input.c.x, 4294967295u))).c, vec3<i32>(u_input.b.x, -10411i, u_input.d.x) << (u_input.c % vec3<u32>(32u))), Struct_3(Struct_2(u_input.c.x, u_input.b.yzy, Struct_1(vec3<u32>(u_input.c.x, 10658u, 0u), vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 1u))), func_2(Struct_1(u_input.c, vec4<u32>(65387u, u_input.c.x, u_input.c.x, 4294967295u))).c, -vec3<i32>(7021i, -24529i, u_input.a)))));
    let var_0 = _wgslsmith_f_op_f32(-1797f + 822f);
    var var_1 = vec2<u32>(35436u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_dot_vec3_u32(u_input.c, vec3<u32>(8228u, u_input.c.x, 4294967295u)), 1u, ~0u), ~u_input.c));
    global0 = select(func_1(Struct_4(~vec3<u32>(var_1.x, 4294967295u, u_input.c.x), Struct_2(~u_input.c.x, _wgslsmith_clamp_vec3_i32(u_input.d.yzw, u_input.b.xxz, u_input.d.xww), Struct_1(u_input.c, vec4<u32>(33721u, 21964u, var_1.x, 4294967295u))), u_input.a, -1383f, Struct_3(func_2(Struct_1(vec3<u32>(u_input.c.x, 4294967295u, var_1.x), vec4<u32>(u_input.c.x, u_input.c.x, 4294967295u, var_1.x))), func_2(Struct_1(u_input.c, vec4<u32>(0u, u_input.c.x, u_input.c.x, var_1.x))).c, u_input.d.yyz)), vec4<bool>(any(vec2<bool>(true, true)), !all(vec3<bool>(global0.x, global0.x, global0.x)), false, all(vec4<bool>(true, global0.x, true, false)) & false)).yy, vec2<bool>(func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)), Struct_2(var_1.x, ~u_input.b.wyw, Struct_1(u_input.c, vec4<u32>(4294967295u, 1u, u_input.c.x, u_input.c.x))), Struct_3(func_2(Struct_1(vec3<u32>(var_1.x, u_input.c.x, 1u), vec4<u32>(var_1.x, u_input.c.x, u_input.c.x, var_1.x))), Struct_1(u_input.c, vec4<u32>(var_1.x, u_input.c.x, 4294967295u, u_input.c.x)), vec3<i32>(u_input.d.x, u_input.d.x, u_input.d.x)), Struct_3(func_2(Struct_1(u_input.c, vec4<u32>(u_input.c.x, 35367u, u_input.c.x, 0u))), Struct_1(vec3<u32>(13444u, u_input.c.x, var_1.x), vec4<u32>(1u, 119927u, 1u, 49081u)), vec3<i32>(-14416i, u_input.d.x, u_input.a))).x, false), select(func_5(2335f, func_2(func_2(Struct_1(u_input.c, vec4<u32>(u_input.c.x, 5863u, 1u, 0u))).c), Struct_3(Struct_2(46729u, u_input.b.ywz, Struct_1(vec3<u32>(var_1.x, 11465u, 1u), vec4<u32>(var_1.x, 34356u, 0u, var_1.x))), func_2(Struct_1(vec3<u32>(u_input.c.x, var_1.x, var_1.x), vec4<u32>(u_input.c.x, var_1.x, var_1.x, 66640u))).c, u_input.b.wyw), Struct_3(func_2(Struct_1(u_input.c, vec4<u32>(u_input.c.x, 1u, u_input.c.x, u_input.c.x))), func_2(Struct_1(vec3<u32>(0u, u_input.c.x, u_input.c.x), vec4<u32>(var_1.x, 33546u, 1u, 1u))).c, u_input.d.zyw ^ vec3<i32>(u_input.d.x, 2147483647i, u_input.a))), func_1(Struct_4(u_input.c, func_2(Struct_1(u_input.c, vec4<u32>(u_input.c.x, 70099u, u_input.c.x, 36363u))), -1i, _wgslsmith_f_op_f32(floor(var_0)), Struct_3(Struct_2(u_input.c.x, vec3<i32>(-42052i, 0i, u_input.b.x), Struct_1(u_input.c, vec4<u32>(var_1.x, u_input.c.x, u_input.c.x, 1u))), Struct_1(u_input.c, vec4<u32>(var_1.x, 1u, 1u, 3823u)), u_input.b.wxz)), select(vec4<bool>(global0.x, true, global0.x, global0.x), select(vec4<bool>(true, false, global0.x, true), vec4<bool>(false, global0.x, true, false), vec4<bool>(global0.x, false, false, false)), any(vec4<bool>(false, false, global0.x, global0.x)))).xx, !select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(global0.x, global0.x), vec2<bool>(global0.x, false)), any(vec4<bool>(global0.x, global0.x, global0.x, false)))));
    var var_2 = select(!vec2<bool>(true, !(!global0.x)), !vec2<bool>(any(!vec2<bool>(global0.x, global0.x)), global0.x), !vec2<bool>(false, global0.x));
    var_2 = select(!(!(!(!vec2<bool>(var_2.x, global0.x)))), vec2<bool>(false, all(func_1(Struct_4(vec3<u32>(0u, 4294967295u, 0u), Struct_2(var_1.x, vec3<i32>(0i, u_input.d.x, -2147483647i), Struct_1(u_input.c, vec4<u32>(69445u, var_1.x, 4294967295u, var_1.x))), -18252i, var_0, Struct_3(Struct_2(64976u, u_input.d.zyy, Struct_1(u_input.c, vec4<u32>(u_input.c.x, var_1.x, var_1.x, 27822u))), Struct_1(vec3<u32>(6583u, 4294967295u, 4431u), vec4<u32>(var_1.x, u_input.c.x, var_1.x, 30433u)), u_input.b.xyx)), vec4<bool>(var_2.x, true, global0.x, false)))), ((firstTrailingBit(var_1.x) << (1u % 32u)) >> (_wgslsmith_dot_vec2_u32(~u_input.c.yy, vec2<u32>(0u, u_input.c.x)) % 32u)) <= ~((var_1.x | var_1.x) | u_input.c.x));
    var var_3 = global0.x;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.xw, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1788f, -790f, 369f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0, -194f, 1332f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, var_0, 755f)))))), var_0, _wgslsmith_add_i32(1i, 1i));
}

