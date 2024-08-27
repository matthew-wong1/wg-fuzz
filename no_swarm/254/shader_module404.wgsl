struct Struct_1 {
    a: bool,
    b: u32,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 13>;

var<private> global1: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(false, 4294967295u, vec2<i32>(9261i, 0i)), Struct_1(false, 115845u, vec2<i32>(2147483647i, 2147483647i)), Struct_1(true, 54501u, vec2<i32>(-16281i, 0i)), Struct_1(false, 6077u, vec2<i32>(30697i, 1i)), Struct_1(false, 39924u, vec2<i32>(26850i, 1405i)), Struct_1(false, 41253u, vec2<i32>(-21158i, 40857i)), Struct_1(true, 0u, vec2<i32>(20390i, 2147483647i)), Struct_1(false, 3667u, vec2<i32>(i32(-2147483648), 25154i)), Struct_1(false, 1u, vec2<i32>(-36848i, -33318i)), Struct_1(true, 14295u, vec2<i32>(-1i, -60430i)), Struct_1(true, 0u, vec2<i32>(2147483647i, -4383i)), Struct_1(false, 16506u, vec2<i32>(301i, -1i)), Struct_1(true, 49229u, vec2<i32>(-1i, 0i)), Struct_1(false, 23565u, vec2<i32>(2147483647i, -2070i)), Struct_1(false, 0u, vec2<i32>(50098i, 2147483647i)), Struct_1(true, 0u, vec2<i32>(-1i, -1i)), Struct_1(false, 68621u, vec2<i32>(2147483647i, 1i)), Struct_1(true, 1u, vec2<i32>(0i, 2147483647i)), Struct_1(false, 24958u, vec2<i32>(-1i, 0i)), Struct_1(true, 30000u, vec2<i32>(-19995i, 37280i)), Struct_1(false, 4294967295u, vec2<i32>(-19836i, 0i)), Struct_1(true, 4294967295u, vec2<i32>(7182i, -13195i)), Struct_1(false, 17896u, vec2<i32>(-11691i, 1i)), Struct_1(false, 77795u, vec2<i32>(i32(-2147483648), i32(-2147483648))), Struct_1(false, 40449u, vec2<i32>(-8700i, 375i)), Struct_1(true, 1u, vec2<i32>(6481i, -29258i)), Struct_1(true, 39596u, vec2<i32>(0i, -63315i)), Struct_1(false, 0u, vec2<i32>(-1i, 1i)), Struct_1(true, 75064u, vec2<i32>(1i, 18559i)), Struct_1(true, 0u, vec2<i32>(i32(-2147483648), 1i)), Struct_1(true, 9790u, vec2<i32>(-35945i, -60518i)), Struct_1(true, 0u, vec2<i32>(i32(-2147483648), -78292i)));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: i32) -> vec3<i32> {
    global0 = array<vec2<f32>, 13>();
    var var_0 = ~_wgslsmith_dot_vec3_i32(~vec3<i32>(-9492i, arg_2.c.x, 14974i) >> ((u_input.a & ~vec3<u32>(u_input.c.x, 4294967295u, arg_2.b)) % vec3<u32>(32u)), vec3<i32>(arg_3, ~_wgslsmith_sub_i32(arg_2.c.x, arg_2.c.x), u_input.b.x));
    let var_1 = vec2<i32>(-_wgslsmith_mod_i32(-22743i, ~(-2147483647i)), reverseBits(-_wgslsmith_clamp_i32(i32(-1i) * -39614i, 2147483647i, 79816i)));
    var var_2 = Struct_1(false, u_input.a.x, _wgslsmith_mult_vec2_i32(-u_input.b, countOneBits(vec2<i32>(0i, var_1.x) ^ _wgslsmith_sub_vec2_i32(vec2<i32>(-3462i, var_1.x), u_input.b))));
    var var_3 = _wgslsmith_f_op_f32(min(arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1651f)))));
    return ~_wgslsmith_sub_vec3_i32(max(vec3<i32>(arg_2.c.x, _wgslsmith_div_i32(-21686i, -40612i), -35771i), vec3<i32>(var_2.c.x, i32(-1i) * -2147483647i, select(0i, 26652i, false))), _wgslsmith_sub_vec3_i32(reverseBits(countOneBits(vec3<i32>(var_1.x, var_1.x, 2147483647i))), -vec3<i32>(var_2.c.x, -46315i, arg_2.c.x)));
}

fn func_4(arg_0: u32, arg_1: vec3<i32>) -> i32 {
    let var_0 = Struct_1(true, 49132u, _wgslsmith_sub_vec2_i32(~_wgslsmith_clamp_vec2_i32(min(u_input.b, arg_1.yx), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b.x, 10630i), u_input.b), _wgslsmith_clamp_vec2_i32(arg_1.zz, vec2<i32>(u_input.b.x, arg_1.x), u_input.b)), arg_1.yy));
    var var_1 = -1098f;
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    var_2 = 2007f;
    var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1138f);
    return u_input.b.x;
}

fn func_2(arg_0: vec4<f32>) -> vec2<i32> {
    global1 = array<Struct_1, 32>();
    var var_0 = vec4<f32>(1529f, _wgslsmith_f_op_f32(-arg_0.x), -314f, -1322f);
    let var_1 = global1[_wgslsmith_index_u32(36880u, 32u)];
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-230f)), var_0.x), var_0.x)));
    let var_3 = global1[_wgslsmith_index_u32(var_1.b, 32u)];
    return vec2<i32>(25853i, func_4(u_input.a.x & u_input.a.x, func_3(vec3<f32>(-264f, var_2, 694f), vec2<bool>(var_3.a, true), global1[_wgslsmith_index_u32(4294967295u, 32u)], var_3.c.x)) ^ var_3.c.x) ^ -u_input.b;
}

fn func_1() -> Struct_1 {
    let var_0 = all(select(!(!select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), true)), vec3<bool>(true, true, false), true));
    let var_1 = ~func_2(vec4<f32>(-1299f, 807f, _wgslsmith_f_op_f32(f32(-1f) * -490f), -308f)) | (_wgslsmith_sub_vec2_i32(~_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.b.x, 1i), u_input.b, u_input.b), u_input.b) | -(vec2<i32>(1i, u_input.b.x) >> (vec2<u32>(u_input.a.x, 88770u) % vec2<u32>(32u))));
    global0 = array<vec2<f32>, 13>();
    let var_2 = -var_1.x;
    global0 = array<vec2<f32>, 13>();
    return Struct_1(!all(vec4<bool>(var_0, var_0, var_0, var_0)) | ((u_input.a.x >> ((u_input.a.x ^ u_input.a.x) % 32u)) < _wgslsmith_clamp_u32(~u_input.c.x, 1u, 22468u)), ~u_input.a.x, var_1);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<f32>, 13>();
    global1 = array<Struct_1, 32>();
    let var_0 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1524f, -165f, -2068f)))), vec3<f32>(239f, 432f, -400f)));
    global0 = array<vec2<f32>, 13>();
    var var_1 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0 + vec3<f32>(var_0.x, -711f, var_0.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, var_0.x) + var_0)) * vec3<f32>(-1095f, _wgslsmith_f_op_f32(floor(var_0.x)), var_0.x))));
}

