struct Struct_1 {
    a: i32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: f32,
    d: vec4<f32>,
}

struct Struct_3 {
    a: u32,
    b: i32,
    c: vec3<bool>,
    d: vec2<bool>,
    e: vec4<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: f32,
    d: u32,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 18> = array<i32, 18>(-1i, 2147483647i, 24764i, 2147483647i, i32(-2147483648), 2147483647i, 2147483647i, i32(-2147483648), -46398i, 0i, 2147483647i, 11410i, 17535i, 1i, 36536i, 13111i, 1i, 0i);

var<private> global1: array<Struct_3, 23> = array<Struct_3, 23>(Struct_3(31905u, 23927i, vec3<bool>(false, true, true), vec2<bool>(false, false), vec4<bool>(false, true, false, true)), Struct_3(4294967295u, 1i, vec3<bool>(false, false, true), vec2<bool>(true, false), vec4<bool>(true, true, false, true)), Struct_3(0u, 22067i, vec3<bool>(false, true, true), vec2<bool>(true, true), vec4<bool>(true, false, false, false)), Struct_3(1u, 1i, vec3<bool>(false, false, false), vec2<bool>(false, false), vec4<bool>(false, true, true, true)), Struct_3(56134u, i32(-2147483648), vec3<bool>(false, true, true), vec2<bool>(true, false), vec4<bool>(true, false, false, true)), Struct_3(1u, i32(-2147483648), vec3<bool>(false, false, true), vec2<bool>(false, false), vec4<bool>(true, false, true, true)), Struct_3(9637u, -35844i, vec3<bool>(true, true, true), vec2<bool>(true, true), vec4<bool>(false, true, false, false)), Struct_3(0u, -40779i, vec3<bool>(true, false, true), vec2<bool>(true, true), vec4<bool>(true, false, true, false)), Struct_3(75912u, -1i, vec3<bool>(false, false, true), vec2<bool>(true, true), vec4<bool>(false, true, false, true)), Struct_3(22869u, 22194i, vec3<bool>(true, true, true), vec2<bool>(false, true), vec4<bool>(false, false, true, false)), Struct_3(69800u, 0i, vec3<bool>(true, false, true), vec2<bool>(false, true), vec4<bool>(false, true, false, true)), Struct_3(23141u, 52961i, vec3<bool>(true, false, false), vec2<bool>(false, true), vec4<bool>(true, false, false, true)), Struct_3(6039u, 26985i, vec3<bool>(true, true, false), vec2<bool>(false, true), vec4<bool>(false, true, false, true)), Struct_3(45464u, -17847i, vec3<bool>(true, false, false), vec2<bool>(true, false), vec4<bool>(true, false, true, false)), Struct_3(1u, 1i, vec3<bool>(true, true, false), vec2<bool>(false, false), vec4<bool>(false, false, false, false)), Struct_3(28007u, 0i, vec3<bool>(false, false, true), vec2<bool>(false, true), vec4<bool>(false, false, false, true)), Struct_3(1u, 0i, vec3<bool>(false, false, false), vec2<bool>(true, true), vec4<bool>(true, false, true, false)), Struct_3(13160u, -14349i, vec3<bool>(true, true, false), vec2<bool>(false, true), vec4<bool>(false, false, false, false)), Struct_3(1u, 0i, vec3<bool>(false, true, false), vec2<bool>(false, true), vec4<bool>(true, false, false, true)), Struct_3(4294967295u, 1i, vec3<bool>(true, false, true), vec2<bool>(true, true), vec4<bool>(true, true, true, false)), Struct_3(4294967295u, 0i, vec3<bool>(true, false, true), vec2<bool>(true, true), vec4<bool>(false, true, true, false)), Struct_3(39567u, 12372i, vec3<bool>(true, false, false), vec2<bool>(false, false), vec4<bool>(false, false, true, false)), Struct_3(4172u, -32156i, vec3<bool>(true, true, false), vec2<bool>(true, false), vec4<bool>(false, true, false, true)));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: f32, arg_1: f32, arg_2: Struct_3, arg_3: i32) -> i32 {
    var var_0 = (all(!select(arg_2.e, arg_2.e, vec4<bool>(arg_2.e.x, false, arg_2.d.x, arg_2.c.x))) & select(false, arg_2.c.x == arg_2.c.x, false)) & false;
    let var_1 = Struct_3(_wgslsmith_mod_u32(arg_2.a, firstTrailingBit(arg_2.a)), u_input.d, select(!arg_2.e.zyx, !vec3<bool>(true, arg_2.c.x, false), arg_2.e.zxx), select(select(!select(arg_2.c.yy, vec2<bool>(true, arg_2.e.x), arg_2.d.x), vec2<bool>(any(vec2<bool>(arg_2.d.x, arg_2.e.x)), true), select(arg_2.d, vec2<bool>(true, arg_2.c.x), !vec2<bool>(false, arg_2.c.x))), arg_2.d, select(select(arg_2.e.wy, select(vec2<bool>(arg_2.e.x, arg_2.c.x), vec2<bool>(true, false), arg_2.c.x), !arg_2.e.zy), vec2<bool>(true, !arg_2.d.x), vec2<bool>(arg_2.c.x, arg_2.c.x))), select(select(arg_2.e, !vec4<bool>(true, arg_2.c.x, arg_2.c.x, false), any(select(vec2<bool>(arg_2.d.x, true), arg_2.e.xx, arg_2.d.x))), !select(select(arg_2.e, vec4<bool>(false, arg_2.e.x, true, arg_2.e.x), arg_2.e), vec4<bool>(false, arg_2.d.x, arg_2.e.x, arg_2.d.x), !arg_2.e), arg_2.c.x));
    let var_2 = Struct_1(reverseBits(-4402i >> (u_input.c % 32u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-625f, -2226f, 1000f))))))));
    var_0 = var_1.c.x;
    var var_3 = Struct_4(global1[_wgslsmith_index_u32(arg_2.a, 23u)], Struct_2(var_2, _wgslsmith_dot_vec2_u32(firstLeadingBit(~vec2<u32>(4294967295u, 4294967295u)), u_input.a.yw), 688f, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_0, var_2.b.x, -894f, var_2.b.x))), vec4<f32>(-154f, -714f, var_2.b.x, var_2.b.x)))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(1000f, var_2.b.x))), ~_wgslsmith_dot_vec4_u32(min(countOneBits(vec4<u32>(42181u, 4294967295u, u_input.b.x, 31992u)), u_input.b), u_input.a), select(vec3<bool>(false, any(arg_2.e.xx) | false, any(arg_2.e.wzy)), vec3<bool>(var_1.a > ~36550u, var_1.c.x, all(!vec4<bool>(var_1.d.x, false, false, false))), vec3<bool>(var_1.e.x, _wgslsmith_f_op_f32(-arg_0) > _wgslsmith_f_op_f32(floor(arg_0)), !var_1.c.x)));
    return _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_clamp_i32(u_input.d, 1i, 1i), -11889i, u_input.d), vec3<i32>(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~arg_2.a & ~u_input.c, var_3.d), 18u)], arg_3 << (~(~var_1.a) % 32u), arg_3));
}

