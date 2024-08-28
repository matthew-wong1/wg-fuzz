struct Struct_1 {
    a: vec2<f32>,
    b: vec4<bool>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec3<i32>,
    c: bool,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec3<u32>,
    c: bool,
    d: f32,
    e: f32,
}

struct Struct_4 {
    a: i32,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: vec4<u32>,
    d: vec4<u32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: f32, arg_1: vec2<f32>) -> vec2<bool> {
    let var_0 = _wgslsmith_mod_u32(reverseBits(87458u), select(u_input.b.x, ~(_wgslsmith_add_u32(u_input.b.x, 11157u) << (u_input.b.x % 32u)), false));
    let var_1 = u_input.a;
    var var_2 = countOneBits(vec2<i32>(-1i) * -(-vec2<i32>(-2319i, 1i) >> (_wgslsmith_div_vec2_u32(vec2<u32>(var_0, var_0), u_input.b.zw) % vec2<u32>(32u))));
    var var_3 = Struct_3(select(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false), vec3<bool>(_wgslsmith_add_u32(var_0, u_input.b.x) < var_0, all(select(vec2<bool>(false, false), vec2<bool>(false, true), true)), true), vec3<bool>(false, any(select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false), false)), true)), firstTrailingBit(u_input.b.yyy), !all(!select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(-528f))))), arg_1.x);
    let var_4 = select(var_3.a.yx, vec2<bool>(true, false), var_3.a.xx);
    return !select(!var_4, var_4, _wgslsmith_div_i32(20117i, ~var_2.x) < _wgslsmith_mod_i32(reverseBits(var_2.x), 21993i));
}

fn func_2(arg_0: Struct_4) -> u32 {
    var var_0 = abs(~u_input.b.x);
    var var_1 = func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1859f, -945f))), vec2<f32>(1682f, _wgslsmith_f_op_f32(-1000f * -1141f)));
    let var_2 = firstLeadingBit(abs(~vec4<i32>(firstTrailingBit(u_input.a), ~(-9i), -u_input.a, -30753i)));
    var var_3 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(230f)) * _wgslsmith_f_op_f32(f32(-1f) * -921f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-681f + _wgslsmith_f_op_f32(sign(-335f))))), !(!(!(!vec4<bool>(var_1.x, var_1.x, var_1.x, true)))), vec2<f32>(_wgslsmith_f_op_f32(select(-178f, _wgslsmith_f_op_f32(ceil(-640f)), true)), -540f));
    let var_4 = _wgslsmith_mod_vec4_u32(vec4<u32>(abs(~countOneBits(4294967295u)), ~max(u_input.b.x << (u_input.b.x % 32u), 4294967295u), ~firstTrailingBit(4294967295u), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, _wgslsmith_dot_vec3_u32(u_input.b.xyz, u_input.b.wxy), _wgslsmith_dot_vec2_u32(u_input.b.ww, u_input.b.wx)), u_input.b.zzy ^ u_input.b.xyx)), _wgslsmith_sub_vec4_u32(u_input.b, _wgslsmith_div_vec4_u32(countOneBits(u_input.b), abs(u_input.b))) & min(vec4<u32>(1u, u_input.b.x, u_input.b.x, u_input.b.x), vec4<u32>(1u, _wgslsmith_sub_u32(3343u, u_input.b.x), 1u, u_input.b.x)));
    return 56501u;
}

fn func_1(arg_0: Struct_2, arg_1: f32, arg_2: f32, arg_3: vec4<f32>) -> bool {
    let var_0 = all(arg_0.a);
    var var_1 = Struct_4(arg_0.b.x, -arg_0.b);
    let var_2 = u_input.c;
    let var_3 = 16955u == ~func_2(Struct_4(-27531i, var_1.b));
    let var_4 = -9144i;
    return arg_3.x <= 1000f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(select(select(vec3<bool>(true, true, 1i > u_input.a), vec3<bool>(func_1(Struct_2(vec3<bool>(false, false, true), vec3<i32>(1i, -7820i, u_input.c), false), -198f, -610f, vec4<f32>(1000f, 320f, 1000f, -660f)), false, false), false), select(vec3<bool>(true, 4294967295u == u_input.b.x, any(vec3<bool>(true, false, false))), select(select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true)), vec3<bool>(false, false, true), u_input.b.x < 0u), select(select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), true), select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true)), vec3<bool>(true, true, true))), all(vec2<bool>(true, true))), vec3<u32>(_wgslsmith_clamp_u32(_wgslsmith_div_u32(_wgslsmith_mod_u32(1u, u_input.b.x), _wgslsmith_clamp_u32(u_input.b.x, 4294967295u, u_input.b.x)), _wgslsmith_clamp_u32(~20392u, u_input.b.x << (u_input.b.x % 32u), u_input.b.x), reverseBits(_wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 67053u)))), 4294967295u, countOneBits(_wgslsmith_add_u32(~u_input.b.x, 4294967295u))), all(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, false), !select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true), false))), -1000f, 180f);
    var var_1 = _wgslsmith_clamp_vec3_i32(-_wgslsmith_mult_vec3_i32(~_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, 2147483647i, u_input.a), vec3<i32>(-1i, 2147483647i, -16034i)), -(~vec3<i32>(u_input.c, 5460i, -1i))), -(~_wgslsmith_add_vec3_i32(vec3<i32>(-38633i, u_input.a, 21175i), vec3<i32>(0i, 21529i, 2147483647i))), vec3<i32>(-41407i, _wgslsmith_sub_i32(-u_input.a, u_input.a >> (0u % 32u)), _wgslsmith_mod_i32(min(52975i, u_input.c), max(u_input.c, -1i))) & vec3<i32>(_wgslsmith_sub_i32(reverseBits(-52030i), u_input.a), ~_wgslsmith_sub_i32(u_input.c, 17187i), abs(~u_input.c)));
    let var_2 = vec3<i32>(-1i) * -vec3<i32>(-2147483647i, 24593i, 0i << (var_0.b.x % 32u));
    var var_3 = 1u;
    var var_4 = var_0.b.x;
    let var_5 = true;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(sign(188f)), _wgslsmith_f_op_f32(var_0.e + var_0.e), 1387f), min(var_0.b.x, countOneBits(~30761u) >> (_wgslsmith_add_u32(_wgslsmith_mod_u32(1u, u_input.b.x), countOneBits(6527u)) % 32u)), countOneBits(u_input.b), _wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(~u_input.b, u_input.b), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, u_input.b.x), u_input.b.xz), 4294967295u, var_0.b.x << (9925u % 32u)), vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_mod_u32(1u, 4294967295u), u_input.b.x | 0u), u_input.b.x, 4294967295u, var_0.b.x), _wgslsmith_mod_vec4_u32(~u_input.b, vec4<u32>(~u_input.b.x, 1u << (u_input.b.x % 32u), 9248u, 18712u))), select(-(~firstLeadingBit(var_1.zx)), ~_wgslsmith_sub_vec2_i32(-var_1.zz, abs(var_1.xy)), var_0.a.yx));
}

