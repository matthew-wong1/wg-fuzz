struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: u32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec3<bool>,
    c: vec4<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 2> = array<i32, 2>(-49493i, 13622i);

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec4<f32>, arg_1: vec3<u32>, arg_2: vec3<bool>, arg_3: vec3<i32>) -> bool {
    let var_0 = Struct_1(-select(~arg_3, min(arg_3, vec3<i32>(13042i, arg_3.x, u_input.b)), select(vec3<bool>(false, true, true), arg_2, true)), u_input.b, firstTrailingBit(countOneBits(61599u)));
    let var_1 = arg_2.x;
    let var_2 = _wgslsmith_div_u32(4294967295u, 4294967295u);
    var var_3 = 1i;
    global0 = array<i32, 2>();
    return any(arg_2.xy);
}

fn func_2() -> bool {
    var var_0 = Struct_2(select(~(vec4<u32>(u_input.a.x, 13379u, u_input.c, u_input.c) & vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.a.x)), ~_wgslsmith_div_vec4_u32(vec4<u32>(1u, 4294967295u, 6966u, 5710u), vec4<u32>(74707u, 56390u, 21711u, 53829u)), vec4<bool>(true, true, true, u_input.b > u_input.d.x)) | vec4<u32>(countOneBits(u_input.c), abs(4294967295u), ~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 17315u, u_input.c, u_input.a.x), vec4<u32>(u_input.c, 39912u, u_input.a.x, 57119u)), u_input.c), !vec3<bool>(true, func_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(-798f, -1485f, 2589f, -3060f) * vec4<f32>(234f, 1544f, -561f, -959f)), vec3<u32>(u_input.c, u_input.c, 4294967295u), vec3<bool>(false, false, true), -vec3<i32>(u_input.b, -2147483647i, 2147483647i)), true), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-896f, 1318f, -647f, 182f)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(907f, -405f, -1427f, 1453f), vec4<f32>(271f, -345f, -621f, 1000f))), vec4<bool>(true, true, true, true))))) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1870f, 550f, 1047f, 1031f))))))), Struct_1(vec3<i32>(u_input.d.x, select(countOneBits(0i), 0i & global0[_wgslsmith_index_u32(u_input.c, 2u)], true), u_input.b), global0[_wgslsmith_index_u32(min(4294967295u, ~_wgslsmith_mod_u32(1u, u_input.a.x)), 2u)], ~reverseBits(_wgslsmith_add_u32(22481u, u_input.c))));
    global0 = array<i32, 2>();
    global0 = array<i32, 2>();
    var var_1 = Struct_2(vec4<u32>(_wgslsmith_dot_vec3_u32(~countOneBits(vec3<u32>(36304u, 11657u, 1u)), max(var_0.a.zyy, vec3<u32>(30382u, 7219u, var_0.a.x))), 4294967295u, _wgslsmith_dot_vec3_u32(var_0.a.zyy, var_0.a.ywz >> (vec3<u32>(4807u, 0u, 1u) % vec3<u32>(32u))), reverseBits(~(64703u | u_input.a.x))), !select(select(select(var_0.b, vec3<bool>(true, true, true), var_0.b), vec3<bool>(var_0.b.x, var_0.b.x, true), var_0.b), !vec3<bool>(var_0.b.x, false, var_0.b.x), vec3<bool>(true, all(var_0.b.xx), !var_0.b.x)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, 189f)), 239f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c.x + -230f)), var_0.c.x))), var_0.d);
    global0 = array<i32, 2>();
    return var_1.b.x;
}

fn func_1() -> vec3<f32> {
    global0 = array<i32, 2>();
    global0 = array<i32, 2>();
    global0 = array<i32, 2>();
    global0 = array<i32, 2>();
    var var_0 = vec4<f32>(-514f, _wgslsmith_f_op_f32(185f - 299f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_div_f32(-2732f, _wgslsmith_div_f32(-615f, -475f))), -687f)), _wgslsmith_f_op_f32(select(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -398f) + 906f), (true != all(vec4<bool>(false, false, true, false))) && !func_2())));
    return var_0.wyy;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 0i | _wgslsmith_mult_i32(_wgslsmith_mod_i32(_wgslsmith_add_i32(~21190i, 9714i), ~(-21495i) & global0[_wgslsmith_index_u32(max(u_input.a.x, u_input.c), 2u)]), -1i);
    let var_1 = u_input.a.x;
    global0 = array<i32, 2>();
    let var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1718f, 1686f, 873f), vec3<f32>(721f, -914f, 1419f))), _wgslsmith_f_op_vec3_f32(func_1())) - _wgslsmith_f_op_vec3_f32(func_1()))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -913f), 479f)), _wgslsmith_f_op_f32(779f * -1561f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-571f))))));
    var var_3 = !select(vec2<bool>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, var_1), vec3<u32>(1u, u_input.a.x, 63726u)) <= u_input.c, any(vec3<bool>(true, true, true))), select(vec2<bool>(any(vec2<bool>(false, false)), all(vec4<bool>(true, true, false, false))), vec2<bool>(false, true), vec2<bool>(var_0 >= 18666i, true)), select(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true), true));
    let x = u_input.a;
    s_output = StorageBuffer(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.c, ~_wgslsmith_div_u32(min(4294967295u, 4294967295u), u_input.a.x)), 2u)], var_0, var_2.yy, _wgslsmith_mult_i32(~1i, _wgslsmith_clamp_i32(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(1u << (var_1 % 32u), var_1), 2u)], var_0, -global0[_wgslsmith_index_u32(u_input.a.x, 2u)])));
}

