struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec3<f32>,
    d: vec2<u32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: array<vec3<f32>, 22> = array<vec3<f32>, 22>(vec3<f32>(172f, 1478f, 334f), vec3<f32>(3130f, -544f, 135f), vec3<f32>(646f, -271f, -1000f), vec3<f32>(-910f, 440f, 1089f), vec3<f32>(169f, 927f, -260f), vec3<f32>(-1000f, 458f, -681f), vec3<f32>(350f, 2140f, 102f), vec3<f32>(-1000f, 534f, -672f), vec3<f32>(1234f, -256f, -1233f), vec3<f32>(-349f, -1578f, -390f), vec3<f32>(199f, 208f, -762f), vec3<f32>(459f, 1081f, 881f), vec3<f32>(200f, 1826f, -1000f), vec3<f32>(232f, -540f, -1522f), vec3<f32>(-1286f, -666f, -216f), vec3<f32>(-232f, 835f, -1000f), vec3<f32>(-776f, -1673f, 591f), vec3<f32>(420f, -615f, -1572f), vec3<f32>(306f, -1834f, 967f), vec3<f32>(-470f, 1941f, -1230f), vec3<f32>(956f, -898f, -1373f), vec3<f32>(-509f, 1163f, -1000f));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_3) -> vec2<i32> {
    var var_0 = abs(~(~vec4<u32>(~0u, 4294967295u, ~u_input.c.x, u_input.c.x)));
    let var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-175f + 490f), _wgslsmith_f_op_f32(f32(-1f) * -466f)))))));
    var var_2 = vec2<bool>(arg_0.a.x, true);
    let var_3 = _wgslsmith_f_op_f32(-var_1);
    var_2 = select(!vec2<bool>(any(select(arg_0.a.xx, arg_0.a.zz, var_2.x)), true), arg_0.a.xy, arg_0.a.x);
    return vec2<i32>(~u_input.b, u_input.b);
}

fn func_2(arg_0: u32) -> Struct_2 {
    global1 = array<vec3<f32>, 22>();
    var var_0 = vec2<i32>(-2147483647i, _wgslsmith_add_i32(1i, global0.x));
    let var_1 = 36440u >> ((abs(arg_0) ^ ~(1u >> (_wgslsmith_add_u32(4730u, u_input.c.x) % 32u))) % 32u);
    var_0 = _wgslsmith_div_vec2_i32(-vec2<i32>(~72172i, ~_wgslsmith_div_i32(var_0.x, 2147483647i)), func_3(Struct_3(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false)), any(vec4<bool>(true, true, false, false))))));
    var var_2 = max(vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, 0i, u_input.a, u_input.a), -vec4<i32>(global0.x, var_0.x, -54058i, -9741i)), 2147483647i << (min(1u, var_1) % 32u)), -37158i, -2147483647i), -_wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, var_0.x, global0.x) & vec3<i32>(-4437i, 12679i, global0.x), select(vec3<i32>(u_input.a, -33233i, -31886i), vec3<i32>(global0.x, -2147483647i, -25267i), vec3<bool>(true, false, true))) ^ reverseBits(~vec3<i32>(u_input.a, -28142i, 1i) ^ -vec3<i32>(6527i, u_input.b, var_0.x)));
    return Struct_2(Struct_1(var_2.zx), Struct_1(vec2<i32>(firstTrailingBit(var_0.x), ~(var_2.x ^ global0.x))));
}

fn func_1(arg_0: Struct_4, arg_1: f32) -> Struct_1 {
    var var_0 = func_2(_wgslsmith_add_u32(select(u_input.c.x, 2702u, arg_0.a.x), 4294967295u));
    let var_1 = 4294967295u;
    global1 = array<vec3<f32>, 22>();
    global0 = ~var_0.a.a;
    var var_2 = arg_0;
    return func_2(u_input.c.x).b;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool, arg_3: vec3<i32>) -> Struct_1 {
    var var_0 = u_input.c.x;
    global0 = arg_0.a;
    var_0 = firstLeadingBit(_wgslsmith_mod_u32(u_input.c.x, 1u));
    global1 = array<vec3<f32>, 22>();
    global1 = array<vec3<f32>, 22>();
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~firstLeadingBit(16786i);
    let var_1 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(299f)), _wgslsmith_f_op_f32(sign(-761f)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-821f, _wgslsmith_f_op_f32(f32(-1f) * -951f)), vec2<f32>(-116f, _wgslsmith_f_op_f32(step(-197f, 624f))), false)) - _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1259f), _wgslsmith_f_op_f32(1582f * 1530f)), vec2<f32>(-1481f, 1205f)))));
    var var_2 = func_4(func_1(Struct_4(vec4<bool>(true, true, true, true), 2147483647i), _wgslsmith_f_op_f32(floor(var_1.x))), Struct_1(~(~countOneBits(vec2<i32>(global0.x, 23387i)))), all(vec3<bool>(true & (u_input.c.x > u_input.c.x), true, all(vec4<bool>(false, true, true, true)))), abs(abs(~vec3<i32>(global0.x, -2147483647i, 0i) << (~u_input.c % vec3<u32>(32u)))));
    var_2 = Struct_1(vec2<i32>(max(~(-2147483647i), 2147483647i), -(var_2.a.x | global0.x)));
    global1 = array<vec3<f32>, 22>();
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-615f, var_1.x, 648f, var_1.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, 1000f, -132f))) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_1.x, var_1.x, -1072f, var_1.x)))))) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, -460f, var_1.x, var_1.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, 492f, var_1.x, -661f))))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, 1887f, 407f, 1579f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_1.x, -506f, var_1.x, var_1.x))))))));
    let x = u_input.a;
    s_output = StorageBuffer(min(51335u >> (u_input.c.x % 32u), _wgslsmith_add_u32(_wgslsmith_mult_u32(firstLeadingBit(1u), firstTrailingBit(u_input.c.x)), 62036u)), -332f, _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, var_3.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_1.x, -1210f)) + _wgslsmith_f_op_f32(1268f * var_3.x)))), u_input.c.yy, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1))));
}

