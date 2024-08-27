struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: u32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: vec3<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: vec3<bool> = vec3<bool>(true, true, false);

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2(arg_0: Struct_1) -> vec4<f32> {
    return _wgslsmith_f_op_vec4_f32(-global0.a);
}

fn func_1(arg_0: u32, arg_1: vec4<i32>, arg_2: Struct_1) -> Struct_3 {
    global1 = !(!vec3<bool>(global1.x & true, any(!vec4<bool>(global1.x, global1.x, global1.x, true)), !(global0.a.x >= global0.a.x)));
    var var_0 = i32(-1i) * -1i;
    var var_1 = vec2<bool>(!(!any(vec3<bool>(global1.x, global1.x, false)) || all(vec3<bool>(global1.x, global1.x, global1.x))), false);
    var var_2 = abs(~arg_1);
    var var_3 = arg_2.b.x;
    return Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2(arg_2))));
}

fn func_3() -> u32 {
    let var_0 = ~4294967295u;
    var var_1 = 1i;
    var var_2 = true;
    var var_3 = Struct_1(-1273f, ~_wgslsmith_mod_vec2_i32(-(~vec2<i32>(u_input.b, 10448i)), u_input.a), _wgslsmith_add_u32(_wgslsmith_add_u32(~firstTrailingBit(u_input.e.x), 4294967295u), abs(var_0)));
    global0 = Struct_3(_wgslsmith_f_op_vec4_f32(-global0.a));
    return ~(~(~var_0));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(u_input.d.x, -max(vec4<i32>(u_input.a.x, -2147483647i, _wgslsmith_add_i32(u_input.b, u_input.b), -2147483647i), select(vec4<i32>(-1i, -22807i, u_input.a.x, u_input.b) & vec4<i32>(u_input.a.x, 0i, 0i, u_input.a.x), ~vec4<i32>(57401i, -1i, u_input.b, u_input.b), select(vec4<bool>(false, true, false, global1.x), vec4<bool>(global1.x, global1.x, true, global1.x), vec4<bool>(false, true, true, false)))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global0.a.x)) - global0.a.x), -u_input.a, u_input.c));
    let var_1 = ~(func_3() ^ ~1u) >> (~u_input.e.x % 32u);
    let var_2 = 1138i;
    global1 = !vec3<bool>(false, global1.x, any(global1.yz));
    let var_3 = Struct_2(vec4<u32>(abs(~(~var_1)), u_input.d.x, u_input.e.x, _wgslsmith_dot_vec4_u32(max(vec4<u32>(4294967295u, u_input.c, var_1, 14855u), vec4<u32>(var_1, 4294967295u, u_input.d.x, u_input.c)) ^ (vec4<u32>(4294967295u, var_1, 82030u, u_input.d.x) >> (vec4<u32>(1u, 47902u, var_1, var_1) % vec4<u32>(32u))), ~vec4<u32>(u_input.d.x, u_input.c, var_1, 10621u))), Struct_1(414f, vec2<i32>(~u_input.b, var_2), ~37714u), 54889i);
    global1 = select(!select(!select(vec3<bool>(global1.x, true, global1.x), vec3<bool>(true, global1.x, false), vec3<bool>(global1.x, false, global1.x)), vec3<bool>(true, true, any(vec4<bool>(global1.x, true, true, global1.x))), global1.x), select(vec3<bool>(~1u < (var_1 | var_1), all(global1.yz), global1.x), select(vec3<bool>(global1.x, !global1.x, any(vec2<bool>(false, global1.x))), vec3<bool>(4294967295u < var_1, select(false, global1.x, global1.x), all(vec3<bool>(global1.x, false, global1.x))), global1.x), false), select(select(vec3<bool>(any(vec2<bool>(global1.x, true)), global1.x | true, true), !(!vec3<bool>(false, global1.x, true)), select(!vec3<bool>(global1.x, global1.x, global1.x), vec3<bool>(true, global1.x, global1.x), global1.x)), select(select(select(vec3<bool>(false, false, global1.x), vec3<bool>(global1.x, global1.x, false), true), select(vec3<bool>(false, true, false), vec3<bool>(global1.x, false, true), vec3<bool>(global1.x, false, global1.x)), global1.x), !select(vec3<bool>(global1.x, true, false), vec3<bool>(global1.x, false, false), vec3<bool>(false, global1.x, global1.x)), global1.x), select(vec3<bool>(global1.x, true, all(vec3<bool>(global1.x, global1.x, true))), vec3<bool>(!global1.x, any(vec4<bool>(global1.x, global1.x, global1.x, global1.x)), !global1.x), select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, global1.x, true)), !vec3<bool>(true, false, global1.x), global1.x))));
    let var_4 = func_1(var_3.a.x, vec4<i32>(var_3.b.b.x, 1i, i32(-1i) * -var_3.c, _wgslsmith_dot_vec2_i32(~_wgslsmith_mod_vec2_i32(u_input.a, vec2<i32>(1i, -25028i)), vec2<i32>(~18791i, var_2))), var_3.b).a.x;
    global0 = Struct_3(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1000f, 129f, var_0.a.x, 404f))))))));
    global0 = func_1(~(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(var_3.a, vec4<u32>(1u, 1489u, 1u, var_1)), _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, var_3.b.c, u_input.d.x, 0u), vec4<u32>(u_input.c, var_3.a.x, var_3.a.x, 36992u))) | 1u), vec4<i32>(_wgslsmith_div_i32(~(-36477i), _wgslsmith_dot_vec2_i32(vec2<i32>(0i, 36057i), vec2<i32>(var_3.c, var_2))), var_2, 1i, i32(-1i) * -1i), var_3.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(~_wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, var_3.a.x, 33988u), ~vec3<u32>(1u, u_input.e.x, u_input.c)), _wgslsmith_dot_vec3_u32(var_3.a.xxx, abs(max(u_input.d, var_3.a.wyy)))));
}

