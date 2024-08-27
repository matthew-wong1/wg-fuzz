struct Struct_1 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<f32>,
    c: vec2<u32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(vec2<u32>(1u, 10298u)), Struct_1(vec2<u32>(29449u, 1u)), Struct_1(vec2<u32>(88600u, 84229u)), Struct_1(vec2<u32>(9813u, 1u)), Struct_1(vec2<u32>(11836u, 4294967295u)), Struct_1(vec2<u32>(74640u, 0u)), Struct_1(vec2<u32>(4294967295u, 4294967295u)), Struct_1(vec2<u32>(0u, 4904u)), Struct_1(vec2<u32>(1u, 2574u)), Struct_1(vec2<u32>(1u, 0u)), Struct_1(vec2<u32>(4294967295u, 1u)), Struct_1(vec2<u32>(0u, 4294967295u)), Struct_1(vec2<u32>(16228u, 0u)), Struct_1(vec2<u32>(9086u, 23382u)), Struct_1(vec2<u32>(4294967295u, 27769u)), Struct_1(vec2<u32>(1u, 57246u)), Struct_1(vec2<u32>(2563u, 78738u)), Struct_1(vec2<u32>(1u, 13465u)), Struct_1(vec2<u32>(0u, 55211u)), Struct_1(vec2<u32>(17517u, 1u)), Struct_1(vec2<u32>(0u, 1u)), Struct_1(vec2<u32>(36105u, 22522u)), Struct_1(vec2<u32>(1u, 19285u)), Struct_1(vec2<u32>(4294967295u, 1u)), Struct_1(vec2<u32>(0u, 18089u)), Struct_1(vec2<u32>(17303u, 67410u)), Struct_1(vec2<u32>(0u, 53633u)));

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: i32, arg_1: vec3<i32>, arg_2: bool, arg_3: Struct_1) -> Struct_1 {
    global0 = array<Struct_1, 27>();
    global0 = array<Struct_1, 27>();
    global0 = array<Struct_1, 27>();
    global0 = array<Struct_1, 27>();
    let var_0 = Struct_1(vec2<u32>(1u, abs(u_input.b.x)));
    return Struct_1(reverseBits(~(u_input.b & abs(vec2<u32>(u_input.a.x, 8363u)))));
}

fn func_3(arg_0: Struct_1) -> i32 {
    global0 = array<Struct_1, 27>();
    global0 = array<Struct_1, 27>();
    global0 = array<Struct_1, 27>();
    let var_0 = func_1(~abs(-6041i), ~(-vec3<i32>(1i, 1i, 1i)), any(vec2<bool>(true, true)), Struct_1(_wgslsmith_mult_vec2_u32(~arg_0.a, ~max(vec2<u32>(arg_0.a.x, u_input.b.x), arg_0.a))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(641f, -1000f, -1000f, 1000f) - vec4<f32>(-750f, 367f, 1115f, 1042f))))))));
    return _wgslsmith_clamp_i32(~48648i >> (~4294967295u % 32u), 1i, 1i);
}

