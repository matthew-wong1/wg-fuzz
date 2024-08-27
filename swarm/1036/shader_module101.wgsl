struct Struct_1 {
    a: bool,
    b: vec2<i32>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec2<f32>,
    d: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(true, vec2<i32>(9812i, 64783i), vec2<bool>(true, true));

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: i32, arg_1: vec4<f32>, arg_2: f32) -> vec2<bool> {
    global0 = Struct_1(global0.c.x, firstLeadingBit(-vec2<i32>(-2147483647i ^ global0.b.x, ~arg_0)), vec2<bool>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(arg_1.x, -862f)))) > arg_2, !all(global0.c)));
    var var_0 = _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(u_input.d.wy, countOneBits(min(u_input.d.xz, ~u_input.d.wx))), 1406u);
    let var_1 = Struct_1(false, max(-min(u_input.a.xz & vec2<i32>(arg_0, 17534i), global0.b), _wgslsmith_mod_vec2_i32(~u_input.a.wx, -vec2<i32>(28300i, global0.b.x))), select(!select(global0.c, !vec2<bool>(global0.c.x, global0.c.x), !global0.c.x), global0.c, false));
    var var_2 = var_1;
    var var_3 = Struct_2(Struct_1(var_1.a, countOneBits(-firstLeadingBit(var_1.b)), select(!(!global0.c), select(var_2.c, select(var_2.c, vec2<bool>(var_1.a, true), global0.a), global0.a), var_2.c)), 1f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1127f, -1284f))), _wgslsmith_f_op_vec2_f32(-arg_1.yw))) * _wgslsmith_f_op_vec2_f32(-arg_1.zw))), false);
    return vec2<bool>(any(vec4<bool>(select(var_2.c.x, global0.c.x, global0.c.x) && global0.c.x, true, true, all(select(vec3<bool>(global0.a, var_1.c.x, var_1.a), vec3<bool>(false, true, true), vec3<bool>(var_3.d, false, true))))), any(select(!var_3.a.c, select(vec2<bool>(var_2.c.x, var_3.d), vec2<bool>(true, true), true), !(!vec2<bool>(var_2.a, var_2.c.x)))));
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: vec4<i32>) -> bool {
    global0 = Struct_1(!arg_1.a, max(abs(arg_1.b), vec2<i32>(global0.b.x, -58964i)), global0.c);
    global0 = Struct_1(!global0.a, select(vec2<i32>(max(1i, ~arg_0), -(-33765i & u_input.a.x)), arg_1.b, all(select(!vec3<bool>(arg_1.c.x, true, global0.c.x), !vec3<bool>(global0.a, arg_1.c.x, arg_1.c.x), true | global0.a))), global0.c);
    var var_0 = -806f;
    var_0 = _wgslsmith_f_op_f32(-170f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1038f)), 369f));
    var var_1 = any(!vec2<bool>(!(global0.a == false), any(!global0.c)));
    return global0.a && (true && !arg_1.a);
}

fn func_2(arg_0: i32, arg_1: f32, arg_2: vec3<f32>, arg_3: vec4<f32>) -> Struct_1 {
    let var_0 = global0.c.x;
    let var_1 = arg_3.x;
    let var_2 = min(firstLeadingBit(-20081i), _wgslsmith_dot_vec2_i32(vec2<i32>(i32(-1i) * -22094i, 0i), u_input.a.yw));
    let var_3 = -max(u_input.a.zy >> (countOneBits(vec2<u32>(26266u, 1u)) % vec2<u32>(32u)), u_input.a.xx);
    var var_4 = Struct_2(Struct_1(func_4(-u_input.a.x | ~var_3.x, Struct_1(true, vec2<i32>(18039i, var_2), func_3(u_input.a.x, vec4<f32>(-609f, -1262f, -1030f, var_1), var_1)), select(_wgslsmith_add_vec4_i32(vec4<i32>(-29694i, var_2, -28836i, var_2), vec4<i32>(19129i, var_2, 1i, arg_0)), vec4<i32>(-1i, var_3.x, var_2, var_3.x) & vec4<i32>(arg_0, 2147483647i, arg_0, u_input.a.x), select(false, global0.c.x, false))), ~_wgslsmith_mult_vec2_i32(~u_input.a.zw, max(global0.b, vec2<i32>(-18735i, global0.b.x))), !select(global0.c, vec2<bool>(true, true), global0.c)), arg_2.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(arg_2.yx, _wgslsmith_f_op_vec2_f32(vec2<f32>(-353f, arg_3.x) + vec2<f32>(arg_1, var_1)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(arg_2.xx, arg_2.xx, true))))), global0.a);
    return var_4.a;
}

fn func_1() -> vec2<f32> {
    var var_0 = Struct_2(func_2(-1i, -1407f, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) - vec3<f32>(-1000f, -337f, -719f)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 543f, 1049f)))))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(203f, _wgslsmith_f_op_f32(step(-973f, 1121f)), 2013f, 1f), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1074f, -637f, 1326f, -944f))), true))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, 1f)), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-431f, 693f, global0.c.x)), _wgslsmith_f_op_f32(sign(463f))), 632f), true);
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(-612f, 214f)), _wgslsmith_div_f32(222f, var_0.b))), var_0.b, _wgslsmith_f_op_f32(step(-112f, var_0.b)), _wgslsmith_f_op_f32(-2503f + 1224f));
    var var_2 = vec2<bool>(!all(select(vec2<bool>(true, global0.c.x), global0.c, global0.c)) & !(!(var_0.a.c.x == true)), true);
    let var_3 = 1i << (u_input.d.x % 32u);
    var_0 = Struct_2(var_0.a, var_1.x, vec2<f32>(_wgslsmith_f_op_f32(min(-1441f, 419f)), var_1.x), true);
    return vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c.x) * 783f), _wgslsmith_f_op_f32(max(-921f, var_1.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(Struct_1(!global0.c.x, _wgslsmith_add_vec2_i32(vec2<i32>(u_input.a.x | u_input.a.x, global0.b.x), ~global0.b), vec2<bool>(global0.a, !global0.c.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -775f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1()) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(806f, 129f)))))), true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_0.b + _wgslsmith_f_op_f32(var_0.b + var_0.c.x)), var_0.b, _wgslsmith_f_op_f32(532f + var_0.b))));
}

