struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: bool,
    d: vec3<bool>,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 11>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> i32 {
    let var_0 = any(select(!select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(u_input.a, 11u)], -1830f) * -1512f) == _wgslsmith_f_op_f32(ceil(-1378f))));
    let var_1 = Struct_1(!select(vec2<bool>(true, true), select(vec2<bool>(false, false), select(vec2<bool>(var_0, var_0), vec2<bool>(var_0, true), true), true), (var_0 && true) && true), -1i, true || any(vec3<bool>(!var_0, true, !var_0)), !vec3<bool>(any(vec4<bool>(var_0, false, true, false)), all(vec3<bool>(true, true, true)), !(!var_0)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(global0[_wgslsmith_index_u32(~(~27326u), 11u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-610f * global0[_wgslsmith_index_u32(u_input.c, 11u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(27161u, 11u)] + 664f) - global0[_wgslsmith_index_u32(1u, 11u)]), global0[_wgslsmith_index_u32(1u, 11u)]), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1021f, global0[_wgslsmith_index_u32(u_input.b, 11u)], 255f, global0[_wgslsmith_index_u32(0u, 11u)]))))));
    let var_2 = select(vec4<bool>(true, true, true, any(select(!vec4<bool>(var_1.d.x, var_0, true, var_1.d.x), select(vec4<bool>(false, var_1.d.x, var_1.c, var_0), vec4<bool>(true, true, false, var_0), vec4<bool>(var_1.a.x, true, var_1.a.x, false)), true))), !vec4<bool>(true, var_1.c, all(select(var_1.d, var_1.d, vec3<bool>(var_0, var_1.a.x, var_0))), var_0), select(vec4<bool>(var_1.d.x, any(var_1.d), var_0, any(select(vec4<bool>(true, var_1.d.x, var_0, var_1.d.x), vec4<bool>(var_1.d.x, var_1.a.x, false, true), false))), vec4<bool>(any(!vec4<bool>(var_1.a.x, var_1.d.x, var_1.a.x, true)), _wgslsmith_f_op_f32(1535f + 200f) <= _wgslsmith_f_op_f32(round(1277f)), all(vec2<bool>(var_1.c, false)), !select(var_1.c, true, var_0)), select(vec4<bool>(true, var_0, var_1.d.x, false), !select(vec4<bool>(var_0, var_1.a.x, false, false), vec4<bool>(var_1.c, var_1.c, true, var_0), var_1.c), vec4<bool>(true, true, true, all(var_1.a)))));
    let var_3 = Struct_1(!select(vec2<bool>(true, true), select(var_1.d.xy, vec2<bool>(var_0, true), !var_0), !(!var_1.d.yx)), select(u_input.e.x, var_1.b, var_0), true, var_1.d, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(u_input.c, 11u)], -1044f, var_1.e.x, 1664f) + var_1.e)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(var_1.e, vec4<f32>(var_1.e.x, 655f, -287f, global0[_wgslsmith_index_u32(u_input.a, 11u)]), var_1.d.x)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, global0[_wgslsmith_index_u32(u_input.a, 11u)], 161f, -1036f)))))));
    let var_4 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.e.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.e.x) * _wgslsmith_f_op_f32(abs(1f))))));
    return ~firstTrailingBit(~abs(2147483647i));
}

fn func_2() -> vec2<bool> {
    let var_0 = Struct_1(vec2<bool>(all(vec4<bool>(true, true, all(vec4<bool>(true, false, true, false)), all(vec4<bool>(true, false, false, false)))), true), u_input.e.x, u_input.e.x > u_input.d, vec3<bool>(all(vec2<bool>(all(vec4<bool>(false, true, false, false)), false)), true, !(func_3() > u_input.d)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0[_wgslsmith_index_u32(33765u, 11u)], global0[_wgslsmith_index_u32(u_input.a, 11u)], global0[_wgslsmith_index_u32(u_input.a, 11u)], -285f), vec4<f32>(-1373f, global0[_wgslsmith_index_u32(1u, 11u)], global0[_wgslsmith_index_u32(0u, 11u)], global0[_wgslsmith_index_u32(u_input.c, 11u)]))) + vec4<f32>(-1027f, -696f, -843f, 1238f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-897f, 415f, 1328f, 1000f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 11u)], 1863f, global0[_wgslsmith_index_u32(u_input.b, 11u)], global0[_wgslsmith_index_u32(u_input.b, 11u)]) + vec4<f32>(465f, 1154f, -1419f, 1268f)))))));
    var var_1 = var_0.e.x;
    global0 = array<f32, 11>();
    let var_2 = _wgslsmith_mod_vec2_i32(u_input.e.yz, -(-firstLeadingBit(vec2<i32>(u_input.e.x, u_input.e.x)) | u_input.e.wz));
    global0 = array<f32, 11>();
    return vec2<bool>(true, true);
}

fn func_1(arg_0: vec3<i32>, arg_1: u32, arg_2: Struct_1, arg_3: vec4<f32>) -> vec2<bool> {
    var var_0 = ~abs(~_wgslsmith_add_u32(~u_input.a, arg_1));
    var var_1 = arg_3;
    var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-352f, global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~u_input.a << (11213u % 32u), 0u), 11u)], -432f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -724f) * arg_3.x)));
    let var_2 = _wgslsmith_mult_i32(arg_2.b, arg_2.b);
    var var_3 = arg_2;
    return select(func_2(), arg_2.a, arg_2.d.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-537f + -294f), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(-684f)), _wgslsmith_div_f32(global0[_wgslsmith_index_u32(u_input.c, 11u)], 1000f))), 1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.b, 11u)] + -140f))))));
    global0 = array<f32, 11>();
    global0 = array<f32, 11>();
    global0 = array<f32, 11>();
    var var_1 = Struct_1(select(select(!select(vec2<bool>(false, false), vec2<bool>(true, true), true), !func_1(u_input.e.wxz, u_input.c, Struct_1(vec2<bool>(false, false), u_input.e.x, true, vec3<bool>(false, true, true), vec4<f32>(global0[_wgslsmith_index_u32(u_input.b, 11u)], -1000f, 872f, var_0)), vec4<f32>(var_0, 879f, 734f, global0[_wgslsmith_index_u32(41344u, 11u)])), !func_2()), !select(vec2<bool>(true, false), vec2<bool>(true, true), any(vec4<bool>(true, false, true, true))), func_2()), u_input.d, !(!func_2().x), vec3<bool>(true, true, true), vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -810f), _wgslsmith_f_op_f32(var_0 - _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a, 11u)])), any(vec2<bool>(false, false)))), global0[_wgslsmith_index_u32(~(~abs(4294967295u)), 11u)], -608f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.c, 11u)])))))));
    let x = u_input.a;
    s_output = StorageBuffer(select(~(~(~vec4<u32>(u_input.a, u_input.b, 1u, 0u))), abs(vec4<u32>(u_input.c, u_input.c, u_input.a, 0u) & ~vec4<u32>(u_input.c, 3532u, 1u, u_input.a)), ((i32(-1i) * -10012i) ^ u_input.e.x) > ((0i << (1u % 32u)) >> (1u % 32u))));
}

