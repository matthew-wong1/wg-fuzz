struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: vec3<i32>, arg_3: u32) -> bool {
    let var_0 = arg_0;
    var var_1 = abs(_wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(16881u, arg_1, 0u, 0u), vec4<u32>(arg_3, arg_1, 4294967295u, arg_3), vec4<u32>(arg_3, arg_1, arg_3, arg_1)) | _wgslsmith_add_vec4_u32(vec4<u32>(18406u, arg_3, arg_3, arg_3), vec4<u32>(arg_3, 1u, arg_1, 1u)), ~(vec4<u32>(6632u, 79938u, 0u, arg_3) << (vec4<u32>(arg_1, arg_1, arg_1, arg_1) % vec4<u32>(32u))))) ^ (abs(firstLeadingBit(vec4<u32>(arg_3, 4294967295u, 20531u, 1882u))) ^ (countOneBits(~vec4<u32>(arg_1, 36245u, arg_1, arg_1)) ^ vec4<u32>(57794u, arg_1, arg_1, arg_1 ^ arg_1)));
    var var_2 = select(-_wgslsmith_dot_vec3_i32(-countOneBits(arg_2), arg_2), ~(~_wgslsmith_dot_vec3_i32(vec3<i32>(arg_2.x, -64392i, u_input.a.x) | arg_2, min(arg_2, arg_2))), !var_0.a);
    var var_3 = 1u;
    let var_4 = 0u;
    return true;
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: bool) -> u32 {
    let var_0 = Struct_1(-335f >= _wgslsmith_f_op_f32(-arg_1));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-arg_1) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(281f, arg_1))));
    var var_2 = arg_0;
    var var_3 = Struct_1(any(select(!select(vec4<bool>(false, arg_2, var_1.a, arg_2), vec4<bool>(arg_0.a, var_2.a, arg_0.a, arg_2), vec4<bool>(var_2.a, true, arg_2, var_1.a)), select(vec4<bool>(true, false, true, arg_0.a), select(vec4<bool>(arg_2, false, var_1.a, var_2.a), vec4<bool>(true, var_1.a, true, var_2.a), vec4<bool>(var_2.a, var_2.a, arg_0.a, false)), var_1.a), (arg_2 || var_0.a) | var_1.a)));
    var_3 = Struct_1(func_3(var_1, 4294967295u, select(_wgslsmith_div_vec3_i32(-vec3<i32>(u_input.b.x, 0i, u_input.a.x), select(vec3<i32>(u_input.b.x, 0i, u_input.a.x), vec3<i32>(u_input.b.x, u_input.b.x, 3999i), false)), vec3<i32>(-21293i, ~(-2147483647i), u_input.a.x), var_3.a), ~firstLeadingBit(_wgslsmith_clamp_u32(0u, 39877u, 46103u))));
    return ~firstTrailingBit(0u);
}

fn func_1(arg_0: vec2<u32>) -> i32 {
    var var_0 = ~vec3<u32>(_wgslsmith_clamp_u32(22737u, max(func_2(Struct_1(true), 1417f, true), ~15607u), arg_0.x | arg_0.x), abs(func_2(Struct_1(false), _wgslsmith_f_op_f32(2178f - 1440f), any(vec3<bool>(true, false, true)))), _wgslsmith_mod_u32(arg_0.x, firstTrailingBit(35641u)));
    let var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-646f + 1655f) * _wgslsmith_div_f32(1000f, -1589f)))))));
    let var_2 = Struct_1(!(!(!func_3(Struct_1(true), 1u, vec3<i32>(u_input.a.x, -18053i, u_input.b.x), 4294967295u))));
    var_0 = ~firstTrailingBit(vec3<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 4294967295u, var_0.x), vec3<u32>(arg_0.x, arg_0.x, 0u)), ~_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, var_0.x, 4294967295u), vec3<u32>(22749u, var_0.x, 4294967295u)), 1u));
    let var_3 = u_input.b.x;
    return _wgslsmith_mod_i32(u_input.b.x, ~firstLeadingBit(_wgslsmith_clamp_i32(1i, u_input.a.x, -31092i)) ^ u_input.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 8424i;
    var_0 = _wgslsmith_div_i32(func_1(abs(vec2<u32>(_wgslsmith_clamp_u32(0u, 34734u, 0u), reverseBits(32446u)))), ~abs(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, -2147483647i, -31735i, -2147483647i), vec4<i32>(-2147483647i, u_input.b.x, u_input.a.x, -2147483647i)), vec4<i32>(-2147483647i, u_input.a.x, u_input.b.x, u_input.b.x))));
    var_0 = _wgslsmith_dot_vec4_i32(select(~vec4<i32>(-1118i, -20751i, u_input.b.x ^ u_input.b.x, 1i), vec4<i32>(1i, -1i, u_input.b.x, -u_input.a.x), all(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false)))), _wgslsmith_div_vec4_i32(max(_wgslsmith_clamp_vec4_i32(select(vec4<i32>(-2147483647i, u_input.a.x, u_input.b.x, 21469i), vec4<i32>(u_input.a.x, -9900i, -4439i, 58770i), true), _wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, 2147483647i, -5868i, u_input.b.x), vec4<i32>(u_input.a.x, u_input.b.x, 32550i, 0i)), vec4<i32>(u_input.b.x, -98519i, u_input.b.x, u_input.a.x) & vec4<i32>(-1i, 30631i, u_input.b.x, 1i)), countOneBits(~vec4<i32>(u_input.b.x, 15922i, u_input.a.x, u_input.a.x))), ~firstLeadingBit(min(vec4<i32>(-23274i, -2147483647i, u_input.b.x, u_input.a.x), vec4<i32>(u_input.a.x, u_input.b.x, u_input.b.x, 1i)))));
    let var_1 = func_2(Struct_1(func_3(Struct_1(true), 4294967295u, ~countOneBits(vec3<i32>(u_input.a.x, u_input.b.x, u_input.b.x)), ~(~4294967295u))), 1370f, !(!(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, u_input.a.x, u_input.b.x), vec3<i32>(u_input.b.x, -2147483647i, u_input.a.x)) != -336i)));
    var var_2 = _wgslsmith_sub_vec3_u32(vec3<u32>(countOneBits(var_1), var_1 >> (var_1 % 32u), ~firstLeadingBit(84226u)), firstLeadingBit(vec3<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(var_1, 4294967295u, var_1, 4294967295u), select(vec4<u32>(var_1, 58304u, var_1, var_1), vec4<u32>(22659u, 0u, 42412u, var_1), false)), var_1, _wgslsmith_clamp_u32(_wgslsmith_mod_u32(4294967295u, var_1), 4294967295u >> (var_1 % 32u), ~18013u))));
    let x = u_input.a;
    s_output = StorageBuffer((var_1 >> (select(var_2.x >> (4294967295u % 32u), var_2.x, true) % 32u)) << (4294967295u % 32u));
}

