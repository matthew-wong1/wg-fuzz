struct Struct_1 {
    a: vec3<bool>,
    b: vec2<i32>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec2<i32>,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_3, arg_2: f32) -> i32 {
    let var_0 = countOneBits(~(~_wgslsmith_clamp_u32(47695u, ~u_input.b, firstLeadingBit(27688u))));
    let var_1 = !(!vec3<bool>(true | arg_0.c.x, false, arg_0.c.x));
    let var_2 = _wgslsmith_sub_vec4_u32(~(~_wgslsmith_mod_vec4_u32(~vec4<u32>(20408u, u_input.a, 0u, var_0), _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, var_0, var_0, var_0), vec4<u32>(u_input.a, u_input.a, 8053u, var_0)))), vec4<u32>(~(~var_0), firstTrailingBit(~(~65020u)), var_0, var_0));
    let var_3 = var_1;
    let var_4 = _wgslsmith_clamp_u32(~4294967295u, firstTrailingBit(_wgslsmith_div_u32(4294967295u << (0u % 32u), countOneBits(38414u))) ^ 0u, 0u);
    return -_wgslsmith_div_i32(-abs(-arg_0.b.x), arg_0.b.x);
}

fn func_2(arg_0: vec3<bool>, arg_1: vec4<f32>, arg_2: vec4<f32>, arg_3: bool) -> f32 {
    let var_0 = -_wgslsmith_sub_i32(20177i ^ func_3(Struct_1(vec3<bool>(false, false, false), vec2<i32>(-19733i, 40922i), arg_0.xz), Struct_3(347f), _wgslsmith_f_op_f32(round(-191f))), 14499i);
    let var_1 = select(vec4<bool>(all(!vec4<bool>(true, arg_0.x, true, false)), arg_3, true, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(arg_1.x, arg_1.x), _wgslsmith_f_op_f32(-arg_2.x))) > 669f), !(!vec4<bool>(true, var_0 <= 5863i, !arg_3, !arg_3)), select(select(!select(vec4<bool>(false, true, arg_0.x, true), vec4<bool>(arg_0.x, arg_0.x, false, true), true), select(!vec4<bool>(false, arg_0.x, false, false), select(vec4<bool>(arg_0.x, arg_3, arg_0.x, arg_0.x), vec4<bool>(false, arg_0.x, true, arg_3), false), vec4<bool>(arg_0.x, false, arg_0.x, true)), select(false, true, true)), select(!select(vec4<bool>(arg_3, true, true, false), vec4<bool>(arg_3, true, arg_0.x, arg_0.x), false), vec4<bool>(false, true, !arg_3, true), select(!vec4<bool>(arg_0.x, arg_0.x, true, false), vec4<bool>(true, arg_0.x, false, arg_3), select(vec4<bool>(arg_0.x, false, false, false), vec4<bool>(arg_0.x, arg_3, true, true), true))), ((true && arg_0.x) | !arg_0.x) != any(!vec4<bool>(arg_3, false, arg_3, arg_0.x))));
    let var_2 = Struct_1(var_1.www, vec2<i32>(2147483647i, _wgslsmith_div_i32(_wgslsmith_sub_i32(2147483647i & var_0, 1i), max(-2147483647i, -2147483647i >> (u_input.b % 32u)))), !arg_0.zy);
    var var_3 = u_input.a;
    var var_4 = abs(_wgslsmith_dot_vec3_i32(firstLeadingBit(~_wgslsmith_add_vec3_i32(vec3<i32>(-4391i, 0i, var_2.b.x), vec3<i32>(-7673i, 2147483647i, 35415i))), ~vec3<i32>(-1744i, var_2.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(36426i, 1i, var_2.b.x, var_0), vec4<i32>(2147483647i, 2147483647i, var_0, 34879i)))));
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_1.x, _wgslsmith_f_op_f32(exp2(arg_1.x)))))));
}

