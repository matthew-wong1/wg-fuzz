struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 7>;

var<private> global1: Struct_1 = Struct_1(false);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_3, arg_2: Struct_3, arg_3: Struct_2) -> f32 {
    let var_0 = Struct_3(arg_1.a, arg_1.b);
    global0 = array<vec4<u32>, 7>();
    var var_1 = Struct_3(var_0.a, arg_2.b);
    let var_2 = Struct_2(abs(abs(select(66280i, var_1.b.a, false) | ~(-2147483647i))));
    let var_3 = arg_2.b;
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(-1517f)))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -214f), true)))), 1238f, !var_1.a.a));
}

fn func_2() -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1828f), _wgslsmith_f_op_f32(sign(-940f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(189f, -207f))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(1085f, -1000f) * vec2<f32>(-847f, -1307f)))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-555f, -346f)), vec2<f32>(304f, -573f))))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -639f))), _wgslsmith_f_op_f32(func_3(select(vec3<bool>(global1.a, global1.a, global1.a), vec3<bool>(true, global1.a, false), false), Struct_3(Struct_1(false), Struct_2(u_input.d)), Struct_3(Struct_1(true), Struct_2(0i)), Struct_2(u_input.b))))));
    let var_1 = Struct_2(u_input.d);
    global0 = array<vec4<u32>, 7>();
    let var_2 = _wgslsmith_dot_vec2_u32(u_input.e.yz, vec2<u32>(~_wgslsmith_mod_u32(62757u & u_input.c.x, 26076u), u_input.c.x));
    global0 = array<vec4<u32>, 7>();
    return var_1;
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: Struct_1, arg_3: u32) -> Struct_1 {
    var var_0 = arg_0.a;
    let var_1 = arg_2;
    let var_2 = !vec2<bool>(!var_1.a, all(select(!vec3<bool>(true, true, arg_2.a), vec3<bool>(global1.a, false, false), vec3<bool>(false, global1.a, arg_2.a))));
    let var_3 = func_2();
    global1 = arg_2;
    return var_1;
}

fn func_1(arg_0: vec2<u32>) -> Struct_2 {
    global0 = array<vec4<u32>, 7>();
    var var_0 = any(!select(vec3<bool>(global1.a, global1.a, !global1.a), !vec3<bool>(global1.a, true, global1.a), global1.a || true));
    global1 = func_4(func_2(), func_2().a, Struct_1(false), ~(~(~countOneBits(u_input.e.x))));
    global1 = Struct_1(true);
    var var_1 = Struct_2(u_input.d);
    return Struct_2(-(~46095i ^ u_input.a));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_3, arg_2: u32) -> vec2<bool> {
    global1 = func_4(Struct_2(-1i), -_wgslsmith_clamp_i32(-2147483647i, -1i, _wgslsmith_mod_i32(_wgslsmith_div_i32(-2147483647i, u_input.b), 1i)), Struct_1(arg_1.a.a), firstLeadingBit(1u));
    let var_0 = vec2<f32>(-2065f, 341f);
    var var_1 = global0[_wgslsmith_index_u32(u_input.c.x, 7u)];
    var var_2 = arg_1.b;
    let var_3 = ~countOneBits(-firstLeadingBit(-vec3<i32>(arg_0.a, -35281i, -1i)));
    return !(!(!(!select(vec2<bool>(arg_1.a.a, true), vec2<bool>(global1.a, false), true))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<u32>, 7>();
    var var_0 = 73973u;
    let var_1 = Struct_2(42242i);
    var var_2 = Struct_2(min(firstTrailingBit(u_input.d), -var_1.a));
    let var_3 = !(!func_5(func_1(u_input.c.xx), Struct_3(Struct_1(true), var_1), firstLeadingBit(16281u) >> (~u_input.c.x % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(firstTrailingBit(-43390i), max(0i, var_1.a), func_1(vec2<u32>(48885u, 76206u)).a), countOneBits(vec3<i32>(var_2.a, u_input.b, u_input.b)) << ((u_input.e | u_input.e) % vec3<u32>(32u))), 0i, -1i, _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(15756i, 1i), ~vec2<i32>(var_2.a, 52628i)), countOneBits(vec2<i32>(var_1.a, 0i)))), min(u_input.d, 1i), ~u_input.c.x);
}

