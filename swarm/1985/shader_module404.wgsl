struct Struct_1 {
    a: u32,
    b: u32,
    c: vec2<f32>,
    d: bool,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 5> = array<bool, 5>(false, false, true, true, true);

var<private> global1: i32;

var<private> global2: Struct_1 = Struct_1(15757u, 65319u, vec2<f32>(-200f, 463f), false, 26399u);

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: bool, arg_2: vec3<bool>) -> u32 {
    var var_0 = _wgslsmith_div_f32(-246f, global2.c.x);
    var_0 = _wgslsmith_f_op_f32(-459f + _wgslsmith_f_op_f32(-global2.c.x));
    let var_1 = Struct_1(global2.e, abs(global2.a), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, 706f))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-533f, 939f))))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(global2.c, vec2<f32>(1000f, arg_0), any(arg_2))) - vec2<f32>(-1000f, -1681f)))), any(select(select(!vec4<bool>(false, arg_1, arg_2.x, arg_2.x), select(vec4<bool>(true, false, arg_2.x, true), vec4<bool>(arg_2.x, true, false, global0[_wgslsmith_index_u32(global2.e, 5u)]), vec4<bool>(false, arg_1, false, global2.d)), select(vec4<bool>(global2.d, false, true, true), vec4<bool>(false, global0[_wgslsmith_index_u32(global2.b, 5u)], true, arg_1), vec4<bool>(true, global2.d, true, global2.d))), select(select(vec4<bool>(global2.d, false, global2.d, global2.d), vec4<bool>(false, arg_1, false, arg_2.x), false), !vec4<bool>(global2.d, false, arg_2.x, false), vec4<bool>(arg_2.x, true, arg_2.x, global0[_wgslsmith_index_u32(global2.b, 5u)])), vec4<bool>(true, true || arg_2.x, arg_1, false))), ~global2.a);
    var var_2 = all(vec4<bool>(u_input.b.x <= u_input.a, !any(select(vec2<bool>(arg_1, arg_1), vec2<bool>(global0[_wgslsmith_index_u32(var_1.e, 5u)], global2.d), false)), !any(select(vec4<bool>(arg_1, false, true, false), vec4<bool>(var_1.d, true, false, arg_1), vec4<bool>(false, false, global2.d, false))), any(select(!vec4<bool>(false, false, var_1.d, false), !vec4<bool>(global0[_wgslsmith_index_u32(global2.e, 5u)], true, global0[_wgslsmith_index_u32(var_1.a, 5u)], global0[_wgslsmith_index_u32(4294967295u, 5u)]), !vec4<bool>(global2.d, var_1.d, true, arg_2.x)))));
    var_2 = !arg_2.x;
    return firstLeadingBit(firstLeadingBit(0u));
}

fn func_2(arg_0: f32, arg_1: bool) -> u32 {
    let var_0 = _wgslsmith_sub_u32(global2.a, 26903u) <= global2.b;
    global2 = Struct_1(~global2.a, func_3(_wgslsmith_f_op_f32(-arg_0), all(vec3<bool>(global0[_wgslsmith_index_u32(global2.a, 5u)], arg_1, global2.d)), vec3<bool>(true, all(vec2<bool>(false, true)), any(vec2<bool>(var_0, true)))) << (global2.b % 32u), _wgslsmith_div_vec2_f32(vec2<f32>(237f, global2.c.x), global2.c), global2.d, global2.a);
    let var_1 = Struct_1(22131u, countOneBits(min(global2.b, global2.e)), _wgslsmith_f_op_vec2_f32(global2.c * global2.c), !(max(3760u, global2.a) < abs(global2.b)) || false, _wgslsmith_add_u32(~_wgslsmith_sub_u32(global2.b, global2.b), 4647u));
    return global2.b;
}

