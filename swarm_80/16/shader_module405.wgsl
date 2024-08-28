struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec3<u32>,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 1>;

var<private> global1: u32;

var<private> global2: i32 = 0i;

var<private> global3: vec3<f32> = vec3<f32>(-701f, -771f, 1989f);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
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

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: vec4<f32>, arg_1: u32) -> vec3<u32> {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -184f) + -1368f)))));
    global0 = array<vec2<bool>, 1>();
    var var_1 = u_input.c.yy;
    let var_2 = vec4<u32>(u_input.d.x, 0u, ~abs(var_1.x), _wgslsmith_add_u32(arg_1, arg_1));
    global0 = array<vec2<bool>, 1>();
    return vec3<u32>(1u, _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(u_input.c.zy, vec2<u32>(var_2.x, 0u)), ~(~(u_input.e << (82095u % 32u)))), 3333u << (~u_input.e % 32u));
}

fn func_2(arg_0: u32, arg_1: Struct_1) -> Struct_2 {
    global3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1910f, global3.x, -151f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(382f, 114f, global3.x) - vec3<f32>(1497f, 147f, global3.x)))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a, global3.x, global3.x))), vec3<f32>(_wgslsmith_f_op_f32(global3.x + 1502f), arg_1.a, arg_1.a), vec3<bool>(u_input.a.x > 9574i, arg_0 != u_input.c.x, true)))) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.x + _wgslsmith_f_op_f32(f32(-1f) * -655f))), _wgslsmith_f_op_f32(1000f - arg_1.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(arg_1.a, global3.x)))) + -174f)));
    global1 = ~u_input.d.x;
    var var_0 = func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 724f, 1395f, -247f)), ~(~_wgslsmith_clamp_u32(~30858u, 4294967295u << (0u % 32u), 56069u)));
    var var_1 = vec2<u32>(53335u << (arg_0 % 32u), arg_0);
    global0 = array<vec2<bool>, 1>();
    return Struct_2(vec2<u32>((arg_0 << (~var_0.x % 32u)) ^ 49879u, var_1.x));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec2<f32>, arg_3: vec4<f32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2046f + -671f)) * arg_3.x)));
    global3 = arg_3.zwx;
    var var_1 = global3.xy;
    global3 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-arg_3.ywx)));
    let var_2 = arg_1;
    return Struct_1(744f);
}

fn func_1(arg_0: bool) -> Struct_2 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.x * -292f) + _wgslsmith_f_op_f32(global3.x - _wgslsmith_f_op_f32(-217f + global3.x)))));
    var var_1 = ~1u;
    let var_2 = Struct_2(min(((u_input.d.wz & u_input.d.xx) ^ _wgslsmith_clamp_vec2_u32(vec2<u32>(13399u, u_input.c.x), vec2<u32>(u_input.c.x, u_input.e), vec2<u32>(58411u, 1114u))) ^ u_input.c.xz, _wgslsmith_add_vec2_u32(vec2<u32>(u_input.d.x, 1905u | u_input.d.x), _wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.c.yx, vec2<u32>(1u, u_input.e)), u_input.c.xy))));
    let var_3 = func_4(var_2, func_2(29591u, Struct_1(var_0.a)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global3.zx * global3.xy)) - vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.a - global3.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) - _wgslsmith_f_op_f32(f32(-1f) * -1494f)))), vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-664f + 1000f)))), -502f, _wgslsmith_f_op_f32(global3.x - _wgslsmith_f_op_f32(var_0.a - _wgslsmith_f_op_f32(min(global3.x, -1246f)))), -1063f));
    let var_4 = global3.x;
    return func_2(72741u ^ ~var_2.a.x, func_4(func_2(_wgslsmith_div_u32(32639u, var_2.a.x) ^ _wgslsmith_dot_vec3_u32(u_input.d.wyw, u_input.c), Struct_1(_wgslsmith_f_op_f32(floor(1000f)))), func_2(38558u, func_4(Struct_2(vec2<u32>(41713u, 3592u)), func_2(var_2.a.x, var_3), global3.zy, _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, var_3.a, 1593f, var_0.a)))), _wgslsmith_div_vec2_f32(global3.xz, vec2<f32>(-183f, global3.x)), vec4<f32>(-759f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1265f * -1000f) - _wgslsmith_f_op_f32(var_0.a - var_3.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + 794f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(1191f, global3.x, arg_0)))))));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec2<f32>) -> Struct_1 {
    var var_0 = func_1(true);
    var var_1 = ~810i;
    let var_2 = func_4(func_2(_wgslsmith_add_u32(firstTrailingBit(func_2(40021u, Struct_1(arg_2.x)).a.x), ~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 38272u, 34403u), u_input.d.zxx)), func_4(func_1(false), Struct_2(abs(u_input.d.zy)), vec2<f32>(1f, _wgslsmith_div_f32(arg_0.a, -108f)), _wgslsmith_div_vec4_f32(vec4<f32>(1000f, 154f, arg_2.x, -427f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1424f, arg_0.a, arg_2.x, arg_0.a))))), arg_1, global3.yy, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, global3.x, -598f, global3.x))))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(930f + arg_0.a), _wgslsmith_div_f32(global3.x, 863f), _wgslsmith_f_op_f32(-123f - -434f), 382f) - _wgslsmith_div_vec4_f32(vec4<f32>(986f, 1000f, 185f, global3.x), vec4<f32>(arg_2.x, 1350f, 133f, -742f)))));
    let var_3 = ~firstTrailingBit(vec3<u32>(~(~arg_1.a.x), select(~1u, func_2(arg_1.a.x, arg_0).a.x, false), firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(109576u, 0u), vec2<u32>(arg_1.a.x, u_input.c.x)))));
    let var_4 = Struct_2(firstTrailingBit(abs(vec2<u32>(var_3.x, ~5119u))));
    return Struct_1(_wgslsmith_f_op_f32(floor(-820f)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<bool>, 1>();
    let var_0 = func_5(Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(global3.x, 394f))))), func_1(false), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global3.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -2066f), -1521f)) + global3.x)));
    let var_1 = (_wgslsmith_div_vec2_i32(countOneBits(~u_input.b.zz), -vec2<i32>(u_input.b.x, 27879i)) ^ _wgslsmith_add_vec2_i32(-_wgslsmith_sub_vec2_i32(vec2<i32>(-11221i, u_input.b.x), u_input.b.yx), -u_input.b.yz)) << (vec2<u32>(0u, u_input.e) % vec2<u32>(32u));
    let var_2 = func_2(63783u, Struct_1(-838f));
    var var_3 = Struct_2(max(select(~var_2.a, ~vec2<u32>(var_2.a.x, var_2.a.x), vec2<bool>(false, false)), var_2.a) << (vec2<u32>(1u, ~(~var_2.a.x)) % vec2<u32>(32u)));
    var var_4 = global3.x;
    global1 = var_3.a.x;
    var_4 = _wgslsmith_f_op_f32(var_0.a * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(u_input.c.x, 1u, 26251u ^ _wgslsmith_sub_u32(abs(var_3.a.x), ~4294967295u)));
}

