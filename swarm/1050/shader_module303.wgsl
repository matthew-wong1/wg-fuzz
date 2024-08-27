struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: u32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: u32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: f32,
    d: u32,
    e: vec4<f32>,
}

struct Struct_5 {
    a: bool,
    b: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: Struct_4 = Struct_4(Struct_1(vec3<f32>(1521f, -788f, -281f), -271f, 4294967295u), Struct_3(20383i, 65896u), -947f, 1u, vec4<f32>(615f, 153f, -2118f, -1997f));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec2<bool>) -> i32 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_div_f32(global0.b.b, -1179f), _wgslsmith_f_op_f32(step(global0.b.a.x, 397f)), 104f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(global0.b.a, global0.b.a))), vec3<f32>(global0.b.b, 403f, 762f))), 1418f, ~_wgslsmith_mod_u32(global0.b.c, u_input.b & 1u) << (~0u % 32u));
    global1 = Struct_4(Struct_1(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_f32(496f - -1207f), u_input.b), Struct_3(u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(23204u, 21767u), vec2<u32>(~u_input.b, ~global0.b.c))), 340f, ~_wgslsmith_div_u32(_wgslsmith_mod_u32(var_0.c, 86959u), var_0.c), global1.e);
    var var_1 = any(select(!vec3<bool>(true, arg_0.x, all(arg_0)), select(select(select(vec3<bool>(true, false, global0.a), vec3<bool>(arg_0.x, arg_0.x, global0.a), false), select(vec3<bool>(false, arg_0.x, global0.a), vec3<bool>(true, false, arg_0.x), true), select(vec3<bool>(true, global0.a, global0.a), vec3<bool>(true, false, arg_0.x), vec3<bool>(arg_0.x, true, true))), select(vec3<bool>(arg_0.x, arg_0.x, false), select(vec3<bool>(arg_0.x, true, true), vec3<bool>(arg_0.x, arg_0.x, true), vec3<bool>(false, global0.a, false)), vec3<bool>(arg_0.x, false, false)), select(!vec3<bool>(arg_0.x, true, false), vec3<bool>(true, true, true), true)), !vec3<bool>(global0.a, !arg_0.x, true)));
    var var_2 = Struct_4(global0.b, global1.b, var_0.a.x, firstTrailingBit(~global0.b.c), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(global1.e, global1.e, global0.a))))));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(314f - -440f)))) * -109f);
    return 11344i;
}

fn func_2(arg_0: u32, arg_1: f32, arg_2: Struct_1) -> Struct_2 {
    var var_0 = 44282u;
    let var_1 = 455f;
    global0 = Struct_2(select(global0.a, global0.a, global0.a), global1.a);
    global1 = Struct_4(global1.a, Struct_3(func_3(select(!vec2<bool>(global0.a, global0.a), select(vec2<bool>(true, false), vec2<bool>(global0.a, global0.a), vec2<bool>(global0.a, true)), global0.a)), 24135u), 1164f, ~_wgslsmith_dot_vec2_u32(vec2<u32>(arg_2.c << (u_input.b % 32u), arg_0), ~vec2<u32>(global0.b.c, 6005u)), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-1048f)), _wgslsmith_f_op_f32(trunc(global1.c))), arg_1, _wgslsmith_f_op_f32(476f - var_1), arg_2.b));
    var var_2 = _wgslsmith_div_f32(global1.a.a.x, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(1955f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(232f, -1115f))), global1.c)));
    return Struct_2(all(select(vec3<bool>(global0.a, any(vec2<bool>(false, global0.a)), !global0.a), vec3<bool>(false, all(vec3<bool>(global0.a, global0.a, true)), global0.a), vec3<bool>(960f != var_1, true, global0.a && true))), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(global0.b.a)) - vec3<f32>(1843f, arg_2.a.x, global1.a.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 + arg_1) + _wgslsmith_f_op_f32(select(-223f, 851f, global0.a)))), global1.b.b));
}

fn func_1(arg_0: vec2<f32>, arg_1: u32) -> Struct_1 {
    global0 = Struct_2(!(!global0.a) != (_wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(arg_1, global0.b.c, global1.d)), vec3<u32>(u_input.b, 70611u, u_input.b) >> (vec3<u32>(u_input.b, 50110u, 21174u) % vec3<u32>(32u))) <= _wgslsmith_div_u32(u_input.b ^ 69107u, 4294967295u)), Struct_1(global1.a.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-992f + 583f) - _wgslsmith_f_op_f32(trunc(-681f))), 5484u));
    var var_0 = func_2(arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), global1.a);
    let var_1 = ~43586u;
    var var_2 = Struct_5(false, Struct_4(Struct_1(global1.a.a, 1188f, 1u), global1.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global1.e.x)) * _wgslsmith_f_op_f32(-477f - global0.b.b)) - -859f), ~_wgslsmith_add_u32(var_0.b.c, _wgslsmith_mult_u32(var_1, global1.a.c)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(global1.e * global1.e)))));
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_2.b.e.wxz));
    return Struct_1(_wgslsmith_f_op_vec3_f32(var_2.b.a.a + vec3<f32>(var_0.b.a.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global0.b.b))), 756f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_3.x)))), 1u);
}

