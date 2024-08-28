struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<i32>,
    c: vec2<f32>,
    d: vec4<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<Struct_1, 20>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_1(arg_0: vec3<bool>, arg_1: bool, arg_2: vec4<i32>, arg_3: Struct_1) -> u32 {
    var var_0 = true;
    let var_1 = vec4<bool>(false, !arg_0.x, !arg_1, !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1000f, 802f))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1343f)))));
    let var_2 = 894f;
    global1 = array<Struct_1, 20>();
    var var_3 = u_input.b;
    return 0u;
}

fn func_3(arg_0: bool, arg_1: vec4<i32>) -> vec4<u32> {
    let var_0 = global1[_wgslsmith_index_u32(max(47293u, ~(~(~(~u_input.c)))), 20u)];
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-375f)) - 1018f) * 365f), 772f);
    var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, var_1.x) - _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_1.x, -2306f)))))));
    let var_2 = _wgslsmith_f_op_f32(ceil(var_1.x));
    global1 = array<Struct_1, 20>();
    return abs(abs(max(vec4<u32>(18808u, _wgslsmith_mod_u32(var_0.b, var_0.b), 37681u ^ u_input.c, 3401u), firstTrailingBit(~vec4<u32>(4294967295u, 0u, 0u, 1u)))));
}

