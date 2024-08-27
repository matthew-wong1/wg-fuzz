struct Struct_1 {
    a: vec3<bool>,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<bool>(false, false, false), vec2<bool>(false, true));

var<private> global1: Struct_1;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: u32) -> u32 {
    let var_0 = u_input.a.ww;
    var var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -485f)));
    let var_2 = global0.b;
    global0 = Struct_1(vec3<bool>(all(vec2<bool>(true, true)), global0.b.x, any(global0.a.xy)), !global0.b);
    var var_3 = min(~(~(min(vec4<u32>(31427u, 54444u, 4294967295u, 16718u), vec4<u32>(arg_0, arg_0, 7111u, arg_0)) ^ _wgslsmith_mult_vec4_u32(vec4<u32>(0u, arg_0, 1u, 1u), vec4<u32>(25778u, 68146u, arg_0, 14787u)))), ~_wgslsmith_mult_vec4_u32(~abs(vec4<u32>(36102u, 1u, 1u, arg_0)), ~(~vec4<u32>(0u, 1u, arg_0, 1u))));
    return 70260u;
}

fn func_2(arg_0: f32) -> Struct_1 {
    let var_0 = Struct_1(global0.a, select(global0.b, global1.b, global1.b));
    var var_1 = Struct_1(select(var_0.a, !vec3<bool>(all(global1.b), false, true), global1.a), !vec2<bool>(var_0.a.x, global0.a.x));
    var_1 = var_0;
    var_1 = var_0;
    var var_2 = _wgslsmith_div_u32(~(~func_3(1851u) << (_wgslsmith_sub_u32(38623u, abs(1u)) % 32u)), 68863u);
    return Struct_1(vec3<bool>(var_0.b.x, false, !(!global1.a.x & true)), vec2<bool>(true, all(var_0.a.xz)));
}

fn func_1() -> Struct_1 {
    global1 = Struct_1(vec3<bool>(global1.b.x, true, !any(global0.a)), select(select(select(select(global0.a.zx, vec2<bool>(false, true), global0.a.zx), global0.b, select(vec2<bool>(true, false), vec2<bool>(global0.b.x, global1.b.x), false)), vec2<bool>(global1.b.x, false), false), vec2<bool>(true, false), !global0.a.x));
    global0 = func_2(1571f);
    let var_0 = func_2(_wgslsmith_div_f32(-454f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1378f + _wgslsmith_f_op_f32(1000f - -1402f))))));
    global0 = Struct_1(select(!(!select(global1.a, var_0.a, var_0.b.x)), !(!global1.a), select(select(global1.a, !global0.a, global1.a), global1.a, var_0.a)), global0.a.zy);
    var var_1 = var_0;
    return Struct_1(vec3<bool>(var_0.b.x, global0.b.x, global0.b.x), select(func_2(-1000f).a.yy, var_0.b, select(vec2<bool>(global0.a.x, false), global0.b, select(select(vec2<bool>(global0.b.x, global0.a.x), global1.b, vec2<bool>(false, true)), !vec2<bool>(var_0.a.x, global1.b.x), select(vec2<bool>(global1.b.x, global0.b.x), global1.b, vec2<bool>(false, global1.a.x))))));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-1434f, -1006f, arg_1.x | true)), -1000f);
    var var_1 = _wgslsmith_dot_vec2_u32(vec2<u32>(0u, _wgslsmith_dot_vec2_u32(min(select(vec2<u32>(61144u, 38560u), vec2<u32>(56487u, 21351u), arg_0.a.yx), vec2<u32>(4294967295u, 40312u)), vec2<u32>(52090u, _wgslsmith_div_u32(77031u, 4294967295u)))), vec2<u32>(func_3(_wgslsmith_add_u32(8157u, 22690u)), ~func_3(1u)));
    global0 = Struct_1(!select(!select(vec3<bool>(true, global0.a.x, global0.b.x), vec3<bool>(true, arg_0.b.x, true), arg_2.a), func_2(_wgslsmith_f_op_f32(max(-1364f, 296f))).a, func_2(_wgslsmith_f_op_f32(1000f * -832f)).b.x), !arg_1);
    global1 = Struct_1(func_1().a, arg_2.a.xz);
    global1 = func_1();
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(func_1(), vec2<bool>(all(select(!vec4<bool>(true, false, global1.a.x, global0.a.x), vec4<bool>(global1.b.x, true, global0.a.x, false), !global1.b.x)), max(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 28730u, 1u, 21688u), vec4<u32>(31549u, 13031u, 94559u, 1u)), 0u) < ~_wgslsmith_add_u32(29041u, 39647u)), Struct_1(!vec3<bool>(global0.a.x, global0.a.x, global1.b.x), select(global1.a.yz, select(func_2(-1206f).a.zx, func_2(-563f).a.xy, global1.a.x), vec2<bool>(true, !global1.a.x))));
    let var_1 = 451f;
    global1 = var_0;
    global1 = var_0;
    let var_2 = vec3<bool>(var_0.b.x, true, !(global1.b.x || var_0.a.x));
    global0 = var_0;
    global0 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-683f + 128f), _wgslsmith_f_op_f32(min(var_1, 840f)), true)))));
    let x = u_input.a;
    s_output = StorageBuffer(48153i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(209f, 141f, -510f, 1f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-870f, var_1, -652f, var_1)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, -1748f, var_1, var_1) - vec4<f32>(1488f, -1069f, var_1, var_1))))));
}

