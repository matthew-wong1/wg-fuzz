struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: bool,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: u32,
    d: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: bool = true;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3() -> vec2<u32> {
    let var_0 = global0.a.a.zwz;
    var var_1 = -u_input.a.x;
    let var_2 = Struct_2(Struct_1(global0.a.a, true, global0.a.b, true), true, select(var_0.x >> (1u % 32u), 0u, !any(!vec2<bool>(global0.b, false))), 0u);
    var var_3 = var_2.a.c || global0.b;
    let var_4 = u_input.a;
    return vec2<u32>(~1u, global0.a.a.x);
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_2) -> bool {
    var var_0 = vec2<u32>(global0.a.a.x, arg_1.a.a.x);
    let var_1 = Struct_2(Struct_1(arg_1.a.a, global0.b, !all(!vec4<bool>(true, true, arg_1.b, arg_1.b)), arg_1.b), arg_1.b, ~select(_wgslsmith_mod_u32(arg_1.a.a.x, 1u), u_input.b, arg_1.a.c), u_input.b);
    var var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-482f, _wgslsmith_div_f32(-1751f, -1344f), _wgslsmith_f_op_f32(-1593f * 399f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-604f + -141f), _wgslsmith_f_op_f32(step(752f, -335f))))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1345f, -892f, 1239f, 1832f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(409f, 979f, 166f, 1000f)))) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1266f, 149f, 166f, -1000f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1359f, 486f, -2063f, -618f)), !global0.a.c))))));
    let var_3 = -1i;
    var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(var_2.x + _wgslsmith_f_op_f32(f32(-1f) * -589f)), var_2.x, 803f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x - var_2.x))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-385f, -596f, -1000f, var_2.x), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(442f, -1967f, 170f, -310f))))))), true)));
    return false;
}

fn func_2() -> Struct_2 {
    global0 = Struct_2(global0.a, true, 41494u, _wgslsmith_dot_vec4_u32(global0.a.a, vec4<u32>(4294967295u & global0.c, 1u, ~select(u_input.b, u_input.b, false), _wgslsmith_mod_u32(18657u, 12057u))));
    let var_0 = !vec4<bool>(false, all(!(!vec4<bool>(false, global0.b, true, false))), !(-184f > _wgslsmith_f_op_f32(trunc(242f))), func_4(_wgslsmith_clamp_vec2_u32(vec2<u32>(18813u, 4294967295u), func_3(), global0.a.a.wy), Struct_2(global0.a, global0.b, ~u_input.b, _wgslsmith_dot_vec4_u32(vec4<u32>(37959u, u_input.b, 16400u, global0.d), vec4<u32>(global0.a.a.x, 1u, 0u, u_input.b)))));
    var var_1 = Struct_2(Struct_1(~(~(global0.a.a << (global0.a.a % vec4<u32>(32u)))), !(-u_input.a.x < 1i), all(vec4<bool>(any(vec4<bool>(true, global0.a.b, true, var_0.x)), u_input.b < u_input.b, !var_0.x, true)), all(vec4<bool>(true, any(vec4<bool>(var_0.x, var_0.x, true, var_0.x)), true, true))), select(!var_0.x, select(select(true, global0.b, false), global0.a.c, any(vec2<bool>(global0.b, var_0.x))) || false, all(!select(vec4<bool>(global0.b, true, global0.b, var_0.x), vec4<bool>(global0.b, var_0.x, false, var_0.x), global0.a.d))), _wgslsmith_mod_u32(~(~(~u_input.b)), 1u), u_input.b);
    let var_2 = Struct_1(firstTrailingBit(_wgslsmith_add_vec4_u32(global0.a.a, vec4<u32>(reverseBits(38115u), ~var_1.d, select(72841u, 15481u, var_0.x), var_1.a.a.x << (u_input.b % 32u)))), !var_0.x, var_0.x, any(vec2<bool>(!(!var_1.a.d), true)));
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(2211f, -1135f, -396f), vec3<f32>(-700f, -123f, 873f)))))));
    return Struct_2(var_2, !(!(var_2.a.x == _wgslsmith_mod_u32(var_2.a.x, global0.a.a.x))), 1u, firstLeadingBit(~(~var_1.d) ^ _wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 31215u, global0.c), _wgslsmith_div_vec3_u32(vec3<u32>(var_1.a.a.x, global0.d, 4294967295u), vec3<u32>(global0.c, u_input.b, 121u)))));
}

fn func_1() -> bool {
    let var_0 = !(global0.b != global0.b);
    global0 = func_2();
    global0 = Struct_2(func_2().a, select(true, true, global0.b), global0.c, 0u);
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(~u_input.b, _wgslsmith_dot_vec3_u32(~select(global0.a.a.xyw, global0.a.a.ywz, global0.b), func_2().a.a.xyx)), u_input.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1380f - -361f))) + _wgslsmith_f_op_f32(max(777f, _wgslsmith_div_f32(-767f, _wgslsmith_f_op_f32(-435f - 1560f))))), -280f);
}

