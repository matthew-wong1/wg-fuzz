struct Struct_1 {
    a: vec2<bool>,
    b: vec2<f32>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: Struct_1;

var<private> global2: f32;

var<private> global3: array<Struct_2, 9>;

var<private> global4: vec2<bool>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    global4 = arg_0.a;
    let var_0 = arg_0;
    return arg_0;
}

fn func_1() -> vec2<bool> {
    global1 = func_2(Struct_1(global1.a, global1.b, _wgslsmith_sub_u32(1u << ((0u << (u_input.a % 32u)) % 32u), _wgslsmith_mod_u32(global0.x ^ u_input.a, _wgslsmith_sub_u32(4294967295u, u_input.a)))));
    global2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-333f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b.x))), _wgslsmith_div_f32(353f, -673f)));
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2669f, 1000f)), _wgslsmith_f_op_f32(1291f * _wgslsmith_div_f32(global1.b.x, global1.b.x)))) * _wgslsmith_f_op_f32(1025f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b.x * -1509f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b.x)), 1f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-545f))) + global1.b.x))));
    let var_1 = global0.xz;
    global1 = func_2(func_2(func_2(func_2(Struct_1(global1.a, vec2<f32>(-558f, var_0.x), global1.c)))));
    return vec2<bool>(global1.a.x, global1.a.x);
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: Struct_2) -> f32 {
    global4 = arg_1.a;
    return _wgslsmith_f_op_f32(-1011f - 1698f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~(~(~vec3<u32>(global1.c, global1.c, global0.x))));
    let var_1 = vec2<bool>(!(!select(global1.a.x, global1.a.x && true, global4.x & false)), global1.a.x);
    var var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global1.b.x), _wgslsmith_f_op_f32(f32(-1f) * -1000f))) >= global1.b.x;
    var var_3 = ~1i;
    global4 = select(var_1, vec2<bool>(select(false, false, _wgslsmith_f_op_f32(ceil(-1000f)) <= -1388f), !(var_1.x && (-1223f != global1.b.x))), select(vec2<bool>(_wgslsmith_f_op_f32(795f * -542f) <= _wgslsmith_f_op_f32(global1.b.x + 1618f), !global4.x), func_1(), all(!(!vec2<bool>(false, global4.x)))));
    var var_4 = vec2<bool>(true, true);
    let var_5 = -83570i;
    var var_6 = vec4<f32>(_wgslsmith_f_op_f32(2940f * 134f), -1961f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global1.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.b.x - _wgslsmith_f_op_f32(max(-1323f, global1.b.x))) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(-3525f, global1.b.x))))), true)), _wgslsmith_f_op_f32(-global1.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(global1.b.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(var_6.x)), _wgslsmith_f_op_f32(min(-1235f, -707f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global1.b.x + _wgslsmith_f_op_f32(-213f * 1027f)), _wgslsmith_f_op_f32(func_3(var_6.x, func_2(Struct_1(vec2<bool>(var_4.x, global4.x), global1.b, u_input.a)), Struct_2(Struct_1(var_1, global1.b, var_0.x), Struct_1(vec2<bool>(true, true), vec2<f32>(-421f, var_6.x), global0.x), 1u, var_6.x))))) + 1404f), _wgslsmith_sub_vec3_u32(max(firstTrailingBit(vec3<u32>(4294967295u, 8580u, 16604u)), vec3<u32>(62067u, 0u, max(39292u, 9426u))), select(select(var_0, vec3<u32>(65859u, u_input.a, 46638u), true), var_0, true) >> (min(~var_0, var_0) % vec3<u32>(32u))));
}

