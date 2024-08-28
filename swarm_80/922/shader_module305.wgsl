struct Struct_1 {
    a: f32,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec2<u32>,
    d: Struct_1,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: f32,
    d: vec4<f32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 6>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> u32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-823f)) - 1f), _wgslsmith_dot_vec4_u32(~u_input.c, u_input.c) & _wgslsmith_clamp_u32(~u_input.a ^ u_input.c.x, 4294967295u, _wgslsmith_sub_u32(~u_input.b, abs(u_input.b))));
    let var_1 = !(!select(vec2<bool>(any(vec3<bool>(true, true, false)), true), !select(vec2<bool>(false, false), vec2<bool>(false, false), false), !(19278u != u_input.a)));
    global0 = array<Struct_2, 6>();
    global0 = array<Struct_2, 6>();
    var var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(step(1012f, _wgslsmith_f_op_f32(f32(-1f) * -1177f))), ~1u));
    return ~_wgslsmith_sub_u32(var_2.a.b, ~33347u);
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: i32) -> f32 {
    global0 = array<Struct_2, 6>();
    global0 = array<Struct_2, 6>();
    let var_0 = u_input.c;
    var var_1 = global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(firstTrailingBit(firstTrailingBit(vec3<u32>(arg_1, arg_0.b, u_input.c.x))), select(_wgslsmith_add_vec3_u32(var_0.zxx, u_input.c.wyz), var_0.xww, all(vec4<bool>(false, false, true, false)))), vec3<u32>(arg_1, arg_1, u_input.c.x)), 6u)];
    let var_2 = Struct_3(vec4<i32>(u_input.d.x, ~arg_2, arg_2, firstLeadingBit(-(~(-2147483647i)))), ~vec2<u32>(u_input.b, 0u), _wgslsmith_sub_vec2_u32(vec2<u32>(var_1.a.b, 47141u) ^ _wgslsmith_mult_vec2_u32(vec2<u32>(66900u, 0u), vec2<u32>(44863u, var_1.a.b)), u_input.c.wy) >> (vec2<u32>(func_3() | ~var_1.a.b, countOneBits(_wgslsmith_mod_u32(var_0.x, 279u))) % vec2<u32>(32u)), Struct_1(arg_0.a, 3252u), !select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)));
    return var_1.a.a;
}

fn func_1() -> vec2<u32> {
    global0 = array<Struct_2, 6>();
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_2(Struct_1(-480f, 0u), 2027u, _wgslsmith_div_i32(-1i, -2147483647i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-134f, 761f)) - -858f))), ~(~(~0u))));
    let var_1 = Struct_3(firstTrailingBit(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.d.x, ~u_input.d.x, abs(u_input.d.x), select(-2147483647i, -1i, false)), vec4<i32>(u_input.d.x, u_input.d.x >> (var_0.a.b % 32u), -1i, -13493i))), u_input.c.wy, vec2<u32>(var_0.a.b, var_0.a.b), Struct_1(-2230f, var_0.a.b), select(!(!select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true))), select(vec2<bool>(-1541f < var_0.a.a, true), vec2<bool>(any(vec2<bool>(false, true)), any(vec4<bool>(true, true, true, true))), vec2<bool>(false, any(vec3<bool>(true, true, true)))), select(vec2<bool>(true, true), vec2<bool>(true, true), true)));
    var var_2 = Struct_3(_wgslsmith_div_vec4_i32(~var_1.a, max(var_1.a, ~var_1.a)) | _wgslsmith_div_vec4_i32(select(vec4<i32>(u_input.d.x, var_1.a.x, -2147483647i, -1i) << (u_input.c % vec4<u32>(32u)), var_1.a, vec4<bool>(var_1.e.x, false, false, var_1.e.x)), var_1.a), u_input.c.zz, reverseBits(vec2<u32>(1u, var_0.a.b | min(u_input.b, u_input.c.x))), var_0.a, vec2<bool>(select(var_1.e.x, all(!vec4<bool>(var_1.e.x, false, var_1.e.x, true)), true), true));
    let var_3 = global0[_wgslsmith_index_u32(~max(var_1.c.x, ~var_1.c.x), 6u)];
    return vec2<u32>(var_2.d.b, _wgslsmith_add_u32(0u, ~var_0.a.b));
}

