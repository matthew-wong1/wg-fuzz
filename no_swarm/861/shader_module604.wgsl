struct Struct_1 {
    a: vec2<bool>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: f32,
    e: vec2<f32>,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: vec4<u32>,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<u32>,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<bool>(false, true), vec2<i32>(-3453i, -24805i));

var<private> global1: vec4<bool> = vec4<bool>(false, true, false, false);

var<private> global2: i32;

var<private> global3: u32 = 1u;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: bool) -> Struct_1 {
    var var_0 = u_input.d > (-2147483647i << (0u % 32u));
    var var_1 = Struct_2(~vec4<i32>(_wgslsmith_clamp_i32(global0.b.x, 6859i, _wgslsmith_add_i32(global0.b.x, u_input.a.x)), 1i, u_input.d, 0i));
    return Struct_1(global1.zy, u_input.e.wy);
}

fn func_1(arg_0: Struct_5, arg_1: vec4<u32>) -> bool {
    let var_0 = Struct_5(vec4<u32>(~(~min(0u, arg_0.a.x)), ~0u, select(1u, 31440u, global1.x), arg_0.a.x), !(!(!arg_0.b)));
    var var_1 = func_2(false);
    var var_2 = true;
    let var_3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(1f, -1816f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1411f * 174f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -886f))), _wgslsmith_f_op_f32(trunc(1f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-788f, -2248f, _wgslsmith_f_op_f32(ceil(1000f))))) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1080f, 1764f))), _wgslsmith_f_op_f32(floor(-2144f)), 1000f)));
    let var_4 = select(select(vec2<u32>(var_0.a.x, var_0.a.x & ~u_input.c.x), ~_wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(arg_1.yy, vec2<u32>(4294967295u, arg_1.x)), ~u_input.c.xx), false), var_0.a.zz, select(var_0.b, !select(var_1.a, vec2<bool>(true, true), arg_0.b.x), true));
    return global1.x;
}

fn func_3(arg_0: f32, arg_1: Struct_5, arg_2: Struct_5) -> bool {
    let var_0 = !global0.a.x;
    global1 = select(vec4<bool>(true, false, func_2(any(vec4<bool>(true, arg_1.b.x, true, global0.a.x))).a.x, global0.a.x), !vec4<bool>(_wgslsmith_mult_i32(37929i, 0i) < global0.b.x, arg_1.b.x, arg_2.b.x, !(!var_0)), vec4<bool>(any(global1.xzx), (~u_input.d != 39187i) && true, !(_wgslsmith_f_op_f32(sign(773f)) != _wgslsmith_f_op_f32(-arg_0)), select(true, false, false || arg_1.b.x)));
    var var_1 = !global1.yw;
    var var_2 = Struct_4(2147483647i);
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0));
    return any(!vec4<bool>(!all(vec4<bool>(global1.x, true, true, true)), select(false, global1.x, global0.a.x), true, !any(vec4<bool>(true, global1.x, true, false))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -1000f;
    global1 = vec4<bool>(true, any(select(global1.wwy, vec3<bool>(global1.x, global1.x, global0.a.x), vec3<bool>(true, true, true))) && true, select(func_1(Struct_5(vec4<u32>(u_input.b, 0u, 1u, 91631u), global0.a), ~vec4<u32>(1u, 1u, u_input.c.x, 1u)) & true, !select(func_3(var_0, Struct_5(vec4<u32>(58963u, u_input.c.x, 4294967295u, 106580u), global1.wx), Struct_5(vec4<u32>(u_input.c.x, 4294967295u, u_input.b, u_input.b), global0.a)), var_0 >= var_0, !global1.x), true), all(global1.zw));
    var var_1 = u_input.c;
    global1 = vec4<bool>(!global1.x, !global1.x, all(select(select(vec4<bool>(global0.a.x, false, global0.a.x, true), vec4<bool>(global1.x, global0.a.x, global0.a.x, false), select(true, global0.a.x, false)), select(!vec4<bool>(global0.a.x, true, global1.x, global0.a.x), select(vec4<bool>(true, true, global0.a.x, false), vec4<bool>(false, global0.a.x, false, true), vec4<bool>(false, true, global0.a.x, true)), global0.a.x), all(!vec2<bool>(global1.x, true)))), true);
    var var_2 = Struct_2((vec4<i32>(_wgslsmith_mod_i32(u_input.a.x, u_input.a.x), -34866i, ~u_input.d, -55003i) | vec4<i32>(-68985i, 1i, ~global0.b.x, -11403i << (var_1.x % 32u))) ^ vec4<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.d, global0.b.x), global0.b), firstLeadingBit(vec2<i32>(1i, global0.b.x))), -(~(-2147483647i)), max(1i, global0.b.x), func_2(global0.a.x).b.x | _wgslsmith_add_i32(-1i, 8006i)));
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(586f, -1118f, -526f))) - vec3<f32>(-202f, -543f, 714f))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(-var_0), 340f, -331f, _wgslsmith_f_op_f32(-var_0)), vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_3.x), _wgslsmith_f_op_f32(exp2(var_0)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.x)), -340f, var_0));
}

