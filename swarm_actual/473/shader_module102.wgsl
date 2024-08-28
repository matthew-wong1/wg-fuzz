struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec2<u32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(614f, -161f);

var<private> global1: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(1u, vec4<bool>(false, true, true, false), 1000f), Struct_1(85223u, vec4<bool>(false, false, true, false), -1793f), Struct_1(1u, vec4<bool>(true, true, true, true), 1000f), Struct_1(1u, vec4<bool>(true, false, false, false), -156f), Struct_1(22238u, vec4<bool>(false, false, false, true), -544f), Struct_1(4294967295u, vec4<bool>(false, true, true, true), -430f), Struct_1(0u, vec4<bool>(true, false, false, false), 924f), Struct_1(4294967295u, vec4<bool>(true, true, true, false), -241f), Struct_1(56348u, vec4<bool>(true, true, true, false), -569f), Struct_1(0u, vec4<bool>(true, false, false, true), -504f), Struct_1(0u, vec4<bool>(false, true, true, false), 246f), Struct_1(1u, vec4<bool>(true, true, false, true), -257f), Struct_1(35978u, vec4<bool>(false, true, true, false), 1000f), Struct_1(28801u, vec4<bool>(false, true, true, true), -275f), Struct_1(13621u, vec4<bool>(false, true, true, true), -267f), Struct_1(1u, vec4<bool>(false, false, false, true), -1324f), Struct_1(18503u, vec4<bool>(false, false, true, true), 123f), Struct_1(9195u, vec4<bool>(false, false, false, false), 657f), Struct_1(0u, vec4<bool>(true, false, true, false), -1778f), Struct_1(1481u, vec4<bool>(true, true, false, true), 1477f), Struct_1(0u, vec4<bool>(false, true, false, false), 1000f), Struct_1(1201u, vec4<bool>(false, true, true, true), -1783f), Struct_1(11270u, vec4<bool>(false, false, true, true), -1490f), Struct_1(0u, vec4<bool>(false, false, true, true), 207f));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: f32) -> f32 {
    var var_0 = arg_1.b.x;
    return 793f;
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: f32, arg_3: Struct_1) -> i32 {
    global0 = vec2<f32>(1000f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-2303f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1543f)) - 1382f)), _wgslsmith_f_op_f32(-arg_1.c), any(select(!arg_3.b.xx, arg_1.b.zw, arg_3.b.x)))));
    global1 = array<Struct_1, 24>();
    global1 = array<Struct_1, 24>();
    var var_0 = u_input.c.zz;
    global0 = vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(arg_1.c, _wgslsmith_f_op_f32(arg_1.c * -716f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(_wgslsmith_div_vec3_f32(vec3<f32>(1236f, -497f, -1759f), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.c, arg_3.c, -155f) + vec3<f32>(840f, arg_2, -1512f))), arg_3, vec2<i32>(u_input.b.x, _wgslsmith_mult_i32(0i, u_input.d)), -1098f))));
    return firstTrailingBit(u_input.d) & firstTrailingBit(31530i);
}

fn func_1(arg_0: f32, arg_1: u32, arg_2: vec2<bool>, arg_3: f32) -> vec3<i32> {
    let var_0 = false;
    var var_1 = (all(!select(vec3<bool>(true, var_0, true), vec3<bool>(false, var_0, var_0), var_0)) && true) & true;
    global1 = array<Struct_1, 24>();
    var_1 = false != (true == !var_0);
    let var_2 = -_wgslsmith_sub_i32(_wgslsmith_add_i32(u_input.a.x, func_2(0u, global1[_wgslsmith_index_u32(4535u, 24u)], arg_3, global1[_wgslsmith_index_u32(1u, 24u)])) & u_input.b.x, _wgslsmith_add_i32(~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, 37520i), u_input.a), func_2(_wgslsmith_mod_u32(arg_1, arg_1), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(arg_1, 0u), 24u)], -1246f, Struct_1(u_input.e.x, vec4<bool>(false, true, false, var_0), 1084f))));
    return -abs(vec3<i32>(_wgslsmith_div_i32(firstTrailingBit(var_2), max(-11958i, -1i)), var_2, ~var_2 >> (~56796u % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.e.x;
    var var_1 = _wgslsmith_dot_vec3_i32(u_input.b.wyy, ~func_1(global0.x, ~20985u, vec2<bool>(true, true), _wgslsmith_f_op_f32(-global0.x))) >> (~(~u_input.e.x) % 32u);
    let var_2 = 58092i;
    var_1 = var_2;
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, global0.x) * vec2<f32>(-483f, global0.x)))), vec2<f32>(649f, _wgslsmith_f_op_f32(global0.x + global0.x))) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-488f + global0.x)), _wgslsmith_f_op_f32(round(-2757f)))));
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.e, min(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(var_2, var_2, var_2) << (vec3<u32>(var_0, 47997u, 16433u) % vec3<u32>(32u)), firstLeadingBit(vec3<i32>(-45993i, u_input.b.x, var_2))), u_input.a.x), _wgslsmith_mod_vec2_i32(vec2<i32>(func_2(u_input.e.x, global1[_wgslsmith_index_u32(u_input.c.x, 24u)], global0.x, Struct_1(47453u, vec4<bool>(false, true, false, false), global0.x)), -36036i), -vec2<i32>(var_2, -2147483647i))), u_input.e, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global0.x, global0.x))) - vec2<f32>(global0.x, global0.x)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, 340f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, global0.x) + vec2<f32>(global0.x, global0.x)), true)))));
}

