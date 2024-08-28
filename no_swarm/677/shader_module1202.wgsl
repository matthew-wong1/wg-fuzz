struct Struct_1 {
    a: vec3<i32>,
    b: u32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: i32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: bool,
    c: vec2<u32>,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: u32,
    b: Struct_3,
    c: u32,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 9>;

var<private> global1: f32 = -367f;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: Struct_3, arg_1: f32, arg_2: vec2<f32>, arg_3: Struct_4) -> Struct_3 {
    global0 = array<vec4<bool>, 9>();
    global0 = array<vec4<bool>, 9>();
    let var_0 = countOneBits(vec3<i32>(-5044i, -(~_wgslsmith_mod_i32(27311i, -2147483647i)), _wgslsmith_clamp_i32(_wgslsmith_mod_i32(-38139i, firstLeadingBit(2147483647i)), firstTrailingBit(1i), (i32(-1i) * -1i) << (arg_0.c.x % 32u))));
    var var_1 = arg_3;
    var var_2 = Struct_4(_wgslsmith_f_op_f32(f32(-1f) * -914f));
    return arg_0;
}

fn func_3(arg_0: Struct_3, arg_1: i32, arg_2: vec2<bool>) -> Struct_2 {
    global1 = _wgslsmith_f_op_f32(f32(-1f) * -837f);
    var var_0 = func_2(Struct_3(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_0.a.x, -278f, 1531f, arg_0.a.x), arg_0.a)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1142f, -785f, arg_0.a.x, -337f))), global0[_wgslsmith_index_u32(4294967295u, 9u)])), arg_0.a), (arg_0.b & !arg_2.x) & select(true, arg_2.x, u_input.a >= u_input.b.x), vec2<u32>(29432u, u_input.a)), _wgslsmith_f_op_f32(abs(1000f)), _wgslsmith_f_op_vec2_f32(arg_0.a.yz - _wgslsmith_f_op_vec2_f32(arg_0.a.xx + vec2<f32>(-739f, _wgslsmith_f_op_f32(-arg_0.a.x)))), Struct_4(_wgslsmith_f_op_f32(sign(1000f))));
    let var_1 = global0[_wgslsmith_index_u32(abs(u_input.a), 9u)];
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(var_0.a.yx)) * _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_0.a.x, var_0.a.x), _wgslsmith_f_op_vec2_f32(arg_0.a.yx * vec2<f32>(1000f, 865f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.a.yw - arg_0.a.wx))))));
    var_0 = arg_0;
    return Struct_2(abs(vec4<i32>(countOneBits(arg_1), arg_1, arg_1, -11463i)) >> (_wgslsmith_sub_vec4_u32(~vec4<u32>(arg_0.c.x, 4294967295u, 4294967295u, 4294967295u) & vec4<u32>(var_0.c.x, 39065u, 1u, u_input.a), _wgslsmith_add_vec4_u32(vec4<u32>(51895u, 44846u, 1u, arg_0.c.x), vec4<u32>(4294967295u, 5319u, u_input.a, u_input.b.x)) & (vec4<u32>(51924u, 2737u, 4294967295u, var_0.c.x) & vec4<u32>(1u, 40760u, 2695u, 0u))) % vec4<u32>(32u)), _wgslsmith_mod_i32(-_wgslsmith_mult_i32(arg_1, arg_1), 2147483647i) ^ ~_wgslsmith_add_i32(arg_1, -arg_1));
}

