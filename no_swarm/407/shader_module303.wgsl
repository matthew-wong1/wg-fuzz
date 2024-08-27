struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: vec3<bool>,
    d: vec2<u32>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: i32,
    b: vec4<u32>,
    c: u32,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<f32>,
    c: vec2<f32>,
    d: Struct_3,
}

struct Struct_5 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: i32 = -1i;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: Struct_5, arg_3: vec3<bool>) -> bool {
    let var_0 = abs(vec2<i32>(arg_1.e.x, 33922i));
    let var_1 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(-2650f, 1098f)))), -470f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-704f - arg_1.a.x), _wgslsmith_f_op_f32(abs(global0.a.c.a.x)))), _wgslsmith_f_op_f32(global0.c.x - _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(653f, 509f), arg_1.a.x))), _wgslsmith_f_op_f32(abs(1000f))), ~_wgslsmith_mod_u32(41626u, 42996u), !vec3<bool>(!all(vec4<bool>(false, true, arg_3.x, true)), select(false, true, u_input.b > 16854u), true), ~(~vec2<u32>(u_input.c.x, 1u) << (max(vec2<u32>(global0.a.c.d.x, 7240u), vec2<u32>(69033u, arg_0.x)) % vec2<u32>(32u))) >> (firstLeadingBit(firstLeadingBit(~vec2<u32>(global0.d.b.d.x, arg_1.d.x))) % vec2<u32>(32u)), select(vec4<i32>(global0.a.b.e.x, var_0.x, 57898i, arg_1.e.x), _wgslsmith_add_vec4_i32(vec4<i32>(global0.d.c.e.x, 1i, ~var_0.x, global0.d.c.e.x), abs(global0.d.b.e) << (~vec4<u32>(12475u, 25760u, arg_2.a.x, global0.d.b.b) % vec4<u32>(32u))), vec4<bool>(true, true, any(vec2<bool>(true, true)), any(!vec2<bool>(global0.a.b.c.x, true)))));
    let var_2 = _wgslsmith_f_op_vec3_f32(-global0.d.c.a.wyy);
    var var_3 = arg_1.e.zxy;
    var_3 = vec3<i32>(-24949i, 2147483647i, var_0.x);
    return true;
}

fn func_2(arg_0: vec3<i32>, arg_1: vec4<u32>) -> vec2<bool> {
    global1 = 1i;
    var var_0 = global0.d;
    var var_1 = vec2<f32>(global0.b.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(102f, 134f))));
    let var_2 = _wgslsmith_f_op_vec3_f32(global0.b + vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2491f), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(955f, global0.a.c.a.x), _wgslsmith_f_op_f32(sign(var_1.x)), all(vec2<bool>(false, global0.a.c.c.x)))), _wgslsmith_f_op_f32(trunc(var_0.c.a.x))));
    var var_3 = Struct_4(global0.d, global0.d.c.a.zww, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(ceil(global0.b.xy)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-998f, global0.a.c.a.x)))) + var_0.b.a.wx), Struct_3(var_1.x, global0.d.b, var_0.b));
    return !vec2<bool>(all(!var_3.d.b.c), func_3(arg_1, Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1107f, var_1.x, 390f, 1310f)), 16283u, vec3<bool>(var_3.a.c.c.x, false, var_3.a.b.c.x), vec2<u32>(var_0.c.d.x, 52550u), var_3.a.c.e), Struct_5(abs(vec3<u32>(27155u, 4294967295u, var_0.c.b))), select(select(global0.a.b.c, global0.a.b.c, var_0.b.c.x), vec3<bool>(true, global0.d.b.c.x, false), !var_3.a.c.c)));
}

