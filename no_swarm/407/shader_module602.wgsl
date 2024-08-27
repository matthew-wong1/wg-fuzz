struct Struct_1 {
    a: bool,
    b: vec2<i32>,
}

struct Struct_2 {
    a: bool,
    b: u32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_1,
    c: vec4<i32>,
    d: f32,
    e: u32,
}

struct Struct_4 {
    a: bool,
    b: vec2<f32>,
    c: bool,
    d: Struct_2,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(true, vec2<i32>(-16465i, -34524i));

var<private> global1: array<vec2<i32>, 11> = array<vec2<i32>, 11>(vec2<i32>(-21021i, 2147483647i), vec2<i32>(10296i, -31909i), vec2<i32>(11112i, 1i), vec2<i32>(-5372i, i32(-2147483648)), vec2<i32>(18022i, 63343i), vec2<i32>(1i, i32(-2147483648)), vec2<i32>(1i, 13390i), vec2<i32>(0i, -1i), vec2<i32>(0i, 19156i), vec2<i32>(i32(-2147483648), 0i), vec2<i32>(21500i, i32(-2147483648)));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: Struct_3, arg_1: vec2<f32>) -> u32 {
    global0 = Struct_1(!any(select(vec3<bool>(arg_0.a.x, false, arg_0.a.x), arg_0.a, true)), vec2<i32>(-1i) * -vec2<i32>(select(arg_0.b.b.x, u_input.a.x, global0.a), _wgslsmith_sub_i32(u_input.a.x, u_input.a.x)));
    global1 = array<vec2<i32>, 11>();
    return 4294967295u;
}

fn func_3() -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-522f, -581f)), vec2<f32>(1041f, 1387f))))))));
    let var_1 = Struct_4(var_0.x < 1386f, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1599f, 682f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 1389f) - vec2<f32>(-1883f, -2915f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(130f, 1000f))), global0.a)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(602f, var_0.x))), all(select(select(select(vec2<bool>(false, false), vec2<bool>(global0.a, global0.a), false), vec2<bool>(true, true), false), !select(vec2<bool>(global0.a, false), vec2<bool>(global0.a, false), true), select(select(vec2<bool>(global0.a, global0.a), vec2<bool>(global0.a, false), true), vec2<bool>(true, true), !vec2<bool>(true, global0.a)))), Struct_2(true, u_input.b), vec4<u32>(~_wgslsmith_mult_u32(u_input.b, min(u_input.b, 11580u)), abs(u_input.b), ~4294967295u, ~_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 29896u, 1u, u_input.b), vec4<u32>(0u, u_input.b, 1u, u_input.b)), u_input.b)));
    global0 = Struct_1(var_1.d.a | all(select(select(vec3<bool>(global0.a, true, true), vec3<bool>(global0.a, var_1.c, var_1.d.a), vec3<bool>(false, var_1.c, true)), select(vec3<bool>(global0.a, global0.a, var_1.a), vec3<bool>(var_1.a, var_1.c, var_1.a), false), var_1.a)), _wgslsmith_mod_vec2_i32(u_input.a.zy, ~u_input.a.zy));
    return _wgslsmith_div_vec3_u32(max(~_wgslsmith_mult_vec3_u32(var_1.e.zxx, _wgslsmith_div_vec3_u32(vec3<u32>(var_1.d.b, u_input.b, var_1.d.b), vec3<u32>(50371u, 1u, u_input.b))), vec3<u32>(_wgslsmith_mult_u32(var_1.d.b, firstLeadingBit(var_1.d.b)), ~(u_input.b | u_input.b), 46856u)), _wgslsmith_add_vec3_u32(var_1.e.wyx, vec3<u32>(max(u_input.b, u_input.b << (var_1.d.b % 32u)), 4294967295u, func_2(Struct_3(vec3<bool>(global0.a, var_1.c, false), Struct_1(var_1.d.a, vec2<i32>(-10314i, u_input.a.x)), vec4<i32>(u_input.a.x, -34340i, global0.b.x, -3180i), 1007f, 0u), vec2<f32>(var_0.x, -1231f)))));
}

