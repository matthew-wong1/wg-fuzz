struct Struct_1 {
    a: bool,
    b: vec2<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_1,
    c: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 23>;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: i32, arg_1: f32, arg_2: vec4<i32>, arg_3: f32) -> i32 {
    var var_0 = vec3<f32>(405f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_3, 709f)))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * arg_1)))))));
    let var_1 = Struct_1(any(vec2<bool>(true, true)), !select(vec2<bool>(all(vec4<bool>(true, false, false, true)), true), select(vec2<bool>(true, false), vec2<bool>(true, false), true), vec2<bool>(true, true)));
    var var_2 = Struct_4(var_1, _wgslsmith_dot_vec4_i32(arg_2, -arg_2));
    let var_3 = Struct_1(true, !(!var_2.a.b));
    let var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(var_0.xx)), _wgslsmith_f_op_vec2_f32(var_0.zx + var_0.zx), var_1.b)) + vec2<f32>(_wgslsmith_f_op_f32(-var_0.x), -1493f)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, -641f) + vec2<f32>(var_0.x, 654f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3, arg_1))))) - vec2<f32>(-969f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_1)) + arg_1) + _wgslsmith_f_op_f32(-arg_1))));
    return -_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, arg_0, -(~u_input.a)), -(vec3<i32>(-1i) * -vec3<i32>(arg_0, u_input.a, arg_0)));
}

fn func_4(arg_0: i32, arg_1: vec4<f32>, arg_2: vec2<i32>, arg_3: Struct_1) -> vec2<u32> {
    var var_0 = vec3<bool>(!all(select(!vec3<bool>(false, arg_3.a, true), select(vec3<bool>(arg_3.a, true, false), vec3<bool>(arg_3.a, arg_3.b.x, arg_3.a), arg_3.a), vec3<bool>(true, true, arg_3.a))), true, true);
    var var_1 = Struct_1(all(select(!select(vec3<bool>(false, arg_3.b.x, arg_3.a), vec3<bool>(var_0.x, arg_3.b.x, arg_3.b.x), vec3<bool>(false, false, true)), !select(vec3<bool>(var_0.x, true, false), vec3<bool>(false, true, true), vec3<bool>(arg_3.b.x, false, false)), !select(vec3<bool>(false, var_0.x, arg_3.a), vec3<bool>(var_0.x, arg_3.a, true), true))), select(arg_3.b, !(!select(vec2<bool>(false, true), vec2<bool>(false, false), false)), arg_3.b));
    let var_2 = -54673i;
    let var_3 = Struct_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1219f, _wgslsmith_f_op_f32(round(701f)), arg_1.x, -2191f)), arg_3, u_input.a);
    let var_4 = select(!vec3<bool>(!var_1.a, true, all(vec4<bool>(false, arg_3.b.x, true, arg_3.a)) | true), !vec3<bool>(select(var_0.x, arg_3.b.x, false) & true, var_3.b.b.x, any(select(vec4<bool>(true, false, var_3.b.a, false), vec4<bool>(true, true, false, true), vec4<bool>(true, var_0.x, true, var_3.b.a)))), true);
    return vec2<u32>(u_input.b.x, 42806u);
}

