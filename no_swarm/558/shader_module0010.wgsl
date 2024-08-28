struct Struct_1 {
    a: bool,
    b: i32,
    c: vec2<u32>,
    d: vec2<bool>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1() -> Struct_2 {
    return Struct_2(u_input.b);
}

fn func_3(arg_0: bool) -> vec2<bool> {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(1277f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-980f)) - _wgslsmith_f_op_f32(sign(-300f))))), 1000f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1f * -131f))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(210f, 1277f)))))));
    var var_1 = Struct_1(true, u_input.b.x, vec2<u32>(3621u, u_input.a.x), select(select(!vec2<bool>(arg_0, true), select(!vec2<bool>(false, arg_0), vec2<bool>(false, arg_0), all(vec2<bool>(true, arg_0))), false), select(vec2<bool>(false, arg_0), vec2<bool>(true, true), !arg_0), !vec2<bool>(any(vec3<bool>(false, arg_0, false)), !arg_0)), vec2<bool>(_wgslsmith_div_i32(_wgslsmith_div_i32(2147483647i, u_input.b.x), -1i) == u_input.b.x, all(!vec4<bool>(arg_0, arg_0, false, arg_0))));
    var var_2 = Struct_1(all(!vec4<bool>(arg_0, true, !arg_0, true)), 1i, _wgslsmith_sub_vec2_u32(~max(vec2<u32>(102480u, var_1.c.x), _wgslsmith_mod_vec2_u32(u_input.a, vec2<u32>(u_input.a.x, 4294967295u))), (select(vec2<u32>(u_input.a.x, 1290u), var_1.c, var_1.d) >> (_wgslsmith_sub_vec2_u32(u_input.a, u_input.a) % vec2<u32>(32u))) << (var_1.c % vec2<u32>(32u))), !select(!(!var_1.d), var_1.e, !(!var_1.d)), var_1.e);
    let var_3 = abs(abs(var_1.c.x & u_input.a.x) | 1u);
    var_2 = Struct_1(arg_0, -110987i, reverseBits(~vec2<u32>(u_input.a.x, 35360u) & reverseBits(~vec2<u32>(var_1.c.x, var_3))), vec2<bool>(var_2.d.x, arg_0), vec2<bool>(false, true));
    return select(!select(!var_2.d, var_1.d, true), !var_2.d, true);
}

fn func_2(arg_0: vec4<bool>, arg_1: vec2<bool>, arg_2: Struct_2) -> StorageBuffer {
    let var_0 = u_input.a;
    var var_1 = Struct_1(arg_1.x, ~_wgslsmith_mult_i32(24586i, u_input.b.x), ~u_input.a, func_3(true), !arg_1);
    var_1 = Struct_1(var_1.a, -func_1().a.x, ~vec2<u32>(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, 4294967295u, u_input.a.x, 4294967295u), vec4<u32>(var_0.x, 0u, var_1.c.x, 0u)), ~u_input.a.x), firstTrailingBit(u_input.a.x)), vec2<bool>(false, true), vec2<bool>(!(!(false | var_1.e.x)), true || (arg_0.x || any(vec3<bool>(var_1.e.x, arg_0.x, arg_0.x)))));
    var var_2 = arg_2;
    let var_3 = _wgslsmith_add_u32(1u, max(_wgslsmith_dot_vec2_u32(vec2<u32>(38598u, 68779u), vec2<u32>(4294967295u, var_1.c.x)) >> (10271u % 32u), 53853u) << (~var_0.x % 32u));
    return StorageBuffer(_wgslsmith_sub_i32(countOneBits(var_1.b), ~(~_wgslsmith_mod_i32(23402i, -2147483647i))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1294f, 1148f) - vec2<f32>(308f, 1768f)), _wgslsmith_div_vec2_f32(vec2<f32>(-857f, -470f), vec2<f32>(-1736f, -519f)), !vec2<bool>(arg_0.x, arg_0.x))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(-222f, -974f) - vec2<f32>(-1349f, 198f)), vec2<f32>(1f, 1f)))))), var_1.c.x, _wgslsmith_dot_vec2_u32(var_0, var_1.c));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_2(vec4<bool>(false, false, any(vec2<bool>(true, true)), true), vec2<bool>(true, true), func_1());
}