fn func_1() -> vec3<f32> {
    var var_0 = u_input.b;
    let var_1 = _wgslsmith_mult_i32(-2147483647i, global0.b.x);
    let var_2 = ~_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, u_input.b << (u_input.b % 32u), u_input.b), ~vec3<u32>(10898u, 65459u, 0u), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.b, 20680u, u_input.b) >> (vec3<u32>(0u, 17426u, 4294967295u) % vec3<u32>(32u)), ~vec3<u32>(u_input.b, 0u, u_input.b))) << ((vec3<u32>(firstLeadingBit(firstLeadingBit(4294967295u)), _wgslsmith_mod_u32(max(u_input.b, 0u), _wgslsmith_mod_u32(u_input.b, 0u)), u_input.b) << (_wgslsmith_mod_vec3_u32(vec3<u32>(0u, u_input.b, func_2(Struct_3(vec3<bool>(global0.a, global0.a, global0.a), Struct_1(false, global0.b), vec4<i32>(-22966i, 31443i, u_input.a.x, 2147483647i), 498f, u_input.b), vec2<f32>(723f, 151f))), func_3() << (abs(vec3<u32>(u_input.b, u_input.b, 4294967295u)) % vec3<u32>(32u))) % vec3<u32>(32u))) % vec3<u32>(32u));
    var var_3 = min(firstTrailingBit(-((vec4<i32>(-40229i, global0.b.x, global0.b.x, -9395i) & vec4<i32>(-2147483647i, 24073i, -5513i, -20321i)) >> ((vec4<u32>(55031u, 0u, 4294967295u, 65416u) | vec4<u32>(u_input.b, var_2.x, 5219u, u_input.b)) % vec4<u32>(32u)))), (countOneBits(max(vec4<i32>(-2147483647i, global0.b.x, -2147483647i, var_1), vec4<i32>(global0.b.x, global0.b.x, global0.b.x, 2147483647i))) & ~_wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(2147483647i, global0.b.x, global0.b.x, 0i))) << (~(~(vec4<u32>(1u, u_input.b, u_input.b, 28726u) << (vec4<u32>(1u, u_input.b, var_2.x, u_input.b) % vec4<u32>(32u)))) % vec4<u32>(32u)));
    var var_4 = vec3<i32>(max(i32(-1i) * -7103i, -48035i | (-var_3.x & ~(-13625i))), 0i, var_1);
    return _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-558f, -413f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(2445f, _wgslsmith_f_op_f32(select(-539f, -281f, global0.a))))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    global1 = array<vec2<i32>, 11>();
    global1 = array<vec2<i32>, 11>();
    global1 = array<vec2<i32>, 11>();
    global1 = array<vec2<i32>, 11>();
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1688f), -150f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-295f - 385f) * _wgslsmith_f_op_f32(-112f * -192f))), _wgslsmith_f_op_vec3_f32(func_1()))) - vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-139f - -1071f), 1f), _wgslsmith_f_op_f32(f32(-1f) * -470f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-491f, -1000f) + _wgslsmith_f_op_f32(231f - 321f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1270f - 2745f))), _wgslsmith_f_op_f32(f32(-1f) * -1202f))));
    var var_2 = Struct_3(!select(!select(vec3<bool>(var_0, var_0, false), vec3<bool>(var_0, true, true), vec3<bool>(false, global0.a, global0.a)), !(!vec3<bool>(global0.a, false, true)), var_0 && false), Struct_1(false, vec2<i32>(min(-34633i, -u_input.a.x), 45839i)), vec4<i32>(-_wgslsmith_sub_i32(-1i, 1i), 36934i, i32(-1i) * -15461i, firstLeadingBit(global0.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(922f, var_1.x) * _wgslsmith_f_op_f32(-1028f * 963f))) * _wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(exp2(var_1.x)))), ~u_input.b >> (_wgslsmith_dot_vec2_u32(vec2<u32>(101004u, ~1u), _wgslsmith_add_vec2_u32(select(vec2<u32>(15365u, 0u), vec2<u32>(u_input.b, u_input.b), true), countOneBits(vec2<u32>(u_input.b, 29691u)))) % 32u));
    var var_3 = u_input.b & func_3().x;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x + var_1.x) + _wgslsmith_f_op_f32(abs(var_1.x)))) - _wgslsmith_f_op_f32(f32(-1f) * -1031f)), 25232u);
}

