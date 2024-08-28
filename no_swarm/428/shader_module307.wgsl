struct Struct_1 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: array<i32, 10>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: Struct_1) -> vec2<i32> {
    var var_0 = arg_0;
    global1 = array<i32, 10>();
    return select(vec2<i32>(reverseBits(_wgslsmith_dot_vec3_i32(-var_0.a, vec3<i32>(-20291i, arg_0.a.x, -47208i))), ~(~(~(-51859i)))), ~u_input.a, true);
}

fn func_2(arg_0: vec3<f32>, arg_1: vec2<f32>) -> Struct_1 {
    let var_0 = -select(select(vec2<i32>(-1i, 15809i), func_3(Struct_1(vec3<i32>(global1[_wgslsmith_index_u32(u_input.b, 10u)], -1i, 0i))), vec2<bool>(true, true)), u_input.a, true);
    global0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(302f))))), arg_0.x, -1666f));
    global1 = array<i32, 10>();
    global1 = array<i32, 10>();
    global0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, 1000f, 1000f) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0))) + arg_0), arg_0, select(vec3<bool>(true, true, true), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), !any(vec3<bool>(true, false, false)))));
    return Struct_1(vec3<i32>(min(select(0i, ~u_input.a.x, true), -22983i), -1i, -global1[_wgslsmith_index_u32(u_input.b, 10u)]));
}

fn func_4(arg_0: vec2<i32>, arg_1: i32, arg_2: bool, arg_3: Struct_1) -> Struct_1 {
    global1 = array<i32, 10>();
    global1 = array<i32, 10>();
    global1 = array<i32, 10>();
    let var_0 = u_input.a;
    var var_1 = vec4<i32>(66925i, arg_0.x, arg_3.a.x, u_input.a.x);
    return arg_3;
}

fn func_1(arg_0: f32, arg_1: i32) -> vec3<i32> {
    global0 = vec3<f32>(arg_0, _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0.x))))), -1060f);
    var var_0 = vec4<u32>(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(u_input.b, 14028u, u_input.b, 1u)), ~_wgslsmith_div_vec4_u32(~vec4<u32>(1u, u_input.b, 4294967295u, u_input.b), reverseBits(vec4<u32>(4324u, 0u, 0u, 1u)))), u_input.b >> (0u % 32u), 0u, u_input.b);
    var var_1 = func_4(vec2<i32>(_wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(-1i) * -u_input.a), (-arg_1 ^ 2147483647i) & select(-1i, 1i, false)), arg_1, !any(vec3<bool>(true, false, true)), func_2(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1095f, _wgslsmith_f_op_f32(f32(-1f) * -421f), global0.x))), vec2<f32>(arg_0, global0.x)));
    global0 = vec3<f32>(arg_0, _wgslsmith_f_op_f32(sign(global0.x)), _wgslsmith_f_op_f32(min(arg_0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-124f)), arg_0))));
    return _wgslsmith_mult_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(~firstLeadingBit(9642u), 10u)], -14452i, -_wgslsmith_sub_i32(1i, 1i)) | var_1.a, vec3<i32>(arg_1, 48383i, _wgslsmith_clamp_i32(-1i, 1i, var_1.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -(~vec4<i32>(-(u_input.a.x | global1[_wgslsmith_index_u32(u_input.b, 10u)]), global1[_wgslsmith_index_u32(~(~u_input.b), 10u)], 51901i, _wgslsmith_mult_i32(u_input.c, countOneBits(-1i))));
    var var_1 = u_input.a;
    var var_2 = Struct_1(func_1(_wgslsmith_div_f32(global0.x, global0.x), 0i));
    let var_3 = ~reverseBits(vec3<u32>(~(~61573u), u_input.b ^ u_input.b, _wgslsmith_mult_u32(1u, u_input.b)));
    let var_4 = Struct_1(-select(-var_0.zyx, vec3<i32>(-1i, -2147483647i, 1i) ^ vec3<i32>(u_input.a.x, global1[_wgslsmith_index_u32(23875u, 10u)], var_0.x), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), true)) & firstTrailingBit(-func_4(var_2.a.xz, var_1.x, false, Struct_1(var_0.xzy)).a));
    var_1 = ~func_4(_wgslsmith_mod_vec2_i32(abs(vec2<i32>(1i, -2147483647i) & u_input.a), firstLeadingBit(u_input.a)), ~countOneBits(0i), !all(vec2<bool>(false, true)), var_4).a.zz;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(-129f)), global0.x, !(!all(vec4<bool>(true, true, false, false))))), (abs(select(vec4<u32>(9973u, 1u, 1u, u_input.b), vec4<u32>(7127u, var_3.x, var_3.x, 1u), vec4<bool>(false, true, false, false))) | firstTrailingBit(vec4<u32>(u_input.b, var_3.x, u_input.b, 4294967295u) << (vec4<u32>(var_3.x, 31480u, var_3.x, 4294967295u) % vec4<u32>(32u)))) << (vec4<u32>(var_3.x, 27693u, (46800u | u_input.b) << (_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 0u, var_3.x, 66201u), vec4<u32>(18513u, 83943u, u_input.b, var_3.x)) % 32u), 1u) % vec4<u32>(32u)), i32(-1i) * -((var_2.a.x | -1i) ^ (i32(-1i) * -20823i)));
}

