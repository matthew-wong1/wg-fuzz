struct Struct_1 {
    a: i32,
    b: f32,
    c: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<vec2<f32>, 21> = array<vec2<f32>, 21>(vec2<f32>(254f, -1000f), vec2<f32>(-1000f, 1419f), vec2<f32>(-2132f, 596f), vec2<f32>(-1000f, -265f), vec2<f32>(-1000f, -602f), vec2<f32>(-703f, 263f), vec2<f32>(1218f, 1027f), vec2<f32>(719f, -813f), vec2<f32>(-181f, 1352f), vec2<f32>(1849f, -214f), vec2<f32>(530f, 1974f), vec2<f32>(1285f, -355f), vec2<f32>(-614f, -947f), vec2<f32>(-418f, 1203f), vec2<f32>(-598f, 836f), vec2<f32>(895f, -3292f), vec2<f32>(1562f, 2003f), vec2<f32>(930f, -317f), vec2<f32>(-727f, 147f), vec2<f32>(-1356f, 350f), vec2<f32>(526f, -212f));

var<private> global2: array<vec3<u32>, 15>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_1(arg_0: vec4<i32>) -> i32 {
    var var_0 = ~u_input.a;
    global2 = array<vec3<u32>, 15>();
    global2 = array<vec3<u32>, 15>();
    var var_1 = vec4<bool>(u_input.a > (u_input.a | 48045u), arg_0.x <= 2147483647i, true, false);
    var_0 = ~select(_wgslsmith_div_u32(min(countOneBits(92818u), ~1u), 3716u), u_input.a, true);
    return arg_0.x;
}

fn func_2(arg_0: Struct_1, arg_1: vec4<bool>) -> vec3<bool> {
    global1 = array<vec2<f32>, 21>();
    let var_0 = _wgslsmith_clamp_u32(~(~1u), u_input.a, u_input.a) >= _wgslsmith_div_u32(4294967295u, ~7373u);
    var var_1 = arg_0;
    global2 = array<vec3<u32>, 15>();
    global2 = array<vec3<u32>, 15>();
    return !arg_1.xyy;
}

fn func_3(arg_0: u32, arg_1: vec3<bool>, arg_2: bool, arg_3: i32) -> i32 {
    var var_0 = arg_0;
    let var_1 = firstLeadingBit(arg_3);
    var var_2 = global1[_wgslsmith_index_u32(arg_0, 21u)];
    return -19277i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(-func_1(min(_wgslsmith_mod_vec4_i32(vec4<i32>(35518i, -2147483647i, 3014i, -2147483647i), vec4<i32>(40602i, -1i, 50224i, -11113i)), vec4<i32>(-55369i, 2147483647i, 3832i, -5314i))), 119f, -1i);
    var var_1 = vec2<bool>(u_input.a < _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(global2[_wgslsmith_index_u32(u_input.a, 15u)], global2[_wgslsmith_index_u32(47463u, 15u)]) & (u_input.a << (0u % 32u)), u_input.a), any(func_2(Struct_1(~var_0.c, -1000f, var_0.a), !select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true)))));
    var var_2 = Struct_1(_wgslsmith_sub_i32(func_3(~u_input.a, vec3<bool>(var_1.x, var_1.x, false), true, var_0.c) << (17628u % 32u), -countOneBits(var_0.a | var_0.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b) + _wgslsmith_f_op_f32(floor(1028f))), all(select(vec2<bool>(var_1.x, var_1.x), vec2<bool>(var_1.x, var_1.x), vec2<bool>(var_1.x, true))))) - var_0.b), var_0.a);
    let var_3 = Struct_1(~(-2147483647i), -766f, -42718i);
    var_2 = var_3;
    var var_4 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(var_2.b)))) - _wgslsmith_f_op_f32(sign(1000f)))));
    global2 = array<vec3<u32>, 15>();
    var_0 = Struct_1(-2147483647i, 1000f, -var_2.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 2696u), countOneBits(vec2<u32>(u_input.a, 0u)))), 21u)] + _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(global1[_wgslsmith_index_u32(4294967295u, 21u)])))))));
}

