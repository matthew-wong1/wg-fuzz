struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: vec4<u32>,
    d: f32,
    e: vec4<f32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_1,
    c: Struct_1,
    d: f32,
}

struct Struct_4 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(745f);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: Struct_2, arg_1: vec3<f32>) -> Struct_2 {
    global0 = Struct_2(global0.a);
    var var_0 = arg_0;
    global0 = arg_0;
    global0 = Struct_2(arg_1.x);
    var var_1 = arg_0;
    return arg_0;
}

fn func_1() -> Struct_1 {
    global0 = Struct_2(global0.a);
    global0 = func_2(Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-102f * global0.a) - _wgslsmith_f_op_f32(global0.a + global0.a)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-302f, 969f, _wgslsmith_f_op_f32(global0.a * global0.a)) * _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-264f, global0.a, -491f))))))));
    var var_0 = _wgslsmith_f_op_f32(select(1000f, -325f, false));
    var_0 = _wgslsmith_f_op_f32(-global0.a);
    global0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1612f * _wgslsmith_f_op_f32(sign(486f)))));
    return Struct_1(_wgslsmith_sub_i32(~select(~(-59691i), ~33738i, true), firstLeadingBit(min(abs(12296i), i32(-1i) * -6171i))), u_input.c | countOneBits(_wgslsmith_add_vec2_u32(u_input.a ^ u_input.a, select(vec2<u32>(u_input.b, u_input.c.x), vec2<u32>(u_input.c.x, 61332u), vec2<bool>(false, true)))), vec4<u32>(~(~max(0u, u_input.b)), u_input.b, min(0u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 24743u, u_input.a.x, u_input.b) ^ vec4<u32>(61629u, 4294967295u, 54619u, 5181u), abs(vec4<u32>(u_input.c.x, 8547u, 1777u, u_input.a.x)))), 0u), global0.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1000f, -1232f, -940f, -770f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1702f, 1000f, -676f, global0.a)), true)) * _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a, global0.a, 1613f, global0.a) + vec4<f32>(global0.a, global0.a, -1439f, global0.a)))))));
}

fn func_3(arg_0: vec2<bool>) -> i32 {
    var var_0 = 725f;
    let var_1 = Struct_3(abs(~(~reverseBits(vec2<i32>(-1i, -19200i)))), func_1(), func_1(), _wgslsmith_f_op_f32(floor(global0.a)));
    global0 = Struct_2(_wgslsmith_f_op_f32(round(2475f)));
    var var_2 = var_1.c.c;
    let var_3 = _wgslsmith_add_vec2_i32(var_1.a, var_1.a);
    return -21116i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = _wgslsmith_sub_i32(~(~(~countOneBits(-63043i))), func_3(!vec2<bool>(select(true, true, false), true)));
    global0 = func_2(func_2(Struct_2(_wgslsmith_f_op_f32(global0.a - _wgslsmith_f_op_f32(-global0.a))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1351f + -445f)), global0.a, var_0.d)), var_0.e.wzx);
    var var_2 = _wgslsmith_f_op_f32(max(-476f, _wgslsmith_f_op_f32(-func_2(Struct_2(-168f), var_0.e.wwx).a)));
    global0 = func_2(func_2(Struct_2(_wgslsmith_f_op_f32(-var_0.e.x)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1033f), global0.a, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(global0.a)))))), var_0.e.zxw);
    let var_3 = Struct_4(select(vec3<bool>(true, false, _wgslsmith_div_f32(var_0.d, -264f) < _wgslsmith_f_op_f32(exp2(var_0.e.x))), select(vec3<bool>(true, true, true), vec3<bool>(select(true, true, false), false, true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), false)), select(vec3<bool>(true, true, true), !select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true)), all(vec2<bool>(true, true)))));
    var_2 = -1000f;
    let x = u_input.a;
    s_output = StorageBuffer(func_1().b.x);
}