fn func_4(arg_0: Struct_4, arg_1: u32, arg_2: Struct_1, arg_3: vec2<f32>) -> vec3<f32> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0.e.x))));
    global0 = Struct_2(global0.a & (global1.b.b >= select(_wgslsmith_mod_u32(27600u, global0.b.c), 1u, true)), global0.b);
    global1 = arg_0;
    let var_1 = !(!vec2<bool>(2147483647i < u_input.c.x, false));
    var var_2 = Struct_5(false, arg_0);
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-func_2(~global1.d, -204f, Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(376f, arg_3.x, -621f) - var_2.b.e.zxy), _wgslsmith_div_f32(global1.c, -516f), global0.b.c)).b.a) - _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(func_1(_wgslsmith_f_op_vec2_f32(-arg_2.a.yx), 4718u).a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.e.zxz))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, _wgslsmith_f_op_f32(arg_0.c - -325f), _wgslsmith_f_op_f32(exp2(var_2.b.e.x))) + var_2.b.e.zzx)));
}

fn func_5(arg_0: vec2<bool>, arg_1: vec3<f32>) -> Struct_3 {
    let var_0 = abs(min(_wgslsmith_clamp_vec3_i32(vec3<i32>(1i, -global1.b.a, 31503i), min(-vec3<i32>(u_input.c.x, u_input.c.x, 1i), _wgslsmith_sub_vec3_i32(vec3<i32>(global1.b.a, global1.b.a, 2147483647i), vec3<i32>(-10415i, u_input.a, -1i))), vec3<i32>(27966i ^ u_input.c.x, _wgslsmith_clamp_i32(5654i, global1.b.a, u_input.c.x), _wgslsmith_div_i32(global1.b.a, -20757i))), vec3<i32>(-44528i << (global0.b.c % 32u), global1.b.a, func_3(arg_0)) << (firstTrailingBit(select(vec3<u32>(1u, 0u, 87430u), vec3<u32>(4294967295u, 68739u, 48365u), arg_0.x)) % vec3<u32>(32u))));
    global1 = Struct_4(func_1(_wgslsmith_f_op_vec2_f32(step(global1.e.xw, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b.a.x, global1.e.x))))), 0u), global1.b, _wgslsmith_f_op_f32(abs(-589f)), global0.b.c ^ 0u, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b.a.x) * _wgslsmith_f_op_f32(abs(-323f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1055f * global1.a.b)), -1160f)));
    global0 = func_2(~firstTrailingBit(u_input.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.c * -235f)), Struct_1(arg_1, global0.b.a.x, ~(~_wgslsmith_mult_u32(4294967295u, u_input.b))));
    global0 = func_2(global1.a.c, -563f, Struct_1(global1.a.a, _wgslsmith_f_op_f32(global0.b.b * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(673f + -1107f)))), min(36525u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.b, global1.b.b), vec3<u32>(1u, 1u, 22787u)))));
    global1 = Struct_4(global1.a, global1.b, -846f, 14188u, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_div_f32(global0.b.a.x, global0.b.b), arg_1.x, -1355f, _wgslsmith_f_op_f32(f32(-1f) * -526f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.b.b, 922f, arg_1.x, arg_1.x) * vec4<f32>(-1726f, -110f, -378f, 412f))))))));
    return global1.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.b.b;
    global1 = Struct_4(global0.b, func_5(select(vec2<bool>(true, global0.a), vec2<bool>(0i > u_input.c.x, true), all(!vec4<bool>(false, global0.a, true, false))), _wgslsmith_f_op_vec3_f32(func_4(Struct_4(Struct_1(global1.a.a, -1922f, global0.b.c), Struct_3(-35471i, 1075u), -713f, _wgslsmith_div_u32(41740u, 10856u), global1.e), 22203u, func_1(_wgslsmith_div_vec2_f32(vec2<f32>(global1.e.x, global0.b.a.x), vec2<f32>(-1292f, global0.b.b)), 13723u), global0.b.a.zx))), _wgslsmith_f_op_f32(-global0.b.b), 41729u, vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-552f, global1.c)))), global0.b.a.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global0.b.a.x * global0.b.b))), _wgslsmith_f_op_f32(-global0.b.b)));
    let x = u_input.a;
    s_output = StorageBuffer(global1.b.a, 4294967295u, ~select(abs(~vec4<u32>(u_input.b, 0u, global1.b.b, u_input.b)), vec4<u32>(global0.b.c, ~global0.b.c, 1u, _wgslsmith_dot_vec2_u32(vec2<u32>(5712u, u_input.b), vec2<u32>(48155u, u_input.b))), !(!vec4<bool>(global0.a, global0.a, global0.a, global0.a))));
}

