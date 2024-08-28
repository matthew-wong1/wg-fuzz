struct Struct_1 {
    a: bool,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: vec4<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 19> = array<vec2<f32>, 19>(vec2<f32>(831f, -203f), vec2<f32>(-241f, -474f), vec2<f32>(-1000f, 1208f), vec2<f32>(129f, 1322f), vec2<f32>(126f, -520f), vec2<f32>(263f, -539f), vec2<f32>(153f, -1082f), vec2<f32>(-1477f, -1388f), vec2<f32>(1000f, 1654f), vec2<f32>(1000f, -1002f), vec2<f32>(-1000f, -343f), vec2<f32>(-791f, -243f), vec2<f32>(-661f, -220f), vec2<f32>(3099f, 781f), vec2<f32>(1025f, -410f), vec2<f32>(-125f, -579f), vec2<f32>(861f, -786f), vec2<f32>(-1000f, 931f), vec2<f32>(1063f, -145f));

var<private> global1: array<Struct_1, 1>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1, arg_3: u32) -> vec3<i32> {
    global1 = array<Struct_1, 1>();
    let var_0 = abs(30984u);
    var var_1 = global1[_wgslsmith_index_u32(arg_3, 1u)];
    let var_2 = u_input.d.zyz;
    var var_3 = arg_1;
    return u_input.d.zxz;
}

fn func_3(arg_0: vec3<i32>) -> vec2<bool> {
    let var_0 = _wgslsmith_clamp_vec4_u32(u_input.b, ~vec4<u32>(u_input.a, ~(~u_input.b.x), select(47975u, u_input.b.x, all(vec4<bool>(true, false, true, false))), 0u), u_input.b);
    let var_1 = Struct_1(select(!any(vec3<bool>(true, true, true)), any(vec4<bool>(true, true, true, true)), !(true || any(vec2<bool>(false, false)))), 1000f);
    global1 = array<Struct_1, 1>();
    let var_2 = func_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b)), 722f, any(!select(vec3<bool>(false, true, false), vec3<bool>(false, var_1.a, false), vec3<bool>(var_1.a, true, var_1.a))))), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.b - -1000f), _wgslsmith_f_op_f32(round(239f))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1887f))), -784f), var_1, countOneBits(var_0.x)).x;
    let var_3 = vec3<i32>(~var_2, -_wgslsmith_add_i32(-18104i, var_2), -arg_0.x);
    return select(vec2<bool>(!var_1.a, false), vec2<bool>(true, !(!var_1.a && false)), var_1.a);
}

fn func_2(arg_0: i32, arg_1: Struct_1) -> Struct_1 {
    var var_0 = abs(vec2<i32>(arg_0, _wgslsmith_dot_vec2_i32(vec2<i32>(i32(-1i) * -1i, 0i), u_input.d.xz)));
    global1 = array<Struct_1, 1>();
    var_0 = u_input.d.zx;
    global0 = array<vec2<f32>, 19>();
    var var_1 = Struct_1(any(select(vec2<bool>(true, true), select(func_3(u_input.d.xyw), vec2<bool>(false, false), vec2<bool>(arg_1.a, arg_1.a)), all(select(vec2<bool>(arg_1.a, arg_1.a), vec2<bool>(arg_1.a, true), vec2<bool>(arg_1.a, arg_1.a))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.b + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-935f)) * _wgslsmith_f_op_f32(1392f + 356f))), _wgslsmith_f_op_f32(-arg_1.b)));
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_2(_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(u_input.d.zxz, _wgslsmith_mod_vec3_i32(-vec3<i32>(75161i, 33869i, 33589i), u_input.d.zyx | vec3<i32>(u_input.c, u_input.c, 38830i)), func_1(1f, global1[_wgslsmith_index_u32(~u_input.a, 1u)], global1[_wgslsmith_index_u32(u_input.e.x, 1u)], 4294967295u)), select(_wgslsmith_clamp_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.d.x, u_input.c, 2147483647i), u_input.d.wzy), u_input.d.xxw >> (u_input.b.www % vec3<u32>(32u)), u_input.d.yxw), u_input.d.xyx, select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false)))), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.b.wyy, vec3<u32>(~u_input.b.x << (39848u % 32u), ~1u, u_input.b.x)), 1u)]);
    var var_1 = func_2(u_input.c >> (4294967295u % 32u), Struct_1(var_0.a, var_0.b));
    let var_2 = ~(-vec2<i32>(-1i, u_input.c ^ -36479i));
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(step(1442f, var_1.b)), var_1.b, var_0.b))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-329f, 1903f, var_1.b)), vec3<f32>(1183f, -384f, -562f))) + vec3<f32>(_wgslsmith_f_op_f32(floor(-1000f)), var_0.b, _wgslsmith_f_op_f32(max(var_1.b, var_1.b)))))));
    let var_4 = global0[_wgslsmith_index_u32(u_input.e.x, 19u)];
    var var_5 = Struct_1(!var_1.a, -550f);
    var_5 = Struct_1(var_5.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(1012f)))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(-1845f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(1i);
}

