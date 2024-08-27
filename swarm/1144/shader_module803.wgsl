struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(-2439i), Struct_1(0i), 1i);

var<private> global1: Struct_1 = Struct_1(0i);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: f32, arg_1: Struct_2) -> vec4<f32> {
    let var_0 = arg_1;
    var var_1 = vec2<f32>(arg_0, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0))));
    global1 = var_0.a;
    var var_2 = Struct_2(Struct_1(u_input.b), global0.b, 35506i);
    global1 = var_2.a;
    return _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1335f, var_1.x, -327f, _wgslsmith_f_op_f32(trunc(arg_0))))))));
}

fn func_3(arg_0: i32, arg_1: vec4<f32>, arg_2: u32, arg_3: Struct_2) -> Struct_1 {
    var var_0 = _wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -279f) + _wgslsmith_f_op_f32(min(-694f, arg_1.x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(1276f, -1876f)), _wgslsmith_f_op_f32(arg_1.x - -241f))))) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(2427f))), arg_1.x))));
    let var_1 = ~(~(~(~(u_input.c.xwy >> (vec3<u32>(arg_2, 0u, u_input.c.x) % vec3<u32>(32u))))));
    var_0 = _wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(982f * -1132f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_1.x, 457f, true)))) + 1000f));
    var var_2 = !(!vec2<bool>(all(select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), true)), false));
    var_2 = !(!select(select(select(vec2<bool>(true, var_2.x), vec2<bool>(var_2.x, false), vec2<bool>(false, var_2.x)), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(all(vec3<bool>(false, true, true)), all(vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x))), vec2<bool>(all(vec4<bool>(false, false, var_2.x, false)), 0u <= var_1.x)));
    return arg_3.b;
}

fn func_1() -> Struct_2 {
    var var_0 = Struct_2(Struct_1(-2147483647i), func_3(_wgslsmith_mod_i32(firstLeadingBit(u_input.d), i32(-1i) * -1i) | ~(-u_input.d), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2(-1733f, Struct_2(global0.a, Struct_1(-1i), global1.a))), vec4<f32>(178f, _wgslsmith_f_op_f32(f32(-1f) * -741f), -1478f, -1000f)), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(0u, u_input.c.x | 15034u, ~1u)), Struct_2(Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, global0.c, -1i, 3004i), vec4<i32>(-37949i, -2147483647i, global0.c, global0.b.a))), global0.a, -select(-24240i, global0.b.a, false))), global1.a ^ -14475i);
    global1 = global0.a;
    var var_1 = Struct_2(var_0.a, Struct_1(var_0.c), var_0.b.a);
    var var_2 = Struct_2(func_3(1i, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(-258f, 753f, -610f, -170f) + vec4<f32>(-323f, 302f, 1447f, 430f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-191f, -1000f, 1000f, 764f)))), u_input.a.x, Struct_2(Struct_1(-48430i), func_3(_wgslsmith_sub_i32(var_1.a.a, -8707i), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1049f, 618f, 838f, -101f) - vec4<f32>(981f, 280f, -923f, 379f)), u_input.a.x << (u_input.a.x % 32u), Struct_2(Struct_1(global1.a), Struct_1(-19031i), var_0.c)), var_1.b.a)), var_1.a, _wgslsmith_sub_i32(1i, func_3(abs(var_0.c | -2147483647i), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(854f, -217f, -1000f, 925f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-109f, -1116f, 1000f, 623f))), _wgslsmith_sub_u32(1u, u_input.a.x) & abs(u_input.a.x), Struct_2(global0.a, func_3(-10867i, vec4<f32>(-568f, -1354f, 666f, -119f), 39679u, Struct_2(Struct_1(2147483647i), global0.a, var_1.a.a)), global1.a)).a));
    var var_3 = Struct_2(global0.a, Struct_1(countOneBits(~_wgslsmith_dot_vec2_i32(vec2<i32>(var_1.c, -2147483647i), vec2<i32>(u_input.b, var_0.b.a)))), 2147483647i);
    return Struct_2(Struct_1(-14657i), var_1.b, 2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_2(Struct_1(global1.a), Struct_1(min(_wgslsmith_dot_vec4_i32(-vec4<i32>(0i, global1.a, -1i, 1i), -vec4<i32>(global1.a, global1.a, 1i, global1.a)), u_input.b)), _wgslsmith_mod_i32(-34233i, _wgslsmith_mod_i32(-global0.c, 46017i) | 1i));
    let var_0 = Struct_2(global0.b, global0.b, _wgslsmith_sub_i32(57282i, -1i));
    var var_1 = func_1();
    var var_2 = Struct_2(Struct_1(_wgslsmith_div_i32(0i ^ global1.a, min(reverseBits(var_1.c), _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.b.a, var_1.a.a), vec2<i32>(-2147483647i, -1i))))), Struct_1(_wgslsmith_add_i32(_wgslsmith_mult_i32(~var_1.c, global1.a), ~22872i)), 10109i);
    let var_3 = select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, any(vec2<bool>(true, true))), vec4<bool>(select(true, true, any(vec2<bool>(true, false))), true, true, false)), vec4<bool>(any(vec3<bool>(true, true, true)), all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false)), all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), all(vec2<bool>(true, true)))), true), !select(vec4<bool>(any(vec2<bool>(true, false)), true, -1i <= u_input.d, true), vec4<bool>(true, u_input.d > var_0.a.a, all(vec2<bool>(false, true)), all(vec4<bool>(true, false, false, true))), vec4<bool>(true, true, true, true)));
    global0 = Struct_2(var_0.b, var_1.a, _wgslsmith_dot_vec4_i32(~reverseBits(vec4<i32>(2147483647i, global1.a, 977i, var_0.b.a)), -abs(vec4<i32>(var_2.a.a, 0i, global1.a, var_1.b.a))) & (~(~2147483647i) & ~global1.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(min(abs(vec4<i32>(u_input.b, -31129i, -38056i, var_2.b.a)), vec4<i32>(var_2.c, -1i, var_1.b.a, global1.a)), abs(_wgslsmith_sub_vec4_i32(vec4<i32>(var_0.a.a, 1i, 97731i, -1i), vec4<i32>(var_0.b.a, global1.a, -2147483647i, u_input.d)))), ~vec4<i32>(30565i, -39199i, -1i, var_2.a.a), min(vec4<i32>(1i, u_input.d, var_2.b.a, ~87193i), ~vec4<i32>(u_input.b, u_input.b, 44308i, global1.a))));
}

