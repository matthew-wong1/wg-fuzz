struct Struct_1 {
    a: u32,
    b: vec3<i32>,
    c: f32,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: u32,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: i32,
    b: u32,
    c: bool,
    d: i32,
    e: vec3<f32>,
}

struct Struct_4 {
    a: f32,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<f32>,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 11>;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_3, arg_2: i32, arg_3: Struct_4) -> u32 {
    var var_0 = ~arg_1.d;
    var_0 = _wgslsmith_mod_i32(1i, -(~u_input.a));
    let var_1 = vec2<bool>(true, 4294967295u <= (arg_1.b >> (arg_1.b % 32u)));
    global0 = array<Struct_2, 11>();
    return arg_1.b;
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    var var_0 = arg_1;
    var var_1 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_1.d, -1625f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.d, arg_2.c)))))));
    var var_2 = _wgslsmith_add_vec4_u32(vec4<u32>(0u, 36178u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.a, 0u, var_0.a) << (vec3<u32>(var_0.a, arg_1.a, 4294967295u) % vec3<u32>(32u)), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, arg_0, arg_0), vec3<u32>(7564u, arg_2.a, var_0.a))), func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1485f, -1839f))), Struct_3(-1i, 39064u, true, firstTrailingBit(18989i), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1081f, var_0.d, 556f)))), -1i, Struct_4(_wgslsmith_f_op_f32(f32(-1f) * -468f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.c, -748f, arg_2.d))))), vec4<u32>(var_0.a, 22884u, _wgslsmith_dot_vec2_u32(select(~vec2<u32>(4294967295u, arg_2.a), ~vec2<u32>(arg_2.a, 1u), false), _wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, arg_0), firstTrailingBit(vec2<u32>(28296u, 1u)), ~vec2<u32>(4294967295u, 1u))), ~var_0.a));
    var var_3 = _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(709f, _wgslsmith_f_op_f32(ceil(-1178f)))));
    let var_4 = false;
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -824f)) * _wgslsmith_f_op_f32(-var_0.d)), 757f));
}

fn func_1(arg_0: i32, arg_1: vec2<u32>, arg_2: Struct_4, arg_3: Struct_2) -> f32 {
    let var_0 = 31108i;
    global0 = array<Struct_2, 11>();
    var var_1 = Struct_1(1u, arg_3.a.b, arg_3.e, _wgslsmith_f_op_f32(func_3(35025u, Struct_1(func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3.a.d, 327f)), Struct_3(-7420i, arg_3.a.a, false, 1i, vec3<f32>(1000f, -2292f, -1000f)), arg_3.d.b.x, arg_2), firstLeadingBit(vec3<i32>(u_input.c, arg_0, -72348i)), _wgslsmith_f_op_f32(abs(arg_2.a)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(854f, arg_3.a.c))), arg_3.a)));
    var var_2 = !select(vec2<bool>(true, true), vec2<bool>(true, true), !(var_1.a >= firstLeadingBit(arg_3.d.a)));
    var_1 = arg_3.a;
    return var_1.d;
}

fn func_4(arg_0: f32, arg_1: bool, arg_2: u32, arg_3: f32) -> Struct_4 {
    global0 = array<Struct_2, 11>();
    let var_0 = Struct_3(12081i, arg_2, all(vec2<bool>(all(vec2<bool>(true, false)), arg_1)), _wgslsmith_add_i32(firstLeadingBit(_wgslsmith_add_i32(reverseBits(u_input.a), -19909i)), countOneBits(u_input.a)), vec3<f32>(265f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), 151f));
    var var_1 = ~var_0.b;
    let var_2 = Struct_1(80327u, -(~_wgslsmith_mult_vec3_i32(vec3<i32>(-54876i, 22666i, 0i), _wgslsmith_mult_vec3_i32(vec3<i32>(-72219i, 1i, var_0.d), vec3<i32>(var_0.d, 32313i, -2147483647i)))), 126f, _wgslsmith_f_op_f32(step(1842f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) * _wgslsmith_f_op_f32(-arg_0)))))));
    let var_3 = u_input.b << (75005u % 32u);
    return Struct_4(_wgslsmith_f_op_f32(step(arg_3, _wgslsmith_f_op_f32(min(174f, arg_0)))), var_0.e);
}

