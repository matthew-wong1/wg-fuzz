struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: vec3<bool>,
    d: f32,
    e: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: f32,
    d: vec4<bool>,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec3<u32>,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 10148u;

var<private> global1: array<Struct_2, 22>;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_1) -> vec2<bool> {
    global1 = array<Struct_2, 22>();
    let var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(700f * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -329f) - arg_0.d))))));
    var var_1 = global1[_wgslsmith_index_u32(~firstTrailingBit(_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, u_input.e, u_input.e, u_input.a), vec4<u32>(~1u, u_input.b.x, 35530u, _wgslsmith_div_u32(u_input.c.x, 37560u)))), 22u)];
    global1 = array<Struct_2, 22>();
    global0 = 42388u;
    return select(select(vec2<bool>(false, select(var_1.a.c.x, arg_0.c.x, true) & (true || var_1.b.x)), arg_0.c.xz, !(-2147483647i >= u_input.d.x)), select(arg_0.c.yz, select(vec2<bool>(false, any(vec4<bool>(true, var_1.d.x, var_1.a.c.x, var_1.d.x))), vec2<bool>(false, !var_1.d.x), false && arg_0.c.x), vec2<bool>(false, false)), true);
}

fn func_4(arg_0: Struct_2, arg_1: vec3<bool>) -> vec3<bool> {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.c * _wgslsmith_f_op_f32(-arg_0.a.e.x)), arg_0.c) + 169f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.e.x)) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-3002f * arg_0.c))))));
    global1 = array<Struct_2, 22>();
    var var_1 = u_input.a;
    return arg_0.d.wxw;
}

fn func_2() -> Struct_1 {
    let var_0 = ~u_input.c;
    global0 = u_input.c.x;
    return Struct_1(countOneBits(~(-_wgslsmith_sub_vec3_i32(vec3<i32>(3807i, u_input.d.x, u_input.d.x), u_input.d))), !all(vec3<bool>(true, false, true)), func_4(Struct_2(Struct_1(min(vec3<i32>(1i, u_input.d.x, -2147483647i), u_input.d), false, vec3<bool>(false, false, false), _wgslsmith_f_op_f32(abs(-1355f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1185f, -239f, -210f, -1000f))), select(func_3(Struct_1(u_input.d, false, vec3<bool>(false, true, true), 359f, vec4<f32>(1060f, 932f, -1423f, 548f))), vec2<bool>(true, false), select(vec2<bool>(false, true), vec2<bool>(true, false), true)), _wgslsmith_f_op_f32(f32(-1f) * -463f), vec4<bool>(true, true, true, true), vec2<bool>(true, any(vec2<bool>(false, false)))), vec3<bool>(false, false | any(vec4<bool>(true, true, true, true)), !any(vec3<bool>(true, false, false)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1000f, -263f))), _wgslsmith_f_op_f32(-151f * -1356f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -303f)))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(191f, -877f, -2414f, -735f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 1000f, 150f, -849f) - vec4<f32>(901f, 367f, -458f, -829f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -1377f, -668f, -504f) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(675f, 2067f, -777f, 1000f), vec4<f32>(-1000f, 932f, 1287f, 1813f), vec4<bool>(false, true, false, true))))))));
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1) -> u32 {
    global0 = 22721u;
    var var_0 = func_2();
    global0 = ~22737u;
    let var_1 = func_2();
    let var_2 = -arg_1.a;
    return 36261u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = u_input.e;
    let var_0 = ~_wgslsmith_clamp_u32(countOneBits(func_1(u_input.a, Struct_1(u_input.d, true, vec3<bool>(false, true, true), -1410f, vec4<f32>(310f, -1537f, -1063f, -1000f)), Struct_1(vec3<i32>(34821i, u_input.d.x, u_input.d.x), false, vec3<bool>(true, false, true), 2254f, vec4<f32>(1577f, 482f, -1047f, 1000f)))), 1u, u_input.b.x) < 0u;
    var var_1 = var_0;
    global0 = 26544u;
    var var_2 = firstTrailingBit(vec3<u32>(firstTrailingBit(_wgslsmith_div_u32(1u, _wgslsmith_clamp_u32(0u, u_input.a, u_input.a))), _wgslsmith_dot_vec2_u32(select(vec2<u32>(8101u, u_input.c.x), u_input.c.xy, vec2<bool>(true, var_0)) << (~u_input.c.zy % vec2<u32>(32u)), ~(u_input.c.zy | u_input.c.zy)), u_input.c.x | _wgslsmith_dot_vec2_u32(u_input.c.yz, _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.e, 44339u), vec2<u32>(39126u, 82775u), u_input.c.yz))));
    var var_3 = ~u_input.d;
    let x = u_input.a;
    s_output = StorageBuffer(-1i, ~1i);
}

