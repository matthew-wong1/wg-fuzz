struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: bool,
    c: i32,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 19> = array<vec4<f32>, 19>(vec4<f32>(-959f, -1000f, -929f, 358f), vec4<f32>(-324f, 1520f, 329f, -117f), vec4<f32>(-391f, 225f, 1385f, 314f), vec4<f32>(683f, 1148f, -189f, -332f), vec4<f32>(-526f, 375f, 2184f, -552f), vec4<f32>(-446f, -455f, 1160f, -644f), vec4<f32>(-1017f, 1136f, -359f, -1136f), vec4<f32>(595f, -1030f, -1136f, -1805f), vec4<f32>(-201f, 562f, -906f, -441f), vec4<f32>(-183f, -269f, 1000f, 361f), vec4<f32>(1345f, -1345f, -692f, -1090f), vec4<f32>(1118f, 160f, -443f, 1000f), vec4<f32>(-885f, 1155f, 940f, -1000f), vec4<f32>(1249f, 561f, -130f, -169f), vec4<f32>(-1720f, -946f, 680f, 591f), vec4<f32>(1000f, -212f, 1929f, -942f), vec4<f32>(-1990f, 675f, -1770f, 210f), vec4<f32>(1000f, -1112f, -1671f, 128f), vec4<f32>(112f, -1006f, 539f, 995f));

var<private> global1: vec4<f32> = vec4<f32>(-895f, -455f, 807f, 1265f);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
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

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> u32 {
    var var_0 = ~vec2<i32>((~(-14929i) ^ _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -31154i, -4964i, 1i), vec4<i32>(-38101i, -15084i, -10913i, -1i))) << (~(~u_input.a.x) % 32u), -11946i);
    var var_1 = var_0.x;
    var var_2 = abs(~vec4<i32>(_wgslsmith_clamp_i32(_wgslsmith_mod_i32(var_0.x, var_0.x), max(-12156i, -2147483647i), -2147483647i), countOneBits(-var_0.x), -1i, max(2147483647i, -2224i)));
    let var_3 = vec4<bool>(false, any(vec2<bool>(false, any(select(vec2<bool>(true, false), vec2<bool>(false, false), false)))), !(any(vec4<bool>(false, false, false, true)) && true), !all(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false)), any(vec3<bool>(true, false, false)))));
    var var_4 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(-971f, global1.x, global1.x, global1.x) - vec4<f32>(269f, global1.x, global1.x, -1205f))))), var_3.x, -_wgslsmith_dot_vec4_i32(vec4<i32>(15445i, var_0.x, _wgslsmith_add_i32(var_2.x, var_0.x), -15520i), vec4<i32>(var_2.x, var_0.x, -14991i, var_2.x)));
    return ~(42857u >> ((~u_input.b.x >> (39011u % 32u)) % 32u));
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_2) -> i32 {
    var var_0 = ~_wgslsmith_mod_vec2_u32(firstTrailingBit(u_input.b), vec2<u32>(func_3(), _wgslsmith_clamp_u32(arg_0.x, u_input.a.x, arg_0.x))) | vec2<u32>(func_3(), arg_0.x);
    var var_1 = !select(vec3<bool>(arg_1.b | arg_1.b, arg_1.b & all(vec4<bool>(arg_1.b, arg_1.b, arg_1.b, false)), any(vec4<bool>(arg_1.b, false, false, arg_1.b))), select(select(vec3<bool>(arg_1.b, false, arg_1.b), vec3<bool>(false, arg_1.b, arg_1.b), !vec3<bool>(false, arg_1.b, arg_1.b)), vec3<bool>(true, 32090u > u_input.a.x, true), vec3<bool>(true || arg_1.b, 1u <= arg_0.x, !arg_1.b)), !vec3<bool>(true, arg_1.b, any(vec4<bool>(arg_1.b, false, true, arg_1.b))));
    var var_2 = Struct_3(vec2<u32>(_wgslsmith_clamp_u32(~u_input.a.x, ~_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, arg_0.x, u_input.b.x), vec3<u32>(arg_0.x, 42412u, 1u)), countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, 7925u, arg_0.x), vec3<u32>(u_input.b.x, 1u, 26112u)))), ~_wgslsmith_dot_vec4_u32(~vec4<u32>(var_0.x, arg_0.x, arg_0.x, 3112u), ~vec4<u32>(1u, u_input.b.x, 0u, 4294967295u))));
    let var_3 = _wgslsmith_add_i32(~arg_1.c, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.c, arg_1.c, firstLeadingBit(10353i), abs(-31458i)), ~(-(vec4<i32>(-2147483647i, -6770i, 35828i, arg_1.c) & vec4<i32>(arg_1.c, 1i, 35027i, arg_1.c)))));
    let var_4 = vec4<i32>(firstTrailingBit(arg_1.c), -2147483647i, ~min(var_3, ~(-22729i)), var_3);
    return var_4.x;
}

fn func_1(arg_0: bool, arg_1: Struct_1) -> vec4<i32> {
    let var_0 = vec3<bool>(true, arg_0, 1i != firstLeadingBit(func_2(vec2<u32>(0u, u_input.b.x), Struct_2(vec4<f32>(2091f, -1198f, arg_1.a, global1.x), false, -29982i))));
    let var_1 = !(!vec4<bool>(!all(vec4<bool>(arg_0, false, var_0.x, false)), (759f >= arg_1.a) != !arg_0, var_0.x, true));
    global0 = array<vec4<f32>, 19>();
    global0 = array<vec4<f32>, 19>();
    var var_2 = arg_0;
    return countOneBits(-_wgslsmith_div_vec4_i32(-vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(-1i) * -vec4<i32>(-20534i, 2147483647i, 23206i, -2147483647i)));
}

fn func_4(arg_0: vec4<i32>) -> Struct_2 {
    let var_0 = !select(select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false)), !select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true)), vec4<bool>(true, true, true, true)), select(vec4<bool>(false, any(vec3<bool>(true, true, false)), false, true), vec4<bool>(true, true, true, true), vec4<bool>(any(vec2<bool>(false, false)), global1.x > 286f, true, false)), false);
    var var_1 = all(vec4<bool>(!var_0.x & false, select(true, !all(var_0), true), true, any(select(vec2<bool>(true, false), var_0.wz, var_0.zz)) == (true | any(vec4<bool>(true, true, var_0.x, var_0.x)))));
    var_1 = var_0.x;
    let var_2 = Struct_1(478f);
    let var_3 = _wgslsmith_f_op_f32(round(1415f));
    return Struct_2(vec4<f32>(var_3, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(var_3, var_2.a)))), global1.x), _wgslsmith_f_op_f32(-var_3), _wgslsmith_f_op_f32(sign(var_3))), !var_0.x, arg_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(-113f);
    var var_1 = func_4(func_1(~41144u == ~_wgslsmith_sub_u32(4294967295u, u_input.b.x), Struct_1(_wgslsmith_f_op_f32(592f + 646f))));
    var_0 = Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(f32(-1f) * -122f))))));
    var var_2 = any(vec2<bool>(false == var_1.b, false)) && var_1.b;
    var var_3 = func_4(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-19667i, _wgslsmith_div_i32(1i, var_1.c)), vec2<i32>(var_1.c, -2147483647i)), 1i, _wgslsmith_add_i32(~var_1.c & firstLeadingBit(-25353i), var_1.c), _wgslsmith_sub_i32(var_1.c, _wgslsmith_sub_i32(1i, -20652i))));
    let x = u_input.a;
    s_output = StorageBuffer(global1.x);
}

