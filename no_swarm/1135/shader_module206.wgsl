struct Struct_1 {
    a: vec3<i32>,
    b: vec3<f32>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec3<u32>,
    d: bool,
    e: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<u32>,
    c: u32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 19>;

var<private> global1: vec4<i32>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: i32, arg_1: Struct_3, arg_2: u32, arg_3: vec3<u32>) -> u32 {
    var var_0 = Struct_1(firstTrailingBit(-vec3<i32>(u_input.a.x, global1.x, global1.x)) >> (vec3<u32>(u_input.c.x, _wgslsmith_div_u32(arg_2, arg_2) << (_wgslsmith_dot_vec3_u32(arg_1.c, arg_3) % 32u), 1u) % vec3<u32>(32u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_1.a.a.b)), vec4<bool>(arg_1.b.c.x, any(arg_1.b.c.wxx), true, all(!arg_1.b.c.wwz)));
    var var_1 = global1.xz;
    var_1 = ~(~u_input.b.zx);
    var var_2 = any(var_0.c.xx);
    var var_3 = arg_1.b.b.xz;
    return arg_1.a.c;
}

fn func_2(arg_0: vec4<i32>) -> f32 {
    var var_0 = _wgslsmith_add_u32(_wgslsmith_sub_u32(_wgslsmith_mod_u32(u_input.c.x, _wgslsmith_sub_u32(32353u, 321u)), u_input.c.x), firstLeadingBit(_wgslsmith_div_u32(14391u, u_input.c.x)) << (u_input.c.x % 32u)) >= _wgslsmith_dot_vec4_u32(~_wgslsmith_sub_vec4_u32(~vec4<u32>(0u, 25790u, 42791u, u_input.c.x), ~vec4<u32>(42450u, 74590u, 1u, u_input.c.x)), vec4<u32>(~func_3(2147483647i, Struct_3(Struct_2(Struct_1(vec3<i32>(u_input.b.x, arg_0.x, u_input.d), vec3<f32>(-1626f, 482f, 2435f), vec4<bool>(true, false, false, true)), vec2<f32>(1059f, -179f), u_input.c.x), Struct_1(u_input.a.zyz, vec3<f32>(490f, -465f, 1000f), vec4<bool>(false, false, true, false)), u_input.c, false, u_input.b.x), 22968u, u_input.c), u_input.c.x, ~max(u_input.c.x, 25349u), ~(~8858u)));
    let var_1 = Struct_3(Struct_2(Struct_1(-arg_0.wzz, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-204f, -1267f, 865f)) + _wgslsmith_div_vec3_f32(vec3<f32>(-1074f, -240f, 870f), vec3<f32>(501f, 304f, 772f))), vec4<bool>(select(false, false, false), all(vec3<bool>(true, false, true)), true, true)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(575f, 141f)))))), select(~select(0u, u_input.c.x, false), func_3(global1.x, Struct_3(Struct_2(Struct_1(vec3<i32>(-12615i, 2147483647i, -1i), vec3<f32>(-1428f, 1368f, 472f), vec4<bool>(false, false, false, false)), vec2<f32>(-904f, -1548f), u_input.c.x), Struct_1(global1.wzx, vec3<f32>(-291f, -1000f, -1000f), vec4<bool>(false, true, false, true)), vec3<u32>(51739u, u_input.c.x, u_input.c.x), true, arg_0.x), _wgslsmith_sub_u32(102991u, 1u), vec3<u32>(4294967295u, u_input.c.x, 40007u)), true)), Struct_1(~vec3<i32>(~0i, ~(-2147483647i), u_input.a.x << (113109u % 32u)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-112f, 917f, -1241f)), vec3<f32>(1000f, -1982f, 691f)))), vec4<bool>(true, true, any(vec3<bool>(true, true, true)), false)), vec3<u32>(u_input.c.x, ~1u, 64472u), !all(vec3<bool>(all(vec4<bool>(false, true, false, true)), true, true)), abs(u_input.b.x));
    let var_2 = Struct_3(var_1.a, var_1.b, abs(vec3<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(23933u, u_input.c.x, 4294967295u, 4294967295u), vec4<u32>(var_1.a.c, u_input.c.x, 0u, 1u)), u_input.c.x, 28353u)), all(select(var_1.b.c.wy, var_1.b.c.xw, var_1.b.c.zz)), 34860i);
    global0 = array<vec4<f32>, 19>();
    var_0 = !(!all(!var_1.b.c.zx)) | !var_1.b.c.x;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-711f + var_1.b.b.x))) * 620f)));
}

fn func_1(arg_0: vec4<bool>, arg_1: i32) -> vec4<bool> {
    var var_0 = arg_0.x || all(arg_0.wyx);
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(~(~vec4<i32>(global1.x, u_input.d, global1.x, 2147483647i))))), _wgslsmith_f_op_f32(func_2(u_input.a)), _wgslsmith_f_op_f32(1511f * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(242f - -1103f) + _wgslsmith_f_op_f32(-161f + -1292f))))), -399f);
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(var_1.x)))), 1000f) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1568f, var_1.x, arg_0.x)))))) > var_1.x;
    let var_2 = arg_0.x;
    var var_3 = ~firstTrailingBit(~u_input.c.x) < ~u_input.c.x;
    return !select(select(vec4<bool>(!var_2, any(arg_0.yy), arg_0.x, false), arg_0, any(!arg_0.yzw)), arg_0, any(vec4<bool>(arg_0.x, true, true || var_2, true)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<f32>, 19>();
    global0 = array<vec4<f32>, 19>();
    var var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(-167f, -734f) - _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-187f, _wgslsmith_f_op_f32(-648f + _wgslsmith_f_op_f32(201f * 1000f))))));
    var var_1 = vec4<i32>(_wgslsmith_clamp_i32(_wgslsmith_sub_i32(~(-global1.x), min(-1i, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 32863i), vec2<i32>(-2302i, 2147483647i)))), firstLeadingBit(~(0i | global1.x)), 0i), 26650i, _wgslsmith_div_i32(max(0i, _wgslsmith_div_i32(u_input.a.x, global1.x) & global1.x), _wgslsmith_add_i32(30961i, u_input.b.x)), firstLeadingBit(2147483647i));
    let var_2 = !(!all(!func_1(vec4<bool>(false, false, false, true), 15279i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_f32(vec2<f32>(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - 139f) + _wgslsmith_f_op_f32(1000f * var_0.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, var_0.x) * vec2<f32>(-699f, 382f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x))))), ~(~(min(vec4<u32>(u_input.c.x, 4294967295u, 49164u, 3704u), vec4<u32>(4294967295u, 0u, 1u, u_input.c.x)) << (vec4<u32>(u_input.c.x, u_input.c.x, 0u, 4294967295u) % vec4<u32>(32u)))), u_input.c.x, firstTrailingBit(~(reverseBits(u_input.b) | vec3<i32>(global1.x, u_input.d, u_input.b.x))));
}

