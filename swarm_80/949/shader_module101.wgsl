struct Struct_1 {
    a: u32,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: u32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_2,
    c: Struct_1,
    d: f32,
}

struct Struct_4 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
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

var<private> global0: array<Struct_4, 12>;

var<private> global1: array<vec3<bool>, 16> = array<vec3<bool>, 16>(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> f32 {
    global1 = array<vec3<bool>, 16>();
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1602f + 198f) - _wgslsmith_f_op_f32(-487f - 1306f)))) + 1759f)));
}

fn func_4(arg_0: f32, arg_1: Struct_2) -> u32 {
    var var_0 = -1176f;
    var var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, _wgslsmith_f_op_f32(-arg_0), arg_0, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(615f)))))), Struct_2(Struct_1(67838u, true), -18055i, arg_1.a.a), Struct_1(_wgslsmith_dot_vec3_u32(countOneBits(_wgslsmith_div_vec3_u32(vec3<u32>(54329u, 49648u, u_input.c), vec3<u32>(24722u, u_input.c, arg_1.c))), select(vec3<u32>(u_input.c, 102727u, arg_1.c), ~vec3<u32>(u_input.b, 4294967295u, u_input.c), arg_1.a.b)), any(select(vec4<bool>(arg_1.a.b, false, true, arg_1.a.b), !vec4<bool>(false, true, arg_1.a.b, false), select(vec4<bool>(arg_1.a.b, true, arg_1.a.b, arg_1.a.b), vec4<bool>(arg_1.a.b, false, false, true), vec4<bool>(arg_1.a.b, arg_1.a.b, arg_1.a.b, arg_1.a.b))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(615f - _wgslsmith_f_op_f32(f32(-1f) * -1315f))));
    var var_2 = global0[_wgslsmith_index_u32(~1u, 12u)];
    global1 = array<vec3<bool>, 16>();
    var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_1.a.x, -738f, 196f, -219f))) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, 1538f, -331f, 636f))))))), var_1.b, arg_1.a, 1000f);
    return _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(1u, 72273u, arg_1.a.a, ~1u), _wgslsmith_sub_vec4_u32(abs(vec4<u32>(4294967295u, 28024u, 4294967295u, u_input.c)), _wgslsmith_div_vec4_u32(vec4<u32>(var_2.a.x, arg_1.a.a, var_1.b.a.a, var_2.a.x), vec4<u32>(u_input.c, var_2.a.x, 4294967295u, 37304u)))), ~_wgslsmith_mod_vec4_u32(~select(vec4<u32>(var_2.a.x, 33753u, u_input.b, u_input.b), vec4<u32>(1u, u_input.c, var_1.b.c, arg_1.c), vec4<bool>(var_1.c.b, true, arg_1.a.b, arg_1.a.b)), _wgslsmith_div_vec4_u32(vec4<u32>(arg_1.c, 10155u, 0u, 0u), ~vec4<u32>(u_input.b, 32898u, 26581u, arg_1.a.a))));
}

fn func_2(arg_0: bool) -> Struct_3 {
    global1 = array<vec3<bool>, 16>();
    let var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(304f, -1837f, 388f, -1779f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -372f, -477f, -1188f) - vec4<f32>(2128f, -1107f, -1061f, -158f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(287f, -398f, 789f, 1838f)) - vec4<f32>(-551f, -667f, 1326f, -950f))))), Struct_2(Struct_1(func_4(_wgslsmith_f_op_f32(func_3()), Struct_2(Struct_1(4294967295u, true), u_input.a, 26627u)), arg_0 & false), 0i, 24975u), Struct_1(0u, 560f != _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -723f)))), -201f);
    global1 = array<vec3<bool>, 16>();
    global1 = array<vec3<bool>, 16>();
    let var_1 = !select(vec2<bool>(true, arg_0), select(!(!vec2<bool>(arg_0, false)), vec2<bool>(true, true), arg_0), vec2<bool>(-295f != var_0.d, all(vec2<bool>(false, true)) & true));
    return var_0;
}

fn func_1(arg_0: Struct_4, arg_1: vec4<i32>) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-150f, 755f)));
    var var_1 = vec3<u32>(_wgslsmith_dot_vec2_u32(~(~vec2<u32>(u_input.b, 0u)) & ~(~vec2<u32>(u_input.b, arg_0.a.x)), ~(~arg_0.a >> (vec2<u32>(1u, 62904u) % vec2<u32>(32u)))), _wgslsmith_mult_u32(_wgslsmith_add_u32(arg_0.a.x, ~arg_0.a.x), 53343u), ~0u);
    let var_2 = arg_1.xx;
    var_1 = vec3<u32>(57268u, ~u_input.b, ~abs(~var_1.x));
    var var_3 = func_2(!(_wgslsmith_div_f32(var_0, -1087f) >= var_0) | true);
    return ~arg_0.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_4, 12>();
    let var_0 = u_input.c;
    var var_1 = true;
    let var_2 = !vec3<bool>(~func_1(Struct_4(vec2<u32>(9879u, 56279u)), vec4<i32>(-19006i, u_input.a, 2147483647i, -9185i)) < 44895u, true, true);
    global0 = array<Struct_4, 12>();
    var var_3 = !any(!(!select(vec4<bool>(false, true, true, false), vec4<bool>(var_2.x, true, true, true), false)));
    global0 = array<Struct_4, 12>();
    var var_4 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(952f, -1000f, 469f, 942f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(186f, 1278f, -1131f, 1210f), vec4<f32>(361f, 867f, -149f, -985f))))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(trunc(func_2(var_2.x).a)))), vec4<bool>(all(vec2<bool>(var_2.x, var_2.x)), !var_2.x, false, true))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-878f, -2208f, -110f, 185f))))), vec4<bool>(any(!vec4<bool>(var_2.x, var_2.x, true, var_2.x)), all(select(select(vec4<bool>(true, var_2.x, var_2.x, var_2.x), vec4<bool>(false, var_2.x, var_2.x, var_2.x), vec4<bool>(false, true, false, var_2.x)), select(vec4<bool>(var_2.x, false, true, var_2.x), vec4<bool>(var_2.x, var_2.x, false, true), vec4<bool>(var_2.x, var_2.x, false, false)), true)), false, !all(!vec4<bool>(true, var_2.x, var_2.x, false)))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 2083i) >> (vec2<u32>(1u, u_input.c) % vec2<u32>(32u)), vec2<i32>(2147483647i, -28899i) >> (vec2<u32>(13770u, u_input.b) % vec2<u32>(32u)))) | -102528i, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(895f, -220f, var_4.x, var_4.x)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.x, -703f, var_4.x, var_4.x)) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_4.x, -161f, 802f, var_4.x), vec4<f32>(-1051f, 1000f, 804f, 117f), true)))))));
}

