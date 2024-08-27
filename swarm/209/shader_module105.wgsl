struct Struct_1 {
    a: f32,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_1,
    c: Struct_2,
    d: vec3<f32>,
}

struct Struct_4 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_1() -> bool {
    var var_0 = !(!select(!select(vec2<bool>(true, true), vec2<bool>(true, false), false), vec2<bool>(true, global0.a.a > global0.a.a), any(vec4<bool>(true, true, true, true))));
    let var_1 = Struct_2(global0.a);
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(-1330f)), _wgslsmith_f_op_f32(ceil(-522f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global0.a.a)) * -696f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1174f, -2167f, global0.a.a) - vec3<f32>(var_1.a.a, -765f, global0.a.a)), vec3<f32>(-791f, 631f, global0.a.a)))));
    return all(vec4<bool>(var_0.x, u_input.d.x > abs(u_input.d.x), var_0.x, var_0.x));
}

fn func_3(arg_0: Struct_3) -> vec4<f32> {
    var var_0 = _wgslsmith_f_op_f32(139f * _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.d.x - 1156f), -677f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(649f, 1231f))))) > -467f;
    let var_1 = abs(max(firstLeadingBit(u_input.d.x), u_input.d.x));
    var var_2 = Struct_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.d.x, global0.a.a, arg_0.b.a, global0.a.a) - vec4<f32>(757f, 1624f, arg_0.b.a, 294f)) + _wgslsmith_div_vec4_f32(vec4<f32>(arg_0.c.a.a, 506f, 424f, arg_0.b.a), vec4<f32>(arg_0.d.x, arg_0.b.a, arg_0.b.a, -538f)))) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.a, global0.a.a, -811f, 667f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.b.a, -1109f, 1017f, global0.a.a) + vec4<f32>(global0.a.a, arg_0.b.a, -679f, 164f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.c.a.a, 1740f, arg_0.b.a, arg_0.c.a.a)))))));
    let var_3 = select(all(vec3<bool>(true, true, true)), !any(!select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), false)), true);
    let var_4 = !(!select(vec3<bool>(true, true, true), !select(vec3<bool>(false, var_3, true), vec3<bool>(var_3, false, var_3), var_3), !vec3<bool>(var_3, true, false)));
    return _wgslsmith_div_vec4_f32(var_2.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(1011f, -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-819f * var_2.a.x)), var_2.a.x)));
}

fn func_2(arg_0: bool) -> Struct_3 {
    global0 = Struct_2(global0.a);
    global0 = Struct_2(Struct_1(global0.a.a, global0.a.b));
    global0 = Struct_2(global0.a);
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(Struct_3(vec3<i32>(2147483647i, 0i, u_input.b), Struct_1(global0.a.a, -2147483647i), Struct_2(global0.a), vec3<f32>(-532f, 869f, global0.a.a)))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a.a, -340f, -925f, 511f) - vec4<f32>(1266f, global0.a.a, -545f, global0.a.a)))) + vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global0.a.a, global0.a.a)) - _wgslsmith_f_op_f32(-global0.a.a)), global0.a.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a.a * global0.a.a) - -1415f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a.a - 866f) - -1000f))));
    var var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(var_0.x, var_0.x))));
    return Struct_3(-vec3<i32>(0i, _wgslsmith_dot_vec3_i32(vec3<i32>(2340i, global0.a.b, u_input.e), vec3<i32>(1i, 2147483647i, -1i)) ^ -2147483647i, _wgslsmith_sub_i32(firstLeadingBit(global0.a.b), _wgslsmith_mod_i32(-29365i, 29592i))), global0.a, Struct_2(Struct_1(global0.a.a, ~(i32(-1i) * -4701i))), vec3<f32>(_wgslsmith_f_op_f32(abs(-1048f)), _wgslsmith_f_op_f32(global0.a.a + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.a))), _wgslsmith_f_op_vec4_f32(func_3(Struct_3(~vec3<i32>(global0.a.b, 0i, -2621i), Struct_1(var_0.x, global0.a.b), Struct_2(global0.a), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1280f, var_0.x, var_0.x)))))).x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_2(!func_1());
    global0 = func_2(all(vec4<bool>(true, true, !func_1(), true))).c;
    let var_1 = var_0.a.x;
    global0 = var_0.c;
    var var_2 = select(!vec3<bool>(true, u_input.d.x != ~u_input.d.x, true), select(!select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), any(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)), all(vec2<bool>(false, false))))), !(!(!select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false)))));
    let var_3 = select(var_2.yy, select(select(var_2.zy, !var_2.zz, !vec2<bool>(true, var_2.x)), vec2<bool>(!var_2.x, any(select(vec4<bool>(true, false, var_2.x, var_2.x), vec4<bool>(var_2.x, var_2.x, false, var_2.x), false))), _wgslsmith_f_op_f32(-var_0.d.x) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - global0.a.a))), !vec2<bool>(var_2.x, !(var_0.b.b >= global0.a.b)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(u_input.d.x, ~(~1u << (u_input.d.x % 32u)), ~(u_input.d.x >> (u_input.d.x % 32u)) << ((u_input.d.x ^ 1u) % 32u)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -105f) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(1855f)), var_0.b.a))))));
}

