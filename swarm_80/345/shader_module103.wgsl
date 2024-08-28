struct Struct_1 {
    a: vec2<bool>,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<bool>(true, false), vec2<u32>(52659u, 1u));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2() -> vec4<bool> {
    global0 = Struct_1(vec2<bool>(global0.a.x, true), u_input.a.yz);
    return !vec4<bool>(true, global0.a.x, false, any(!vec3<bool>(global0.a.x, global0.a.x, true)));
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_1) -> vec4<bool> {
    let var_0 = vec2<i32>(abs(3299i), ~(-18761i));
    return func_2();
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> bool {
    let var_0 = _wgslsmith_f_op_f32(-1f);
    global0 = Struct_1(func_1(vec4<u32>(4294967295u, _wgslsmith_add_u32(arg_0.b.x, ~arg_1.b.x), _wgslsmith_dot_vec3_u32(~vec3<u32>(10562u, u_input.a.x, arg_1.b.x), u_input.a), arg_0.b.x), arg_1).yz, u_input.a.zy & arg_0.b);
    var var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0, var_0, 1330f, 355f), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(479f, var_0, -1000f, -976f)))))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(503f, var_0, var_0, var_0) - vec4<f32>(var_0, -160f, var_0, -220f)))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-262f, -633f, 229f, var_0)))))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0, var_0, var_0, 1579f), vec4<f32>(var_0, var_0, 691f, var_0), vec4<bool>(global0.a.x, true, arg_0.a.x, false))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, var_0, -544f, var_0)), func_1(vec4<u32>(u_input.a.x, 56456u, global0.b.x, 0u), Struct_1(vec2<bool>(false, true), global0.b)).x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-302f, var_0, 1584f, 663f))) + vec4<f32>(var_0, 1000f, var_0, var_0)))))), !(!(!vec4<bool>(arg_1.a.x, true, true, false)))));
    global0 = Struct_1(func_2().wz, vec2<u32>(min(0u << (arg_0.b.x % 32u), 4294967295u), _wgslsmith_div_u32(~43290u, arg_1.b.x)) >> (min(arg_1.b, select(global0.b, countOneBits(vec2<u32>(arg_1.b.x, 51696u)), select(vec2<bool>(arg_1.a.x, false), vec2<bool>(true, false), vec2<bool>(arg_0.a.x, arg_0.a.x)))) % vec2<u32>(32u)));
    global0 = arg_0;
    return u_input.b.x > u_input.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(!(!select(vec4<bool>(true, global0.a.x, false, true), vec4<bool>(true, true, global0.a.x, false), true)), !(!func_1(vec4<u32>(u_input.a.x, global0.b.x, 4294967295u, 1u), Struct_1(global0.a, vec2<u32>(u_input.a.x, global0.b.x)))), vec4<bool>(any(func_1(vec4<u32>(90790u, 32890u, u_input.a.x, global0.b.x), Struct_1(vec2<bool>(global0.a.x, global0.a.x), global0.b)).yzw), global0.a.x, global0.a.x, !global0.a.x));
    let var_1 = ~(~_wgslsmith_mult_u32(abs(global0.b.x), ~1u)) <= select(abs(u_input.a.x), global0.b.x, !global0.a.x);
    var_0 = func_1(~vec4<u32>(u_input.a.x, firstTrailingBit(u_input.a.x), u_input.a.x, ~_wgslsmith_mod_u32(34850u, 4294967295u)), Struct_1(vec2<bool>(true, var_0.x), firstTrailingBit(~global0.b)));
    var_0 = func_1(~(~select(_wgslsmith_mod_vec4_u32(vec4<u32>(61463u, global0.b.x, u_input.a.x, 1u), vec4<u32>(40206u, 4294967295u, 1u, 4294967295u)), ~vec4<u32>(4294967295u, 0u, 41240u, 4294967295u), !vec4<bool>(var_0.x, true, true, var_0.x))), Struct_1(!(!global0.a), ~(~reverseBits(u_input.a.zz))));
    global0 = Struct_1(vec2<bool>(func_3(Struct_1(!vec2<bool>(false, var_0.x), firstTrailingBit(vec2<u32>(1549u, 0u))), Struct_1(vec2<bool>(true, true), _wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, u_input.a.x), vec2<u32>(79970u, 88696u)))), global0.a.x), ~min(~min(vec2<u32>(u_input.a.x, u_input.a.x), vec2<u32>(u_input.a.x, global0.b.x)), countOneBits(u_input.a.xx >> (vec2<u32>(global0.b.x, u_input.a.x) % vec2<u32>(32u)))));
    var var_2 = _wgslsmith_sub_vec2_u32(u_input.a.zx, ~u_input.a.yy);
    global0 = Struct_1(!(!vec2<bool>(var_1 || var_1, var_0.x)), global0.b);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x, u_input.a, abs(u_input.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1641f * _wgslsmith_f_op_f32(select(-999f, 476f, true)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -441f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(796f, -418f)), _wgslsmith_f_op_f32(-437f + -1887f), true)))));
}

