struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: Struct_1,
    d: u32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: u32,
    c: f32,
    d: vec3<f32>,
}

struct Struct_4 {
    a: f32,
    b: vec4<f32>,
    c: i32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<u32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -20940i;

var<private> global1: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(581f), Struct_1(2498f));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: vec4<u32>) -> u32 {
    global0 = -43101i >> (u_input.a.x % 32u);
    return u_input.a.x;
}

fn func_3(arg_0: Struct_3, arg_1: u32, arg_2: bool, arg_3: u32) -> vec4<i32> {
    let var_0 = max(~vec4<u32>(~firstLeadingBit(6570u), abs(_wgslsmith_add_u32(19598u, u_input.a.x)), arg_3, ~1u), select(~(~_wgslsmith_div_vec4_u32(vec4<u32>(16583u, 38044u, 13720u, arg_1), vec4<u32>(arg_0.b, u_input.a.x, arg_3, 1u))), (reverseBits(vec4<u32>(arg_1, 0u, u_input.a.x, 1112u)) & (vec4<u32>(28395u, u_input.a.x, u_input.a.x, 55066u) << (vec4<u32>(1u, 56114u, 117984u, 1u) % vec4<u32>(32u)))) << ((_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 63246u, arg_0.b, 110063u), vec4<u32>(1u, 10113u, arg_3, arg_0.b)) | vec4<u32>(4294967295u, arg_0.b, arg_0.b, arg_0.b)) % vec4<u32>(32u)), 1i <= arg_0.a.x));
    let var_1 = Struct_1(-880f);
    global0 = u_input.c.x;
    var var_2 = false;
    let var_3 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1824f, var_1.a, arg_0.d.x, var_1.a), vec4<f32>(var_1.a, -1444f, 253f, 1330f))))))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-783f, arg_0.d.x, 487f, arg_0.d.x))) * _wgslsmith_div_vec4_f32(vec4<f32>(117f, 561f, var_1.a, arg_0.d.x), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(365f, -1000f, arg_0.c, var_1.a))))))));
    return _wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, 66977i, ~min(-arg_0.a.x, 1i), _wgslsmith_mod_i32(firstTrailingBit(~2147483647i), ~(-2147483647i & u_input.c.x))), firstTrailingBit(vec4<i32>(-arg_0.a.x, select(arg_0.a.x, arg_0.a.x, false), ~arg_0.a.x, u_input.b)), ~vec4<i32>(31018i, -(i32(-1i) * -18711i), (arg_0.a.x & u_input.c.x) << (15305u % 32u), -countOneBits(arg_0.a.x)));
}

fn func_2(arg_0: vec2<bool>, arg_1: bool, arg_2: Struct_1, arg_3: bool) -> Struct_2 {
    let var_0 = global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(25793u, 0u), 2u)];
    let var_1 = Struct_2(i32(-1i) * -min(-u_input.c.x, u_input.c.x), _wgslsmith_dot_vec4_i32(-(func_3(Struct_3(vec4<i32>(-18350i, 0i, -1i, 1i), 1u, var_0.a, vec3<f32>(-597f, var_0.a, 1426f)), 0u, arg_3, u_input.a.x) >> (abs(vec4<u32>(52421u, 1u, 4294967295u, u_input.a.x)) % vec4<u32>(32u))), abs(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c.x, -2147483647i, u_input.b, u_input.b) << (vec4<u32>(u_input.a.x, u_input.a.x, 0u, 4294967295u) % vec4<u32>(32u)), -vec4<i32>(-2147483647i, -25398i, u_input.c.x, -51945i)))), global1[_wgslsmith_index_u32(min(u_input.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(abs(u_input.a.x), firstLeadingBit(83611u), ~0u), ~(~vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)))), 2u)], 0u, Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -802f) - -280f)))));
    let var_2 = !vec3<bool>(arg_3, arg_0.x || arg_3, false);
    let var_3 = ~22693i;
    global1 = array<Struct_1, 2>();
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = -u_input.c.x;
    global1 = array<Struct_1, 2>();
    var var_0 = vec2<bool>(all(vec2<bool>(false, !any(vec2<bool>(false, true)))), true);
    var var_1 = func_2(!vec2<bool>(var_0.x, !any(vec4<bool>(var_0.x, true, false, var_0.x))), false, global1[_wgslsmith_index_u32(~(~_wgslsmith_add_u32(4294967295u, func_1(vec4<u32>(u_input.a.x, 49932u, u_input.a.x, u_input.a.x)))), 2u)], (!(!var_0.x) | true) | false);
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(var_1.c.a + var_1.c.a), var_1.e.a, _wgslsmith_f_op_f32(1040f - -1000f), var_1.e.a);
    var_0 = !(!(!(!(!vec2<bool>(var_0.x, var_0.x)))));
    let var_3 = u_input.c.x;
    let var_4 = ~1i;
    let var_5 = min(vec2<i32>(~(2147483647i | (-61303i | var_3)), ~(var_3 << (~var_1.d % 32u))), vec2<i32>(i32(-1i) * -countOneBits(35329i), _wgslsmith_mod_i32(firstTrailingBit(3172i), var_3)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-214f, -1171f, -1998f, var_1.e.a) - vec4<f32>(var_2.x, var_1.e.a, var_1.e.a, var_1.e.a)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-854f, 473f, 202f, var_2.x))) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_2.x, var_1.c.a, var_2.x, var_1.e.a))))), vec4<u32>(~_wgslsmith_div_u32(11132u, 1u), _wgslsmith_mod_u32(~1u, _wgslsmith_dot_vec2_u32(u_input.a.zx, u_input.a.yy)), 4294967295u | _wgslsmith_dot_vec2_u32(~u_input.a.yx, reverseBits(u_input.a.zy)), firstTrailingBit(52839u) << (u_input.a.x % 32u)), vec3<u32>(var_1.d, u_input.a.x, 0u));
}