fn func_2(arg_0: bool) -> vec2<bool> {
    global0 = array<i32, 18>();
    global1 = array<Struct_3, 23>();
    let var_0 = Struct_2(Struct_1(func_3(206f, _wgslsmith_f_op_f32(-864f + _wgslsmith_f_op_f32(max(-796f, 859f))), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(~u_input.a.x, ~16872u), 23u)], -2147483647i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-256f, 2159f, 313f)), vec3<f32>(1332f, 173f, 1000f)))), 0u, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(-886f)))))))), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-1058f * _wgslsmith_f_op_f32(sign(661f))), -1295f, _wgslsmith_f_op_f32(-245f + -1063f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-484f * 393f))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-992f, 769f, -818f, -1672f))) * _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-957f, -202f, -210f, -1980f), vec4<f32>(340f, -520f, -750f, -2593f))))))));
    let var_1 = -firstTrailingBit(vec2<i32>(~_wgslsmith_mod_i32(1i, -31534i), -25843i));
    var var_2 = _wgslsmith_mod_vec2_i32(select(var_1, reverseBits(abs(vec2<i32>(1i, var_0.a.a))) << (~u_input.a.yz % vec2<u32>(32u)), select(vec2<bool>(true, var_0.a.b.x != var_0.c), select(!vec2<bool>(true, arg_0), select(vec2<bool>(false, arg_0), vec2<bool>(true, false), arg_0), false), vec2<bool>(true, true))), var_1);
    return select(vec2<bool>(true, true), !vec2<bool>(!arg_0, !(-1424f <= var_0.c)), select(vec2<bool>(true, arg_0), !(!select(vec2<bool>(true, arg_0), vec2<bool>(arg_0, true), vec2<bool>(true, true))), true));
}

