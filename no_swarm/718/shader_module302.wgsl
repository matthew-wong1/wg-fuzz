struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: vec4<bool>,
    d: bool,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec3<i32>,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 15>;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: i32, arg_1: bool) -> vec2<u32> {
    global0 = array<vec4<u32>, 15>();
    global0 = array<vec4<u32>, 15>();
    var var_0 = Struct_1(_wgslsmith_sub_vec2_i32(_wgslsmith_mult_vec2_i32(countOneBits(vec2<i32>(u_input.a, arg_0)), vec2<i32>(arg_0, -2147483647i)) | _wgslsmith_clamp_vec2_i32(countOneBits(vec2<i32>(arg_0, u_input.b)), vec2<i32>(20115i, arg_0), vec2<i32>(arg_0, -22215i) >> (vec2<u32>(0u, 1u) % vec2<u32>(32u))), abs(_wgslsmith_mod_vec2_i32(~vec2<i32>(8580i, 0i), ~vec2<i32>(arg_0, u_input.b)))), true, vec4<bool>(!(all(vec3<bool>(false, true, false)) || all(vec2<bool>(false, arg_1))), all(select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, arg_1, true), arg_1)) == true, any(vec2<bool>(all(vec2<bool>(arg_1, arg_1)), false)), arg_1), true);
    return vec2<u32>(~max(1u, 37384u), _wgslsmith_dot_vec3_u32(vec3<u32>(1u << (1u % 32u), ~(~0u), reverseBits(_wgslsmith_div_u32(4294967295u, 93075u))), ~vec3<u32>(_wgslsmith_add_u32(0u, 33282u), abs(13264u), ~1u)));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2) -> Struct_1 {
    global0 = array<vec4<u32>, 15>();
    global0 = array<vec4<u32>, 15>();
    let var_0 = -26928i;
    let var_1 = 0u;
    let var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-1825f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-749f))))), 236f));
    return Struct_1(arg_1.b.zz << ((func_3(countOneBits(arg_0.b.x), arg_0.a.x) << (_wgslsmith_clamp_vec2_u32(~vec2<u32>(var_1, var_1), ~vec2<u32>(var_1, var_1), ~vec2<u32>(0u, 32023u)) % vec2<u32>(32u))) % vec2<u32>(32u)), true, vec4<bool>(any(arg_0.a), true, arg_1.c, !any(select(vec4<bool>(arg_0.c, false, true, arg_0.a.x), vec4<bool>(arg_0.c, true, arg_1.a.x, true), vec4<bool>(arg_0.c, true, false, arg_0.c)))), true);
}

fn func_4(arg_0: vec3<f32>, arg_1: vec4<i32>, arg_2: Struct_1) -> u32 {
    var var_0 = arg_2.c.x;
    var_0 = arg_2.b | false;
    let var_1 = Struct_2(select(arg_2.c.www, vec3<bool>(!arg_2.d & select(true, false, arg_2.c.x), any(arg_2.c), true), true), arg_1.yxw, !all(vec2<bool>(true, arg_0.x != arg_0.x)));
    global0 = array<vec4<u32>, 15>();
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0) + _wgslsmith_f_op_vec3_f32(-arg_0)))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1465f, -416f, -432f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(1283f)), 1f, _wgslsmith_f_op_f32(1000f * arg_0.x)), arg_0)));
    return 5628u;
}

fn func_5(arg_0: u32, arg_1: Struct_2, arg_2: i32) -> Struct_2 {
    let var_0 = Struct_2(vec3<bool>(!(!any(vec4<bool>(true, true, arg_1.a.x, arg_1.a.x))), !any(vec2<bool>(arg_1.c, arg_1.c)) || all(arg_1.a), !(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, 1u, arg_0), vec4<u32>(arg_0, 49409u, arg_0, arg_0)) > ~1736u)), vec3<i32>(-arg_2, arg_1.b.x, abs(max(u_input.a | 2147483647i, ~2147483647i))), true);
    global0 = array<vec4<u32>, 15>();
    global0 = array<vec4<u32>, 15>();
    let var_1 = var_0;
    global0 = array<vec4<u32>, 15>();
    return var_1;
}

fn func_6(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: Struct_2, arg_3: i32) -> vec4<f32> {
    let var_0 = Struct_2(vec3<bool>(arg_1.a.x, arg_0.x, true), arg_1.b, true);
    global0 = array<vec4<u32>, 15>();
    global0 = array<vec4<u32>, 15>();
    let var_1 = func_5(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(42615u, 44151u), vec2<u32>(1u, 1u)), _wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 1u, 0u, 79793u), vec4<u32>(1u, 1u, 1u, 1u)), 52744u), vec3<u32>(abs(~1u), _wgslsmith_dot_vec2_u32(max(vec2<u32>(33018u, 22365u), vec2<u32>(9750u, 42642u)), vec2<u32>(1u, 1u)), 0u)), func_5(_wgslsmith_add_u32(1u, max(_wgslsmith_dot_vec4_u32(vec4<u32>(47493u, 17586u, 13357u, 10325u), vec4<u32>(14768u, 19452u, 4294967295u, 35617u)), 1u)), arg_2, -1120i), ~(~(-18313i | arg_3) << (max(firstLeadingBit(9311u), 4294967295u) % 32u)));
    let var_2 = countOneBits(_wgslsmith_clamp_vec2_u32(~vec2<u32>(45266u, ~8140u), func_3(46802i, all(!var_1.a)), vec2<u32>(1u, 1u)));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(771f, 448f, -628f, -443f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(296f, -1321f, 1049f, 138f), vec4<f32>(123f, 1000f, -1026f, 1668f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(352f, -464f, 252f, 1623f) - vec4<f32>(-155f, -724f, -533f, 619f)))))) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-393f, -548f, -1274f, 514f))), vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(761f - -1385f))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-326f, 2289f), -599f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1940f), -672f), _wgslsmith_f_op_f32(-689f - _wgslsmith_f_op_f32(sign(-464f)))))));
}

