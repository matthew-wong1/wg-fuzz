struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: i32,
    d: vec2<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec4<u32>, 11>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> vec3<bool> {
    let var_0 = u_input.a.x;
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a)))), global0.a) >= 496f;
    global0 = Struct_1(global0.a);
    let var_2 = Struct_2(select(select(vec3<bool>(true, select(false, true, var_1), !var_1), vec3<bool>(true, true, var_1), any(!vec2<bool>(var_1, true))), vec3<bool>(true & var_1, false, var_1 == false), vec3<bool>(select(true, all(vec3<bool>(false, false, var_1)), var_1 & var_1), false, true || (var_1 & var_1))));
    let var_3 = vec2<u32>(0u, ~_wgslsmith_clamp_u32(firstTrailingBit(1u), _wgslsmith_clamp_u32(countOneBits(0u), ~21713u, 23158u), _wgslsmith_add_u32(1u, 67427u)));
    return var_2.a;
}

fn func_2() -> i32 {
    global0 = Struct_1(_wgslsmith_f_op_f32(-global0.a));
    var var_0 = Struct_2(func_3());
    var_0 = Struct_2(!vec3<bool>(var_0.a.x, true, func_3().x));
    global1 = array<vec4<u32>, 11>();
    global1 = array<vec4<u32>, 11>();
    return _wgslsmith_mult_i32(-2147483647i, u_input.a.x);
}

fn func_4(arg_0: vec4<i32>) -> Struct_3 {
    global0 = Struct_1(-642f);
    var var_0 = vec4<bool>(true, all(!vec2<bool>(any(vec2<bool>(true, false)), -1000f != global0.a)), any(vec2<bool>(true, true)) & true, true);
    var var_1 = Struct_3(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global0.a), _wgslsmith_f_op_f32(-global0.a))) != 594f, Struct_2(func_3()), vec3<u32>(1u, 1u, 1u));
    var_0 = select(select(select(select(vec4<bool>(var_0.x, var_0.x, false, true), !vec4<bool>(false, true, var_0.x, true), !vec4<bool>(true, true, false, var_1.a)), select(!vec4<bool>(true, false, var_1.b.a.x, var_1.a), !vec4<bool>(var_1.a, true, true, true), vec4<bool>(var_1.a, false, true, var_1.b.a.x)), select(!vec4<bool>(true, var_1.a, true, false), !vec4<bool>(var_1.b.a.x, false, var_1.b.a.x, false), select(vec4<bool>(true, false, var_1.b.a.x, true), vec4<bool>(var_1.b.a.x, var_1.a, var_0.x, var_0.x), var_1.a))), !select(vec4<bool>(true, var_1.b.a.x, true, var_0.x), vec4<bool>(var_1.b.a.x, var_0.x, false, var_0.x), global0.a < -1744f), !all(func_3())), vec4<bool>(all(!vec2<bool>(var_1.a, true)), !var_0.x, !var_1.a, !any(vec2<bool>(var_0.x, true))), select(select(vec4<bool>(any(vec4<bool>(var_1.a, var_0.x, true, true)), select(false, var_0.x, var_1.a), true, var_1.b.a.x), select(vec4<bool>(false, var_0.x, false, var_0.x), vec4<bool>(false, var_0.x, false, var_0.x), all(vec3<bool>(true, false, false))), select(vec4<bool>(var_0.x, var_0.x, false, var_0.x), vec4<bool>(var_1.b.a.x, false, var_1.b.a.x, var_1.a), false)), !(!vec4<bool>(true, var_1.a, true, true)), true));
    var var_2 = Struct_2(select(func_3(), vec3<bool>(var_0.x, false, !(var_0.x | var_0.x)), vec3<bool>(true, global0.a >= _wgslsmith_f_op_f32(f32(-1f) * -1000f), all(vec4<bool>(var_0.x, true, false, var_1.b.a.x)))));
    return Struct_3(all(vec4<bool>(!var_1.b.a.x, true, var_2.a.x, var_2.a.x)), Struct_2(func_3()), var_1.c);
}

fn func_1(arg_0: Struct_3) -> f32 {
    var var_0 = abs(~(-max(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)) << (arg_0.c % vec3<u32>(32u))));
    var var_1 = func_4(vec4<i32>(reverseBits(u_input.a.x), ~countOneBits(-1i), reverseBits(func_2()), abs(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, -1i), i32(-1i) * -2147483647i))));
    let var_2 = _wgslsmith_f_op_f32(ceil(global0.a));
    let var_3 = Struct_1(_wgslsmith_f_op_f32(var_2 * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(var_2)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_2, var_2, false)) + _wgslsmith_f_op_f32(-var_2)))));
    let var_4 = select(!vec4<bool>(false, !func_3().x, true, _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x, 56501i, u_input.a.x), vec3<i32>(var_0.x, u_input.a.x, 6475i)) == u_input.a.x), select(!vec4<bool>(true, all(vec4<bool>(arg_0.b.a.x, false, false, true)), 0u > var_1.c.x, true), select(!select(vec4<bool>(true, false, arg_0.a, false), vec4<bool>(var_1.a, arg_0.b.a.x, arg_0.a, var_1.a), false), vec4<bool>(any(arg_0.b.a.yy), global0.a != -1317f, all(var_1.b.a), any(arg_0.b.a)), !select(vec4<bool>(arg_0.a, arg_0.a, arg_0.a, arg_0.a), vec4<bool>(true, true, var_1.b.a.x, arg_0.b.a.x), true)), arg_0.a), !vec4<bool>(func_4(~vec4<i32>(var_0.x, -1i, u_input.a.x, u_input.a.x)).a, arg_0.b.a.x, arg_0.b.a.x, true));
    return -1000f;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(func_1(Struct_3(false, Struct_2(vec3<bool>(false, false, false)), vec3<u32>(0u, 9266u, 0u)))), _wgslsmith_f_op_f32(select(global0.a, _wgslsmith_f_op_f32(1616f - global0.a), false))))), _wgslsmith_f_op_f32(ceil(global0.a)), -10894i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(-128f, 953f) - vec2<f32>(global0.a, global0.a)))) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-826f, global0.a), vec2<f32>(711f, -971f), true)))), u_input.a.x);
}

