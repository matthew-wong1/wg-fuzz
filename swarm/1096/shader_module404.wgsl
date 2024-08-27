struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec4<i32>,
    b: i32,
    c: vec3<u32>,
    d: vec3<u32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec2<f32>,
    c: vec4<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<bool>,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec3<i32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: vec3<u32> = vec3<u32>(4294967295u, 48241u, 1548u);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: Struct_2, arg_1: vec4<u32>) -> bool {
    var var_0 = 0u;
    var var_1 = Struct_2(arg_0.a, 6806i, arg_1.zxy, ~(~u_input.d));
    let var_2 = u_input.b.x;
    var_0 = ~0u;
    var var_3 = Struct_4(Struct_1(any(vec4<bool>(true, true, true, true)) == true), vec4<bool>(true || all(vec4<bool>(true, true, true, true)), all(vec2<bool>(true, true)), any(select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false), true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true))), true | any(vec4<bool>(true, true, true, true))));
    return all(var_3.b.wxz);
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_3, arg_2: i32) -> u32 {
    var var_0 = _wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(~(~vec4<i32>(34327i, 47039i, arg_2, arg_0.x)), (vec4<i32>(arg_2, 2147483647i, u_input.c, arg_2) ^ vec4<i32>(2147483647i, -1205i, 20267i, -15901i)) >> (vec4<u32>(4294967295u, global1.x, arg_1.a.x, 4294967295u) % vec4<u32>(32u))) << (countOneBits(arg_1.a) % vec4<u32>(32u)), firstLeadingBit(countOneBits(vec4<i32>(7259i, 15985i, 2147483647i, -1i)) | (vec4<i32>(-1i) * -vec4<i32>(-16578i, 2147483647i, u_input.b.x, -554i))), ~_wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-70572i, -2147483647i, arg_0.x, -47023i), -vec4<i32>(u_input.c, arg_0.x, arg_0.x, 0i)), vec4<i32>(-29079i, 2147483647i, select(0i, 1i, true), 2147483647i)));
    global0 = ~(~reverseBits(global1.x));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(arg_1.c.xzz, _wgslsmith_f_op_vec3_f32(exp2(arg_1.c.zwz))))) + _wgslsmith_f_op_vec3_f32(-arg_1.c.zww)));
    var var_2 = arg_1.c.yz;
    let var_3 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(721f - 428f) + -145f) * _wgslsmith_f_op_f32(-var_1.x)))));
    return ~firstTrailingBit(20182u);
}

fn func_1(arg_0: f32, arg_1: i32, arg_2: vec4<i32>) -> Struct_5 {
    global1 = vec3<u32>(_wgslsmith_div_u32(~(~global1.x) << (0u % 32u), select(~(~0u), 0u, func_2(Struct_2(arg_2, u_input.b.x, vec3<u32>(global1.x, global1.x, 0u), vec3<u32>(u_input.a.x, global1.x, 4294967295u)), ~vec4<u32>(30731u, 0u, 0u, u_input.a.x)))), _wgslsmith_sub_u32(~u_input.a.x, ~_wgslsmith_dot_vec3_u32(vec3<u32>(83237u, 1u, u_input.d.x), u_input.d) & _wgslsmith_add_u32(abs(33088u), global1.x)), global1.x);
    let var_0 = _wgslsmith_f_op_f32(select(arg_0, _wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(f32(-1f) * -779f)), false));
    var var_1 = Struct_3(_wgslsmith_div_vec4_u32(abs(select(max(vec4<u32>(global1.x, 0u, global1.x, u_input.d.x), vec4<u32>(global1.x, 29784u, 49004u, u_input.a.x)), abs(vec4<u32>(global1.x, global1.x, 0u, 4294967295u)), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true)))), ~firstTrailingBit(vec4<u32>(31261u, 5609u, 1u, u_input.a.x)) & vec4<u32>(2167u, global1.x, func_3(arg_2.zxy, Struct_3(vec4<u32>(98297u, global1.x, 1u, global1.x), vec2<f32>(394f, 964f), vec4<f32>(1710f, 657f, 363f, var_0)), u_input.b.x), _wgslsmith_mod_u32(1u, global1.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(233f)), -464f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(1912f + 293f)) * _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(vec2<f32>(arg_0, 564f), vec2<f32>(var_0, var_0)))))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(2272f, -1262f, _wgslsmith_f_op_f32(-1146f * -385f), _wgslsmith_div_f32(1005f, arg_0)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-782f, var_0, -1133f, 1151f))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0, arg_0, 459f, -724f)))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-878f - -295f), arg_0, _wgslsmith_f_op_f32(trunc(-274f)), -236f)))));
    let var_2 = Struct_4(Struct_1(all(vec2<bool>(true, true))), vec4<bool>(true, true, !func_2(Struct_2(vec4<i32>(arg_1, u_input.c, -1i, 30915i), -28007i, vec3<u32>(u_input.d.x, 1u, 4294967295u), u_input.d), vec4<u32>(u_input.a.x, u_input.d.x, 37833u, 24997u)) == any(vec4<bool>(true, true, true, false)), select(-arg_2.x >= firstLeadingBit(arg_2.x), any(vec4<bool>(true, false, true, true)) || true, all(vec3<bool>(false, true, false)))));
    let var_3 = var_2.a.a;
    return Struct_5(Struct_3(var_1.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_0, 1634f))) - var_1.b), var_1.c));
}

fn func_4(arg_0: Struct_5, arg_1: Struct_4) -> i32 {
    global1 = u_input.d;
    global0 = arg_0.a.a.x;
    var var_0 = any(vec2<bool>(arg_1.a.a, arg_1.b.x));
    global0 = arg_0.a.a.x;
    let var_1 = u_input.b.x;
    return -(var_1 ^ select(u_input.c, -21714i, !arg_1.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = min(vec3<u32>(global1.x, select(~(~global1.x), 4701u, false), _wgslsmith_add_u32(~(~1u), 27737u)), ~(_wgslsmith_mod_vec3_u32(reverseBits(u_input.d), ~u_input.d) ^ vec3<u32>(~u_input.a.x, 9911u, u_input.a.x)));
    global0 = 32714u;
    let x = u_input.a;
    s_output = StorageBuffer(973f, -(i32(-1i) * -3124i), vec3<i32>(u_input.c, -6764i, func_4(func_1(_wgslsmith_div_f32(979f, 1983f), 21992i, vec4<i32>(u_input.b.x, -2147483647i, u_input.b.x, 62155i)), Struct_4(Struct_1(true), vec4<bool>(true, false, true, false)))), ~u_input.b);
}

