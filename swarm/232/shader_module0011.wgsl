struct Struct_1 {
    a: u32,
    b: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(true, true, false, true);

var<private> global1: Struct_1 = Struct_1(60519u, false);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec2<f32>) -> u32 {
    let var_0 = min(_wgslsmith_sub_vec2_u32(select(arg_0.xy, ~(arg_0.yy ^ vec2<u32>(0u, global1.a)), global0.xy), arg_0.xz ^ _wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(arg_0.zz, vec2<u32>(global1.a, 18506u)), arg_0.yz | arg_0.zz)), arg_0.zy);
    var var_1 = vec3<bool>(!global0.x, !(any(select(vec4<bool>(global1.b, true, global0.x, global0.x), vec4<bool>(false, true, global1.b, global1.b), vec4<bool>(global1.b, global1.b, global0.x, true))) | true), global0.x == false);
    global1 = Struct_1(11253u, true);
    let var_2 = u_input.a.zz;
    var var_3 = Struct_1(max(~global1.a, reverseBits(var_0.x)), var_1.x);
    return var_0.x;
}

fn func_2(arg_0: u32) -> Struct_1 {
    let var_0 = reverseBits(29089i) ^ ~_wgslsmith_div_i32(u_input.a.x, 0i);
    let var_1 = -1050f;
    var var_2 = Struct_1(~global1.a | func_3(~vec3<u32>(arg_0, arg_0, arg_0) | ~vec3<u32>(arg_0, global1.a, arg_0), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(636f, 623f) - vec2<f32>(var_1, 778f)))), any(vec3<bool>(!global0.x | true, false, global0.x)));
    var var_3 = Struct_1(_wgslsmith_dot_vec4_u32(abs(firstLeadingBit(vec4<u32>(12095u, var_2.a, 18472u, global1.a)) ^ abs(vec4<u32>(39810u, var_2.a, arg_0, 33067u))), abs(_wgslsmith_add_vec4_u32(vec4<u32>(arg_0, 0u, 50963u, 77872u) & vec4<u32>(global1.a, global1.a, arg_0, global1.a), vec4<u32>(arg_0, global1.a, global1.a, 50340u)))), global1.b);
    var_2 = Struct_1(global1.a, false);
    return Struct_1(44092u, true);
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    return func_2(~max(0u, func_3(vec3<u32>(0u, arg_0.a, arg_0.a) & vec3<u32>(arg_0.a, 0u, arg_0.a), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-378f, -264f))))));
}

fn func_1(arg_0: vec3<bool>, arg_1: f32) -> u32 {
    global1 = Struct_1(15499u, arg_0.x);
    let var_0 = func_4(func_2(79514u));
    let var_1 = -29614i;
    global0 = vec4<bool>(true, !all(select(select(arg_0, vec3<bool>(false, global1.b, arg_0.x), vec3<bool>(global1.b, true, true)), arg_0, !global0.x)), true, any(!select(select(vec4<bool>(true, false, true, global0.x), vec4<bool>(false, false, true, arg_0.x), global0.x), !vec4<bool>(arg_0.x, true, false, false), vec4<bool>(true, false, global1.b, false))));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(arg_1, arg_1, arg_1, arg_1), vec4<f32>(-689f, 519f, -929f, 1430f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, 664f, 1585f, 1000f) - vec4<f32>(arg_1, 1000f, arg_1, arg_1)))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, 630f, arg_1, arg_1) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, arg_1, arg_1, -1045f))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, 721f, arg_1, -2253f)))));
    return ~global1.a;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_1(min(~6882u, func_1(global0.yxx, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-217f - -1134f) - _wgslsmith_f_op_f32(f32(-1f) * -823f)))), !(!all(vec4<bool>(global0.x, global0.x, global1.b, false)) || true));
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(1f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-882f, 1000f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -541f))))) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-524f)) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(-1318f)), -369f, global0.x))))));
    let var_1 = vec3<i32>(abs(-2147483647i), _wgslsmith_div_i32(~firstTrailingBit(_wgslsmith_mult_i32(-1i, -1i)), -(~(u_input.a.x ^ -38732i))), _wgslsmith_div_i32((u_input.a.x >> (global1.a % 32u)) << (global1.a % 32u), u_input.a.x) | _wgslsmith_div_i32(firstTrailingBit(max(u_input.a.x, 0i)), -10996i));
    global1 = Struct_1(~func_2(_wgslsmith_div_u32(global1.a, 87422u)).a, true);
    global0 = select(!(!select(!vec4<bool>(global0.x, global0.x, true, global0.x), !vec4<bool>(global0.x, global0.x, global1.b, true), true)), !select(select(select(vec4<bool>(true, true, global1.b, false), vec4<bool>(global0.x, global1.b, true, true), vec4<bool>(true, global0.x, true, false)), vec4<bool>(true, global0.x, global0.x, global1.b), !vec4<bool>(global1.b, global1.b, true, global1.b)), vec4<bool>(any(vec2<bool>(true, false)), global0.x, !global1.b, true), !global1.b != true), !(!select(true, global0.x & global0.x, global0.x)));
    var var_2 = func_2(~(~(~abs(42793u))));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0));
    var var_4 = var_2.a;
    var var_5 = 0u;
    let x = u_input.a;
    s_output = StorageBuffer(122f);
}