fn func_1(arg_0: bool) -> vec2<i32> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -786f) * -374f)) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_2(!vec3<bool>(arg_0, true, arg_0), _wgslsmith_f_op_vec4_f32(-vec4<f32>(949f, 812f, 1372f, -641f)), vec4<f32>(-315f, 1596f, -1252f, -1000f), any(vec4<bool>(true, true, arg_0, arg_0))))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1870f))))));
    let var_1 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(233f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(var_0)), -373f))));
    global0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2138f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(var_0, -617f, true)))))), var_0));
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -759f);
    global0 = var_0;
    return ~((vec2<i32>(-1i) * -countOneBits(vec2<i32>(2147483647i, 2147483647i))) ^ max(_wgslsmith_add_vec2_i32(select(vec2<i32>(-2147483647i, 10405i), vec2<i32>(-1i, 0i), vec2<bool>(false, arg_0)), _wgslsmith_clamp_vec2_i32(vec2<i32>(2759i, -12493i), vec2<i32>(31952i, -36504i), vec2<i32>(-10071i, 3898i))), _wgslsmith_mod_vec2_i32(vec2<i32>(1i, 1i), -vec2<i32>(-38862i, -2147483647i))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(Struct_1(select(vec3<bool>(true, all(vec4<bool>(true, true, false, false)), true), vec3<bool>(false, any(vec4<bool>(true, false, false, true)), all(vec3<bool>(true, false, true))), all(vec2<bool>(true, true))), vec2<i32>(1i, ~(~1i)), vec2<bool>(true, true)), -89712i, _wgslsmith_sub_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(-1i, -31919i), _wgslsmith_dot_vec4_i32(vec4<i32>(-3523i, -4879i, -7181i, 6796i), vec4<i32>(1i, -19203i, -36851i, -31166i))), countOneBits(-vec2<i32>(35514i, -1i))) | -(~vec2<i32>(2147483647i, 18307i) & func_1(true)));
    let var_1 = -504f;
    var var_2 = Struct_2(var_0.a, -16622i, _wgslsmith_div_vec2_i32(var_0.a.b, vec2<i32>(_wgslsmith_div_i32(firstLeadingBit(2147483647i), select(var_0.b, -92419i, false)), _wgslsmith_dot_vec3_i32(abs(vec3<i32>(0i, var_0.a.b.x, var_0.a.b.x)), -vec3<i32>(var_0.c.x, 1i, 1i)))));
    var_2 = Struct_2(var_2.a, 0i, _wgslsmith_add_vec2_i32(vec2<i32>(-2147483647i, _wgslsmith_dot_vec2_i32(~var_2.c, ~vec2<i32>(-2147483647i, var_2.c.x))), -_wgslsmith_mod_vec2_i32(var_0.c, firstLeadingBit(vec2<i32>(var_0.b, var_2.b)))));
    var_2 = Struct_2(var_2.a, ~_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_div_i32(var_2.c.x, -2147483647i), _wgslsmith_dot_vec4_i32(vec4<i32>(45767i, -27607i, var_2.a.b.x, 2147483647i), vec4<i32>(2147483647i, 11791i, -31687i, 18488i)), var_2.b ^ var_2.c.x), min(vec3<i32>(var_2.a.b.x, -2147483647i, 10878i) >> (vec3<u32>(u_input.b, 1u, u_input.b) % vec3<u32>(32u)), _wgslsmith_add_vec3_i32(vec3<i32>(7603i, var_0.a.b.x, var_2.b), vec3<i32>(1i, 0i, var_0.c.x)))), firstTrailingBit(var_0.a.b));
    let x = u_input.a;
    s_output = StorageBuffer(29298i, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(627f, var_1))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_1, var_1))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(575f, 863f) + vec2<f32>(var_1, var_1)))) - vec2<f32>(var_1, _wgslsmith_f_op_f32(round(var_1)))), _wgslsmith_add_vec2_u32(reverseBits(~vec2<u32>(49467u, u_input.a)) ^ _wgslsmith_clamp_vec2_u32(abs(vec2<u32>(u_input.a, u_input.a)), _wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 15857u), vec2<u32>(u_input.a, 1u), vec2<u32>(4294967295u, 1u)), ~vec2<u32>(11824u, 40737u)), vec2<u32>(_wgslsmith_add_u32(_wgslsmith_sub_u32(u_input.b, u_input.a), _wgslsmith_add_u32(u_input.b, u_input.b)), ~(u_input.a | 27713u))));
}

