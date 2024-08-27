struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<bool>,
    c: vec4<bool>,
    d: u32,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 12>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> u32 {
    global0 = array<i32, 12>();
    global0 = array<i32, 12>();
    var var_0 = select(vec2<bool>(any(vec2<bool>(any(vec4<bool>(false, true, true, true)), true)), true), !vec2<bool>(all(vec3<bool>(true, false, true)), all(vec4<bool>(false, true, true, true))), false);
    var var_1 = Struct_2(-10616i, 70441i, 5495u, Struct_1(select(vec2<bool>(true, true), select(select(vec2<bool>(false, var_0.x), vec2<bool>(false, var_0.x), var_0.x), !vec2<bool>(var_0.x, false), vec2<bool>(true, var_0.x)), !(true | var_0.x))));
    var var_2 = global0[_wgslsmith_index_u32(1u, 12u)];
    return var_1.c;
}

fn func_2(arg_0: bool, arg_1: f32) -> Struct_3 {
    var var_0 = arg_0;
    var var_1 = Struct_4(Struct_2(1i << (min(1u, u_input.a) % 32u), reverseBits(-global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, 57231u), vec2<u32>(u_input.a, u_input.a)), 12u)]), func_3(), Struct_1(!select(vec2<bool>(true, true), vec2<bool>(true, arg_0), true))));
    global0 = array<i32, 12>();
    var_1 = Struct_4(Struct_2(~u_input.b.x << (~u_input.a % 32u), -1358i, 38373u, var_1.a.d));
    let var_2 = firstLeadingBit(85673i);
    return Struct_3(var_1.a.d, !vec4<bool>(select(!arg_0, arg_0, var_1.a.d.a.x), _wgslsmith_f_op_f32(step(-129f, 390f)) == -1000f, false, !var_1.a.d.a.x), vec4<bool>(_wgslsmith_f_op_f32(f32(-1f) * -332f) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(trunc(arg_1))), all(var_1.a.d.a), true, !(~49130u >= u_input.a)), reverseBits(max(reverseBits(4294967295u << (var_1.a.c % 32u)), firstLeadingBit(countOneBits(1u)))));
}

fn func_1(arg_0: Struct_1, arg_1: bool) -> bool {
    var var_0 = 83220u;
    var var_1 = func_2(false, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-661f))) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(-1377f)), _wgslsmith_f_op_f32(f32(-1f) * -926f)))))));
    let var_2 = var_1.b;
    var var_3 = all(arg_0.a);
    var_1 = func_2(arg_0.a.x, _wgslsmith_f_op_f32(1316f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -954f))));
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1713f, -116f, -691f) - vec3<f32>(484f, 296f, 442f))))))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(316f)), _wgslsmith_f_op_f32(-1183f * -1506f), true)), 1f, _wgslsmith_f_op_f32(exp2(1f)))));
    let var_1 = !vec2<bool>(func_1(Struct_1(vec2<bool>(true, true)), false), true);
    let var_2 = vec2<f32>(var_0.x, _wgslsmith_f_op_f32(trunc(var_0.x)));
    global0 = array<i32, 12>();
    let var_3 = vec3<bool>(true, true, false);
    global0 = array<i32, 12>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(_wgslsmith_clamp_u32(~20571u, ~(~1u), u_input.c), ~49765u, ~(~abs(14009u)), ~6230u), ~countOneBits(_wgslsmith_sub_vec3_u32(countOneBits(vec3<u32>(0u, 12519u, u_input.a)), min(vec3<u32>(8801u, 5290u, u_input.a), vec3<u32>(4294967295u, 12392u, 53577u)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-351f, _wgslsmith_f_op_f32(trunc(var_0.x))))))));
}

