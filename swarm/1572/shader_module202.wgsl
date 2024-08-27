struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec4<f32>,
    b: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 15> = array<vec3<u32>, 15>(vec3<u32>(4294967295u, 41454u, 0u), vec3<u32>(1u, 6721u, 7206u), vec3<u32>(7881u, 0u, 0u), vec3<u32>(22669u, 17722u, 27786u), vec3<u32>(4294967295u, 44614u, 55864u), vec3<u32>(0u, 68747u, 86979u), vec3<u32>(0u, 82287u, 5818u), vec3<u32>(0u, 54343u, 1u), vec3<u32>(1u, 1u, 4294967295u), vec3<u32>(10352u, 0u, 4294967295u), vec3<u32>(26648u, 4294967295u, 4294967295u), vec3<u32>(4294967295u, 50488u, 4294967295u), vec3<u32>(139888u, 44696u, 1u), vec3<u32>(5665u, 4294967295u, 0u), vec3<u32>(4294967295u, 52353u, 0u));

var<private> global1: f32 = -640f;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec3<f32>) -> vec4<bool> {
    var var_0 = Struct_1(all(vec4<bool>(true, true, true, true)));
    var var_1 = -23482i;
    var var_2 = u_input.a;
    let var_3 = _wgslsmith_f_op_f32(arg_0.x * arg_0.x);
    let var_4 = (1u << (~firstTrailingBit(firstTrailingBit(34297u)) % 32u)) & 521u;
    return !select(!vec4<bool>(any(vec3<bool>(var_0.a, false, true)), var_0.a, var_0.a, false), !(!vec4<bool>(true, var_0.a, false, var_0.a)), var_0.a && (_wgslsmith_f_op_f32(arg_0.x + 306f) == -294f));
}

fn func_2(arg_0: Struct_2, arg_1: vec4<u32>) -> i32 {
    let var_0 = Struct_2(arg_0.a, u_input.a);
    let var_1 = var_0;
    global0 = array<vec3<u32>, 15>();
    global0 = array<vec3<u32>, 15>();
    let var_2 = Struct_1(any(select(func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1905f, var_0.a.x, var_0.a.x))), vec4<bool>(true, true, true, true), func_3(vec3<f32>(var_0.a.x, -382f, arg_0.a.x)))));
    return firstLeadingBit(2309i);
}

fn func_1(arg_0: bool, arg_1: Struct_2, arg_2: vec4<f32>) -> vec3<bool> {
    var var_0 = false == any(!(!vec2<bool>(false, arg_0)));
    global1 = arg_1.a.x;
    var var_1 = countOneBits(_wgslsmith_mod_vec4_i32(vec4<i32>(16923i, _wgslsmith_dot_vec3_i32(-vec3<i32>(arg_1.b, u_input.a, 2147483647i), vec3<i32>(u_input.a, 0i, -2147483647i)), arg_1.b & _wgslsmith_div_i32(-2147483647i, arg_1.b), ~func_2(arg_1, vec4<u32>(25184u, 1u, 3705u, 19301u))), -select(vec4<i32>(arg_1.b, 1i, 40267i, arg_1.b) | vec4<i32>(-1i, u_input.a, 43277i, 41919i), min(vec4<i32>(arg_1.b, arg_1.b, -10259i, 9052i), vec4<i32>(-1i, 25049i, u_input.a, arg_1.b)), func_3(vec3<f32>(356f, 2218f, -829f)))));
    var_0 = false;
    let var_2 = 15637i;
    return vec3<bool>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(arg_1.a.x)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), false)) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(-703f))))), any(select(vec4<bool>(false && arg_0, arg_0 || arg_0, true, func_3(vec3<f32>(1079f, arg_2.x, -779f)).x), vec4<bool>(arg_0, arg_0, true, true), true)), false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = (abs(u_input.a) != 1i) | all(vec2<bool>(true, true));
    var var_1 = vec3<bool>(true, ~(i32(-1i) * -u_input.a) < _wgslsmith_mod_i32(_wgslsmith_add_i32(u_input.a, 19408i) & 7519i, ~(0i | u_input.a)), true);
    var_0 = all(select(!(!func_1(var_1.x, Struct_2(vec4<f32>(1635f, -706f, -1922f, 1000f), u_input.a), vec4<f32>(865f, -541f, -1333f, -546f))), !vec3<bool>(false, any(vec3<bool>(true, true, false)), var_1.x), !select(var_1.x | var_1.x, false, false)));
    global0 = array<vec3<u32>, 15>();
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_mult_i32(0i, select(0i, u_input.a, var_1.x)) >> (_wgslsmith_mod_u32(4294967295u, ~(~4294967295u)) % 32u));
}

