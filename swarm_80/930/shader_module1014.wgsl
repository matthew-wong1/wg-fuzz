struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: u32,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
}

struct Struct_5 {
    a: u32,
    b: Struct_1,
    c: Struct_2,
    d: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 0i;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: u32, arg_1: vec2<bool>, arg_2: Struct_3) -> f32 {
    let var_0 = Struct_5(56898u, arg_2.a, Struct_2(arg_2.a, arg_2.a), u_input.b);
    var var_1 = i32(-1i) * -47134i;
    var var_2 = var_0.d;
    let var_3 = _wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(~select(-vec3<i32>(-1i, -48i, -25260i), vec3<i32>(-39725i, u_input.c, var_0.d) >> (u_input.a % vec3<u32>(32u)), arg_1.x || false), _wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(var_0.d, var_0.d), -1i, -u_input.c), firstLeadingBit(countOneBits(vec3<i32>(u_input.b, -30714i, u_input.c))), (vec3<i32>(var_0.d, -1i, u_input.d) & vec3<i32>(-2147483647i, -102178i, 0i)) << (~u_input.a % vec3<u32>(32u))), max(abs(-vec3<i32>(13096i, var_0.d, 2147483647i)), vec3<i32>(-u_input.c, 1i, -var_0.d))), (-countOneBits(vec3<i32>(u_input.d, var_0.d, -2147483647i)) ^ vec3<i32>(abs(2147483647i), max(0i, u_input.d), u_input.c | -2147483647i)) | firstTrailingBit(vec3<i32>(u_input.b, u_input.c, -1i) >> (~u_input.a % vec3<u32>(32u))));
    var var_4 = var_0.c.b.b.x;
    return -1779f;
}

fn func_2(arg_0: vec4<i32>) -> vec2<u32> {
    global0 = ~(-41948i);
    global0 = countOneBits(2147483647i);
    global0 = _wgslsmith_mod_i32(firstTrailingBit(min(_wgslsmith_mult_i32(arg_0.x, 1i), -21046i)), arg_0.x);
    let var_0 = all(vec3<bool>(!(_wgslsmith_f_op_f32(func_3(u_input.a.x, vec2<bool>(false, true), Struct_3(Struct_1(true, vec2<f32>(-1189f, -233f), 6251u, u_input.e.x)))) > -1000f), 89177u > firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(8670u, u_input.e.x), u_input.e)), true));
    var var_1 = Struct_4(_wgslsmith_f_op_f32(func_3((_wgslsmith_mod_u32(u_input.e.x, 37373u) & 0u) & u_input.a.x, vec2<bool>(all(vec3<bool>(var_0, var_0, var_0)), 7290u == (u_input.e.x >> (1u % 32u))), Struct_3(Struct_1(all(vec4<bool>(var_0, var_0, var_0, true)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1351f, -2034f) - vec2<f32>(1355f, 1098f)), u_input.a.x, 1u)))), Struct_3(Struct_1(var_0, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-105f, 1035f))) * _wgslsmith_f_op_vec2_f32(step(vec2<f32>(173f, -827f), vec2<f32>(-596f, 353f)))), countOneBits(~0u), 31022u)));
    return vec2<u32>(u_input.e.x, 1u);
}

fn func_1(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: vec4<bool>) -> f32 {
    var var_0 = ~_wgslsmith_add_vec2_u32(func_2(~_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c, u_input.b, 0i, -23754i), vec4<i32>(16273i, 9417i, u_input.c, u_input.b))), _wgslsmith_add_vec2_u32(~u_input.e, u_input.a.zx));
    let var_1 = _wgslsmith_add_u32(u_input.e.x, ~(~29825u));
    var var_2 = !(!any(vec4<bool>(false, true, arg_2.x, any(vec3<bool>(arg_0.a.a, true, false)))));
    var var_3 = ~(~1u);
    global0 = _wgslsmith_mult_i32(abs((abs(u_input.b) << ((29671u | var_0.x) % 32u)) & _wgslsmith_sub_i32(reverseBits(-2147483647i), u_input.d | u_input.d)), u_input.c);
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(-1186f))));
}

fn func_4(arg_0: vec2<f32>, arg_1: vec4<f32>, arg_2: Struct_4) -> i32 {
    var var_0 = false;
    let var_1 = !arg_2.b.a.a;
    var var_2 = vec3<f32>(arg_1.x, arg_2.a, _wgslsmith_f_op_f32(arg_2.a * arg_2.a));
    let var_3 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_1)), _wgslsmith_f_op_vec4_f32(ceil(arg_1)), !vec4<bool>(var_1, any(select(vec2<bool>(arg_2.b.a.a, arg_2.b.a.a), vec2<bool>(false, arg_2.b.a.a), vec2<bool>(false, var_1))), var_1, true)));
    var var_4 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0.x * arg_0.x), _wgslsmith_f_op_f32(step(var_3.x, 212f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.b.a.b.x - arg_1.x) * _wgslsmith_f_op_f32(ceil(979f))))) - -3398f), arg_2.b);
    return -3418i;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~(i32(-1i) * -_wgslsmith_mult_i32(u_input.c, _wgslsmith_div_i32(u_input.d, 2147483647i)));
    let var_0 = -246f;
    let var_1 = 296f;
    let var_2 = false;
    global0 = -func_4(vec2<f32>(_wgslsmith_f_op_f32(1038f - _wgslsmith_f_op_f32(min(var_0, -1299f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(func_1(Struct_2(Struct_1(var_2, vec2<f32>(552f, var_1), 0u, 0u), Struct_1(true, vec2<f32>(var_0, var_0), u_input.e.x, 1u)), vec2<f32>(-484f, 1147f), vec4<bool>(var_2, var_2, var_2, true))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, 1054f, 1000f, var_0))))), Struct_4(_wgslsmith_f_op_f32(max(var_0, _wgslsmith_div_f32(2359f, var_0))), Struct_3(Struct_1(false, vec2<f32>(-1360f, var_0), u_input.e.x, u_input.a.x))));
    global0 = ~(-24906i);
    let x = u_input.a;
    s_output = StorageBuffer(-select(~_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.c, u_input.d), vec2<i32>(-2147483647i, u_input.c)), vec2<i32>(-1i << (u_input.e.x % 32u), -27100i), !select(vec2<bool>(var_2, var_2), vec2<bool>(true, var_2), vec2<bool>(var_2, var_2))), firstTrailingBit(u_input.a.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_1(Struct_2(Struct_1(false, vec2<f32>(-1411f, var_1), 0u, 73759u), Struct_1(var_2, vec2<f32>(var_0, 763f), 3209u, 0u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, var_0))), vec4<bool>(false && var_2, false, var_1 >= var_0, true))))));
}

