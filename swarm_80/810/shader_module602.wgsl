struct Struct_1 {
    a: vec3<u32>,
    b: vec3<i32>,
    c: i32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 2> = array<Struct_3, 2>(Struct_3(true), Struct_3(false));

var<private> global1: vec3<bool> = vec3<bool>(false, true, true);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: bool, arg_1: bool) -> i32 {
    let var_0 = -(~(-max(min(vec4<i32>(2147483647i, -42484i, -2147483647i, 5668i), vec4<i32>(0i, 2147483647i, -1i, 0i)), vec4<i32>(-5094i, -2147483647i, -16186i, 2038i))));
    var var_1 = select(select(!vec3<bool>(false, !arg_1, !global1.x), !vec3<bool>(global1.x, true, false), !global1.x), !(!vec3<bool>(true, arg_0, true)), true);
    let var_2 = Struct_2(true);
    let var_3 = var_2;
    let var_4 = ~firstTrailingBit(var_0.xx);
    return -25066i;
}

fn func_3(arg_0: vec4<bool>, arg_1: bool, arg_2: u32) -> u32 {
    var var_0 = Struct_2(all(arg_0.xxw));
    let var_1 = !(!vec2<bool>(any(!vec3<bool>(arg_1, true, false)), true));
    var var_2 = -1070f;
    var_2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1666f, _wgslsmith_f_op_f32(f32(-1f) * -1245f))) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(-1348f, -1114f)))))));
    global1 = select(select(vec3<bool>(true, any(arg_0.ywx) || any(vec2<bool>(global1.x, false)), var_0.a), vec3<bool>(true, true, true), !(!(!arg_0.xwx))), arg_0.xyx, !select(vec3<bool>(var_1.x, true, true), vec3<bool>(global1.x, any(vec2<bool>(false, false)), true), true));
    return u_input.b;
}

fn func_1(arg_0: Struct_2, arg_1: Struct_1) -> f32 {
    global0 = array<Struct_3, 2>();
    var var_0 = !(!select(select(global1.zx, !global1.xy, true), global1.zy, global1.zz));
    var var_1 = func_2(false, arg_0.a) >> (_wgslsmith_dot_vec3_u32(~arg_1.a, _wgslsmith_add_vec3_u32(arg_1.a, vec3<u32>(arg_1.a.x << (u_input.c.x % 32u), func_3(vec4<bool>(var_0.x, global1.x, global1.x, true), false, 23334u), 14732u))) % 32u);
    var var_2 = arg_0;
    global1 = !select(vec3<bool>(any(select(vec3<bool>(true, var_2.a, false), vec3<bool>(var_0.x, true, false), var_0.x)), false, false), vec3<bool>(_wgslsmith_dot_vec3_u32(u_input.c.xxx, vec3<u32>(22375u, u_input.c.x, 15807u)) >= _wgslsmith_dot_vec2_u32(arg_1.a.zx, arg_1.a.yx), !var_2.a & true, !(!var_0.x)), vec3<bool>(all(vec3<bool>(var_0.x, arg_0.a, var_0.x)), var_0.x | false, false));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(-753f, 1f, true)))))) - -1068f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 0u;
    var_0 = 20867u;
    global1 = select(vec3<bool>(false, !any(!global1.zz), false), !vec3<bool>(global1.x, any(select(vec3<bool>(true, global1.x, false), vec3<bool>(global1.x, global1.x, global1.x), vec3<bool>(global1.x, global1.x, global1.x))), true), select(global1.x, _wgslsmith_add_u32(u_input.c.x, u_input.b) >= (u_input.c.x ^ u_input.a), select(true, true, true)) | any(global1.yy));
    var var_1 = _wgslsmith_sub_i32(firstLeadingBit(15257i), 1i);
    global1 = select(vec3<bool>(global1.x, true, global1.x), vec3<bool>(!global1.x, false != global1.x, false), !vec3<bool>(-259f >= _wgslsmith_f_op_f32(func_1(Struct_2(global1.x), Struct_1(u_input.c.zzy, vec3<i32>(2147483647i, 81016i, 22113i), -1i))), true, true));
    let x = u_input.a;
    s_output = StorageBuffer(-290f, -2147483647i, 14183u, _wgslsmith_f_op_f32(f32(-1f) * -975f));
}

