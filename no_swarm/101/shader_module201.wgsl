struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 29>;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: bool, arg_1: vec4<i32>) -> i32 {
    let var_0 = !vec3<bool>(!(!arg_0), !arg_0, any(vec3<bool>(!arg_0, false, arg_0 & arg_0)));
    global0 = array<vec3<f32>, 29>();
    let var_1 = Struct_1(-2147483647i, ~_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 78254u), u_input.b.xx, u_input.b.yy), !select(vec3<bool>(true, true, any(vec4<bool>(false, false, false, false))), !vec3<bool>(arg_0, arg_0, false), (0i | arg_1.x) >= arg_1.x));
    global0 = array<vec3<f32>, 29>();
    var var_2 = var_1;
    return -arg_1.x;
}

fn func_2() -> Struct_1 {
    global0 = array<vec3<f32>, 29>();
    var var_0 = Struct_1(i32(-1i) * -func_3(true, ~vec4<i32>(-1i, 2147483647i, -934i, 36660i)), vec2<u32>(~_wgslsmith_dot_vec4_u32(select(vec4<u32>(u_input.a, 56020u, u_input.a, 4294967295u), u_input.b, vec4<bool>(true, false, false, false)), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, 11366u, u_input.a, 0u), u_input.b)), max(~(u_input.b.x & 36885u), u_input.b.x)), select(vec3<bool>(false, false, true), select(select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true)), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true)), select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))));
    let var_1 = true;
    var_0 = Struct_1(_wgslsmith_mult_i32(countOneBits(_wgslsmith_div_i32(var_0.a, var_0.a)) << (u_input.b.x % 32u), -11364i), var_0.b, var_0.c);
    global0 = array<vec3<f32>, 29>();
    return Struct_1(-17165i, var_0.b, var_0.c);
}