fn func_1(arg_0: vec2<u32>, arg_1: u32) -> Struct_1 {
    global2 = Struct_1(global2.b, 201u, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(global2.c.x, global2.c.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1000f))))), all(select(select(vec4<bool>(global0[_wgslsmith_index_u32(arg_0.x, 5u)], true, global2.d, false), vec4<bool>(global0[_wgslsmith_index_u32(83819u, 5u)], global0[_wgslsmith_index_u32(1u, 5u)], global2.d, global2.d), vec4<bool>(global2.d, global2.d, true, false)), vec4<bool>(global2.d, global0[_wgslsmith_index_u32(12378u, 5u)], global0[_wgslsmith_index_u32(arg_0.x, 5u)], global0[_wgslsmith_index_u32(1u, 5u)]), !vec4<bool>(global2.d, true, true, false))) & global0[_wgslsmith_index_u32(~func_2(global2.c.x, true) ^ _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.x, global2.b, 21961u), vec3<u32>(31823u, arg_1, 59423u)), 4851u, firstLeadingBit(1u)), 5u)], _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(abs(37652u), abs(arg_0.x), ~arg_1), ~abs(vec3<u32>(global2.a, global2.e, global2.b))), ~0u));
    var var_0 = _wgslsmith_div_vec3_i32(~(~abs(vec3<i32>(u_input.b.x, -2147483647i, 22966i))), vec3<i32>(2147483647i, u_input.d.x, ~u_input.b.x));
    global0 = array<bool, 5>();
    var var_1 = Struct_1(abs(_wgslsmith_add_u32(firstTrailingBit(~global2.b), ~(~global2.e))), 10589u, _wgslsmith_f_op_vec2_f32(vec2<f32>(1344f, 1116f) - _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(global2.c, global2.c) - global2.c)))), false, ~1u);
    return Struct_1(arg_1, arg_0.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(var_1.c.x + global2.c.x), _wgslsmith_f_op_f32(global2.c.x * -1650f))))), any(vec3<bool>(any(!vec3<bool>(global2.d, var_1.d, true)), global2.d & !var_1.d, any(vec2<bool>(var_1.d, false)))), 45283u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_mod_vec2_u32(~abs(vec2<u32>(4294967295u, 15254u)), select(vec2<u32>(75757u, ~global2.e), vec2<u32>(42110u, 1u) | ~vec2<u32>(1u, global2.a), global0[_wgslsmith_index_u32(min(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(global2.e, global2.a, global2.a), vec3<u32>(global2.b, 47154u, global2.e))), 5u)])), abs(global2.b) >> (~1u % 32u));
    var var_1 = Struct_1(_wgslsmith_mult_u32(min(56376u, func_1(vec2<u32>(var_0.e, global2.a) | vec2<u32>(55842u, 0u), func_2(var_0.c.x, global2.d)).a), firstTrailingBit(0u)), global2.a, _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(var_0.c.x, global2.c.x)), -1739f)), global2.c.x))), all(vec2<bool>(true & global0[_wgslsmith_index_u32(max(var_0.b, 4294967295u), 5u)], true)), ~42379u);
    let var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-240f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.c.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.c.x + global2.c.x) + _wgslsmith_f_op_f32(ceil(var_1.c.x))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(-1000f)), 1109f, all(vec2<bool>(false, false)))))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_1.c.x), var_1.c.x, 365f, _wgslsmith_f_op_f32(-523f + 1000f)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(971f, 718f, 184f, global2.c.x))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.c.x, var_1.c.x, var_0.c.x, -470f) - vec4<f32>(var_1.c.x, var_1.c.x, -699f, var_0.c.x)))))), !(!vec4<bool>(!var_1.d, var_1.d & false, func_1(vec2<u32>(73681u, var_1.b), 4294967295u).d, func_1(vec2<u32>(var_1.e, var_1.a), var_1.a).d))));
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<u32>(global2.b, abs(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.e, global2.e, global2.b), vec3<u32>(var_0.e, 4093u, var_0.a))), global2.a));
}