fn func_4(arg_0: vec2<bool>, arg_1: vec4<bool>, arg_2: Struct_3) -> Struct_4 {
    global1 = -27665i;
    var var_0 = vec2<u32>(arg_2.c.b, abs(_wgslsmith_clamp_u32(~reverseBits(arg_2.c.d.x), 4294967295u, select(4294967295u, u_input.c.x, true) >> (~32495u % 32u))));
    let var_1 = Struct_2(arg_2.c.e.x, vec4<u32>(37422u, ~_wgslsmith_div_u32(23455u, ~u_input.b), 4294967295u, countOneBits(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(65174u, 34475u, 0u, global0.d.c.b), vec4<u32>(1u, 4294967295u, u_input.c.x, 0u))))), countOneBits((1u | ~global0.d.c.b) | (countOneBits(var_0.x) >> (_wgslsmith_clamp_u32(6582u, var_0.x, global0.a.c.b) % 32u))));
    let var_2 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.b.a.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.a.b.a.x), -1300f)) + arg_2.a), arg_2.c, Struct_1(vec4<f32>(1070f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-2587f, global0.d.b.a.x, false)), _wgslsmith_f_op_f32(sign(1434f))), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(global0.c.x, arg_2.c.a.x), _wgslsmith_f_op_f32(-arg_2.c.a.x))), -297f), reverseBits(~global0.d.c.d.x) ^ (97047u | global0.a.c.d.x), select(!select(arg_2.b.c, vec3<bool>(arg_1.x, false, global0.a.c.c.x), arg_1.x), arg_1.yxx, global0.d.c.c), max(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 0u, 1u), u_input.d), 4294967295u), min(_wgslsmith_div_vec2_u32(vec2<u32>(arg_2.c.d.x, 0u), vec2<u32>(var_0.x, var_0.x)), ~global0.a.c.d)), arg_2.b.e));
    var_0 = var_2.b.d;
    return Struct_4(Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -180f), var_2.b, Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(global0.d.b.a))), countOneBits(1u & arg_2.c.b), !select(var_2.c.c, global0.a.c.c, var_2.c.c), firstLeadingBit(vec2<u32>(0u, 99274u)) >> (abs(vec2<u32>(arg_2.b.d.x, var_0.x)) % vec2<u32>(32u)), countOneBits(_wgslsmith_mod_vec4_i32(vec4<i32>(global0.d.b.e.x, arg_2.b.e.x, var_2.b.e.x, 1i), arg_2.b.e)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global0.d.a), _wgslsmith_f_op_f32(-global0.a.c.a.x), 722f) * vec3<f32>(_wgslsmith_f_op_f32(round(144f)), 1986f, _wgslsmith_f_op_f32(-209f - arg_2.b.a.x)))), arg_2.c.a.xx, Struct_3(214f, var_2.b, Struct_1(_wgslsmith_f_op_vec4_f32(arg_2.b.a * var_2.b.a), var_0.x, vec3<bool>(arg_1.x, false | global0.a.c.c.x, any(vec3<bool>(true, false, false))), ~vec2<u32>(59858u, var_0.x), vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(14613i, arg_2.c.e.x, 2147483647i, 0i), vec4<i32>(global0.a.b.e.x, -1i, -16900i, global0.d.c.e.x)), firstLeadingBit(var_2.b.e.x), global0.d.c.e.x, ~6586i))));
}

fn func_1(arg_0: bool, arg_1: bool, arg_2: vec3<f32>) -> vec2<u32> {
    var var_0 = countOneBits(vec3<u32>(1u, _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(u_input.d, _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a.x, u_input.b, 63753u), u_input.d)), _wgslsmith_mult_u32(_wgslsmith_mult_u32(28523u, u_input.b), abs(u_input.c.x))), u_input.d.x));
    let var_1 = Struct_2(global0.a.c.e.x, ~_wgslsmith_mult_vec4_u32(~vec4<u32>(1u, 1u, 47238u, 6143u), _wgslsmith_sub_vec4_u32(firstLeadingBit(vec4<u32>(6016u, u_input.c.x, 4294967295u, global0.a.c.d.x)), ~vec4<u32>(4294967295u, 3748u, var_0.x, 85171u))), u_input.a.x);
    let var_2 = func_4(select(select(!select(global0.d.b.c.xx, vec2<bool>(global0.d.c.c.x, false), global0.d.b.c.zy), vec2<bool>(true, true), all(select(vec4<bool>(arg_0, arg_0, arg_0, false), vec4<bool>(arg_1, global0.a.b.c.x, true, false), arg_1))), func_2(global0.d.c.e.xxx, max(var_1.b, var_1.b) | ~vec4<u32>(global0.a.c.b, 50647u, u_input.c.x, 1u)), true), !select(!vec4<bool>(true, arg_0, global0.a.b.c.x, global0.d.b.c.x), vec4<bool>(arg_0 || arg_0, !global0.d.c.c.x, arg_1, true), !(!global0.a.b.c.x)), global0.a);
    var_0 = vec3<u32>(4294967295u, u_input.b, ~global0.d.b.b);
    var var_3 = var_1;
    return ~vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 5617u), global0.a.b.d), 1u), u_input.c.x) | ~_wgslsmith_sub_vec2_u32(select(vec2<u32>(35709u, var_2.a.c.b), vec2<u32>(1u, global0.a.c.b), any(vec3<bool>(true, arg_0, true))), vec2<u32>(u_input.c.x, 4294967295u) | global0.a.c.d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a;
    global0 = Struct_4(Struct_3(_wgslsmith_f_op_f32(sign(343f)), global0.a.c, global0.a.c), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1794f, global0.b.x, global0.b.x) - global0.b) - _wgslsmith_f_op_vec3_f32(-global0.b)) * vec3<f32>(global0.b.x, -992f, _wgslsmith_f_op_f32(trunc(global0.b.x))))), global0.b.xx, global0.d);
    var var_1 = global0.d.c;
    var var_2 = -1i;
    var var_3 = _wgslsmith_add_u32(var_1.d.x, 70140u);
    let var_4 = Struct_1(global0.d.b.a, ~abs(abs(53867u)), var_1.c, _wgslsmith_div_vec2_u32(global0.d.b.d, vec2<u32>(u_input.a.x, min(var_0.x, var_1.b)) >> (func_1(true, !global0.a.c.c.x, _wgslsmith_div_vec3_f32(vec3<f32>(1669f, global0.d.b.a.x, global0.d.c.a.x), vec3<f32>(var_1.a.x, -1742f, global0.a.b.a.x))) % vec2<u32>(32u))), var_1.e);
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(~var_4.e.zy), var_4.a.x, vec2<u32>(var_4.b, global0.a.c.b));
}

