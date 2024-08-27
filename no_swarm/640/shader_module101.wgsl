struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: f32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<bool>(true, false), i32(-2147483648), true);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> vec2<bool> {
    global0 = Struct_1(vec2<bool>(global0.a.x, all(vec4<bool>(global0.a.x, true, global0.a.x, global0.c))), _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(-2147483647i, global0.b), vec2<i32>(global0.b, u_input.d)), _wgslsmith_mod_vec2_i32(vec2<i32>(global0.b, 35710i), vec2<i32>(-37602i, global0.b))), global0.b) & 54214i, true);
    return global0.a;
}

fn func_2() -> Struct_1 {
    global0 = Struct_1(!func_3(), -abs(firstLeadingBit(select(0i, u_input.c, true))), any(!select(select(vec4<bool>(true, global0.c, false, global0.a.x), vec4<bool>(global0.c, true, global0.c, global0.a.x), global0.c), vec4<bool>(false, true, global0.c, global0.a.x), true)));
    var var_0 = !(!vec3<bool>(true, any(!vec4<bool>(false, false, global0.a.x, global0.a.x)), true));
    var var_1 = !(!(!(abs(1i) > _wgslsmith_dot_vec2_i32(vec2<i32>(0i, global0.b), vec2<i32>(-20614i, 1i)))));
    let var_2 = u_input.e.zy;
    var var_3 = !select(!select(vec2<bool>(true, true), vec2<bool>(true, true), true), func_3(), vec2<bool>(var_0.x, true));
    return Struct_1(vec2<bool>(all(select(vec3<bool>(false, var_3.x, true), !vec3<bool>(global0.a.x, var_0.x, var_3.x), !vec3<bool>(global0.c, var_0.x, var_3.x))), !(_wgslsmith_f_op_f32(trunc(719f)) >= _wgslsmith_f_op_f32(-885f + 2014f))), u_input.d, any(select(select(vec4<bool>(false, false, true, global0.a.x), !vec4<bool>(false, global0.c, true, var_0.x), select(vec4<bool>(false, global0.a.x, var_0.x, true), vec4<bool>(true, false, global0.a.x, true), false)), vec4<bool>(false, false, false, !var_0.x), select(!vec4<bool>(global0.c, false, true, var_3.x), !vec4<bool>(var_3.x, true, global0.a.x, true), false))));
}

fn func_1(arg_0: bool) -> Struct_1 {
    global0 = func_2();
    let var_0 = func_2();
    var var_1 = u_input.e.x;
    var var_2 = select(select(vec3<bool>(_wgslsmith_f_op_f32(1000f - 600f) >= _wgslsmith_f_op_f32(trunc(-746f)), false, true), !vec3<bool>(all(vec3<bool>(false, true, var_0.c)), false, true), any(vec3<bool>(arg_0, all(vec4<bool>(false, arg_0, global0.a.x, global0.a.x)), true))), vec3<bool>(false, !(!all(vec2<bool>(global0.c, true))), firstLeadingBit(var_0.b & global0.b) >= ~(~2147483647i)), vec3<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(126f, 455f, true))) < 1532f, global0.a.x, false));
    let var_3 = any(func_2().a);
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.c;
    let var_1 = func_1(!any(select(select(vec3<bool>(global0.a.x, global0.c, true), vec3<bool>(global0.c, global0.c, true), vec3<bool>(false, true, false)), !vec3<bool>(global0.a.x, true, false), select(vec3<bool>(false, false, global0.a.x), vec3<bool>(global0.c, true, false), global0.a.x))));
    global0 = var_1;
    let var_2 = -vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(58417i, var_1.b, 2147483647i), vec3<i32>(33947i, 2464i, u_input.a) << (vec3<u32>(u_input.b, u_input.e.x, u_input.b) % vec3<u32>(32u))) << (1u % 32u), global0.b ^ var_1.b, var_1.b, _wgslsmith_add_i32(_wgslsmith_mod_i32(6052i, 26177i), ~(-61526i)));
    let x = u_input.a;
    s_output = StorageBuffer(25602i, _wgslsmith_add_i32(~max(u_input.c, max(1i, global0.b)), -(~(var_1.b & global0.b))), var_2, -1000f, ~vec2<i32>(var_2.x, var_2.x));
}

