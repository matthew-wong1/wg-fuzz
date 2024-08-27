struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: i32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: f32,
    c: Struct_1,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_1,
    c: u32,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<u32>,
    c: vec3<f32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 29>;

var<private> global1: array<vec2<bool>, 25> = array<vec2<bool>, 25>(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false));

var<private> global2: array<Struct_1, 14>;

var<private> global3: vec2<u32> = vec2<u32>(4294967295u, 0u);

var<private> global4: array<bool, 8>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: i32, arg_1: i32, arg_2: Struct_1) -> vec3<i32> {
    let var_0 = !(!all(select(vec3<bool>(global4[_wgslsmith_index_u32(global3.x, 8u)], false, global4[_wgslsmith_index_u32(u_input.a, 8u)]), !vec3<bool>(global4[_wgslsmith_index_u32(4294967295u, 8u)], false, arg_2.b.x), vec3<bool>(global4[_wgslsmith_index_u32(12983u, 8u)], arg_2.b.x, global4[_wgslsmith_index_u32(global3.x, 8u)]))));
    global0 = array<Struct_3, 29>();
    var var_1 = global1[_wgslsmith_index_u32(u_input.a, 25u)];
    var_1 = !select(select(!select(global1[_wgslsmith_index_u32(2503u, 25u)], vec2<bool>(false, arg_2.b.x), vec2<bool>(false, false)), select(!vec2<bool>(var_1.x, true), global1[_wgslsmith_index_u32(~global3.x, 25u)], global1[_wgslsmith_index_u32(u_input.a, 25u)]), !vec2<bool>(var_0, arg_2.b.x)), select(select(!vec2<bool>(var_0, true), select(vec2<bool>(true, true), vec2<bool>(false, var_0), vec2<bool>(arg_2.b.x, true)), global1[_wgslsmith_index_u32(global3.x, 25u)]), vec2<bool>(global4[_wgslsmith_index_u32(4294967295u, 8u)], var_1.x), !select(vec2<bool>(false, false), vec2<bool>(var_1.x, global4[_wgslsmith_index_u32(0u, 8u)]), var_1.x)), any(global1[_wgslsmith_index_u32(u_input.a | global3.x, 25u)]));
    global0 = array<Struct_3, 29>();
    return -u_input.d.wxw;
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: vec2<i32>) -> i32 {
    var var_0 = Struct_2(vec4<bool>(!any(global1[_wgslsmith_index_u32(0u, 25u)]) && false, (_wgslsmith_f_op_f32(-arg_1.a) < arg_1.a) && !any(arg_1.b), true, !all(vec3<bool>(false, global4[_wgslsmith_index_u32(1u, 8u)], global4[_wgslsmith_index_u32(u_input.a, 8u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(772f))))), global2[_wgslsmith_index_u32(1u, 14u)], global2[_wgslsmith_index_u32(u_input.a, 14u)], -abs(i32(-1i) * -52190i));
    global0 = array<Struct_3, 29>();
    var var_1 = true;
    global4 = array<bool, 8>();
    var var_2 = true;
    return abs(func_3(~_wgslsmith_div_i32(~(-25285i), -6851i), u_input.d.x, Struct_1(-1811f, arg_1.b, u_input.b)).x);
}

fn func_2(arg_0: bool) -> Struct_2 {
    let var_0 = u_input.b;
    let var_1 = func_4(vec2<i32>(~(-u_input.c), ~u_input.e), global2[_wgslsmith_index_u32(47443u, 14u)], ~_wgslsmith_mod_vec3_i32(u_input.d.yww, func_3(-26972i & u_input.e, countOneBits(u_input.b), global2[_wgslsmith_index_u32(u_input.a, 14u)])), u_input.d.wz);
    let var_2 = ~10710u;
    var var_3 = Struct_2(!(!(!(!vec4<bool>(global4[_wgslsmith_index_u32(global3.x, 8u)], arg_0, arg_0, global4[_wgslsmith_index_u32(4294967295u, 8u)])))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -2069f))), global2[_wgslsmith_index_u32(135547u, 14u)], global2[_wgslsmith_index_u32(var_2, 14u)], reverseBits(-_wgslsmith_dot_vec4_i32(u_input.d, u_input.d)));
    var var_4 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.b) - 613f), var_3.d.a, 645f) * _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.c.a, _wgslsmith_f_op_f32(min(var_3.b, 2046f)), _wgslsmith_f_op_f32(var_3.b + -995f)) - _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-484f, 1000f, var_3.b))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.c.a, -474f, 1826f) - vec3<f32>(1610f, 2642f, var_3.c.a))))))));
    return Struct_2(!(!var_3.a), -516f, var_3.c, var_3.d, -2147483647i);
}

fn func_1(arg_0: vec2<u32>, arg_1: vec3<i32>) -> f32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1247f, -1715f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1427f))))));
    var var_1 = func_2(global4[_wgslsmith_index_u32(min(0u, _wgslsmith_clamp_u32(arg_0.x & u_input.a, global3.x << (arg_0.x % 32u), ~arg_0.x) ^ ~global3.x), 8u)]);
    let var_2 = var_1.c;
    var var_3 = reverseBits(func_4(vec2<i32>(~u_input.d.x, 1i), Struct_1(-1542f, !var_1.c.b, _wgslsmith_dot_vec2_i32(u_input.d.zx, u_input.d.xz)), reverseBits(vec3<i32>(0i, -12774i, var_2.c)), _wgslsmith_div_vec2_i32(-u_input.d.wz, vec2<i32>(-29696i, u_input.c))) ^ (i32(-1i) * -7374i));
    var var_4 = vec2<u32>(_wgslsmith_dot_vec4_u32(select(vec4<u32>(global3.x, u_input.a, 4294967295u, 1u) & vec4<u32>(1u, u_input.a, global3.x, u_input.a), ~vec4<u32>(39283u, global3.x, 26039u, u_input.a), select(var_1.a, var_1.a, false)), ~vec4<u32>(global3.x, 33541u, global3.x, u_input.a)) << (~4294967295u % 32u), abs(_wgslsmith_dot_vec3_u32(vec3<u32>(~6750u, u_input.a & u_input.a, _wgslsmith_clamp_u32(arg_0.x, u_input.a, 78531u)), _wgslsmith_add_vec3_u32(vec3<u32>(arg_0.x, u_input.a, 62181u), _wgslsmith_mod_vec3_u32(vec3<u32>(51874u, global3.x, global3.x), vec3<u32>(0u, global3.x, 22707u))))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(672f + _wgslsmith_f_op_f32(trunc(var_1.d.a)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(abs(abs(vec2<u32>(0u, u_input.a))), u_input.d.xzy)) + _wgslsmith_f_op_f32(1000f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(max(1188f, -1043f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(411f, -848f))))));
    global1 = array<vec2<bool>, 25>();
    global0 = array<Struct_3, 29>();
    global4 = array<bool, 8>();
    var var_1 = vec2<u32>(u_input.a, u_input.a);
    global1 = array<vec2<bool>, 25>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, var_0)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, var_0)))))), firstTrailingBit(min(reverseBits(vec4<u32>(72514u, global3.x, var_1.x, 12077u)), ~vec4<u32>(u_input.a, 1u, global3.x, 1u))), vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-func_2(true).c.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1853f))), _wgslsmith_f_op_f32(f32(-1f) * -291f)), _wgslsmith_mult_i32(19443i, u_input.b), _wgslsmith_mult_i32(_wgslsmith_div_i32(select(~u_input.e, 36718i & u_input.c, true), ~1i), 1i));
}

