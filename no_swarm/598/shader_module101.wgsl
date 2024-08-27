struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec2<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_2,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 31>;

var<private> global1: array<Struct_1, 11>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> u32 {
    var var_0 = global1[_wgslsmith_index_u32(u_input.a, 11u)];
    var var_1 = Struct_4(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0.a, 1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a + var_0.a) - _wgslsmith_f_op_f32(-var_0.a)), var_0.a))), Struct_2(u_input.b.x, Struct_1(_wgslsmith_f_op_f32(var_0.a * -380f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-2220f, var_0.a))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_0.a, var_0.a)))))), Struct_1(757f)), Struct_2(_wgslsmith_div_i32(-(i32(-1i) * -1i), u_input.b.x), global1[_wgslsmith_index_u32(15172u, 11u)], _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-240f, _wgslsmith_f_op_f32(var_0.a * var_0.a)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1567f, -1049f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(308f, 1007f)))))), global1[_wgslsmith_index_u32(u_input.a, 11u)]));
    var var_2 = select(vec3<u32>(102590u, firstTrailingBit(0u), abs(~u_input.a)) & ~min(vec3<u32>(4294967295u, 9819u, u_input.a), vec3<u32>(136236u, u_input.a, u_input.a)), ~(~select(vec3<u32>(58172u, u_input.a, 1u) >> (vec3<u32>(u_input.a, u_input.a, u_input.a) % vec3<u32>(32u)), vec3<u32>(4065u, 0u, u_input.a), vec3<bool>(true, true, true))), any(vec2<bool>(false, true && any(vec4<bool>(false, true, true, false)))));
    var var_3 = Struct_4(var_1.a, var_1.b, Struct_2(-1i, var_1.c.d, vec2<f32>(_wgslsmith_f_op_f32(trunc(375f)), -739f), var_1.c.d));
    var_1 = Struct_4(vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1253f) - -384f), _wgslsmith_f_op_f32(-var_3.b.c.x))), var_0.a, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(458f - -607f), _wgslsmith_f_op_f32(sign(var_1.a.x))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.a * var_0.a), _wgslsmith_div_f32(1822f, var_3.b.b.a))), 103f), Struct_2(var_1.b.a, var_3.c.d, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_3.c.b.a, var_0.a))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_0.a, var_0.a)))))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-167f + 875f) + _wgslsmith_div_f32(var_0.a, var_3.c.c.x)))), Struct_2(-2147483647i, Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1.a.x)))), var_1.a.xy, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_3.a.x)) + _wgslsmith_f_op_f32(exp2(var_0.a))))));
    return var_2.x;
}

fn func_2(arg_0: vec4<bool>) -> f32 {
    var var_0 = ~(vec3<u32>(func_3(), 0u, max(1u | u_input.a, 1u)) | ~abs(vec3<u32>(44453u, u_input.a, u_input.a)));
    global1 = array<Struct_1, 11>();
    var var_1 = global0[_wgslsmith_index_u32(30359u, 31u)];
    let var_2 = _wgslsmith_dot_vec4_u32(min(_wgslsmith_mult_vec4_u32(vec4<u32>(var_0.x, u_input.a << (var_0.x % 32u), u_input.a, 4294967295u), ~firstLeadingBit(vec4<u32>(var_0.x, var_0.x, 25809u, var_0.x))), ~vec4<u32>(countOneBits(u_input.a), ~var_0.x, _wgslsmith_clamp_u32(29088u, 1u, u_input.a), min(8461u, 1u))), firstLeadingBit(abs(~(vec4<u32>(var_0.x, 40934u, 0u, var_0.x) << (vec4<u32>(var_0.x, 26275u, u_input.a, var_0.x) % vec4<u32>(32u))))));
    var var_3 = select(firstLeadingBit(vec2<u32>(41078u, var_2)) << (~(~var_0.yz) % vec2<u32>(32u)), _wgslsmith_div_vec2_u32(~vec2<u32>(1u, u_input.a), vec2<u32>(min(52000u, u_input.a), 4294967295u)), vec2<bool>(any(arg_0.yxw), arg_0.x)) | reverseBits(select(abs(~var_0.xx), reverseBits(vec2<u32>(var_2, u_input.a) << (vec2<u32>(u_input.a, 16871u) % vec2<u32>(32u))), !(!arg_0.x)));
    return var_1.a.c.x;
}

fn func_1() -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(528f - -1228f), _wgslsmith_f_op_f32(abs(-877f)), true)), 1481f, -1995f, 674f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(vec4<bool>(false, true, true, true))), _wgslsmith_div_f32(-445f, 1252f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1567f) - _wgslsmith_f_op_f32(f32(-1f) * -389f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - -1070f)), 791f))));
    global1 = array<Struct_1, 11>();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec4<bool>(true, any(select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), false)), false, all(vec4<bool>(true, false, true, false))))));
    var var_2 = ~(~(~19619u));
    let var_3 = Struct_2(-1i, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1))), vec2<f32>(_wgslsmith_f_op_f32(ceil(var_0.x)), 1365f), global1[_wgslsmith_index_u32(93720u, 11u)]);
    return Struct_2(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -abs(vec4<i32>(u_input.b.x, var_3.a, u_input.b.x, 0i)), _wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(0i, var_3.a, -24258i, 2147483647i), vec4<i32>(var_3.a, u_input.b.x, var_3.a, var_3.a)), vec4<i32>(-22017i, 1i, u_input.b.x, 50319i), select(vec4<i32>(65712i, 0i, u_input.b.x, var_3.a), vec4<i32>(2147483647i, -1i, 32657i, -6161i), vec4<bool>(false, false, true, false))), (vec4<i32>(u_input.b.x, 34142i, -68297i, 18199i) << (vec4<u32>(u_input.a, 67444u, 18641u, u_input.a) % vec4<u32>(32u))) & ~vec4<i32>(var_3.a, 2147483647i, 34550i, var_3.a))), var_3.d, vec2<f32>(_wgslsmith_f_op_f32(-690f * _wgslsmith_f_op_f32(func_2(select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true))))), -2715f), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.x, _wgslsmith_f_op_f32(-var_1))))));
}

fn func_4(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: u32, arg_3: Struct_1) -> vec2<bool> {
    global1 = array<Struct_1, 11>();
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 11>();
    global0 = array<Struct_3, 31>();
    global1 = array<Struct_1, 11>();
    let var_0 = func_4(func_1(), select(vec2<bool>(_wgslsmith_f_op_f32(f32(-1f) * -1000f) <= _wgslsmith_f_op_f32(step(-353f, 1000f)), true), !select(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(true, true), vec2<bool>(true, true)), any(vec3<bool>(true, select(false, false, false), true))), ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(36055u, u_input.a, u_input.a), min(vec3<u32>(u_input.a, u_input.a, 45933u), vec3<u32>(4294967295u, u_input.a, 77931u)))), Struct_1(-719f));
    let var_1 = true;
    var var_2 = true;
    global0 = array<Struct_3, 31>();
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, (~(~vec3<u32>(u_input.a, 57075u, u_input.a)) ^ vec3<u32>(2204u | u_input.a, _wgslsmith_add_u32(u_input.a, u_input.a), _wgslsmith_mod_u32(u_input.a, 33739u))) & ~select(vec3<u32>(u_input.a, 0u, u_input.a), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, 0u, u_input.a), vec3<u32>(u_input.a, 20386u, u_input.a)), select(vec3<bool>(var_0.x, var_1, var_1), vec3<bool>(false, var_0.x, true), vec3<bool>(var_1, var_0.x, var_1))));
}

