struct Struct_1 {
    a: bool,
    b: bool,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec2<u32>,
    c: Struct_1,
    d: f32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: vec3<f32>,
    d: f32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 18>;

var<private> global1: vec2<f32> = vec2<f32>(1032f, 214f);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: Struct_3) -> vec2<bool> {
    let var_0 = vec4<bool>(arg_3.c.a, !(!any(select(vec2<bool>(arg_3.a, false), vec2<bool>(true, false), arg_2.b))), false, !any(select(vec2<bool>(true, true), vec2<bool>(arg_3.c.a, true), !vec2<bool>(arg_2.a, true))));
    var var_1 = var_0.x;
    var_1 = true;
    var_1 = arg_2.a;
    let var_2 = arg_3.b;
    return select(var_0.yw, select(vec2<bool>(any(select(vec2<bool>(false, false), var_0.wy, vec2<bool>(var_0.x, false))), !(arg_3.e.b | var_0.x)), !var_0.ww, var_0.x), select(var_0.xw, vec2<bool>(true, any(var_0.yz) || var_0.x), vec2<bool>(any(select(vec4<bool>(arg_3.a, arg_3.e.b, false, true), vec4<bool>(false, arg_2.b, arg_3.c.b, arg_3.c.a), var_0)), false | select(true, arg_2.a, var_0.x))));
}

fn func_2(arg_0: vec3<f32>) -> vec4<bool> {
    let var_0 = -2256f;
    var var_1 = -1035f;
    let var_2 = Struct_1(all(select(func_3(_wgslsmith_f_op_vec3_f32(arg_0 - vec3<f32>(global1.x, 526f, arg_0.x)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.x, arg_0.x, 128f, -844f), vec4<f32>(var_0, -1102f, var_0, 1001f), vec4<bool>(false, false, true, true))), Struct_1(false, true), Struct_3(false, vec2<u32>(35946u, u_input.d.x), Struct_1(false, true), var_0, Struct_1(true, false))), vec2<bool>(func_3(vec3<f32>(global1.x, arg_0.x, -111f), vec4<f32>(870f, -3455f, 948f, -206f), Struct_1(true, false), global0[_wgslsmith_index_u32(u_input.c, 18u)]).x, true), !all(vec3<bool>(true, true, false)))), true);
    let var_3 = Struct_3(any(vec3<bool>(!var_2.b, all(vec4<bool>(true, false, var_2.a, var_2.a)), true)), u_input.d.xy, var_2, var_0, var_2);
    global0 = array<Struct_3, 18>();
    return !vec4<bool>(any(vec2<bool>(true, false)), !(!var_2.b), true, var_2.b);
}

fn func_1(arg_0: Struct_1) -> vec4<bool> {
    return select(!vec4<bool>(all(vec3<bool>(arg_0.b, arg_0.a, false)), !all(vec2<bool>(arg_0.b, arg_0.a)), !any(vec3<bool>(arg_0.b, true, false)), arg_0.a), vec4<bool>(true, false, u_input.a.x != ~_wgslsmith_dot_vec3_i32(vec3<i32>(20668i, -24578i, 22716i), u_input.a), all(!(!vec4<bool>(arg_0.a, false, false, true)))), !(!func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1123f, 605f, global1.x) + vec3<f32>(240f, global1.x, global1.x)))));
}

fn func_4(arg_0: vec4<bool>, arg_1: vec2<bool>) -> StorageBuffer {
    let var_0 = func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-240f, -950f, global1.x) * vec3<f32>(global1.x, -691f, 1000f)), vec3<f32>(global1.x, 219f, global1.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, global1.x, global1.x) + vec3<f32>(-1000f, global1.x, global1.x)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2600f, global1.x, global1.x)))))));
    var var_1 = true;
    let var_2 = Struct_3(true, vec2<u32>(_wgslsmith_dot_vec3_u32(~abs(u_input.b), reverseBits(abs(u_input.d.wzw))), ~(~u_input.b.x) | 8069u), Struct_1(true, true), -1000f, Struct_1(1i == _wgslsmith_div_i32(26143i, _wgslsmith_sub_i32(-29101i, u_input.a.x)), !var_0.x));
    let var_3 = var_2.b.x >= u_input.c;
    global1 = vec2<f32>(global1.x, global1.x);
    return StorageBuffer(_wgslsmith_div_f32(2642f, -852f), vec4<i32>(2147483647i, _wgslsmith_sub_i32(-(~1i), select(abs(u_input.a.x), abs(46443i), false)), 113838i, u_input.a.x), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, var_2.d, global1.x))))), var_2.d, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_2.d)))), _wgslsmith_f_op_f32(var_2.d * _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(232f)), _wgslsmith_f_op_f32(210f - -1000f))), _wgslsmith_f_op_f32(global1.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1070f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -271f))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 18>();
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(-790f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1224f), _wgslsmith_f_op_f32(max(global1.x, -1508f)))))))), 568f);
    var var_1 = var_0;
    var var_2 = !(!(any(vec2<bool>(true, false)) && any(vec4<bool>(false, false, true, true)))) || all(!vec2<bool>(all(vec3<bool>(true, false, true)), true));
    var_1 = var_0;
    let x = u_input.a;
    s_output = func_4(select(!vec4<bool>(var_0 != var_0, false, true, false), vec4<bool>(true, true, _wgslsmith_f_op_f32(var_0 + 1252f) != global1.x, true), func_1(Struct_1(true, false))), func_1(Struct_1(func_1(Struct_1(true, false)).x, true)).xy);
}

