struct Struct_1 {
    a: i32,
    b: bool,
    c: vec4<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct Struct_4 {
    a: vec2<i32>,
    b: bool,
    c: vec4<bool>,
}

struct Struct_5 {
    a: u32,
    b: vec3<i32>,
    c: Struct_4,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<i32>,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: f32,
    d: vec2<u32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: array<Struct_5, 14> = array<Struct_5, 14>(Struct_5(1u, vec3<i32>(33299i, 0i, -1i), Struct_4(vec2<i32>(3273i, -1i), false, vec4<bool>(false, true, false, false))), Struct_5(15705u, vec3<i32>(40487i, -28415i, 1i), Struct_4(vec2<i32>(1i, 2147483647i), true, vec4<bool>(false, true, true, false))), Struct_5(0u, vec3<i32>(-20239i, -8646i, 837i), Struct_4(vec2<i32>(10293i, 1i), false, vec4<bool>(false, false, true, true))), Struct_5(0u, vec3<i32>(-20933i, 2147483647i, 1i), Struct_4(vec2<i32>(-69376i, 2147483647i), true, vec4<bool>(false, false, true, true))), Struct_5(0u, vec3<i32>(2147483647i, 2147483647i, 0i), Struct_4(vec2<i32>(30614i, -32248i), false, vec4<bool>(false, false, true, true))), Struct_5(1u, vec3<i32>(-41706i, 2147483647i, 25411i), Struct_4(vec2<i32>(19620i, 1i), false, vec4<bool>(false, false, false, true))), Struct_5(55876u, vec3<i32>(-20901i, 14465i, 14574i), Struct_4(vec2<i32>(-8195i, 3979i), false, vec4<bool>(false, true, true, true))), Struct_5(75754u, vec3<i32>(i32(-2147483648), 1i, 0i), Struct_4(vec2<i32>(-1i, 41800i), false, vec4<bool>(true, false, true, true))), Struct_5(126730u, vec3<i32>(14647i, 38369i, -1i), Struct_4(vec2<i32>(63380i, 21941i), true, vec4<bool>(true, true, true, true))), Struct_5(29883u, vec3<i32>(1i, 44792i, 1i), Struct_4(vec2<i32>(-16843i, 1i), false, vec4<bool>(false, false, false, true))), Struct_5(1u, vec3<i32>(-6754i, i32(-2147483648), -27804i), Struct_4(vec2<i32>(3366i, 1i), true, vec4<bool>(true, true, false, true))), Struct_5(4294967295u, vec3<i32>(i32(-2147483648), i32(-2147483648), -16081i), Struct_4(vec2<i32>(1i, 49165i), true, vec4<bool>(false, true, false, true))), Struct_5(1u, vec3<i32>(i32(-2147483648), 0i, 2147483647i), Struct_4(vec2<i32>(1i, 1i), false, vec4<bool>(true, false, false, true))), Struct_5(0u, vec3<i32>(0i, 0i, 2147483647i), Struct_4(vec2<i32>(39242i, -17412i), false, vec4<bool>(false, false, true, false))));

var<private> global2: f32;

var<private> global3: array<Struct_3, 2>;

var<private> global4: Struct_1;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: f32, arg_1: vec3<u32>) -> vec4<bool> {
    global3 = array<Struct_3, 2>();
    return vec4<bool>(!any(select(!vec2<bool>(global4.b, global4.b), vec2<bool>(global4.b, true), vec2<bool>(true, true))), global4.b, ~u_input.d == arg_1.x, false);
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_4, arg_2: vec3<bool>) -> vec3<f32> {
    let var_0 = ~vec4<u32>(~26849u, ~_wgslsmith_add_u32(_wgslsmith_mod_u32(u_input.b, u_input.d), _wgslsmith_mult_u32(1245u, u_input.e.x)), 8434u, ~u_input.d ^ _wgslsmith_mod_u32(u_input.e.x, ~u_input.b));
    global1 = array<Struct_5, 14>();
    global3 = array<Struct_3, 2>();
    var var_1 = min(var_0.ywz, ~(~var_0.wxx));
    global1 = array<Struct_5, 14>();
    return global0.zzx;
}

fn func_3(arg_0: Struct_3, arg_1: vec3<f32>, arg_2: vec4<f32>, arg_3: bool) -> Struct_1 {
    let var_0 = arg_0.a;
    global0 = vec4<f32>(-336f, 1217f, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_vec3_f32(func_2(vec4<i32>(global4.a, u_input.c.x, -62884i, global4.a), Struct_4(vec2<i32>(global4.a, -1i), arg_3, vec4<bool>(global4.b, true, arg_3, true)), !arg_0.a.xwx)).x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) + _wgslsmith_f_op_f32(step(967f, -1030f)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(global0.x, global4.c.x))))));
    var var_1 = Struct_1(i32(-1i) * -1i, !(-2130f >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(198f, global4.c.x)))), arg_2);
    return Struct_1(1i, true, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(vec4<f32>(366f, global4.c.x, -1010f, 460f), _wgslsmith_f_op_vec4_f32(abs(arg_2)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -1880f;
    var var_1 = func_3(Struct_3(func_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(-531f)))), vec3<u32>(u_input.b, _wgslsmith_div_u32(77111u, 4294967295u), 21305u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2(~(-u_input.c), Struct_4(_wgslsmith_sub_vec2_i32(u_input.a, u_input.c.ww), true, !vec4<bool>(global4.b, true, global4.b, false)), select(vec3<bool>(global4.b, global4.b, false), vec3<bool>(true, true, true), vec3<bool>(global4.b, false, true))))), _wgslsmith_f_op_vec4_f32(floor(global4.c)), global4.b);
    var var_2 = u_input.d;
    var var_3 = func_3(global3[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(1u, ~1u, u_input.e.x), 2u)], _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(var_1.c.xxx, _wgslsmith_f_op_vec3_f32(-vec3<f32>(1789f, 288f, 418f))), vec3<f32>(global4.c.x, _wgslsmith_f_op_f32(-var_1.c.x), _wgslsmith_div_f32(-697f, var_0)))), global4.c, var_1.b);
    global1 = array<Struct_5, 14>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -650f)), vec2<i32>(_wgslsmith_sub_i32(i32(-1i) * -52839i, countOneBits(var_3.a) | (2147483647i << (u_input.e.x % 32u))), -1i), _wgslsmith_f_op_f32(-104f + var_3.c.x), vec2<u32>(u_input.e.x, firstTrailingBit(11009u)), u_input.e);
}

