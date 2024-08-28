struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: bool,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: f32,
    d: bool,
    e: bool,
}

struct Struct_3 {
    a: vec4<f32>,
    b: f32,
    c: Struct_1,
    d: bool,
    e: Struct_2,
}

struct Struct_4 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
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

var<private> global1: array<i32, 20>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: bool) -> bool {
    let var_0 = global0.c;
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -137f);
    global1 = array<i32, 20>();
    global1 = array<i32, 20>();
    global0 = Struct_3(vec4<f32>(360f, global0.c.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -749f) - _wgslsmith_f_op_f32(var_1 - var_0.a.x))), _wgslsmith_f_op_f32(-var_1)), -1250f, global0.c, !(false == arg_0), Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(global0.e.a, global0.c.a) * var_0.a), Struct_1(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1047f, 810f)))), true, true), global0.e.c, global1[_wgslsmith_index_u32(0u >> (1u % 32u), 20u)] <= (i32(-1i) * -2147483647i), !(var_1 > global0.a.x)));
    return arg_0;
}

fn func_2(arg_0: f32, arg_1: vec2<u32>, arg_2: vec3<bool>) -> Struct_3 {
    let var_0 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-879f + global0.b))) - arg_0), _wgslsmith_f_op_f32(arg_0 * _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(global0.a.x, 798f, false)), global0.b))), func_3(all(vec2<bool>(true, true))), ((true || (false && global0.d)) == (all(vec4<bool>(global0.c.b, false, false, true)) && true)) && all(select(!vec4<bool>(global0.c.c, true, false, global0.c.b), !vec4<bool>(true, false, true, global0.d), !vec4<bool>(global0.d, arg_2.x, false, false))));
    var var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(1842f)), _wgslsmith_f_op_f32(select(global0.e.c, -876f, var_0.b)), _wgslsmith_div_f32(881f, arg_0), _wgslsmith_f_op_f32(-var_0.a.x)))), -597f, Struct_1(global0.c.a, !(-2147483647i <= -u_input.b), !(global1[_wgslsmith_index_u32(4294967295u, 20u)] > _wgslsmith_add_i32(u_input.a.x, -1i))), global0.e.e, global0.e);
    var var_2 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(trunc(645f)), _wgslsmith_f_op_f32(ceil(var_1.c.a.x))), any(!vec3<bool>(any(arg_2.zx), global1[_wgslsmith_index_u32(arg_1.x, 20u)] < global1[_wgslsmith_index_u32(arg_1.x, 20u)], var_1.e.d)), global0.d);
    let var_3 = Struct_4(global0.a);
    let var_4 = var_3;
    return Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(969f, var_3.a.x, -193f, -1000f), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-679f, -1236f, -823f, var_0.a.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, var_1.b, 2871f, 977f))))), _wgslsmith_div_f32(-261f, _wgslsmith_f_op_f32(step(global0.c.a.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(-434f)), var_2.a.x))))), Struct_1(_wgslsmith_f_op_vec2_f32(var_3.a.xw * _wgslsmith_f_op_vec2_f32(vec2<f32>(-1501f, var_1.b) - _wgslsmith_div_vec2_f32(var_0.a, var_0.a))), all(select(select(vec2<bool>(false, true), arg_2.xx, arg_2.zx), vec2<bool>(false, false), vec2<bool>(arg_2.x, false))), func_3(_wgslsmith_add_i32(global1[_wgslsmith_index_u32(arg_1.x, 20u)], -33234i) < global1[_wgslsmith_index_u32(arg_1.x, 20u)])), _wgslsmith_mult_u32(abs(arg_1.x), ~(~arg_1.x)) < ~86258u, global0.e);
}

fn func_1() -> vec4<f32> {
    var var_0 = _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(u_input.a.zy, u_input.a.wy), vec2<i32>(u_input.a.x, global1[_wgslsmith_index_u32(~_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(66596u, 55228u, 77989u), vec3<u32>(4294967295u, 17810u, 4294967295u)), 0u), 20u)]));
    global1 = array<i32, 20>();
    var var_1 = false;
    global0 = func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a.x - 1000f) + global0.a.x), vec2<u32>(1u, 1u), !(!select(select(vec3<bool>(global0.c.b, false, global0.d), vec3<bool>(global0.c.c, global0.d, false), false), vec3<bool>(global0.e.d, global0.d, global0.e.e), select(vec3<bool>(global0.e.d, global0.c.b, false), vec3<bool>(global0.e.e, global0.c.c, global0.c.b), vec3<bool>(false, true, false)))));
    var_0 = -1i;
    return _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-global0.a), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(func_2(global0.e.c, vec2<u32>(71271u, 31649u), vec3<bool>(false, global0.d, global0.d)).c.a.x, _wgslsmith_f_op_f32(f32(-1f) * -1193f), _wgslsmith_f_op_f32(-447f * -385f), -742f), vec4<f32>(-592f, _wgslsmith_f_op_f32(483f - -1255f), global0.e.a.x, _wgslsmith_f_op_f32(trunc(210f)))))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(_wgslsmith_div_vec4_f32(vec4<f32>(-2162f, _wgslsmith_f_op_f32(f32(-1f) * -692f), -1316f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(163f)), _wgslsmith_f_op_f32(-global0.b))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(func_1()))))));
    global1 = array<i32, 20>();
    let var_1 = vec4<i32>(global1[_wgslsmith_index_u32(892u, 20u)], abs(firstLeadingBit(u_input.b)) & -2147483647i, _wgslsmith_add_i32(global1[_wgslsmith_index_u32(~21617u, 20u)], abs(_wgslsmith_mult_i32(-22572i, global1[_wgslsmith_index_u32(8392u, 20u)] << (1u % 32u)))), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(reverseBits(~1u), _wgslsmith_add_u32(firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(29241u, 49588u, 4294967295u), vec3<u32>(4294967295u, 30467u, 39304u))), 1u)), 20u)]);
    let var_2 = -47981i;
    var_0 = Struct_4(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1786f, global0.e.a.x)), global0.e.c, _wgslsmith_f_op_f32(sign(var_0.a.x)), _wgslsmith_f_op_f32(sign(-509f))));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(firstLeadingBit(1u)));
}

