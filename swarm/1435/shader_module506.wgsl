struct Struct_1 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec3<u32>,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: f32,
    d: vec2<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(true, true);

var<private> global1: vec2<bool>;

var<private> global2: bool;

var<private> global3: array<Struct_1, 6>;

var<private> global4: array<Struct_1, 2>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1(arg_0: bool) -> bool {
    global3 = array<Struct_1, 6>();
    var var_0 = select(!select(select(vec3<bool>(arg_0, false, arg_0), vec3<bool>(true, arg_0, global1.x), select(vec3<bool>(true, global1.x, false), vec3<bool>(global1.x, global1.x, global1.x), vec3<bool>(arg_0, true, false))), vec3<bool>(true, true, true), select(!vec3<bool>(global1.x, true, true), vec3<bool>(false, true, false), all(vec3<bool>(true, global0.x, global0.x)))), !select(!(!vec3<bool>(global0.x, arg_0, false)), select(!vec3<bool>(true, global1.x, false), !vec3<bool>(arg_0, arg_0, true), true), vec3<bool>(global0.x | true, arg_0, !global1.x)), !global1.x);
    var var_1 = _wgslsmith_sub_u32(u_input.d.x, abs(_wgslsmith_add_u32(u_input.d.x, reverseBits(u_input.c.x))));
    var var_2 = ~u_input.d.x;
    global1 = vec2<bool>(var_0.x, all(!vec2<bool>(arg_0, true)));
    return ~_wgslsmith_dot_vec2_i32(~_wgslsmith_sub_vec2_i32(vec2<i32>(10570i, u_input.a), u_input.b.zy), _wgslsmith_add_vec2_i32(u_input.b.yy, vec2<i32>(-2147483647i, -897i) & vec2<i32>(u_input.e, -2147483647i))) < 0i;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> bool {
    global3 = array<Struct_1, 6>();
    let var_0 = any(vec3<bool>(all(select(arg_2.a.xy, vec2<bool>(false, false), !arg_0.a.yz)), all(!(!vec3<bool>(true, arg_2.a.x, arg_2.a.x))), _wgslsmith_dot_vec2_u32(u_input.c.zz, u_input.c.zx >> (u_input.c.yz % vec2<u32>(32u))) != (_wgslsmith_sub_u32(u_input.d.x, 0u) >> (u_input.d.x % 32u))));
    let var_1 = global1.x;
    var var_2 = Struct_1(vec3<bool>(all(!(!arg_0.a.yz)), !all(!vec2<bool>(global1.x, global1.x)), true));
    var var_3 = Struct_1(vec3<bool>(any(select(!vec4<bool>(false, global0.x, false, var_0), !vec4<bool>(false, false, global0.x, false), true)), true, arg_0.a.x));
    return any(var_2.a.zy);
}

fn func_2() -> Struct_1 {
    var var_0 = !func_3(Struct_1(vec3<bool>(all(vec2<bool>(true, global1.x)), true, !global1.x)), Struct_1(!select(vec3<bool>(global0.x, global1.x, true), vec3<bool>(true, true, true), vec3<bool>(global1.x, false, true))), global4[_wgslsmith_index_u32(4294967295u, 2u)]);
    var var_1 = global4[_wgslsmith_index_u32(~6508u, 2u)];
    let var_2 = u_input.d.x;
    var var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(539f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-240f + -822f)));
    var var_4 = vec4<bool>(!func_1(global1.x), all(select(vec2<bool>(func_1(global1.x), 44911u != var_2), vec2<bool>(!global1.x, global0.x && true), select(var_1.a.zy, !var_1.a.yx, vec2<bool>(var_1.a.x, var_1.a.x)))), true, true);
    return global3[_wgslsmith_index_u32(1u, 6u)];
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<Struct_1, 2>();
    let var_0 = Struct_1(select(!select(select(vec3<bool>(false, true, global0.x), vec3<bool>(false, true, true), true), vec3<bool>(global1.x, false, true), global0.x), vec3<bool>(true, func_1(true), u_input.b.x >= u_input.a), select(vec3<bool>(false, true, global0.x), !select(vec3<bool>(global1.x, true, global1.x), vec3<bool>(true, global0.x, global1.x), vec3<bool>(global0.x, global1.x, false)), select(!vec3<bool>(global0.x, global0.x, true), !vec3<bool>(true, global1.x, global0.x), !vec3<bool>(false, global0.x, false)))));
    global4 = array<Struct_1, 2>();
    let var_1 = func_2();
    let var_2 = var_1.a.x;
    global4 = array<Struct_1, 2>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(vec2<f32>(1211f, -850f), vec2<f32>(1169f, -1524f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(577f, 482f), vec2<f32>(-1604f, 319f)))), func_2().a.xz)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1251f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), u_input.b.yz, abs(min(~u_input.c.x, 1u) ^ u_input.c.x));
}

