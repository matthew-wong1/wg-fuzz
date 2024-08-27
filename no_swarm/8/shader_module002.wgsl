struct Struct_1 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<u32>(9190u, 5180u, 56330u, 0u));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: i32, arg_3: vec2<bool>) -> bool {
    let var_0 = Struct_1(abs(arg_0.a));
    global0 = Struct_1(global0.a);
    var var_1 = u_input.b;
    let var_2 = abs(-2147483647i);
    var var_3 = arg_0.a.x;
    return arg_3.x;
}

fn func_3(arg_0: bool, arg_1: vec3<bool>, arg_2: u32) -> vec2<f32> {
    var var_0 = Struct_1(firstLeadingBit(global0.a));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1131f, 1090f, 1037f, -2049f)), vec4<f32>(-1000f, 1000f, -453f, 1353f), !vec4<bool>(arg_0, true, true, true))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-599f, 911f, 622f, 298f))))) + _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -2062f), _wgslsmith_f_op_f32(select(-1003f, 1087f, false)), any(vec4<bool>(arg_1.x, arg_0, arg_1.x, arg_1.x)))), 236f, 1f, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(487f, -1778f), 1614f))))));
    var_0 = Struct_1(_wgslsmith_div_vec4_u32(global0.a, global0.a));
    global0 = Struct_1(~(~(~vec4<u32>(4294967295u, arg_2, 1u, u_input.a))));
    var_0 = Struct_1(vec4<u32>(_wgslsmith_dot_vec2_u32(var_0.a.wz, ~(~vec2<u32>(arg_2, 91020u))), ~arg_2 >> (abs(~19034u) % 32u), u_input.a, _wgslsmith_dot_vec3_u32(~vec3<u32>(arg_2, arg_2, 34438u), vec3<u32>(10102u, global0.a.x, _wgslsmith_sub_u32(7754u, arg_2)))));
    return _wgslsmith_div_vec2_f32(var_1.wx, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(717f, var_1.x)), -1095f)) + var_1.zw));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: u32, arg_3: vec2<f32>) -> vec4<u32> {
    var var_0 = vec2<f32>(arg_3.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_3.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) + _wgslsmith_f_op_f32(arg_0.x - arg_3.x))))));
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(arg_3.x)), var_0.x, -1466f));
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(arg_0.x * arg_0.x), arg_3.x))) - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(arg_0.zw * arg_3), _wgslsmith_f_op_vec2_f32(func_3(false, vec3<bool>(true, true, true), arg_2)))) + _wgslsmith_div_vec2_f32(vec2<f32>(-149f, var_0.x), _wgslsmith_f_op_vec2_f32(var_1.zz + vec2<f32>(var_1.x, -267f)))))));
    var var_3 = arg_1;
    let var_4 = _wgslsmith_f_op_vec4_f32(round(arg_0));
    return arg_1.a;
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_1(~func_4(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(949f, 1013f, 304f, -830f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-492f, 493f, 2339f, -779f)))), Struct_1(global0.a), u_input.a, _wgslsmith_f_op_vec2_f32(func_3(func_2(Struct_1(global0.a), vec3<i32>(u_input.b, 2147483647i, u_input.b), -8359i, vec2<bool>(true, false)), vec3<bool>(false, false, true), u_input.a))));
    var_0 = Struct_1(var_0.a);
    global0 = Struct_1(select(vec4<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(88242u, 4294967295u, var_0.a.x, 35545u), var_0.a | vec4<u32>(0u, 64262u, u_input.a, u_input.a)), ~global0.a.x, 0u, _wgslsmith_clamp_u32(u_input.a & var_0.a.x, 4294967295u, 1u)), vec4<u32>(u_input.a >> (0u % 32u), _wgslsmith_mod_u32(1u, 1281u | u_input.a), ~u_input.a, ~4294967295u), any(vec4<bool>(true, true, true, true))));
    global0 = Struct_1(var_0.a);
    global0 = Struct_1(_wgslsmith_div_vec4_u32(abs(_wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(var_0.a, vec4<u32>(59696u, var_0.a.x, var_0.a.x, 4294967295u)), ~var_0.a)), _wgslsmith_mult_vec4_u32(global0.a, firstLeadingBit(var_0.a))));
    return Struct_1(~min(_wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(var_0.a.x, var_0.a.x, 2017u, global0.a.x), vec4<u32>(29749u, u_input.a, u_input.a, global0.a.x)), var_0.a), vec4<u32>(4294967295u, 1u, max(0u, global0.a.x), 1u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = any(vec4<bool>(global0.a.x != u_input.a, all(vec2<bool>(true, true)), false, true));
    let var_1 = func_1();
    var var_2 = 25429u;
    var var_3 = _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-2117f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(168f)), -1000f), 1f, _wgslsmith_f_op_f32(-1455f - 1f))));
    let var_4 = Struct_1(var_1.a);
    var_2 = var_4.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(_wgslsmith_mod_u32(global0.a.x, 62424u), 0u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(282f - var_3.x), 179f, _wgslsmith_f_op_f32(min(var_3.x, -1000f)), _wgslsmith_f_op_f32(-var_3.x)) + vec4<f32>(_wgslsmith_f_op_f32(-var_3.x), _wgslsmith_f_op_f32(floor(var_3.x)), var_3.x, var_3.x))));
}