fn func_4(arg_0: u32, arg_1: bool, arg_2: Struct_1) -> vec3<u32> {
    global0 = array<vec3<f32>, 29>();
    global0 = array<vec3<f32>, 29>();
    global0 = array<vec3<f32>, 29>();
    var var_0 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1199f, 2474f, 283f, 1472f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-172f, -971f, 237f, -281f))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(1000f, -183f, -182f, -1000f), vec4<f32>(115f, -1185f, 723f, 1495f)))))), vec4<f32>(1f, 1f, 1f, 1f), arg_1))));
    let var_1 = select(!select(vec4<bool>(true, true, arg_1 || arg_1, arg_2.c.x), !(!vec4<bool>(false, arg_1, false, arg_2.c.x)), !vec4<bool>(arg_1, false, arg_1, false)), vec4<bool>(false, arg_1, true, arg_2.c.x & func_2().c.x), true);
    return min(u_input.b.wzz, ~select(u_input.b.wwz, vec3<u32>(57070u, arg_0, 21076u) | vec3<u32>(0u, 20670u, 23451u), false) ^ vec3<u32>(u_input.a, ~39702u, min(arg_0, 62358u)));
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: i32) -> Struct_1 {
    let var_0 = Struct_1(arg_1.a, vec2<u32>(_wgslsmith_sub_u32(~(~3538u), func_2().b.x), arg_0.x), !arg_1.c);
    var var_1 = i32(-1i) * -33729i;
    global0 = array<vec3<f32>, 29>();
    let var_2 = arg_1;
    global0 = array<vec3<f32>, 29>();
    return Struct_1(arg_3, _wgslsmith_mod_vec2_u32(vec2<u32>(1u, ~_wgslsmith_div_u32(var_0.b.x, var_0.b.x)), (_wgslsmith_mult_vec2_u32(arg_0.yx, u_input.b.xx) & vec2<u32>(var_2.b.x, 4294967295u)) & ~vec2<u32>(arg_1.b.x, var_2.b.x)), vec3<bool>((~var_0.b.x <= firstTrailingBit(arg_0.x)) | all(select(vec4<bool>(var_2.c.x, false, false, true), vec4<bool>(false, true, true, var_2.c.x), vec4<bool>(var_2.c.x, var_2.c.x, true, false))), any(vec2<bool>(true, false)), arg_1.c.x));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<i32>) -> Struct_1 {
    var var_0 = func_5(_wgslsmith_add_vec3_u32(~vec3<u32>(select(arg_0.b.x, 52959u, false), countOneBits(62195u), 11283u), _wgslsmith_sub_vec3_u32(func_4(1u | u_input.b.x, true, func_2()), _wgslsmith_mult_vec3_u32(u_input.b.zzx ^ vec3<u32>(u_input.b.x, 4294967295u, arg_1.b.x), u_input.b.zww))), arg_1, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-635f, 1001f))))), arg_2.x);
    global0 = array<vec3<f32>, 29>();
    var var_1 = ~(_wgslsmith_mult_i32(-17331i, _wgslsmith_clamp_i32(2147483647i, 0i, 34218i) & arg_2.x) ^ 2147483647i);
    let var_2 = vec2<bool>(all(func_5(~vec3<u32>(var_0.b.x, arg_1.b.x, arg_0.b.x), Struct_1(abs(arg_2.x), ~var_0.b, vec3<bool>(false, false, true)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 1022f) - vec2<f32>(324f, -739f)) + _wgslsmith_f_op_vec2_f32(min(vec2<f32>(1561f, -796f), vec2<f32>(1780f, 166f)))), arg_0.a).c.zy), !arg_0.c.x || arg_1.c.x);
    var var_3 = _wgslsmith_add_vec3_u32(~(~vec3<u32>(~var_0.b.x, ~12709u, ~0u)), vec3<u32>(abs(func_4(98246u, arg_1.c.x, arg_0).x | _wgslsmith_add_u32(0u, 7500u)), 4294967295u, ~13537u >> (_wgslsmith_div_u32(~var_0.b.x, max(u_input.b.x, arg_1.b.x)) % 32u)));
    return Struct_1(-func_5(u_input.b.yyw, func_5(u_input.b.zxx, arg_1, _wgslsmith_div_vec2_f32(vec2<f32>(-481f, -805f), vec2<f32>(-583f, 704f)), 47884i), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-417f, -2084f) * vec2<f32>(956f, -602f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-1155f, -343f) + vec2<f32>(207f, 1747f))), ~min(arg_2.x, 48510i)).a, u_input.b.yw, select(vec3<bool>(arg_0.c.x, false, all(var_0.c.xz)), vec3<bool>(true, any(vec4<bool>(var_0.c.x, var_0.c.x, arg_1.c.x, var_2.x)), func_2().c.x), !(!vec3<bool>(var_2.x, false, var_2.x))));
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32) -> u32 {
    let var_0 = _wgslsmith_mult_vec4_u32(vec4<u32>(firstLeadingBit(u_input.a), ~(func_1(Struct_1(arg_1.a, u_input.b.yw, vec3<bool>(true, arg_1.c.x, arg_0.c.x)), arg_0, vec3<i32>(arg_0.a, arg_0.a, -42233i)).b.x | (arg_0.b.x & arg_0.b.x)), 1u, firstTrailingBit(firstLeadingBit(10440u))), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(abs(arg_1.b.x), ~19084u, 1u), _wgslsmith_mod_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, arg_0.b.x, arg_1.b.x), vec3<u32>(4294967295u, 1u, 4294967295u), vec3<u32>(arg_0.b.x, 48495u, arg_0.b.x)), reverseBits(vec3<u32>(arg_1.b.x, arg_0.b.x, arg_0.b.x)))), 4294967295u, 1u, 4294967295u));
    var var_1 = ~_wgslsmith_sub_u32(_wgslsmith_div_u32(var_0.x, ~(~arg_1.b.x)), arg_1.b.x);
    let var_2 = select(_wgslsmith_add_i32(~_wgslsmith_mult_i32(-49085i, -1i), arg_1.a), (~(94060i & arg_0.a) >> (abs(arg_0.b.x) % 32u)) & 70896i, !all(select(!arg_1.c.yx, select(arg_1.c.yx, vec2<bool>(false, arg_1.c.x), vec2<bool>(true, arg_0.c.x)), vec2<bool>(arg_0.c.x, true))));
    var_1 = _wgslsmith_div_u32(_wgslsmith_clamp_u32(func_4(arg_1.b.x, true, func_5(func_4(var_0.x, arg_0.c.x, arg_0), arg_1, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-171f, -275f), vec2<f32>(536f, -1341f), true)), select(2147483647i, -23887i, false))).x, ~_wgslsmith_mod_u32(~39604u, var_0.x & u_input.a), _wgslsmith_add_u32(arg_1.b.x & (1u ^ arg_1.b.x), arg_0.b.x)), ~9933u);
    var var_3 = 50887u;
    return ~_wgslsmith_mult_u32(var_0.x, ~4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<f32>, 29>();
    var var_0 = (select(vec2<i32>(1i, 1i), reverseBits(vec2<i32>(-53249i, 44510i)) >> (_wgslsmith_add_vec2_u32(u_input.b.wy, vec2<u32>(90910u, u_input.b.x)) % vec2<u32>(32u)), vec2<bool>(true, false)) ^ max(countOneBits(min(vec2<i32>(0i, 49068i), vec2<i32>(1i, -21389i))), firstLeadingBit(-vec2<i32>(-2147483647i, -46459i)))) >> (vec2<u32>(func_6(func_1(Struct_1(1i, u_input.b.yz, vec3<bool>(false, true, true)), Struct_1(19727i, vec2<u32>(1u, 4294967295u), vec3<bool>(true, false, false)), vec3<i32>(-26890i, -2147483647i, -1i)), func_2(), -2147483647i) & u_input.a, 7242u) % vec2<u32>(32u));
    var var_1 = var_0.x;
    var var_2 = vec2<bool>(false, true);
    var var_3 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(287f, -260f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1029f, 1000f))))), 2147483647i & _wgslsmith_div_i32(~0i, func_1(Struct_1(0i, u_input.b.wy, var_3.c), Struct_1(0i, vec2<u32>(var_3.b.x, var_3.b.x), vec3<bool>(true, var_3.c.x, var_2.x)), vec3<i32>(1i, 0i, 0i)).a ^ _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 67087i, var_0.x), vec3<i32>(-3312i, var_3.a, 1i))));
}

