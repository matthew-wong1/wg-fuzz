struct Struct_1 {
    a: vec3<i32>,
    b: vec2<f32>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: i32,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 4294967295u;

var<private> global1: array<vec4<bool>, 16>;

var<private> global2: f32;

var<private> global3: array<vec4<f32>, 13>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2() -> Struct_4 {
    global1 = array<vec4<bool>, 16>();
    var var_0 = Struct_3(u_input.b.yx & u_input.b.yx);
    let var_1 = Struct_1(vec3<i32>(u_input.a, u_input.a, _wgslsmith_clamp_i32(_wgslsmith_mod_i32(u_input.a, 7885i), u_input.a, u_input.a)) & (vec3<i32>(-1i) * -vec3<i32>(27451i, u_input.a, 2147483647i)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1378f, 1341f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -556f)))), select(vec3<bool>(!(-36855i > u_input.a), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 13822u, 1u), u_input.b) != 1u, true), !select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true)));
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1912f + _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(var_1.b.x, var_1.b.x)))));
    global0 = var_0.a.x;
    return Struct_4(Struct_3(~vec2<u32>(~u_input.b.x, firstTrailingBit(var_0.a.x))));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec3<f32>, arg_2: Struct_4, arg_3: Struct_2) -> vec3<bool> {
    global1 = array<vec4<bool>, 16>();
    let var_0 = select(max(select(~(vec2<i32>(1i, u_input.a) & vec2<i32>(-1i, u_input.a)), -(vec2<i32>(arg_3.b, u_input.a) | vec2<i32>(u_input.a, 2147483647i)), false), vec2<i32>(u_input.a, 0i)), abs(vec2<i32>(-1i) * -(vec2<i32>(arg_3.b, 6133i) ^ vec2<i32>(32959i, -48393i))), false);
    let var_1 = vec2<u32>(_wgslsmith_dot_vec4_u32(min(arg_3.a, vec4<u32>(u_input.b.x, _wgslsmith_add_u32(5297u, 40189u), 36134u, _wgslsmith_add_u32(arg_3.a.x, 1u))), _wgslsmith_clamp_vec4_u32(vec4<u32>(max(u_input.b.x, arg_3.a.x), ~arg_3.a.x, ~arg_3.a.x, u_input.b.x), arg_3.a, vec4<u32>(firstLeadingBit(0u), _wgslsmith_mult_u32(u_input.b.x, u_input.b.x), 21990u, u_input.b.x << (u_input.b.x % 32u)))), arg_2.a.a.x);
    var var_2 = max(vec3<i32>(var_0.x, -21074i, 1i | u_input.a) ^ reverseBits(countOneBits(vec3<i32>(u_input.a, 25229i, u_input.a) | vec3<i32>(var_0.x, -22317i, u_input.a))), -vec3<i32>(_wgslsmith_add_i32(0i >> (var_1.x % 32u), var_0.x), -(arg_3.b >> (4294967295u % 32u)), 0i));
    let var_3 = arg_2;
    return arg_0;
}

fn func_1() -> u32 {
    global3 = array<vec4<f32>, 13>();
    var var_0 = func_2();
    let var_1 = Struct_1(_wgslsmith_mult_vec3_i32(-vec3<i32>(u_input.a, 2147483647i, u_input.a), firstLeadingBit(vec3<i32>(-u_input.a, _wgslsmith_div_i32(53378i, -19290i), 1i >> (u_input.b.x % 32u)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-2097f, _wgslsmith_f_op_f32(-494f + -1073f))), !select(select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), func_3(vec3<bool>(true, false, true), vec3<f32>(-1000f, -313f, 464f), Struct_4(Struct_3(vec2<u32>(36310u, 4294967295u))), Struct_2(vec4<u32>(99094u, 6756u, var_0.a.a.x, 56461u), -34813i))), select(select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false))));
    var var_2 = Struct_2(max(abs(_wgslsmith_div_vec4_u32(~vec4<u32>(44982u, var_0.a.a.x, u_input.b.x, 841u), vec4<u32>(var_0.a.a.x, 4294967295u, var_0.a.a.x, var_0.a.a.x))), vec4<u32>(max(var_0.a.a.x, u_input.b.x), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, var_0.a.a.x), vec2<u32>(u_input.b.x, 4294967295u)) | ~var_0.a.a.x, var_0.a.a.x, 4294967295u)), -(~(-1i)));
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-109f, var_1.b.x, -230f)))))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(var_1.b.x, var_1.b.x, false)), var_1.b.x, _wgslsmith_f_op_f32(-var_1.b.x)) * vec3<f32>(var_1.b.x, _wgslsmith_f_op_f32(-var_1.b.x), _wgslsmith_f_op_f32(-311f + -1134f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_1.b.x, 194f, 417f), vec3<f32>(var_1.b.x, var_1.b.x, var_1.b.x))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(169f, -1659f, var_1.b.x))))), vec3<f32>(_wgslsmith_f_op_f32(exp2(var_1.b.x)), var_1.b.x, _wgslsmith_div_f32(-607f, -1000f)))));
    return _wgslsmith_add_u32(_wgslsmith_clamp_u32(~14312u, abs(~func_2().a.a.x), var_0.a.a.x), ~var_0.a.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~(~(4592u & (u_input.b.x ^ max(30294u, u_input.b.x))));
    let var_0 = vec3<i32>(2399i, 0i, u_input.a);
    global0 = firstTrailingBit(abs(func_1()));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(_wgslsmith_mod_i32(abs(var_0.x >> (4294967295u % 32u)), abs(abs(var_0.x))), 79817i << (firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, 71092u, u_input.b.x), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x))) % 32u), -16343i, 2147483647i));
}

