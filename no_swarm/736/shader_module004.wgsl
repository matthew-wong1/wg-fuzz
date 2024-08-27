struct Struct_1 {
    a: vec2<bool>,
    b: vec3<f32>,
    c: bool,
}

struct Struct_2 {
    a: vec4<u32>,
    b: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec2<bool>,
    d: vec3<f32>,
    e: u32,
}

struct Struct_4 {
    a: vec3<i32>,
    b: vec2<f32>,
    c: vec3<bool>,
}

struct Struct_5 {
    a: vec4<f32>,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<u32>,
    d: vec3<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 7>;

var<private> global1: array<vec2<f32>, 9> = array<vec2<f32>, 9>(vec2<f32>(449f, 206f), vec2<f32>(972f, 1447f), vec2<f32>(-2494f, -1535f), vec2<f32>(906f, 1012f), vec2<f32>(-611f, 1319f), vec2<f32>(-548f, -466f), vec2<f32>(723f, -133f), vec2<f32>(691f, 921f), vec2<f32>(489f, 114f));

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: vec3<i32>) -> i32 {
    global0 = array<u32, 7>();
    global0 = array<u32, 7>();
    global0 = array<u32, 7>();
    let var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.b.x * _wgslsmith_f_op_f32(arg_0.b.x + 174f)) + _wgslsmith_f_op_f32(min(arg_0.b.x, _wgslsmith_f_op_f32(step(arg_0.b.x, -118f)))))), arg_0.b.x, !arg_0.c));
    let var_1 = Struct_5(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(363f, _wgslsmith_f_op_f32(var_0 - -1256f))), arg_0.b.x, arg_0.b.x, 1150f)), var_0);
    return arg_2.x;
}

fn func_1(arg_0: vec4<bool>, arg_1: i32, arg_2: vec3<f32>) -> i32 {
    let var_0 = min(select(~(-17717i), abs(arg_1), select(arg_0.x, arg_0.x, arg_0.x)), -1i);
    let var_1 = firstTrailingBit(_wgslsmith_dot_vec3_u32(u_input.b.zwz, ~u_input.b.www));
    global1 = array<vec2<f32>, 9>();
    let var_2 = arg_2.x;
    let var_3 = Struct_1(arg_0.zz, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(arg_2)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-1468f + var_2), _wgslsmith_f_op_f32(sign(-917f)), _wgslsmith_f_op_f32(arg_2.x * var_2)))), arg_0.wxz)), true);
    return func_2(Struct_1(select(var_3.a, !vec2<bool>(arg_0.x, arg_0.x), select(vec2<bool>(true, false), arg_0.wx, arg_0.x)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_2 * var_3.b), _wgslsmith_div_vec3_f32(vec3<f32>(-157f, var_2, arg_2.x), vec3<f32>(var_3.b.x, var_3.b.x, var_3.b.x))), true), u_input.b.xzy, -vec3<i32>(713i, ~(-2147483647i), u_input.c.x & u_input.c.x)) | u_input.c.x;
}

fn func_3(arg_0: vec3<i32>) -> Struct_1 {
    global1 = array<vec2<f32>, 9>();
    let var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-361f, 1161f)));
    global1 = array<vec2<f32>, 9>();
    var var_1 = _wgslsmith_div_f32(1205f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0 - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0, -1000f)) - _wgslsmith_f_op_f32(f32(-1f) * -118f))))));
    global0 = array<u32, 7>();
    return Struct_1(!select(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)), true), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false)), true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, var_0, var_0)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, var_0, var_0) * vec3<f32>(var_0, var_0, -493f))), vec3<f32>(390f, _wgslsmith_f_op_f32(select(-385f, 2376f, true)), _wgslsmith_f_op_f32(f32(-1f) * -1615f)))), true);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 7>();
    var var_0 = func_3(vec3<i32>(2147483647i, -19531i, func_1(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true)), u_input.a, _wgslsmith_f_op_vec3_f32(step(vec3<f32>(707f, -288f, 520f), vec3<f32>(172f, -830f, 140f))))));
    let var_1 = Struct_4(u_input.c, _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), var_0.b.x))), select(vec3<bool>(any(select(vec3<bool>(var_0.c, true, var_0.c), vec3<bool>(var_0.a.x, var_0.c, true), vec3<bool>(var_0.a.x, var_0.c, false))), any(var_0.a), !var_0.c), !select(select(vec3<bool>(false, false, false), vec3<bool>(var_0.a.x, false, var_0.a.x), false), vec3<bool>(var_0.a.x, var_0.c, true), select(vec3<bool>(true, true, var_0.c), vec3<bool>(var_0.a.x, true, false), true)), select(!select(vec3<bool>(var_0.c, true, true), vec3<bool>(true, false, var_0.a.x), vec3<bool>(var_0.a.x, var_0.c, var_0.c)), vec3<bool>(all(vec2<bool>(false, true)), any(vec2<bool>(true, var_0.a.x)), any(vec2<bool>(var_0.c, var_0.a.x))), !(!var_0.a.x))));
    let var_2 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(370f * 625f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-487f * var_0.b.x))), var_1.b.x, -1000f, func_3(-select(var_1.a, _wgslsmith_div_vec3_i32(u_input.c, vec3<i32>(var_1.a.x, 0i, var_1.a.x)), select(var_1.c, vec3<bool>(var_1.c.x, var_0.c, false), var_1.c))).b.x);
    var var_3 = ~(~u_input.b.xxw);
    global0 = array<u32, 7>();
    global1 = array<vec2<f32>, 9>();
    let x = u_input.a;
    s_output = StorageBuffer(-159f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1378f) - _wgslsmith_f_op_f32(-1263f + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.b.x))))), var_3.zz << (abs(vec2<u32>(countOneBits(25699u), ~4294967295u)) % vec2<u32>(32u)), vec3<f32>(-797f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(346f, -508f))), _wgslsmith_f_op_f32(ceil(-1720f))), -683f);
}

