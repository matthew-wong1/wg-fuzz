struct Struct_1 {
    a: u32,
    b: f32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec2<f32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 27>;

var<private> global1: vec3<bool> = vec3<bool>(false, false, true);

var<private> global2: vec4<f32>;

var<private> global3: array<Struct_1, 6> = array<Struct_1, 6>(Struct_1(0u, -2081f), Struct_1(4294967295u, 356f), Struct_1(46893u, 864f), Struct_1(4294967295u, 1701f), Struct_1(0u, 228f), Struct_1(4294967295u, -189f));

var<private> global4: array<Struct_3, 29>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: vec4<f32>) -> vec3<bool> {
    global0 = array<Struct_3, 27>();
    global1 = vec3<bool>(select(all(!select(vec3<bool>(false, global1.x, true), vec3<bool>(false, global1.x, false), vec3<bool>(true, false, false))), true, true), global1.x, any(vec3<bool>(false, any(vec3<bool>(global1.x, global1.x, global1.x)), global1.x)));
    let var_0 = _wgslsmith_add_vec3_u32(abs(~(~vec3<u32>(4294967295u, 0u, 4294967295u))), vec3<u32>(abs(_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(3354u, 37823u, 4122u)), vec3<u32>(4294967295u, 65946u, 26267u))), abs(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 0u, 1u, 66827u), vec4<u32>(4294967295u, 59226u, 4294967295u, 1u))), ~abs(_wgslsmith_div_u32(19694u, 12263u))));
    return vec3<bool>(countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, 6651u, var_0.x, var_0.x), abs(vec4<u32>(var_0.x, var_0.x, 71484u, 0u)))) > var_0.x, true, !global1.x);
}

fn func_3(arg_0: vec3<bool>) -> Struct_3 {
    global2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1937f - global2.x))), _wgslsmith_f_op_f32(-global2.x), -1000f));
    var var_0 = _wgslsmith_f_op_vec3_f32(-global2.wxw);
    var_0 = global2.wwz;
    var var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(floor(global2.wyz)), vec3<f32>(_wgslsmith_f_op_f32(round(247f)), -768f, var_0.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global2.x, 1000f, 846f), global2.yzz)) * global2.wzy))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(-811f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global2.x - -1331f)))) * global2.xx));
    global2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(555f, global2.x, 315f, var_0.x) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-2176f, global2.x, var_0.x, global2.x), vec4<f32>(var_0.x, 920f, 600f, -472f), arg_0.x)))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2609f, global2.x, var_1.a.x, -649f)))), any(!select(vec4<bool>(false, arg_0.x, arg_0.x, global1.x), vec4<bool>(false, global1.x, false, global1.x), false)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1308f, var_0.x, _wgslsmith_f_op_f32(global2.x - var_0.x), _wgslsmith_f_op_f32(177f - -571f))))));
    return Struct_3(-countOneBits(min(select(vec4<i32>(u_input.a.x, -726i, 2147483647i, 2147483647i), vec4<i32>(-39326i, u_input.a.x, u_input.a.x, u_input.a.x), true), -vec4<i32>(-2147483647i, -39813i, -39814i, u_input.a.x))), -29884i);
}

fn func_1(arg_0: u32) -> Struct_2 {
    let var_0 = func_3(vec3<bool>(global1.x, any(func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, -688f, 143f, global2.x) - vec4<f32>(-1000f, 506f, global2.x, -1336f)))), global1.x));
    let var_1 = _wgslsmith_f_op_f32(-global2.x);
    global4 = array<Struct_3, 29>();
    var var_2 = select(vec2<bool>(true, _wgslsmith_f_op_f32(ceil(435f)) > var_1), vec2<bool>(global1.x, false), select(vec2<bool>(_wgslsmith_mult_u32(10898u, 88592u) == _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 44292u, arg_0, 4294967295u), vec4<u32>(15999u, arg_0, arg_0, 4294967295u)), true), select(func_2(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_1, 284f, -1147f, global2.x), vec4<f32>(-706f, global2.x, 1321f, global2.x)))).xy, vec2<bool>(!global1.x, func_2(vec4<f32>(global2.x, var_1, -1000f, 180f)).x), global1.x), !global1.yx));
    var var_3 = !select(select(vec3<bool>(true, true, true), select(select(vec3<bool>(global1.x, global1.x, false), vec3<bool>(var_2.x, global1.x, true), true), select(vec3<bool>(true, true, false), vec3<bool>(true, global1.x, true), global1.x), vec3<bool>(global1.x, true, true)), vec3<bool>(!var_2.x, any(vec4<bool>(global1.x, true, global1.x, false)), true)), func_2(vec4<f32>(_wgslsmith_f_op_f32(-global2.x), var_1, _wgslsmith_f_op_f32(select(global2.x, 2600f, global1.x)), var_1)), true);
    return Struct_2(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -798f), _wgslsmith_f_op_f32(-890f - 555f), _wgslsmith_f_op_f32(ceil(global2.x))) + global2.zzz))), vec2<f32>(global2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -645f), -1010f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(~firstLeadingBit(reverseBits(0u) << (_wgslsmith_mult_u32(4294967295u, 0u) % 32u)));
    global4 = array<Struct_3, 29>();
    global1 = vec3<bool>(false, any(vec3<bool>(any(func_2(vec4<f32>(global2.x, global2.x, -1056f, 285f))), select(any(global1.xz), false, global1.x), !all(global1.xx))), true);
    global4 = array<Struct_3, 29>();
    global1 = !func_2(vec4<f32>(310f, _wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.x, global2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(142f * -1000f))));
    let var_1 = var_0;
    global3 = array<Struct_1, 6>();
    let var_2 = func_1(~(~26120u));
    global4 = array<Struct_3, 29>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-var_0.a), vec3<u32>(countOneBits(0u), _wgslsmith_mult_u32(6919u, 1u), ~1u), vec3<u32>(17770u, ~(~88497u >> (1u % 32u)), abs(~_wgslsmith_add_u32(28803u, 12832u))));
}