fn func_4(arg_0: Struct_3, arg_1: bool, arg_2: i32, arg_3: Struct_3) -> Struct_1 {
    var var_0 = vec2<bool>(arg_3.e.x, any(arg_3.e));
    let var_1 = Struct_2(Struct_1(151f, 64307u));
    global0 = array<Struct_2, 6>();
    global0 = array<Struct_2, 6>();
    let var_2 = vec4<f32>(arg_0.d.a, -2165f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(358f + _wgslsmith_f_op_f32(1361f - arg_3.d.a))))), 910f);
    return Struct_1(_wgslsmith_f_op_f32(trunc(var_2.x)), reverseBits(func_1().x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 6>();
    var var_0 = func_4(Struct_3(~(~vec4<i32>(u_input.d.x, u_input.d.x, u_input.d.x, -1i) << ((vec4<u32>(21459u, 0u, u_input.c.x, u_input.a) | u_input.c) % vec4<u32>(32u))), _wgslsmith_mod_vec2_u32(func_1(), u_input.c.wx), u_input.c.ww, Struct_1(_wgslsmith_f_op_f32(sign(1199f)), _wgslsmith_mod_u32(_wgslsmith_mult_u32(u_input.c.x, u_input.c.x), ~u_input.c.x)), select(!select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false)), vec2<bool>(true, false), select(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(true, false), true))), true, u_input.d.x, Struct_3(vec4<i32>(_wgslsmith_div_i32(20311i, 42700i), u_input.d.x, -1i, -59497i & u_input.d.x) & _wgslsmith_add_vec4_i32(vec4<i32>(u_input.d.x, u_input.d.x, 18865i, 2147483647i) << (u_input.c % vec4<u32>(32u)), min(vec4<i32>(-1i, -2147483647i, 0i, -27595i), vec4<i32>(u_input.d.x, u_input.d.x, u_input.d.x, 19563i))), ~func_1(), abs(vec2<u32>(u_input.c.x, 4294967295u)), Struct_1(_wgslsmith_f_op_f32(func_2(Struct_1(-1970f, u_input.b), max(u_input.c.x, u_input.b), _wgslsmith_div_i32(u_input.d.x, -15462i))), _wgslsmith_clamp_u32(~0u, firstLeadingBit(0u), firstTrailingBit(u_input.c.x))), !select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true))));
    let var_1 = ~_wgslsmith_sub_vec3_u32(countOneBits(u_input.c.xwy), vec3<u32>(3355u, 4294967295u, u_input.b));
    var var_2 = vec4<u32>(107686u, u_input.b | 26424u, ~abs(var_1.x), 0u);
    var_0 = Struct_1(_wgslsmith_f_op_f32(-var_0.a), var_0.b);
    let var_3 = Struct_3(_wgslsmith_div_vec4_i32(firstLeadingBit(vec4<i32>(u_input.d.x, u_input.d.x, ~u_input.d.x, max(40228i, 25434i))), vec4<i32>(firstLeadingBit(u_input.d.x), u_input.d.x, -45878i, u_input.d.x) << (u_input.c % vec4<u32>(32u))), var_2.yz & (_wgslsmith_add_vec2_u32(var_2.xw, var_1.zy) | _wgslsmith_clamp_vec2_u32(var_1.zy, u_input.c.zx, vec2<u32>(var_0.b, var_2.x))), var_1.zz, func_4(Struct_3(vec4<i32>(~u_input.d.x, ~10766i, _wgslsmith_mult_i32(u_input.d.x, 1i), u_input.d.x), u_input.c.zz ^ var_2.wx, var_2.yz, Struct_1(var_0.a, 1u), vec2<bool>(true, true)), (true & all(vec2<bool>(false, false))) & false, -11668i, Struct_3(_wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(1i, u_input.d.x, -3572i, 34651i), vec4<i32>(-24179i, 63448i, u_input.d.x, 23544i)), vec4<i32>(u_input.d.x, u_input.d.x, u_input.d.x, u_input.d.x)), vec2<u32>(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.b, 1u, 1u, var_1.x), u_input.c)), ~(~u_input.c.yw), func_4(Struct_3(vec4<i32>(u_input.d.x, u_input.d.x, -2147483647i, u_input.d.x), u_input.c.xz, var_1.xz, Struct_1(var_0.a, 0u), vec2<bool>(false, false)), select(true, true, false), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d.x, -2147483647i, -3149i, -1i), vec4<i32>(u_input.d.x, u_input.d.x, u_input.d.x, 1i)), Struct_3(vec4<i32>(u_input.d.x, u_input.d.x, u_input.d.x, u_input.d.x), vec2<u32>(1u, var_0.b), var_1.xz, Struct_1(-330f, var_2.x), vec2<bool>(false, false))), !select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true)))), vec2<bool>(any(vec3<bool>(true, true, select(true, false, false))), _wgslsmith_f_op_f32(-1192f + -813f) < var_0.a));
    var var_4 = func_4(var_3, var_3.e.x, max(~(u_input.d.x | var_3.a.x), 4736i) >> (0u % 32u), var_3);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(max(func_4(Struct_3(~vec4<i32>(var_3.a.x, 27288i, var_3.a.x, var_3.a.x), ~var_2.xw, select(vec2<u32>(var_1.x, var_2.x), vec2<u32>(0u, var_3.c.x), var_3.e), Struct_1(516f, var_2.x), var_3.e), var_3.e.x || (var_3.e.x & true), 1i, Struct_3(vec4<i32>(13042i, -2147483647i, var_3.a.x, var_3.a.x), vec2<u32>(var_4.b, var_4.b), vec2<u32>(20670u, u_input.a) | vec2<u32>(4294967295u, 0u), Struct_1(-2870f, var_2.x), vec2<bool>(var_3.e.x, var_3.e.x))).a, -235f)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(var_4.a)))) - _wgslsmith_f_op_f32(-var_0.a)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(-732f, var_0.a)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(632f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -455f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f * -903f)), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -915f), var_3.d.a, _wgslsmith_f_op_f32(676f * _wgslsmith_f_op_f32(var_3.d.a * var_4.a)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(var_0.a)), _wgslsmith_f_op_f32(round(var_0.a))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(919f, var_3.d.a, var_3.d.a, var_3.d.a))) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(375f, 1000f, -348f, var_4.a), vec4<f32>(var_4.a, var_3.d.a, var_0.a, -126f), vec4<bool>(false, false, var_3.e.x, var_3.e.x))))))), vec4<u32>(~0u, min(func_4(var_3, all(vec3<bool>(var_3.e.x, true, var_3.e.x)), countOneBits(var_3.a.x), Struct_3(vec4<i32>(-14010i, u_input.d.x, 15567i, -2147483647i), vec2<u32>(9883u, 0u), vec2<u32>(0u, var_0.b), Struct_1(var_0.a, var_3.c.x), var_3.e)).b, var_4.b), min(~u_input.c.x, 24693u), _wgslsmith_clamp_u32(u_input.c.x, var_1.x, _wgslsmith_div_u32(1u, _wgslsmith_clamp_u32(0u, var_2.x, u_input.a)))));
}

