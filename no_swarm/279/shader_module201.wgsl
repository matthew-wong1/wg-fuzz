struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<f32>,
    d: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: bool, arg_1: u32) -> u32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_div_f32(-443f, _wgslsmith_div_f32(-1001f, 815f)), _wgslsmith_div_f32(-601f, 904f), _wgslsmith_div_f32(-816f, _wgslsmith_f_op_f32(-362f + 1079f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(vec3<f32>(-159f, 932f, -1408f), vec3<f32>(-1325f, -350f, -638f)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(2024f, -1217f, -459f)))))), !select(select(vec3<bool>(true, arg_0, true), vec3<bool>(false, arg_0, arg_0), false), !vec3<bool>(arg_0, arg_0, arg_0), arg_0))), _wgslsmith_f_op_f32(f32(-1f) * -2127f), ~_wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.b, u_input.b), vec2<i32>(u_input.b, u_input.b)) >> (9710u % 32u));
    let var_1 = var_0.c;
    var var_2 = Struct_1(var_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.b))), _wgslsmith_f_op_f32(-var_0.b))) - 1220f), ~(~countOneBits(u_input.b)));
    var var_3 = Struct_2(var_0, var_0, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(937f, var_0.a.x) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-373f, -1000f))))), !(!(_wgslsmith_mult_i32(u_input.b, -59553i) == _wgslsmith_mult_i32(var_1, -7653i))));
    let var_4 = arg_0;
    return _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1, 0u, firstTrailingBit(0u)), vec3<u32>(reverseBits(~u_input.a.x >> (arg_1 % 32u)), 0u, 1u));
}

fn func_2() -> vec3<f32> {
    var var_0 = u_input.a ^ u_input.a;
    var_0 = ~(vec4<u32>(func_3(true, 1u), _wgslsmith_div_u32(var_0.x, 4294967295u), max(0u, min(6710u, 0u)), func_3(select(false, true, true), ~var_0.x)) & _wgslsmith_add_vec4_u32(~reverseBits(vec4<u32>(1u, var_0.x, u_input.a.x, var_0.x)), ~u_input.a));
    let var_1 = ~(u_input.b | -(select(u_input.b, u_input.b, true) ^ -56395i));
    let var_2 = ~u_input.a.x;
    let var_3 = var_0.x;
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(1044f, 197f, 131f) - vec3<f32>(-132f, 1050f, -853f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(369f, -207f, -363f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1273f, 1378f, -483f))))) * _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-970f, -1370f, -130f), vec3<f32>(1f, 1f, 1f), vec3<bool>(false, false, true))))))));
}

fn func_1(arg_0: i32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-105f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1137f))), -1061f));
    return Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(-102f, var_0.x, var_0.x) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, var_0.x))), vec3<f32>(_wgslsmith_f_op_f32(var_0.x - -1511f), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(1451f + var_0.x)))) + _wgslsmith_f_op_vec3_f32(func_2())), _wgslsmith_f_op_f32(var_0.x * var_0.x), arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(func_1(_wgslsmith_mult_i32(u_input.b << (4294967295u % 32u), -2147483647i)), Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(819f, -615f, 1013f))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1091f, 876f, -376f), vec3<f32>(1375f, 1040f, 1707f)))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-118f - _wgslsmith_f_op_f32(floor(-446f))))), u_input.b >> (1u % 32u)), _wgslsmith_div_vec2_f32(func_1(1i).a.xx, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-782f, -782f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-368f, -725f))))), (select(true, true, true) | (_wgslsmith_add_u32(u_input.a.x, 0u) != _wgslsmith_dot_vec3_u32(u_input.a.zzx, vec3<u32>(9883u, 31935u, u_input.a.x)))) && !(!any(vec4<bool>(false, true, true, false))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec2_i32(~(-(~vec2<i32>(2147483647i, -2147483647i))), vec2<i32>(_wgslsmith_mod_i32(u_input.b ^ 2147483647i, u_input.b), u_input.b)), 1i, _wgslsmith_dot_vec3_u32(u_input.a.yzw, countOneBits(vec3<u32>(~u_input.a.x, func_3(var_0.d, u_input.a.x), max(0u, 1u)))));
}

