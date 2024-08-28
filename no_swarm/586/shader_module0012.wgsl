struct Struct_1 {
    a: vec2<bool>,
    b: vec4<bool>,
    c: bool,
    d: f32,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -4004i;

var<private> global1: array<Struct_1, 3> = array<Struct_1, 3>(Struct_1(vec2<bool>(true, true), vec4<bool>(true, false, false, true), true, -1259f, vec2<f32>(-1493f, 1000f)), Struct_1(vec2<bool>(true, true), vec4<bool>(true, false, true, true), true, 385f, vec2<f32>(-156f, -1000f)), Struct_1(vec2<bool>(false, true), vec4<bool>(false, true, true, true), false, -424f, vec2<f32>(-433f, 694f)));

var<private> global2: Struct_1;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: f32) -> vec4<bool> {
    let var_0 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_0)) + _wgslsmith_f_op_f32(1235f - 917f))), 511f), global2.d);
    var var_1 = !select(!select(select(global2.b.yz, global2.a, vec2<bool>(true, true)), select(vec2<bool>(true, global2.c), vec2<bool>(global2.b.x, false), true), true), global2.b.xy, 77748u <= _wgslsmith_clamp_u32(~4294967295u, u_input.c.x, abs(1u)));
    global2 = Struct_1(global2.a, select(global2.b, global2.b, u_input.a <= ~u_input.b), all(!global2.b.xz), _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.x), global2.d, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-1765f - 330f))) * _wgslsmith_f_op_f32(f32(-1f) * -241f))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-473f, -393f)))))));
    global2 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(~u_input.e.x, u_input.a >> (38292u % 32u)) | ~u_input.e.zx, ~vec2<u32>(12228u, max(u_input.b, 4294967295u))), ~u_input.e.x), 3u)];
    let var_2 = Struct_1(select(global2.b.yw, select(global2.a, select(vec2<bool>(false, false), vec2<bool>(false, var_1.x), var_1.x), !select(vec2<bool>(false, var_1.x), global2.a, true)), !global2.a.x | true), global2.b, (true && all(global2.b)) & all(vec3<bool>(true, all(vec2<bool>(global2.b.x, true)), u_input.e.x != 24051u)), 753f, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(var_0.x + arg_0), _wgslsmith_f_op_f32(trunc(arg_0)))))));
    return global2.b;
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_1) -> vec2<bool> {
    global1 = array<Struct_1, 3>();
    global2 = Struct_1(select(!vec2<bool>(arg_1.a.x, arg_1.b.x), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true)), !(!vec2<bool>(arg_1.b.x, arg_1.a.x))), !(!func_3(-1190f)), (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.e.x) + -552f) == arg_1.d) & all(func_3(1f).wyy), 2253f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(708f, arg_1.e.x))))));
    return !(!func_3(arg_1.d).wx);
}

fn func_1() -> Struct_1 {
    let var_0 = global2.b.x;
    global1 = array<Struct_1, 3>();
    let var_1 = 35435u;
    let var_2 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1, var_1, ~u_input.a), u_input.e) ^ var_1, 3u)];
    var var_3 = !global2.b;
    return Struct_1(!select(select(!vec2<bool>(var_2.a.x, var_2.b.x), !var_2.b.yw, vec2<bool>(false, false)), !func_2(vec4<u32>(u_input.d, 4294967295u, var_1, 0u), Struct_1(var_3.xw, var_2.b, false, -567f, vec2<f32>(var_2.d, -1000f))), false), !var_2.b, global2.b.x, global2.d, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(step(global2.e, vec2<f32>(global2.d, _wgslsmith_f_op_f32(ceil(var_2.e.x))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global2.e * _wgslsmith_f_op_vec2_f32(var_2.e * global2.e))))));
}

fn func_4(arg_0: i32, arg_1: vec4<u32>, arg_2: Struct_1) -> vec3<u32> {
    global0 = _wgslsmith_sub_i32(-1i, arg_0);
    let var_0 = Struct_1(func_2(vec4<u32>(~arg_1.x & ~4294967295u, abs(~1u), 2679u, 8014u), arg_2), vec4<bool>(all(func_1().b.xz), false, (arg_0 | 20955i) <= -1i, select(~u_input.b <= _wgslsmith_div_u32(u_input.b, 47700u), !global2.a.x, global2.b.x)), true, global2.e.x, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(864f, 2106f)), arg_2.e.x, global2.a.x)), _wgslsmith_f_op_f32(-global2.e.x)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(208f, _wgslsmith_f_op_f32(max(-1170f, -568f))) - _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-arg_2.e), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.e.x, global2.d)))))));
    global0 = arg_0;
    var var_1 = arg_1.x;
    let var_2 = -289f;
    return arg_1.zwy;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_dot_vec4_u32(~firstLeadingBit(vec4<u32>(u_input.e.x, u_input.d, 4294967295u, 58922u)), select(~vec4<u32>(u_input.e.x, u_input.c.x, u_input.e.x, u_input.b), vec4<u32>(u_input.e.x, u_input.e.x, 0u, 1u), !vec4<bool>(false, global2.a.x, true, true))), u_input.b, u_input.a), func_4(_wgslsmith_add_i32(~_wgslsmith_sub_i32(48612i, 1i), ~18721i), firstLeadingBit(vec4<u32>(~4294967295u, u_input.c.x ^ u_input.b, ~u_input.d, _wgslsmith_mult_u32(u_input.b, u_input.e.x))), func_1()));
    var var_1 = countOneBits(~reverseBits(vec3<i32>(~3727i, -12718i, -2147483647i)));
    let var_2 = func_1();
    let var_3 = _wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(firstTrailingBit(u_input.e), _wgslsmith_sub_vec3_u32(~(~vec3<u32>(0u, u_input.e.x, u_input.e.x)), vec3<u32>(u_input.b, u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(1620u, 4294967295u), vec2<u32>(u_input.e.x, u_input.c.x))))), ~vec3<u32>(28418u >> (_wgslsmith_div_u32(0u, 4294967295u) % 32u), 0u, u_input.c.x));
    let var_4 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1099f - _wgslsmith_f_op_f32(global2.d - var_2.e.x)), _wgslsmith_f_op_f32(-var_2.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-278f * -454f))), -1056f));
    let var_5 = var_1.x;
    var var_6 = func_1();
    var var_7 = firstTrailingBit(1u | u_input.d);
    var var_8 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(-1i, var_1.x, -1070f);
}

