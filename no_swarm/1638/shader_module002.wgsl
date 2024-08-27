struct Struct_1 {
    a: f32,
    b: bool,
}

struct Struct_2 {
    a: vec3<f32>,
    b: f32,
    c: vec3<f32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: f32,
    c: bool,
}

struct Struct_4 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 24>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2() -> f32 {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -459f);
    let var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(221f + 114f) + _wgslsmith_f_op_f32(-1000f + -584f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-446f, 611f) * 1193f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -907f), _wgslsmith_f_op_f32(round(403f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-176f, -662f)))) + -1080f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-152f, -317f, 1622f)) * vec3<f32>(-888f, -1098f, -182f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-341f, -159f, 492f) * vec3<f32>(2010f, 738f, -1544f)))) - vec3<f32>(-1207f, _wgslsmith_div_f32(-665f, _wgslsmith_f_op_f32(f32(-1f) * -1720f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(621f, 184f)) + _wgslsmith_f_op_f32(-475f * 159f)))));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.c.x) * -1350f));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.x));
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: Struct_3) -> bool {
    global0 = array<vec3<bool>, 24>();
    global0 = array<vec3<bool>, 24>();
    var var_0 = _wgslsmith_f_op_f32(func_2());
    var var_1 = u_input.d.x;
    var var_2 = ~u_input.c.x;
    return true;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_4) -> bool {
    let var_0 = Struct_3(vec4<u32>(2896u, u_input.d.x, firstLeadingBit(u_input.d.x) & 4294967295u, ~(~37808u)), arg_0.a, !(all(select(vec2<bool>(false, false), vec2<bool>(false, arg_0.b), true)) || arg_0.b));
    var var_1 = 608f;
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(func_2())), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(arg_0.a)))))) + _wgslsmith_f_op_f32(abs(var_0.b)));
    var var_2 = arg_0.b;
    let var_3 = _wgslsmith_f_op_vec3_f32(round(arg_1.a));
    return !all(vec3<bool>(!select(arg_0.b, false, false), all(global0[_wgslsmith_index_u32(4294967295u, 24u)]) | all(vec4<bool>(true, var_0.c, arg_0.b, true)), any(!vec4<bool>(var_0.c, false, arg_0.b, true))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(!(!func_1(Struct_1(235f, true), -491f, Struct_3(u_input.d, -1140f, false)) & (52292u == u_input.d.x)), false, all(!vec2<bool>(func_1(Struct_1(496f, true), 354f, Struct_3(vec4<u32>(24286u, 100136u, u_input.d.x, u_input.d.x), 292f, false)), true)), true);
    global0 = array<vec3<bool>, 24>();
    let var_1 = Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1721f)) * _wgslsmith_f_op_f32(sign(-373f))))), var_0.x);
    var var_2 = vec2<u32>(~(~u_input.d.x) >> (_wgslsmith_mult_u32(u_input.d.x, ~firstTrailingBit(0u)) % 32u), ~u_input.d.x);
    global0 = array<vec3<bool>, 24>();
    let var_3 = vec2<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.d.x, ~7522u), u_input.d.yy), var_2.x);
    let var_4 = func_3(Struct_1(_wgslsmith_f_op_f32(-var_1.a), any(var_0.zw)), Struct_4(_wgslsmith_div_vec3_f32(vec3<f32>(542f, -921f, -109f), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a, var_1.a, 1020f) * vec3<f32>(-1000f, -2451f, var_1.a)))));
    var_2 = ~vec2<u32>(10686u, ~min(abs(var_2.x), var_3.x));
    var var_5 = select(select(select(vec4<bool>(var_1.b, true, false, any(vec3<bool>(true, true, var_0.x))), vec4<bool>(false, !var_0.x, any(vec4<bool>(true, var_4, var_0.x, var_1.b)), true), vec4<bool>(func_1(var_1, -763f, Struct_3(u_input.d, 889f, var_4)), var_1.b, -1i != u_input.a, true)), vec4<bool>(all(var_0.wx), var_0.x | true, any(select(vec4<bool>(var_4, var_4, var_1.b, true), vec4<bool>(var_1.b, false, var_0.x, false), true)), false), vec4<bool>(true, true, 0i > abs(u_input.a), var_0.x)), vec4<bool>(false, true, var_1.b, var_1.b), !vec4<bool>(-u_input.c.x < countOneBits(u_input.a), true, var_4, select(!var_4, false, var_4)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(465f, _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(sign(var_1.a)))), _wgslsmith_f_op_f32(var_1.a + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(var_1.a, var_1.a, var_0.x)), var_1.a))))), ~u_input.d.wz);
}

