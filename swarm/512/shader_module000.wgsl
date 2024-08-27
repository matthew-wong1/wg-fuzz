struct Struct_1 {
    a: vec2<bool>,
    b: vec2<u32>,
    c: u32,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: vec4<i32>) -> u32 {
    let var_0 = -1i & arg_0.x;
    return 9435u;
}

fn func_3(arg_0: Struct_2) -> vec2<i32> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1095f)) * _wgslsmith_f_op_f32(ceil(-1412f)));
    let var_1 = 56255u;
    let var_2 = ~13206i;
    var var_3 = Struct_1(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(any(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), false)), !all(vec4<bool>(true, false, true, true)))), firstTrailingBit(vec2<u32>(var_1 ^ 0u, var_1)), ~0u);
    var_3 = Struct_1(select(select(!select(vec2<bool>(true, false), vec2<bool>(var_3.a.x, true), vec2<bool>(false, false)), !var_3.a, vec2<bool>(true, var_3.a.x || false)), !select(vec2<bool>(var_3.a.x, false), vec2<bool>(false, var_3.a.x), vec2<bool>(true, var_3.a.x)), ~(8074i ^ u_input.b) < var_2), var_3.b, var_1);
    return -u_input.a;
}

fn func_1(arg_0: bool, arg_1: bool, arg_2: vec3<i32>) -> vec2<u32> {
    var var_0 = 30001u;
    let var_1 = _wgslsmith_mod_vec2_i32(vec2<i32>(firstTrailingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, -24979i, arg_2.x), arg_2)), arg_2.x), abs(-vec2<i32>(_wgslsmith_mult_i32(1i, u_input.b), arg_2.x)));
    let var_2 = Struct_1(!(!(!select(vec2<bool>(arg_0, false), vec2<bool>(arg_0, arg_1), arg_1))), vec2<u32>(1u, _wgslsmith_div_u32(38541u, countOneBits(~18103u))), _wgslsmith_div_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(77164u, 0u)), ~(~func_2(vec4<i32>(0i, u_input.b, var_1.x, 0i)))));
    var var_3 = var_2;
    let var_4 = _wgslsmith_div_vec2_i32(select(firstLeadingBit(var_1 | vec2<i32>(2147483647i, u_input.a.x)), vec2<i32>(0i, abs(22601i)), !var_3.a) | arg_2.yz, select(_wgslsmith_add_vec2_i32(firstLeadingBit(~arg_2.yx), func_3(Struct_2(vec2<i32>(13330i, arg_2.x)))), _wgslsmith_mod_vec2_i32(var_1, vec2<i32>(reverseBits(-2147483647i), _wgslsmith_div_i32(var_1.x, 0i))), ((u_input.b ^ 0i) >> (~var_2.c % 32u)) <= -select(u_input.a.x, u_input.b, false)));
    return countOneBits(var_2.b ^ (~vec2<u32>(var_2.c, 4294967295u) << (~var_2.b % vec2<u32>(32u)))) | var_2.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_dot_vec2_u32(~(~reverseBits(func_1(true, false, vec3<i32>(1i, 1653i, u_input.b)))), vec2<u32>(1u, 1u));
    var var_1 = Struct_1(!select(vec2<bool>(true, any(vec2<bool>(false, true))), vec2<bool>(true, var_0 <= 21965u), false), _wgslsmith_sub_vec2_u32(_wgslsmith_clamp_vec2_u32(select(vec2<u32>(0u, 0u), max(vec2<u32>(var_0, 4294967295u), vec2<u32>(0u, var_0)), select(vec2<bool>(true, false), vec2<bool>(false, false), false)), ~vec2<u32>(27839u, 20439u), select(vec2<u32>(var_0, var_0), _wgslsmith_add_vec2_u32(vec2<u32>(var_0, 32737u), vec2<u32>(0u, var_0)), true)), firstTrailingBit(max(vec2<u32>(var_0, var_0), firstLeadingBit(vec2<u32>(67172u, 39827u))))), 48883u);
    var_1 = Struct_1(!var_1.a, var_1.b, ~max(~var_1.c, ~var_0) >> (_wgslsmith_add_u32(max(0u, ~var_1.b.x), var_0) % 32u));
    var var_2 = select(vec2<bool>(var_1.a.x, !var_1.a.x), select(var_1.a, vec2<bool>(false, var_1.a.x), var_1.a.x), any(!vec3<bool>(true, false, var_1.a.x && var_1.a.x)));
    var var_3 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(1041f, 821f) * vec2<f32>(-1246f, 395f)), vec2<f32>(1f, 1f)))) - vec2<f32>(_wgslsmith_f_op_f32(-1377f - _wgslsmith_f_op_f32(f32(-1f) * -1624f)), -389f)), 4294967295u, u_input.a.x, min(u_input.b, -abs(-1i)));
}

