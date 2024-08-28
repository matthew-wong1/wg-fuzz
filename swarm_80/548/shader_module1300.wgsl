struct Struct_1 {
    a: vec4<i32>,
    b: vec3<f32>,
    c: vec4<f32>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec4<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<bool>,
    c: Struct_3,
    d: bool,
    e: f32,
}

struct Struct_5 {
    a: vec3<bool>,
    b: bool,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(241f, -1646f, -191f);

var<private> global1: u32 = 4294967295u;

var<private> global2: f32;

var<private> global3: vec4<bool>;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: Struct_5) -> bool {
    return false;
}

fn func_2(arg_0: Struct_2, arg_1: Struct_4, arg_2: Struct_5) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -628f));
    var var_1 = 1u;
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 + 1455f)), -946f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_0.b * 1160f))))) - _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1449f, var_0, 730f))))));
    var var_2 = ~(arg_1.a.d.x | ~u_input.a.x);
    var_2 = firstLeadingBit(~(~10415u ^ _wgslsmith_dot_vec2_u32(~vec2<u32>(arg_0.a.d.x, 36834u), _wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, arg_0.a.d.x), u_input.a, vec2<u32>(arg_1.c.a.d.x, u_input.a.x)))));
    return vec2<bool>(!select(arg_2.b, func_3(_wgslsmith_f_op_vec2_f32(arg_1.c.b + global0.xz), arg_0, arg_2), select(false, arg_1.d, !global3.x)), false);
}

fn func_1(arg_0: u32) -> vec4<bool> {
    return vec4<bool>(!global3.x, all(select(func_2(Struct_2(Struct_1(vec4<i32>(-47336i, u_input.b.x, u_input.b.x, -2147483647i), vec3<f32>(-586f, -611f, 1000f), vec4<f32>(global0.x, global0.x, global0.x, 804f), vec3<u32>(arg_0, arg_0, arg_0)), global0.x, vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x)), Struct_4(Struct_1(u_input.b, vec3<f32>(794f, -981f, 594f), vec4<f32>(542f, 1607f, 197f, 368f), vec3<u32>(arg_0, 4294967295u, arg_0)), vec3<bool>(false, false, true), Struct_3(Struct_1(vec4<i32>(1i, 1i, 1i, u_input.b.x), vec3<f32>(global0.x, 1123f, -1472f), vec4<f32>(-619f, global0.x, -683f, 215f), vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x)), vec2<f32>(-1839f, -1380f)), global3.x, global0.x), Struct_5(global3.zww, global3.x, vec3<i32>(18972i, 48528i, u_input.b.x))), !global3.wz, !global3.x && true)), global3.x, true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<u32>(1u, ~0u, 45071u);
    var var_1 = -u_input.b.x;
    var var_2 = var_0;
    let var_3 = global3.xy;
    var var_4 = global0.x;
    global3 = select(select(vec4<bool>(any(select(vec4<bool>(global3.x, global3.x, true, true), vec4<bool>(true, var_3.x, true, global3.x), vec4<bool>(true, false, var_3.x, var_3.x))), !(global3.x | var_3.x), var_3.x, !(929f > global0.x)), select(!(!vec4<bool>(true, var_3.x, false, global3.x)), func_1(var_2.x), !(!vec4<bool>(global3.x, true, false, true))), var_3.x), func_1(1u), !vec4<bool>(var_3.x, any(!vec4<bool>(var_3.x, var_3.x, var_3.x, false)), u_input.a.x > _wgslsmith_clamp_u32(30748u, u_input.a.x, 45814u), abs(-43849i) < ~u_input.b.x));
    var_4 = 147f;
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global0.x, global0.x, global0.x), vec3<f32>(-461f, 1663f, global0.x))) * _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global0.x, global0.x, 1877f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(-113i, _wgslsmith_clamp_vec2_u32(firstLeadingBit(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a.x, 20011u), var_2.xz)) & vec2<u32>(~var_2.x, ~u_input.a.x), vec2<u32>(34773u, _wgslsmith_dot_vec2_u32(var_0.xz | vec2<u32>(40492u, u_input.a.x), u_input.a)), max(~vec2<u32>(var_0.x, 66439u), u_input.a)), 0i);
}

