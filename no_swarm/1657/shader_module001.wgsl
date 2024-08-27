struct Struct_1 {
    a: vec4<bool>,
    b: vec2<f32>,
    c: u32,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
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

var<private> global0: Struct_1 = Struct_1(vec4<bool>(false, true, true, true), vec2<f32>(699f, 203f), 23463u, vec3<bool>(false, false, false));

var<private> global1: Struct_1 = Struct_1(vec4<bool>(false, false, false, false), vec2<f32>(401f, -807f), 1u, vec3<bool>(false, false, false));

var<private> global2: Struct_1 = Struct_1(vec4<bool>(true, true, false, false), vec2<f32>(-152f, -1643f), 4294967295u, vec3<bool>(false, true, true));

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_1() -> u32 {
    return ~4294967295u;
}

fn func_3(arg_0: i32, arg_1: vec2<bool>) -> vec2<f32> {
    var var_0 = max(57074u, 70208u);
    let var_1 = Struct_1(select(global0.a, global2.a, !all(vec4<bool>(true, true, true, true))), _wgslsmith_f_op_vec2_f32(max(global0.b, _wgslsmith_div_vec2_f32(vec2<f32>(global1.b.x, _wgslsmith_f_op_f32(-global2.b.x)), global1.b))), max(~51736u, firstTrailingBit(global2.c)), global2.a.zxy);
    global2 = var_1;
    let var_2 = var_1.b.x;
    let var_3 = global2.d.xz;
    return vec2<f32>(-1163f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_2 + 1000f))));
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1) -> f32 {
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.b.x, arg_0.b.x));
}

fn func_2(arg_0: Struct_1, arg_1: bool) -> bool {
    var var_0 = Struct_1(global2.a, vec2<f32>(1000f, _wgslsmith_f_op_f32(func_4(Struct_1(global2.a, _wgslsmith_f_op_vec2_f32(func_3(u_input.a.x, global2.d.yx)), global2.c, select(global0.a.zxy, vec3<bool>(global0.d.x, true, arg_1), true)), u_input.a.x, Struct_1(global2.a, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0.b.x, global0.b.x), vec2<f32>(2304f, arg_0.b.x), global1.a.x)), ~global1.c, global0.a.xzx)))), 20805u, select(vec3<bool>(true, all(global2.a), false), global2.d, vec3<bool>(!any(arg_0.d.yx), !(17867i <= u_input.a.x), _wgslsmith_f_op_f32(445f + 836f) >= _wgslsmith_f_op_f32(-global1.b.x))));
    let var_1 = arg_0;
    var_0 = var_1;
    var_0 = Struct_1(vec4<bool>(!global1.d.x, !global2.d.x, true, any(global2.d.yx)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(global2.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-2541f, -444f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(176f, global1.b.x) - var_0.b))))), min(global2.c, _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(~vec3<u32>(28519u, 11555u, var_1.c), reverseBits(vec3<u32>(27544u, 126327u, 18037u))), _wgslsmith_sub_vec3_u32(vec3<u32>(var_1.c, var_0.c, 0u), vec3<u32>(45754u, 0u, 44499u)))), select(var_0.d, vec3<bool>(_wgslsmith_clamp_u32(arg_0.c, var_1.c, arg_0.c) > 1u, all(select(vec4<bool>(false, var_1.a.x, true, false), vec4<bool>(var_1.d.x, global2.d.x, true, global2.d.x), arg_0.a)), false), var_1.a.xxw));
    let var_2 = _wgslsmith_sub_u32(4294967295u, ~((global2.c ^ global1.c) | min(global2.c, 18790u)) & global1.c);
    return !all(select(global0.a, select(vec4<bool>(true, false, var_0.d.x, true), !vec4<bool>(true, true, true, arg_1), any(vec3<bool>(false, false, true))), !any(global1.a)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(select(global2.a, vec4<bool>(all(!global2.a), any(global2.d), false, !(global0.c != global0.c)), global1.a.x), vec2<f32>(_wgslsmith_f_op_f32(global2.b.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.b.x))), _wgslsmith_f_op_f32(-global0.b.x)), func_1(), vec3<bool>(global2.a.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global0.b.x - global2.b.x))) > _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global2.b.x * global2.b.x))), global1.d.x));
    let var_1 = ~(-u_input.a.yy);
    global1 = Struct_1(select(vec4<bool>(any(vec3<bool>(var_0.a.x, true, global0.a.x)), global2.d.x, !(global2.b.x != var_0.b.x), true), vec4<bool>(53892u >= global1.c, select(global2.d.x, any(global2.a), any(global2.d.zy)), global1.a.x, func_2(var_0, true)), global1.d.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(144f, var_0.b.x)))), global1.c, select(select(global1.a.xzx, vec3<bool>(var_0.d.x, true, !global1.d.x), global1.d), vec3<bool>(any(vec2<bool>(false, global2.a.x)), true, var_0.d.x), vec3<bool>(true, any(select(global1.a.xw, global2.d.xz, false)), (u_input.b == global0.c) & true)));
    global0 = Struct_1(global1.a, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(abs(global0.b)))), 66770u, vec3<bool>(false, var_0.d.x, any(vec2<bool>(true, true))));
    global2 = Struct_1(select(!global0.a, !select(!vec4<bool>(global2.d.x, global0.a.x, global1.a.x, true), vec4<bool>(global1.d.x, true, true, false), u_input.b < global2.c), ~0i != u_input.a.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(-820f)), _wgslsmith_f_op_f32(1172f * -801f)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global0.b * var_0.b)))), 2417u, global0.d);
    global0 = Struct_1(!global0.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(var_0.b))), global2.c, global0.a.ywz);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(ceil(global1.b.x)), _wgslsmith_f_op_vec2_f32(func_3(-u_input.a.x, global0.d.zy)).x, global0.b.x));
}

