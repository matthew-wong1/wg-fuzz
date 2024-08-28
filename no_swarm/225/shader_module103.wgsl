struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: vec2<bool>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: u32,
    d: i32,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 14> = array<bool, 14>(true, true, false, false, false, false, true, false, false, true, true, false, false, true);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> vec2<bool> {
    global0 = array<bool, 14>();
    let var_0 = Struct_3(_wgslsmith_mod_u32(~firstTrailingBit(u_input.d.x), u_input.d.x), Struct_2(Struct_1(select(u_input.d.zyz, vec3<u32>(1u, u_input.d.x, u_input.d.x), true) | u_input.d.wzz, (u_input.d.x ^ u_input.d.x) ^ u_input.d.x, _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, -78200i, -12759i, u_input.a), vec4<i32>(u_input.b.x, u_input.b.x, -1i, u_input.b.x)), abs(vec4<i32>(-10101i, -1i, -2147483647i, u_input.a))), select(!vec2<bool>(global0[_wgslsmith_index_u32(u_input.d.x, 14u)], true), select(vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 14u)], global0[_wgslsmith_index_u32(1u, 14u)]), vec2<bool>(global0[_wgslsmith_index_u32(0u, 14u)], global0[_wgslsmith_index_u32(u_input.d.x, 14u)]), global0[_wgslsmith_index_u32(1u, 14u)]), vec2<bool>(false, global0[_wgslsmith_index_u32(1u, 14u)])), _wgslsmith_f_op_f32(-1000f * -948f))), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 43798u, 0u, u_input.d.x), u_input.d), -1i, ~(-vec3<i32>(u_input.a, u_input.c.x | 12231i, u_input.c.x)));
    global0 = array<bool, 14>();
    return select(!var_0.b.a.d, !var_0.b.a.d, var_0.b.a.d);
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: u32) -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_f32(max(-763f, arg_1));
    var var_1 = vec3<bool>(!(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_1)) - -1265f) >= _wgslsmith_f_op_f32(trunc(var_0))), global0[_wgslsmith_index_u32(~(~0u), 14u)], true);
    let var_2 = var_1.zx;
    var_1 = !(!(!select(vec3<bool>(true, false, var_2.x), vec3<bool>(var_2.x, arg_0.d.x, global0[_wgslsmith_index_u32(0u, 14u)]), !vec3<bool>(var_1.x, true, true))));
    let var_3 = Struct_3(abs(1u), Struct_2(Struct_1(min(vec3<u32>(490u, 6859u, 93289u), u_input.d.xwy), 91257u | ~arg_0.a.x, _wgslsmith_dot_vec3_i32(-vec3<i32>(-1i, u_input.c.x, -2147483647i), _wgslsmith_div_vec3_i32(u_input.b, u_input.b)), select(func_3(), !arg_0.d, false), arg_0.e)), ~(~abs(~arg_2)), 2147483647i, ~select(u_input.b, max(~vec3<i32>(u_input.b.x, 6240i, 2147483647i), ~vec3<i32>(965i, u_input.b.x, u_input.b.x)), 217f == _wgslsmith_f_op_f32(arg_0.e + arg_0.e)));
    return u_input.d;
}

fn func_2(arg_0: bool, arg_1: bool, arg_2: i32, arg_3: u32) -> vec2<f32> {
    global0 = array<bool, 14>();
    var var_0 = func_4(Struct_1(vec3<u32>(_wgslsmith_mult_u32(u_input.d.x, _wgslsmith_dot_vec2_u32(u_input.d.ww, vec2<u32>(arg_3, 56672u))), abs(arg_3), 40648u), 4294967295u, 19733i, func_3(), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-414f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(-723f))))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-325f, _wgslsmith_f_op_f32(min(1840f, 2204f)))), 589f) * _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-762f, _wgslsmith_f_op_f32(f32(-1f) * -1456f))))), abs(u_input.d.x >> (~1u % 32u)));
    var var_1 = vec4<i32>(1i, -5207i, min(-_wgslsmith_sub_i32(arg_2, u_input.b.x), u_input.b.x), ~0i);
    var_1 = vec4<i32>(-1i, _wgslsmith_add_i32(_wgslsmith_sub_i32(-14338i, u_input.b.x) & -2147483647i, arg_2), -1i, 1i) & vec4<i32>(arg_2, arg_2, arg_2, arg_2 << (var_0.x % 32u));
    var var_2 = firstTrailingBit(abs(_wgslsmith_dot_vec2_u32(~u_input.d.zz, vec2<u32>(var_0.x, func_4(Struct_1(vec3<u32>(28139u, arg_3, 4294967295u), 1u, arg_2, vec2<bool>(global0[_wgslsmith_index_u32(0u, 14u)], true), 185f), -1493f, 944u).x))));
    return vec2<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(max(-250f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-994f * 1692f))))));
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_2) -> vec2<bool> {
    global0 = array<bool, 14>();
    global0 = array<bool, 14>();
    let var_0 = vec3<f32>(arg_1.a.e, -516f, 305f);
    let var_1 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-697f, 225f) - var_0.xx)), _wgslsmith_div_vec2_f32(var_0.yx, _wgslsmith_div_vec2_f32(var_0.zz, vec2<f32>(arg_1.a.e, 174f))))) * _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.a.e, arg_1.a.e)) * vec2<f32>(322f, arg_1.a.e))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.a.e, _wgslsmith_f_op_f32(var_0.x + var_0.x)) + _wgslsmith_f_op_vec2_f32(func_2(arg_0.x, false, _wgslsmith_mult_i32(_wgslsmith_mult_i32(-1i, u_input.a), 0i), abs(4294967295u >> (arg_1.a.a.x % 32u)))))));
    global0 = array<bool, 14>();
    return vec2<bool>(any(vec4<bool>(func_3().x, !(!arg_0.x), arg_0.x, select(all(arg_0.zxz), true, global0[_wgslsmith_index_u32(~1u, 14u)]))), true);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 14>();
    var var_0 = select(1u, ~(~u_input.d.x), (abs(_wgslsmith_add_u32(30345u, u_input.d.x)) | u_input.d.x) >= min(select(13095u >> (u_input.d.x % 32u), max(1u, u_input.d.x), global0[_wgslsmith_index_u32(u_input.d.x, 14u)] | false), u_input.d.x));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1183f));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1421f))));
    let var_3 = !vec3<bool>(select(global0[_wgslsmith_index_u32(80261u, 14u)] & (true | global0[_wgslsmith_index_u32(u_input.d.x, 14u)]), true, ~11850i != u_input.c.x), (u_input.d.x < ~4294967295u) | any(func_1(vec4<bool>(global0[_wgslsmith_index_u32(u_input.d.x, 14u)], global0[_wgslsmith_index_u32(5622u, 14u)], false, true), Struct_2(Struct_1(u_input.d.yyy, 70668u, 11394i, vec2<bool>(false, true), -1981f)))), 317f == var_2);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d.zx, -2147483647i);
}

