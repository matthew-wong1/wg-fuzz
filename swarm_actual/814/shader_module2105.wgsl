struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: bool;

var<private> global2: vec4<i32> = vec4<i32>(-21241i, 0i, i32(-2147483648), 1i);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: Struct_1) -> u32 {
    let var_0 = Struct_1(vec3<bool>(any(!arg_1.a.zx), false, arg_1.b), arg_1.b || !all(select(vec4<bool>(false, arg_1.a.x, true, global0.a.x), vec4<bool>(global0.a.x, true, global0.b, true), global0.b)), _wgslsmith_f_op_f32(f32(-1f) * -120f));
    global1 = true;
    global0 = var_0;
    var var_1 = 53952u;
    let var_2 = _wgslsmith_add_i32(1i, global2.x);
    return u_input.a;
}

fn func_2(arg_0: Struct_1) -> f32 {
    global0 = Struct_1(!select(vec3<bool>(any(vec3<bool>(true, global0.a.x, false)), 4294967295u < u_input.a, !arg_0.b), vec3<bool>(any(vec4<bool>(arg_0.b, global0.b, arg_0.b, true)), any(vec4<bool>(true, false, arg_0.b, true)), all(vec4<bool>(false, arg_0.b, global0.a.x, arg_0.a.x))), func_3(-1156f, Struct_1(vec3<bool>(false, false, arg_0.b), true, global0.c)) == 0u), arg_0.b, global0.c);
    let var_0 = arg_0;
    let var_1 = Struct_1(select(vec3<bool>(false, var_0.b, arg_0.a.x), vec3<bool>(any(select(var_0.a, arg_0.a, arg_0.a)), true, true), vec3<bool>((global0.b & arg_0.a.x) && false, true, !arg_0.b)), arg_0.b, _wgslsmith_f_op_f32(-1196f + _wgslsmith_div_f32(-963f, _wgslsmith_f_op_f32(f32(-1f) * -225f))));
    var var_2 = global2.x;
    var var_3 = !(!vec4<bool>(any(vec4<bool>(global0.a.x, true, false, var_1.b)), global0.b, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, 4294967295u), vec3<u32>(4294967295u, u_input.a, u_input.a)) < ~u_input.a, true && (881u >= u_input.a)));
    return _wgslsmith_f_op_f32(sign(var_1.c));
}

fn func_1(arg_0: Struct_1) -> i32 {
    global1 = all(vec2<bool>(true, global0.c > _wgslsmith_f_op_f32(func_2(arg_0))));
    let var_0 = arg_0;
    var var_1 = Struct_1(vec3<bool>(true, true, true), true, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(arg_0.c, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.c, global0.c) + -371f))))));
    let var_2 = arg_0;
    var var_3 = var_0;
    return 32881i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<i32>(-min(_wgslsmith_dot_vec2_i32(vec2<i32>(global2.x, global2.x), vec2<i32>(global2.x, global2.x)) << (min(u_input.a, u_input.a) % 32u), -14853i), -_wgslsmith_sub_i32(global2.x, abs(-1i)), ~select(1i, _wgslsmith_add_i32(4345i, global2.x) & global2.x, global0.a.x), 2147483647i);
    global2 = vec4<i32>(var_0.x << (~1u % 32u), _wgslsmith_sub_i32(var_0.x, -_wgslsmith_mult_i32(_wgslsmith_mod_i32(global2.x, var_0.x), 2147483647i)), func_1(Struct_1(vec3<bool>(true, true, true), true, 865f)) << (1u % 32u), -13973i);
    let var_1 = _wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_add_u32(1u, 54321u), ~_wgslsmith_add_u32(_wgslsmith_add_u32(0u, 4294967295u), _wgslsmith_div_u32(u_input.a, 48468u)), abs(max(u_input.a, 1u)) << (~_wgslsmith_mult_u32(4282u, 0u) % 32u), 4294967295u), ~(~(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, 4294967295u, 19727u, 22733u), vec4<u32>(4294967295u, 35916u, 1u, 51745u), vec4<u32>(0u, u_input.a, 1u, u_input.a)) | vec4<u32>(41083u, 1u, 64426u, u_input.a))));
    global0 = Struct_1(global0.a, abs(~func_3(global0.c, Struct_1(vec3<bool>(global0.a.x, global0.a.x, global0.a.x), false, global0.c))) > _wgslsmith_clamp_u32(~var_1.x, var_1.x, ~(1u >> (u_input.a % 32u))), -455f);
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.c, 2452f, 315f, global0.c), vec4<f32>(global0.c, -724f, -706f, global0.c), true))) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global0.c, 129f, global0.c, global0.c))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.c, 713f, -1000f, global0.c)))))));
    let x = u_input.a;
    s_output = StorageBuffer(~var_1.yz, ~vec3<u32>(80533u, 26392u, min(4294967295u, var_1.x) << (53224u % 32u)), _wgslsmith_f_op_f32(step(-1043f, 394f)));
}