fn func_4(arg_0: vec3<u32>, arg_1: f32, arg_2: Struct_1) -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-436f, -459f, 1173f) * _wgslsmith_f_op_vec3_f32(max(vec3<f32>(1338f, -367f, 895f), vec3<f32>(arg_1, -1000f, arg_1)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-939f, arg_1, 515f), vec3<f32>(arg_1, 1208f, 167f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, arg_1, arg_1))))) + vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -440f), -281f, arg_1));
    var var_1 = ~(~vec2<u32>(_wgslsmith_dot_vec3_u32(u_input.a | arg_0, countOneBits(vec3<u32>(arg_2.a.x, arg_2.a.x, 38139u))), ~15733u));
    var var_2 = -2147483647i;
    let var_3 = Struct_1(arg_0.zx);
    var_2 = ~30835i;
    return -reverseBits(_wgslsmith_mod_vec4_i32(vec4<i32>(~17304i, select(2147483647i, -26658i, false), ~0i, -1i), abs(-vec4<i32>(-15934i, 9098i, -39756i, -12527i))));
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1, arg_3: Struct_1) -> vec4<i32> {
    global0 = array<Struct_1, 27>();
    let var_0 = -arg_1;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -116f))));
    let var_2 = ~firstLeadingBit(u_input.a);
    let var_3 = false;
    return (_wgslsmith_mod_vec4_i32(~firstLeadingBit(vec4<i32>(39845i, -32672i, -32751i, arg_1)), firstLeadingBit(vec4<i32>(0i, var_0, 1i, 18864i))) | max(vec4<i32>(_wgslsmith_mult_i32(var_0, var_0), -1i, -2147483647i, _wgslsmith_clamp_i32(arg_1, -38965i, -1i)), -vec4<i32>(-24652i, arg_1, 2147483647i, arg_1))) ^ func_4(select(u_input.a, ~select(var_2, u_input.a, vec3<bool>(false, false, var_3)), var_3), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(2941f - 106f))))), func_1(func_3(arg_2), vec3<i32>(_wgslsmith_div_i32(-2147483647i, 38805i), -2147483647i, 1i), arg_2.a.x == 17697u, func_1(var_0 << (arg_0.a.x % 32u), _wgslsmith_add_vec3_i32(vec3<i32>(var_0, var_0, var_0), vec3<i32>(86105i, 1i, -1i)), false, func_1(-9921i, vec3<i32>(arg_1, -2147483647i, -1i), var_3, Struct_1(arg_3.a)))));
}

fn func_5(arg_0: vec4<i32>) -> f32 {
    var var_0 = -(2147483647i ^ min(~(-9186i), arg_0.x));
    global0 = array<Struct_1, 27>();
    return -273f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 27>();
    global0 = array<Struct_1, 27>();
    var var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(round(998f)))) * _wgslsmith_f_op_f32(f32(-1f) * -899f)), 957f));
    var var_1 = Struct_1(vec2<u32>(~u_input.b.x, 52237u));
    let var_2 = ~_wgslsmith_mod_i32(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, 0i, -71078i), _wgslsmith_div_vec4_i32(vec4<i32>(-19202i, 0i, -23650i, -2147483647i), vec4<i32>(2147483647i, 2147483647i, 3382i, -2147483647i))), i32(-1i) * -1363i), _wgslsmith_add_i32(1i, -22962i));
    var_0 = _wgslsmith_f_op_f32(func_5(vec4<i32>(_wgslsmith_dot_vec4_i32(-(~vec4<i32>(var_2, var_2, -1i, 18251i)), func_2(func_1(var_2, vec3<i32>(var_2, var_2, 1i), false, global0[_wgslsmith_index_u32(u_input.a.x, 27u)]), 30570i, func_1(var_2, vec3<i32>(105827i, -1i, -2147483647i), false, Struct_1(vec2<u32>(10377u, u_input.b.x))), global0[_wgslsmith_index_u32(0u, 27u)])), 2147483647i, 1i, 0i | func_4(u_input.a, _wgslsmith_f_op_f32(f32(-1f) * -364f), Struct_1(vec2<u32>(0u, u_input.a.x))).x)));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -616f))));
    var var_3 = !select(vec3<bool>(true, any(vec3<bool>(false, false, true)), true), vec3<bool>(true, true, true), any(vec4<bool>(true, true, true, true)));
    var var_4 = _wgslsmith_add_u32(func_1(2147483647i, ~(~reverseBits(vec3<i32>(var_2, var_2, -19103i))), !any(select(vec4<bool>(false, false, var_3.x, var_3.x), vec4<bool>(var_3.x, var_3.x, true, false), false)), Struct_1(~u_input.a.xy)).a.x, var_1.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(134f, -847f), vec2<f32>(1527f, 273f), true)))))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(141f, -671f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-379f, 243f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-190f, 564f)))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-623f, -733f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -2472f)))))), max(func_1(var_2, -vec3<i32>(-1i, 2147483647i, -49958i), true, Struct_1(_wgslsmith_sub_vec2_u32(u_input.b, vec2<u32>(8909u, var_1.a.x)))).a, ~max(firstTrailingBit(var_1.a), var_1.a)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1003f, 933f, 1347f) * vec3<f32>(-596f, 164f, -323f)))))));
}