fn func_2() -> vec3<bool> {
    var var_0 = _wgslsmith_sub_vec2_u32(u_input.b.yz, _wgslsmith_clamp_vec2_u32(u_input.b.xy, u_input.b.yz >> (u_input.b.xz % vec2<u32>(32u)), u_input.b.yz) ^ func_4(u_input.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(433f, 781f, 2562f, 1181f)), vec2<i32>(func_3(u_input.a, -807f, vec4<i32>(-1i, u_input.a, u_input.a, 1i), 1554f), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, u_input.a, u_input.a, u_input.a), vec4<i32>(u_input.a, u_input.a, u_input.a, 0i))), Struct_1(u_input.a == -17494i, select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false)))));
    var var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1888f - _wgslsmith_f_op_f32(-2209f - 483f)), _wgslsmith_f_op_f32(f32(-1f) * -935f))))));
    global0 = array<vec4<f32>, 23>();
    var_0 = abs(_wgslsmith_mult_vec2_u32(~(min(vec2<u32>(u_input.b.x, u_input.b.x), vec2<u32>(u_input.b.x, 51046u)) >> (vec2<u32>(var_0.x, 4294967295u) % vec2<u32>(32u))), ~_wgslsmith_mod_vec2_u32(vec2<u32>(32660u, u_input.b.x) >> (vec2<u32>(u_input.b.x, 4294967295u) % vec2<u32>(32u)), ~vec2<u32>(69771u, u_input.b.x))));
    let var_2 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1623f, -146f, 573f, 194f) * global0[_wgslsmith_index_u32(~u_input.b.x, 23u)]), vec4<f32>(_wgslsmith_f_op_f32(-1458f * 483f), _wgslsmith_f_op_f32(sign(3004f)), _wgslsmith_f_op_f32(ceil(-1040f)), 1735f), true))), Struct_1(true, select(vec2<bool>(true, true), vec2<bool>(true, true), true)), i32(-1i) * -(~countOneBits(2147483647i)));
    return vec3<bool>(true, !(!(var_0.x < ~u_input.b.x)), all(!(!select(vec3<bool>(var_2.b.a, var_2.b.b.x, var_2.b.a), vec3<bool>(var_2.b.b.x, var_2.b.a, var_2.b.a), var_2.b.a))));
}

fn func_1() -> Struct_3 {
    var var_0 = u_input.b.x;
    global0 = array<vec4<f32>, 23>();
    var var_1 = !(!func_2());
    var var_2 = u_input.a;
    var_0 = 4294967295u;
    return Struct_3(_wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(u_input.b.x, 23u)]), Struct_1(var_1.x, !(!var_1.zx)), -u_input.a);
}

fn func_5(arg_0: vec2<bool>, arg_1: Struct_3, arg_2: u32) -> Struct_4 {
    global0 = array<vec4<f32>, 23>();
    global0 = array<vec4<f32>, 23>();
    var var_0 = select(!func_2(), func_2(), vec3<bool>(any(select(select(arg_1.b.b, vec2<bool>(arg_0.x, arg_0.x), arg_1.b.a), arg_1.b.b, true)), true, true));
    let var_1 = vec3<i32>(countOneBits(arg_1.c) >> ((43366u ^ arg_2) % 32u), -(-arg_1.c >> (max(arg_2, u_input.b.x << (4294967295u % 32u)) % 32u)), -_wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(arg_1.c, -8472i, 1i)) | vec3<i32>(1i, -10684i, 0i), vec3<i32>(u_input.a, u_input.a & 1i, -12655i)));
    global0 = array<vec4<f32>, 23>();
    return Struct_4(func_1().b, 558i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(1588f, 1440f), 1f, all(vec3<bool>(true, false, true)))) - -124f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-546f + -117f)) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(105f, 972f) * _wgslsmith_div_f32(407f, 406f))), -862f, -1591f), Struct_1(!(select(false, true, true) && false), vec2<bool>(any(vec3<bool>(false, false, true)) & true, all(vec4<bool>(true, false, false, false)))), 2147483647i);
    let var_1 = func_5(select(vec2<bool>(var_0.b.a, true), !vec2<bool>(var_0.c != u_input.a, true), true), func_1(), u_input.b.x);
    let var_2 = var_0.a.xxz;
    var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.a.x, var_2.x, var_0.a.x, var_2.x))))))), _wgslsmith_f_op_vec4_f32(ceil(global0[_wgslsmith_index_u32(select(u_input.b.x, ~u_input.b.x, func_1().b.a), 23u)])))), Struct_1(true & !(-2147483647i >= var_0.c), func_2().zz), 101i);
    global0 = array<vec4<f32>, 23>();
    var var_3 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(2405f)), _wgslsmith_f_op_f32(-1192f - _wgslsmith_div_f32(462f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1548f + var_2.x))))));
    var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x - _wgslsmith_f_op_f32(-var_0.a.x)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1429f, var_0.a.x) - var_2.x) * var_2.x)), _wgslsmith_f_op_f32(-func_1().a.x));
    let var_4 = var_0.b.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(0i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-780f, var_0.a.x))))), ~_wgslsmith_dot_vec4_i32(vec4<i32>(-51641i, 2147483647i, var_0.c, abs(var_1.b)), vec4<i32>(reverseBits(var_0.c), var_0.c, var_0.c, 1i)), _wgslsmith_f_op_f32(472f - var_2.x));
}

