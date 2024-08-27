struct Struct_1 {
    a: f32,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 6> = array<i32, 6>(65383i, 0i, 22364i, 1i, -60328i, 71325i);

var<private> global1: vec3<i32>;

var<private> global2: vec2<f32> = vec2<f32>(544f, -1000f);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: vec4<i32>, arg_1: u32) -> vec2<bool> {
    global1 = arg_0.zxy;
    var var_0 = !(!(u_input.a <= u_input.b.x));
    var var_1 = ~abs((firstLeadingBit(vec4<u32>(29046u, u_input.b.x, 4294967295u, 43589u)) & min(vec4<u32>(0u, 38151u, 0u, 45509u), vec4<u32>(u_input.b.x, 1u, arg_1, 1u))) ^ vec4<u32>(1u, ~u_input.a, arg_1 >> (31017u % 32u), 1790u >> (arg_1 % 32u)));
    let var_2 = false;
    let var_3 = select(select(select(vec4<bool>(true, true, true, true), !select(vec4<bool>(var_2, var_2, false, var_2), vec4<bool>(var_2, var_2, true, var_2), true), _wgslsmith_f_op_f32(f32(-1f) * -1628f) != _wgslsmith_f_op_f32(-global2.x)), vec4<bool>(any(!vec4<bool>(true, false, var_2, var_2)), false, var_2, true), select(!vec4<bool>(var_2, true, var_2, var_2), !select(vec4<bool>(var_2, var_2, var_2, false), vec4<bool>(true, true, var_2, var_2), vec4<bool>(true, var_2, var_2, var_2)), true)), vec4<bool>(any(vec4<bool>(var_2, true, var_2 | false, var_2)), var_2, var_2, false), var_2);
    return select(var_3.wz, var_3.yx, vec2<bool>(true, true));
}

fn func_4(arg_0: i32, arg_1: vec2<bool>) -> f32 {
    global2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(226f, _wgslsmith_f_op_f32(-global2.x)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-412f, global2.x))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(451f, global2.x))))));
    global0 = array<i32, 6>();
    return _wgslsmith_f_op_f32(-global2.x);
}

fn func_2(arg_0: bool, arg_1: Struct_1) -> f32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(func_4(-8096i, func_3(_wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c.x, 0i, u_input.c.x, 11302i), vec4<i32>(global1.x, global1.x, global1.x, u_input.c.x)), abs(vec4<i32>(43007i, global0[_wgslsmith_index_u32(1u, 6u)], global0[_wgslsmith_index_u32(u_input.a, 6u)], global1.x))), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.a, u_input.b.x), vec3<u32>(35374u, 54337u, 1u)) ^ 1u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)));
    let var_1 = arg_1;
    global2 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_1.b, var_1.b), vec2<f32>(1000f, var_1.b))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.b, 218f)))))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1378f, var_0.b)) + _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1692f, -1000f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-185f, 1210f)))), vec2<f32>(-875f, global2.x))), !select(vec2<bool>(arg_0, arg_0), !func_3(vec4<i32>(global0[_wgslsmith_index_u32(35017u, 6u)], 0i, 46592i, -25017i), u_input.b.x), select(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(arg_0, arg_0)), vec2<bool>(true, true), select(vec2<bool>(arg_0, arg_0), vec2<bool>(true, true), vec2<bool>(arg_0, true))))));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.b))) + _wgslsmith_f_op_f32(-arg_1.a)), -1000f);
    return _wgslsmith_f_op_f32(exp2(arg_1.b));
}

fn func_1() -> Struct_1 {
    return Struct_1(_wgslsmith_f_op_f32(-2908f + _wgslsmith_f_op_f32(func_2(select(true, true, true), Struct_1(_wgslsmith_f_op_f32(256f - global2.x), 1150f)))), _wgslsmith_f_op_f32(617f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global2.x, global2.x)) * global2.x))));
}

fn func_5(arg_0: f32, arg_1: u32, arg_2: Struct_1) -> vec3<i32> {
    let var_0 = func_1();
    global2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1832f, -330f))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.a, arg_0)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-746f, 376f) - vec2<f32>(var_0.b, 657f))) * vec2<f32>(-1872f, _wgslsmith_f_op_f32(select(-1026f, global2.x, false))))));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_0, _wgslsmith_f_op_f32(464f - -119f))))));
    let var_2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(649f, _wgslsmith_f_op_f32(-2106f + var_1.x), global2.x) - _wgslsmith_f_op_vec3_f32(step(vec3<f32>(649f, arg_0, global2.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(-681f, global2.x, 343f) - vec3<f32>(1165f, arg_0, -747f)))))), vec3<f32>(global2.x, _wgslsmith_div_f32(global2.x, global2.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0)))))), select(func_3(abs(~vec4<i32>(global1.x, -1i, -12313i, 20758i)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 2783u, 37549u, 18206u), vec4<u32>(1u, 101438u, u_input.b.x, 1u))).x, false, true)));
    let var_3 = func_1();
    return -_wgslsmith_add_vec3_i32(vec3<i32>(-(-39868i << (arg_1 % 32u)), max(0i, 0i), _wgslsmith_mult_i32(_wgslsmith_mod_i32(u_input.c.x, u_input.c.x), global1.x)), -firstTrailingBit(~vec3<i32>(-41881i, -1i, global0[_wgslsmith_index_u32(arg_1, 6u)])));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x + global2.x)) * _wgslsmith_f_op_f32(ceil(1268f))), _wgslsmith_f_op_f32(round(global2.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(948f, 1141f))), _wgslsmith_div_vec2_f32(vec2<f32>(global2.x, -722f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-317f, global2.x) + vec2<f32>(global2.x, global2.x)))))));
    let var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)), _wgslsmith_f_op_f32(f32(-1f) * -167f)) + global2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1027f, global2.x)) - global2.x))));
    var var_1 = u_input.b.x;
    global0 = array<i32, 6>();
    global1 = vec3<i32>(-1i) * -func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b - -1902f)), u_input.a, func_1());
    var var_2 = Struct_1(_wgslsmith_f_op_f32(min(global2.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -794f))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(764f + 1181f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global2.x)))) - -545f));
    var_2 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(-255f, 1i);
}

