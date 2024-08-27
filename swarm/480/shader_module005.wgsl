struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: vec3<bool>,
    d: i32,
}

struct Struct_2 {
    a: u32,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 30> = array<vec2<bool>, 30>(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false));

var<private> global1: Struct_1;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: vec2<f32>, arg_3: Struct_1) -> u32 {
    let var_0 = any(arg_3.c.yx);
    var var_1 = 1i;
    var var_2 = ~(~vec3<u32>(u_input.e, max(~arg_1, 0u), _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1, arg_1), vec2<u32>(113403u, arg_1)), _wgslsmith_mult_u32(arg_1, 11356u))));
    var_1 = arg_3.d;
    var var_3 = -1000f;
    return 35459u;
}

fn func_2(arg_0: f32) -> Struct_1 {
    global1 = Struct_1(vec4<bool>(any(select(vec3<bool>(false, true, global1.c.x), vec3<bool>(global1.c.x, global1.c.x, global1.a.x), true)), global1.c.x, !any(vec4<bool>(true, global1.c.x, global1.a.x, global1.a.x)), global1.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-535f + _wgslsmith_f_op_f32(f32(-1f) * -677f))) + global1.b), vec3<bool>(true, reverseBits(u_input.e & 0u) != (0u >> (func_3(Struct_1(vec4<bool>(global1.c.x, false, global1.c.x, false), global1.b, vec3<bool>(false, global1.c.x, global1.c.x), global1.d), u_input.e, vec2<f32>(global1.b, arg_0), Struct_1(vec4<bool>(global1.c.x, false, global1.c.x, global1.a.x), arg_0, vec3<bool>(false, false, global1.c.x), 1i)) % 32u)), !global1.c.x), ~(-(~13983i ^ u_input.d.x)));
    var var_0 = select(vec4<bool>(!select(!global1.a.x, 2892f == global1.b, -1148f < global1.b), select(true, !global1.a.x, select(!global1.a.x, !global1.c.x, !global1.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b * -175f)) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b)), any(global1.a)), global1.a, vec4<bool>(any(global1.a.xxx), true, all(global1.a), true));
    var var_1 = all(!select(vec2<bool>(!var_0.x, var_0.x), !vec2<bool>(global1.c.x, global1.a.x), select(global1.c.yy, var_0.xx, !vec2<bool>(var_0.x, false))));
    var var_2 = u_input.e;
    var_1 = !(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_0, 425f, global1.a.x)) - -1000f), global1.b)) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(global1.b, arg_0)), global1.b))));
    return Struct_1(global1.a, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.b, 919f) * _wgslsmith_f_op_f32(-global1.b))))), !select(vec3<bool>(true, var_0.x, select(false, var_0.x, var_0.x)), select(global1.a.zwx, !vec3<bool>(var_0.x, global1.a.x, global1.a.x), 1u > u_input.e), var_0.x), abs(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, global1.d) << ((vec2<u32>(477u, 52381u) | vec2<u32>(u_input.e, 24357u)) % vec2<u32>(32u)), u_input.d.yy)));
}

fn func_1(arg_0: f32, arg_1: Struct_2, arg_2: u32, arg_3: i32) -> f32 {
    let var_0 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-416f))));
    var var_1 = !global0[_wgslsmith_index_u32(firstTrailingBit(select(arg_2, 4294967295u, true)), 30u)];
    var var_2 = func_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(-1674f, _wgslsmith_f_op_f32(var_0.b - _wgslsmith_f_op_f32(1852f + -948f)))))));
    var var_3 = false;
    var var_4 = min(~(~_wgslsmith_sub_vec2_i32(u_input.d.xx, vec2<i32>(var_2.d, -12764i))), vec2<i32>(-2147483647i, ~_wgslsmith_clamp_i32(var_2.d, 21839i, u_input.a))) >> (~countOneBits(firstTrailingBit(vec2<u32>(14672u, arg_1.a)) >> (abs(vec2<u32>(8246u, 2430u)) % vec2<u32>(32u))) % vec2<u32>(32u));
    return _wgslsmith_div_f32(var_0.b, global1.b);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<bool>, 30>();
    let var_0 = Struct_1(global1.a, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_1(global1.b, Struct_2(u_input.e, global1.c.x), u_input.e, u_input.c)))) * _wgslsmith_f_op_f32(global1.b - global1.b)), global1.b)), vec3<bool>(global1.a.x, any(vec2<bool>(all(vec3<bool>(global1.c.x, false, false)), true)), true), -13881i);
    global0 = array<vec2<bool>, 30>();
    let var_1 = global1.b;
    global0 = array<vec2<bool>, 30>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b, var_0.b, 298f, 144f)))))), -2147483647i, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-936f, 1651f) + 2743f) - -135f), -479f, 1f, 1000f));
}

