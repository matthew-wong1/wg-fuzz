struct Struct_1 {
    a: vec2<f32>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: bool,
    b: vec4<i32>,
    c: i32,
    d: vec3<i32>,
    e: u32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_2,
    c: vec4<u32>,
}

struct Struct_4 {
    a: f32,
    b: vec4<bool>,
    c: Struct_1,
    d: vec3<bool>,
}

struct Struct_5 {
    a: vec4<i32>,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: Struct_5, arg_1: i32) -> vec3<bool> {
    var var_0 = vec4<i32>(arg_1, arg_1 ^ _wgslsmith_clamp_i32(390i, min(_wgslsmith_clamp_i32(0i, -1i, u_input.c), arg_0.a.x), abs(min(arg_0.a.x, -25030i))), u_input.c, -_wgslsmith_mod_i32(-arg_1, -abs(0i)));
    let var_1 = Struct_3(vec2<bool>(arg_0.b, true), Struct_2(any(vec2<bool>(true, arg_0.b & true)), -_wgslsmith_sub_vec4_i32(arg_0.a, arg_0.a << (u_input.d % vec4<u32>(32u))), 30842i, vec3<i32>(arg_1, ~min(arg_0.a.x, -16233i), arg_0.a.x), 1u), vec4<u32>(reverseBits(0u), ~44383u, countOneBits(~_wgslsmith_add_u32(19771u, u_input.a)), _wgslsmith_add_u32(~91521u, 72812u)));
    var_0 = _wgslsmith_sub_vec4_i32(arg_0.a, select(arg_0.a, arg_0.a, var_1.b.a) >> (select(vec4<u32>(_wgslsmith_dot_vec3_u32(var_1.c.zxw, u_input.d.zzy), firstLeadingBit(u_input.b.x), _wgslsmith_sub_u32(0u, u_input.d.x), var_1.c.x ^ 40690u), ~var_1.c ^ ~vec4<u32>(var_1.b.e, var_1.b.e, 0u, var_1.b.e), true) % vec4<u32>(32u)));
    var var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(1767f))));
    var var_3 = var_1;
    return select(vec3<bool>(!(var_3.a.x & (20472u >= u_input.b.x)), true, true), select(!(!vec3<bool>(var_3.b.a, arg_0.b, arg_0.b)), !(!vec3<bool>(var_1.b.a, var_1.b.a, arg_0.b)), !vec3<bool>(u_input.c == -1i, false, var_3.b.a)), -1i >= min(1i, arg_0.a.x));
}

fn func_2(arg_0: Struct_2) -> vec4<i32> {
    var var_0 = !vec3<bool>(!all(select(vec4<bool>(arg_0.a, arg_0.a, arg_0.a, arg_0.a), vec4<bool>(true, arg_0.a, arg_0.a, true), true)), true, true && all(vec2<bool>(false, arg_0.a)));
    var_0 = select(vec3<bool>(!(abs(u_input.d.x) < reverseBits(0u)), false, (all(vec4<bool>(arg_0.a, var_0.x, true, true)) | (true || var_0.x)) && any(vec2<bool>(var_0.x, var_0.x))), vec3<bool>(true | var_0.x, arg_0.a, true), select(vec3<bool>(true, true, true), vec3<bool>(arg_0.a, var_0.x, arg_0.a == true), any(select(vec2<bool>(true, var_0.x), select(var_0.xx, var_0.yy, var_0.yx), vec2<bool>(true, true)))));
    var_0 = select(!func_3(Struct_5(abs(arg_0.b), !arg_0.a), abs(abs(64421i))), !select(!select(vec3<bool>(var_0.x, true, true), vec3<bool>(true, var_0.x, var_0.x), var_0.x), !select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(true, true, false), false), false), true);
    var var_1 = vec4<bool>(true & var_0.x, false, func_3(Struct_5(abs(vec4<i32>(u_input.c, -1876i, arg_0.b.x, -1i)), true), -_wgslsmith_sub_i32(_wgslsmith_add_i32(u_input.c, arg_0.c), -2147483647i >> (u_input.d.x % 32u))).x, arg_0.a);
    var_1 = vec4<bool>(false, true, true | var_0.x, select(!select(all(vec4<bool>(var_1.x, false, var_0.x, true)), var_0.x, var_1.x), func_3(Struct_5(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c, 2147483647i, arg_0.c, 1i), arg_0.b), true), -_wgslsmith_mult_i32(arg_0.b.x, -1i)).x, func_3(Struct_5(vec4<i32>(arg_0.d.x, 2147483647i, 2147483647i, u_input.c), all(vec2<bool>(var_0.x, true))), u_input.c).x));
    return ~_wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(2147483647i >> (0u % 32u), _wgslsmith_sub_i32(2147483647i, arg_0.c), 2147483647i), reverseBits(min(-1160i, -2147483647i)), -_wgslsmith_sub_i32(u_input.c, u_input.c), arg_0.c), arg_0.b);
}

fn func_1(arg_0: vec2<i32>, arg_1: u32, arg_2: vec2<u32>) -> i32 {
    var var_0 = abs(-select(func_2(Struct_2(true, vec4<i32>(arg_0.x, arg_0.x, arg_0.x, -24640i), arg_0.x, vec3<i32>(arg_0.x, -2147483647i, -1i), 0u)), countOneBits(vec4<i32>(arg_0.x, -52862i, 54684i, 1i) & vec4<i32>(u_input.c, 0i, u_input.c, 0i)), vec4<bool>(-46175i < arg_0.x, any(vec3<bool>(true, true, false)), 45472u == u_input.b.x, any(vec4<bool>(false, false, false, true)))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(462f, _wgslsmith_f_op_f32(f32(-1f) * -206f), !all(vec2<bool>(false, false)))))) + 993f);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-204f)) * var_1) * 1565f));
    var_0 = ~(-abs(_wgslsmith_mod_vec4_i32(vec4<i32>(-1i, -2147483647i, u_input.c, u_input.c), vec4<i32>(arg_0.x, u_input.c, u_input.c, -23291i))) << (~u_input.b % vec4<u32>(32u)));
    return arg_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~9811u;
    let var_1 = vec2<i32>(reverseBits(-41112i), i32(-1i) * -2147483647i);
    let var_2 = Struct_5(reverseBits(vec4<i32>(func_1(countOneBits(vec2<i32>(-2147483647i, -1i)), 18180u, u_input.d.zy), 0i, _wgslsmith_mult_i32(var_1.x, 0i) << (0u % 32u), 7402i)), max(97208u, firstTrailingBit(u_input.d.x)) > ((4294967295u | u_input.a) << (abs(_wgslsmith_mod_u32(u_input.b.x, 14398u)) % 32u)));
    var_0 = u_input.b.x;
    let var_3 = !(!(!(!vec3<bool>(var_2.b, var_2.b, false))));
    let x = u_input.a;
    s_output = StorageBuffer(-2022i, -var_2.a.wwy);
}