fn func_2() -> bool {
    var var_0 = select(abs(vec4<u32>(select(u_input.c, u_input.c, true), 4294967295u ^ u_input.c, 1u, ~36456u)) ^ ~(_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 8084u, u_input.c, 9528u), vec4<u32>(0u, 4294967295u, u_input.c, 4294967295u), vec4<u32>(u_input.c, 0u, 50834u, u_input.c)) & (vec4<u32>(u_input.c, 1082u, 92861u, 78234u) & vec4<u32>(74339u, 1u, 4294967295u, u_input.c))), _wgslsmith_div_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c, u_input.c, 64395u, u_input.c) ^ vec4<u32>(u_input.c, u_input.c, 4294967295u, u_input.c), func_3(false, vec4<i32>(1i, -70128i, u_input.a, 42488i))), ~(~vec4<u32>(0u, u_input.c, 10509u, u_input.c) >> (vec4<u32>(24356u, 9402u, u_input.c, 40795u) % vec4<u32>(32u)))), vec4<bool>(any(select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), true), vec3<bool>(true, true, true), u_input.c == 4294967295u)), false, true, u_input.d.x > _wgslsmith_div_i32(-8407i, _wgslsmith_div_i32(0i, u_input.d.x))));
    var var_1 = _wgslsmith_f_op_f32(-289f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -365f)) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(f32(-1f) * -1945f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1300f), _wgslsmith_div_f32(637f, -882f)))))));
    var var_2 = Struct_1(vec4<bool>(false, true, false, all(select(vec4<bool>(false, false, false, false), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), true), true))), 4294967295u >> ((~20812u | _wgslsmith_div_u32(u_input.c << (u_input.c % 32u), ~var_0.x)) % 32u), vec2<bool>(true && (_wgslsmith_dot_vec3_u32(var_0.wxx, var_0.xwz) >= ~var_0.x), _wgslsmith_clamp_u32(var_0.x, _wgslsmith_mult_u32(4294967295u, u_input.c), ~99212u) == ~5518u));
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1668f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(993f)))), _wgslsmith_f_op_f32(f32(-1f) * -310f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1674f)) * _wgslsmith_f_op_f32(step(1895f, -341f))))));
    var_0 = _wgslsmith_mod_vec4_u32(vec4<u32>(0u, ~(~var_2.b ^ ~1u), u_input.c, u_input.c), _wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(56605u, u_input.c, 1u, 0u), vec4<u32>(110988u, 12836u, 111652u, 4294967295u)), vec4<u32>(108049u, 67104u, 1u, 71330u), ~vec4<u32>(22717u, var_2.b, 36795u, 1u)) << (_wgslsmith_div_vec4_u32(vec4<u32>(u_input.c, 1u, var_0.x, 4294967295u) >> (vec4<u32>(73859u, var_2.b, var_2.b, u_input.c) % vec4<u32>(32u)), vec4<u32>(1u, var_0.x, 0u, var_2.b)) % vec4<u32>(32u)), max(vec4<u32>(var_0.x, ~38674u, 1u, 66687u), ~abs(vec4<u32>(u_input.c, var_2.b, var_0.x, var_0.x)))));
    return 4294967295u == ~(~3009u << (var_2.b % 32u));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: bool, arg_3: Struct_1) -> i32 {
    global1 = array<Struct_1, 20>();
    let var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f + 864f))));
    global0 = u_input.b;
    var var_1 = -_wgslsmith_div_vec4_i32(arg_0, u_input.d) & select(_wgslsmith_mult_vec4_i32(-max(arg_0, vec4<i32>(2147483647i, -1i, arg_0.x, arg_0.x)), u_input.d), u_input.d, arg_3.c.x);
    global1 = array<Struct_1, 20>();
    return -arg_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = u_input.d.x;
    var var_0 = ~u_input.c;
    var_0 = min(0u, 40245u << ((~func_1(vec3<bool>(false, false, false), true, u_input.d, global1[_wgslsmith_index_u32(u_input.c, 20u)]) >> (u_input.c % 32u)) % 32u));
    global0 = _wgslsmith_dot_vec2_i32(u_input.d.xz, -(vec2<i32>(_wgslsmith_sub_i32(-2147483647i, u_input.d.x), min(-2670i, u_input.b)) & (u_input.d.wx << (_wgslsmith_div_vec2_u32(vec2<u32>(u_input.c, u_input.c), vec2<u32>(u_input.c, u_input.c)) % vec2<u32>(32u)))));
    let var_1 = u_input.d.yyz;
    let var_2 = 45328u;
    global0 = u_input.b;
    global0 = func_4(~vec4<i32>(-2135i, min(~(-7080i), select(var_1.x, u_input.a, false)), 49737i, var_1.x), global1[_wgslsmith_index_u32(39419u, 20u)], func_2(), global1[_wgslsmith_index_u32(42988u, 20u)]);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1458f + -594f), 251f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1579f, 603f, false))) * _wgslsmith_f_op_f32(max(-1505f, _wgslsmith_f_op_f32(f32(-1f) * -1227f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1593f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-948f, -866f)))), vec4<i32>(countOneBits(func_4(u_input.d, global1[_wgslsmith_index_u32(var_2, 20u)], true, global1[_wgslsmith_index_u32(0u, 20u)])) >> (countOneBits(59343u) % 32u), 2147483647i, abs(1i | var_1.x), -2147483647i), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) - vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -837f), 433f)), vec2<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1355f, 1456f))))), select(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c, 4294967295u, var_2, 123870u) >> (min(vec4<u32>(4294967295u, 0u, u_input.c, 4294967295u), vec4<u32>(u_input.c, var_2, 1u, 1u)) % vec4<u32>(32u)), min(vec4<u32>(u_input.c, 18220u, 7011u, 0u), vec4<u32>(4294967295u, 50477u, u_input.c, 23496u)), vec4<u32>(var_2 | var_2, reverseBits(var_2), _wgslsmith_div_u32(u_input.c, u_input.c), abs(var_2))), vec4<u32>(~10262u, reverseBits(var_2), _wgslsmith_add_u32(var_2, _wgslsmith_div_u32(u_input.c, u_input.c)), 17129u), vec4<bool>(_wgslsmith_sub_i32(1i, var_1.x) >= _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, var_1.x, -1i, var_1.x), vec4<i32>(u_input.a, 2147483647i, var_1.x, var_1.x)), !all(vec2<bool>(false, false)), true, true)), u_input.c);
}