fn func_1(arg_0: f32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec4_f32(func_6(!select(select(select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false)), select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), true), select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), true)), select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), true), true), func_5(~func_4(vec3<f32>(-748f, -365f, arg_0), vec4<i32>(-2147483647i, u_input.a, u_input.a, u_input.b), func_2(Struct_2(vec3<bool>(false, false, true), vec3<i32>(u_input.a, 9013i, u_input.a), false), Struct_2(vec3<bool>(false, false, false), vec3<i32>(u_input.b, -32790i, u_input.b), false))), Struct_2(select(func_2(Struct_2(vec3<bool>(false, false, false), vec3<i32>(u_input.a, u_input.a, -1i), false), Struct_2(vec3<bool>(true, false, true), vec3<i32>(0i, -7828i, 0i), true)).c.zzy, select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), false), select(false, true, false)), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b, -2147483647i, u_input.b), vec3<i32>(u_input.b, 16146i, 16662i)), all(vec2<bool>(true, true)) & true), -46408i >> (min(firstLeadingBit(11823u), 1u) % 32u)), func_5(~(~(~4294967295u)), Struct_2(vec3<bool>(true, true, true), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), max(vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<i32>(1i, u_input.b, -23248i))), any(vec3<bool>(false, false, false)) == any(vec3<bool>(true, false, false))), -_wgslsmith_mult_i32(u_input.b, u_input.b) & u_input.b), ~min(_wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(u_input.b, 1i)), _wgslsmith_div_vec2_i32(vec2<i32>(-31170i, -19142i), vec2<i32>(u_input.b, -2147483647i))), -func_2(Struct_2(vec3<bool>(true, true, true), vec3<i32>(4233i, 0i, -1i), false), Struct_2(vec3<bool>(true, false, false), vec3<i32>(-2147483647i, 14502i, u_input.a), true)).a.x)));
    global0 = array<vec4<u32>, 15>();
    let var_1 = -u_input.b;
    global0 = array<vec4<u32>, 15>();
    let var_2 = 1i;
    return func_5(208u, Struct_2(vec3<bool>(_wgslsmith_f_op_f32(476f - var_0.x) != _wgslsmith_f_op_f32(-2101f + 259f), true, any(vec2<bool>(true, true))), countOneBits(countOneBits(-vec3<i32>(22581i, var_1, var_1))), func_2(func_5(~4294967295u, Struct_2(vec3<bool>(true, false, false), vec3<i32>(32272i, var_2, 0i), true), 1i), Struct_2(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true)), countOneBits(vec3<i32>(var_1, 6331i, var_2)), true)).d), firstLeadingBit(abs(var_1)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -510f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(172f)))))));
    var var_1 = func_2(Struct_2(!select(vec3<bool>(false, var_0.c, var_0.a.x), func_2(Struct_2(vec3<bool>(var_0.a.x, var_0.a.x, var_0.c), vec3<i32>(0i, u_input.b, -11407i), var_0.c), Struct_2(var_0.a, var_0.b, var_0.c)).c.wwz, !var_0.a), _wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(2147483647i, 1i), _wgslsmith_clamp_i32(-33750i, 1i, -8015i), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 0i, var_0.b.x, 2147483647i), vec4<i32>(-1i, 29104i, u_input.a, -1i))), vec3<i32>(u_input.b, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, u_input.b, u_input.a), vec3<i32>(28335i, var_0.b.x, u_input.a)), var_0.b.x)), false), Struct_2(vec3<bool>(true, select(true, true, all(vec3<bool>(false, var_0.c, false))), true), var_0.b, var_0.c));
    let var_2 = Struct_1(var_1.a, true & !(!any(vec4<bool>(var_0.c, var_1.b, false, false))), var_1.c, true);
    let var_3 = func_1(_wgslsmith_f_op_f32(f32(-1f) * -241f)).a.x;
    var var_4 = var_2;
    var var_5 = !func_2(Struct_2(func_1(_wgslsmith_f_op_f32(ceil(822f))).a, ~min(vec3<i32>(24573i, -2147483647i, var_2.a.x), var_0.b), true), Struct_2(var_4.c.wwz, func_1(_wgslsmith_f_op_f32(step(1141f, 398f))).b, false)).c;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_div_vec2_i32(-_wgslsmith_mod_vec2_i32(var_0.b.zy, var_4.a), (vec2<i32>(3684i, u_input.a) >> (vec2<u32>(0u, 1u) % vec2<u32>(32u))) << (select(vec2<u32>(4294967295u, 13059u), vec2<u32>(28601u, 31683u), var_2.c.xz) % vec2<u32>(32u))), select(_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.b, var_1.a.x), var_0.b.zy, vec2<i32>(-2147483647i, var_1.a.x)), vec2<i32>(41219i, u_input.b), -var_4.a), -(~var_1.a)), abs(countOneBits(2147483647i)), var_4.b), 1u, var_1.a);
}

