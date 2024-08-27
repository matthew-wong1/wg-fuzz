struct Struct_1 {
    a: f32,
    b: f32,
    c: f32,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: u32,
    b: vec4<i32>,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<i32>,
    d: vec2<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<f32>,
    c: vec2<i32>,
    d: vec4<f32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: i32 = 22501i;

var<private> global2: array<Struct_3, 16> = array<Struct_3, 16>(Struct_3(true), Struct_3(false), Struct_3(false), Struct_3(true), Struct_3(true), Struct_3(true), Struct_3(true), Struct_3(true), Struct_3(true), Struct_3(true), Struct_3(true), Struct_3(true), Struct_3(true), Struct_3(false), Struct_3(true), Struct_3(true));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_4) -> u32 {
    var var_0 = arg_0.b;
    var var_1 = ~1i;
    var var_2 = Struct_2(Struct_1(_wgslsmith_div_f32(343f, -900f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(820f, -687f)))), -1236f, 121f), Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -2806f))))), -779f));
    let var_3 = var_2.b;
    let var_4 = ~_wgslsmith_sub_vec2_i32(var_0.xx, vec2<i32>(2147483647i ^ var_0.x, u_input.d.x));
    return _wgslsmith_clamp_u32(1u, ~10003u, 55388u);
}

fn func_2(arg_0: u32) -> bool {
    global1 = 30681i;
    global2 = array<Struct_3, 16>();
    let var_0 = ~(~(-u_input.d.x));
    let var_1 = Struct_4(firstLeadingBit(abs(func_3(Struct_4(u_input.e.x, vec4<i32>(u_input.d.x, u_input.c.x, u_input.d.x, -1i))))), ~vec4<i32>(_wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0, var_0, 2147483647i, u_input.c.x), vec4<i32>(-1i, var_0, var_0, -1i)), firstLeadingBit(u_input.d.x), -var_0), u_input.d.x, -156i, var_0));
    global0 = abs(vec3<u32>(var_1.a, ~min(48281u, min(0u, u_input.e.x)), min(global0.x, 14266u)));
    return !(any(vec4<bool>(true, true, true, true)) | (_wgslsmith_dot_vec3_u32(countOneBits(u_input.b), u_input.b ^ u_input.b) < 46480u));
}

fn func_1(arg_0: Struct_5, arg_1: vec3<bool>, arg_2: u32, arg_3: vec3<f32>) -> i32 {
    global1 = -7961i;
    global1 = ~978i;
    global2 = array<Struct_3, 16>();
    let var_0 = true;
    var var_1 = func_2(_wgslsmith_add_u32(_wgslsmith_add_u32(u_input.e.x & arg_0.b.a, _wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(75464u, 1u, arg_0.b.a))), select(u_input.b.x, ~u_input.b.x, all(vec3<bool>(false, true, var_0))))) || arg_1.x;
    return firstTrailingBit(_wgslsmith_div_i32(firstTrailingBit(select(arg_0.b.b.x, _wgslsmith_add_i32(arg_0.b.b.x, arg_0.b.b.x), var_0)), 1i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(_wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(56751u, ~0u, 55111u)) & ~1u, _wgslsmith_sub_vec4_i32(vec4<i32>(1i, func_1(Struct_5(Struct_2(Struct_1(550f, 1257f, -2212f, -671f), Struct_1(635f, -780f, -1001f, -960f)), Struct_4(1u, vec4<i32>(u_input.a, -9938i, u_input.c.x, -2147483647i))), vec3<bool>(true, true, true), 4294967295u, _wgslsmith_div_vec3_f32(vec3<f32>(-1516f, 1000f, 626f), vec3<f32>(732f, 509f, -300f))), _wgslsmith_div_i32(~u_input.c.x, u_input.c.x), func_1(Struct_5(Struct_2(Struct_1(465f, -298f, 668f, -737f), Struct_1(-720f, -1523f, 374f, 476f)), Struct_4(global0.x, vec4<i32>(u_input.d.x, u_input.d.x, -7743i, u_input.d.x))), vec3<bool>(true, true, true), ~44352u, _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-169f, -1185f, -1000f))))), vec4<i32>(1i, countOneBits(abs(u_input.a)), -(u_input.c.x << (22220u % 32u)), 1i)));
    global1 = u_input.d.x ^ -max(_wgslsmith_mult_i32(~var_0.b.x, 0i), u_input.a);
    var var_1 = _wgslsmith_mult_u32(_wgslsmith_div_u32(4350u, 10144u), global0.x >> (global0.x % 32u));
    let var_2 = _wgslsmith_mod_vec2_i32(reverseBits(~(-(~var_0.b.zw))), countOneBits(-(vec2<i32>(20201i, 2147483647i) ^ vec2<i32>(0i, u_input.c.x))));
    let var_3 = all(select(!(!select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true))), vec3<bool>(_wgslsmith_f_op_f32(sign(-1050f)) != -136f, any(select(vec2<bool>(false, false), vec2<bool>(true, false), true)), (u_input.b.x & 24379u) <= var_0.a), -(var_0.b.x | -47070i) != -_wgslsmith_add_i32(1i, -31234i)));
    let var_4 = _wgslsmith_add_i32(_wgslsmith_sub_i32(~(-2147483647i), 1i), -select(-(~(-1470i)), abs(var_0.b.x), true));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(var_0.a, ~u_input.e.x, 26091u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-592f, -308f), vec2<f32>(1521f, -331f))) * _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-937f, 557f)))), vec2<f32>(_wgslsmith_f_op_f32(trunc(1603f)), _wgslsmith_f_op_f32(ceil(-1030f))))), ~(-vec2<i32>(_wgslsmith_mod_i32(-14372i, var_2.x), -var_2.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(803f, -716f, -1215f, 860f) + vec4<f32>(866f, -100f, 2786f, -1041f))))) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(abs(-134f)), _wgslsmith_f_op_f32(996f + 1057f), _wgslsmith_div_f32(202f, -407f), _wgslsmith_f_op_f32(floor(1583f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(527f, 1080f, -1000f, 401f) + vec4<f32>(921f, 183f, -228f, 1000f)), !(var_3 | true)))), ~_wgslsmith_mult_vec4_u32(abs(min(vec4<u32>(4884u, var_0.a, var_0.a, u_input.e.x), vec4<u32>(global0.x, global0.x, 1u, 9985u))), vec4<u32>(4294967295u, global0.x, _wgslsmith_mult_u32(global0.x, 1u), _wgslsmith_sub_u32(var_0.a, 0u))));
}