fn func_5(arg_0: Struct_4) -> vec4<u32> {
    global0 = array<Struct_2, 11>();
    var var_0 = vec2<f32>(479f, arg_0.a);
    var var_1 = Struct_4(arg_0.a, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.a))), _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(332f)), _wgslsmith_f_op_f32(func_1(42300i, vec2<u32>(u_input.b, 36693u), arg_0, global0[_wgslsmith_index_u32(u_input.b, 11u)]))))))));
    let var_2 = abs(u_input.b);
    let var_3 = vec2<u32>(87120u, 1u) << (vec2<u32>(var_2, ~max(u_input.b ^ u_input.b, ~20146u)) % vec2<u32>(32u));
    return vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_add_u32(23076u, var_2), var_3.x, 39510u), vec3<u32>(1u, 1u, 1u)) << (26732u % 32u), _wgslsmith_dot_vec3_u32(firstTrailingBit(~vec3<u32>(17889u, 1u, var_2) << ((vec3<u32>(4294967295u, 1u, var_3.x) | vec3<u32>(18782u, 0u, var_2)) % vec3<u32>(32u))), select(~(~vec3<u32>(var_3.x, var_2, 80629u)), vec3<u32>(reverseBits(var_3.x), ~var_3.x, 41394u >> (1u % 32u)), false)), _wgslsmith_dot_vec3_u32(max(reverseBits(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, var_2, 0u), vec3<u32>(u_input.b, 0u, 0u))), max(_wgslsmith_mod_vec3_u32(vec3<u32>(27050u, 40418u, u_input.b), vec3<u32>(1u, u_input.b, var_3.x)), vec3<u32>(var_3.x, 794u, 4294967295u))), vec3<u32>(var_3.x, u_input.b, 4294967295u)), _wgslsmith_mod_u32(~62854u, ~max(var_3.x, u_input.b)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec4_u32(abs(~countOneBits(vec4<u32>(4294967295u, u_input.b, u_input.b, u_input.b))), select(vec4<u32>(u_input.b, 4294967295u, 24181u, ~u_input.b), vec4<u32>(~1u, ~u_input.b, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 20943u, u_input.b), vec3<u32>(u_input.b, 4294967295u, 4294967295u)), 0u), !any(vec4<bool>(true, true, true, true)))) << (func_5(func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1408f * -891f)), true, u_input.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(u_input.a, vec2<u32>(u_input.b, u_input.b), Struct_4(-471f, vec3<f32>(-1055f, 1412f, 734f)), global0[_wgslsmith_index_u32(0u, 11u)]))))) % vec4<u32>(32u));
    let var_1 = vec2<i32>(u_input.a, -39626i);
    var_0 = ~vec4<u32>(_wgslsmith_sub_u32(var_0.x, 4294967295u), ~(~_wgslsmith_sub_u32(u_input.b, 4294967295u)), var_0.x, u_input.b);
    let var_2 = u_input.b;
    let var_3 = Struct_3(-1i, 29948u, !any(vec2<bool>(true, true)), -min(-23515i, 2147483647i), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(490f, -1019f, 1285f), vec3<f32>(-1402f, 527f, 338f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.e, func_4(_wgslsmith_f_op_f32(var_3.e.x * _wgslsmith_f_op_f32(-var_3.e.x)), any(vec2<bool>(select(var_3.c, false, false), var_3.c)), _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(67198u, 30421u, 53388u, 39203u), vec4<u32>(4294967295u, 4294967295u, var_0.x, 31717u)), 7731u) & 15572u, -1773f).b, var_3.e.x, var_3.e.x);
}

