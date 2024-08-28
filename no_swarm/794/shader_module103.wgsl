struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec4<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: Struct_1;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: bool) -> Struct_1 {
    global1 = Struct_1(false);
    let var_0 = _wgslsmith_f_op_f32(trunc(437f));
    var var_1 = ~(-u_input.a.x);
    global1 = Struct_1(true);
    var var_2 = _wgslsmith_f_op_f32(-var_0);
    return Struct_1(global1.a);
}

fn func_1(arg_0: f32) -> Struct_1 {
    let var_0 = func_2(u_input.b.x != (~_wgslsmith_div_u32(u_input.b.x, u_input.b.x) | 28246u));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(-689f, _wgslsmith_f_op_f32(f32(-1f) * -183f))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0), 415f)));
    var var_2 = var_0;
    var var_3 = vec2<bool>(any(!(!(!vec2<bool>(global1.a, true)))), !global1.a);
    var var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_0, var_1.x, 1334f, 747f))))))) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1002f + 173f)), -1198f, _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x + 221f)))));
    return Struct_1(global1.a && (var_0.a | true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(784f);
    let var_1 = func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1336f + -1084f)));
    global1 = Struct_1(true);
    let var_2 = 36655i;
    var var_3 = Struct_1(!func_1(_wgslsmith_f_op_f32(f32(-1f) * -361f)).a && func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2330f + -111f))).a);
    var var_4 = Struct_1(var_3.a);
    var var_5 = !vec3<bool>(!(true && var_0.a), ~u_input.c.x == _wgslsmith_mod_u32(u_input.b.x, 4294967295u & u_input.b.x), var_0.a);
    let x = u_input.a;
    s_output = StorageBuffer(1i, u_input.c, ~vec4<u32>(u_input.c.x, 38471u, u_input.b.x, ~0u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) - -705f));
}