fn func_1() -> u32 {
    var var_0 = select(!vec3<bool>(true | all(vec2<bool>(true, false)), true, any(vec3<bool>(true, true, true))), vec3<bool>(true, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(664f * -1440f))) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -319f) * -2542f), true), all(func_2(true)));
    return 21038u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 18>();
    var var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(318f))))))));
    var var_1 = Struct_3(func_1(), 1i, !vec3<bool>(true, select(true, select(false, false, false), true), true), func_2(all(select(select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true)), select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false)), vec4<bool>(true, true, true, true)))), vec4<bool>(true, any(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), true), vec2<bool>(true, false))), true, func_2(any(vec2<bool>(true, true))).x));
    let var_2 = -251f;
    let var_3 = select(var_1.e, var_1.e, vec4<bool>(var_1.d.x, var_1.e.x, false, !var_1.d.x));
    global1 = array<Struct_3, 23>();
    let var_4 = -countOneBits(_wgslsmith_mult_vec3_i32(vec3<i32>(~19483i, ~22292i, -global0[_wgslsmith_index_u32(u_input.c, 18u)]), ~vec3<i32>(u_input.d, global0[_wgslsmith_index_u32(u_input.b.x, 18u)], var_1.b)));
    global0 = array<i32, 18>();
    var_1 = Struct_3(7012u, -(firstLeadingBit(var_1.b) | _wgslsmith_mult_i32(_wgslsmith_mult_i32(global0[_wgslsmith_index_u32(u_input.a.x, 18u)], 106941i), -var_1.b)), select(!select(vec3<bool>(true, true, false), vec3<bool>(true, var_1.d.x, false), true), var_1.e.yzy, var_1.d.x), vec2<bool>(var_1.c.x, all(select(vec4<bool>(var_1.e.x, false, var_3.x, var_1.c.x), vec4<bool>(var_1.c.x, true, true, false), vec4<bool>(var_1.d.x, var_1.e.x, var_1.d.x, true)))), vec4<bool>(select(func_2(var_1.c.x).x, all(select(var_3.zw, vec2<bool>(true, false), var_3.x)), true), true, all(var_3), any(select(vec2<bool>(true, true), select(var_1.e.zz, var_3.yz, true), u_input.a.x != u_input.b.x))));
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u & _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(49526u, var_1.a, u_input.b.x) | vec3<u32>(var_1.a, 11716u, 7453u), u_input.a.yxx), ~_wgslsmith_div_vec3_u32(u_input.a.xxy, vec3<u32>(var_1.a, 48011u, u_input.b.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1385f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_2 * var_2), _wgslsmith_f_op_f32(floor(var_2)), false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1291f - var_2)))), select(526i, ~(-(~(-2147483647i))), false));
}