fn func_1(arg_0: vec4<f32>, arg_1: vec4<bool>, arg_2: vec3<bool>, arg_3: vec4<f32>) -> Struct_1 {
    var var_0 = Struct_4(_wgslsmith_div_f32(1f, arg_0.x));
    let var_1 = false;
    var var_2 = _wgslsmith_f_op_f32(arg_0.x + arg_3.x);
    var var_3 = func_3(func_2(Struct_3(arg_0, all(vec4<bool>(false, arg_2.x, true, true)), u_input.b), -919f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(arg_3.zx, arg_0.zw))), Struct_4(var_0.a)), 10711i, arg_1.zx);
    let var_4 = u_input.b.x;
    return Struct_1(~abs(~(vec3<i32>(var_3.a.x, var_3.a.x, -32661i) & vec3<i32>(var_3.b, -1i, var_3.a.x))), ~u_input.b.x);
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_1) -> vec3<bool> {
    var var_0 = global0[_wgslsmith_index_u32(arg_0.x, 9u)];
    let var_1 = Struct_2(countOneBits((-vec4<i32>(arg_1.a.x, arg_1.a.x, arg_1.a.x, -1153i) << (~vec4<u32>(arg_0.x, u_input.b.x, u_input.a, u_input.a) % vec4<u32>(32u))) & reverseBits(abs(vec4<i32>(-39463i, 9235i, 8977i, -1i)))), ~arg_1.a.x);
    var var_2 = ~vec3<u32>(~10371u, select(~arg_1.b, 5285u, any(vec3<bool>(var_0.x, var_0.x, var_0.x))), u_input.b.x);
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-2176f - -1051f), _wgslsmith_f_op_f32(f32(-1f) * -2215f)) + _wgslsmith_div_f32(-563f, _wgslsmith_f_op_f32(f32(-1f) * -1176f))) * _wgslsmith_f_op_f32(-925f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(997f, 1615f)) - -2278f), _wgslsmith_f_op_f32(-269f - -1310f))));
    var_2 = vec3<u32>(33635u, u_input.a | ~1u, _wgslsmith_add_u32(u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 0u, arg_1.b), vec3<u32>(arg_1.b, u_input.b.x, arg_1.b))) << ((abs(var_2.x) >> (1u % 32u)) % 32u)) ^ countOneBits(_wgslsmith_add_vec3_u32(~max(vec3<u32>(4294967295u, 0u, var_2.x), vec3<u32>(1u, arg_0.x, u_input.a)), ~vec3<u32>(u_input.a, 110455u, u_input.b.x)));
    return !(!vec3<bool>(var_0.x, false, all(var_0.wzw)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-347f, 700f)), _wgslsmith_f_op_f32(475f - -1727f)), 526f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1938f, -293f)) - _wgslsmith_f_op_f32(1538f - _wgslsmith_f_op_f32(abs(-554f)))));
    global0 = array<vec4<bool>, 9>();
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1060f) - _wgslsmith_f_op_f32(-1f)));
    let var_0 = -1i;
    var var_1 = vec4<bool>(any(func_4(reverseBits(vec2<u32>(52857u, 1u)), func_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(-823f, 636f, -1024f, -399f) + vec4<f32>(-1025f, -264f, 1687f, 288f)), vec4<bool>(false, true, false, true), vec3<bool>(true, true, true), vec4<f32>(988f, 1034f, -806f, -1744f)))), !(var_0 != ~abs(-26896i)), !(select(any(vec2<bool>(true, false)), u_input.a < 1u, all(vec3<bool>(true, true, false))) && func_2(func_2(Struct_3(vec4<f32>(-363f, -116f, 1379f, -578f), false, u_input.b), 1442f, vec2<f32>(-685f, 231f), Struct_4(-244f)), _wgslsmith_f_op_f32(floor(493f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-378f, -658f)), Struct_4(480f)).b), !(select(all(vec2<bool>(true, true)), true, false) & true));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1688f, -134f, -668f, 1189f), vec4<f32>(797f, 873f, -247f, 1128f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -855f, -329f, 137f))), vec4<f32>(-1729f, -935f, _wgslsmith_f_op_f32(f32(-1f) * -806f), 442f))));
    let var_3 = reverseBits(_wgslsmith_div_u32(firstTrailingBit(_wgslsmith_sub_u32(~u_input.b.x, u_input.b.x)), ~(~6101u)));
    global0 = array<vec4<bool>, 9>();
    var var_4 = var_2.x;
    let x = u_input.a;
    s_output = StorageBuffer(func_2(Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_2.x, -1517f, -752f, var_2.x), vec4<f32>(var_2.x, var_2.x, var_2.x, var_2.x), false))), func_4(vec2<u32>(var_3, u_input.a), Struct_1(vec3<i32>(var_0, var_0, -34220i), 50485u)).x, _wgslsmith_mod_vec2_u32(min(u_input.b, vec2<u32>(var_3, u_input.a)), vec2<u32>(var_3, 8764u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) - _wgslsmith_f_op_f32(-var_2.x)), var_2.xy, Struct_4(var_2.x)).a.zzz, u_input.b.x);
}

