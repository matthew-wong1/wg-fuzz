struct Struct_1 {
    a: vec4<bool>,
    b: vec2<f32>,
    c: vec2<i32>,
    d: u32,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: vec2<bool>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec4<u32>,
    c: bool,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec2<i32>) -> vec2<i32> {
    let var_0 = Struct_1(!vec4<bool>(any(vec3<bool>(true, true, true)), !(13065u > u_input.a.x), _wgslsmith_mod_u32(4294967295u, 44520u) < u_input.a.x, any(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false)))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-433f, 101f)) * vec2<f32>(_wgslsmith_f_op_f32(-948f - 288f), _wgslsmith_f_op_f32(round(-778f)))))), arg_1, 61509u);
    var var_1 = ~vec2<u32>(arg_0.x, 4294967295u);
    var_1 = ~(~(~arg_0.yx));
    var var_2 = Struct_4(Struct_1(!(!vec4<bool>(false, var_0.a.x, var_0.a.x, var_0.a.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_0.b, var_0.b)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b.x, 709f) * _wgslsmith_f_op_vec2_f32(var_0.b * var_0.b))), arg_1, ~arg_0.x));
    var_1 = _wgslsmith_mult_vec2_u32(vec2<u32>(~select(_wgslsmith_add_u32(4311u, 56252u), var_0.d, -1230f != var_2.a.b.x), _wgslsmith_dot_vec2_u32(~vec2<u32>(var_2.a.d, arg_0.x), vec2<u32>(62479u, _wgslsmith_mult_u32(var_0.d, arg_0.x)))), max(vec2<u32>(~(var_2.a.d << (var_1.x % 32u)), _wgslsmith_clamp_u32(1u, abs(var_1.x), abs(var_0.d))), ~abs(~arg_0.xx)));
    return -_wgslsmith_mod_vec2_i32(-var_2.a.c, _wgslsmith_add_vec2_i32(~_wgslsmith_mult_vec2_i32(var_2.a.c, var_0.c), vec2<i32>(1i, var_2.a.c.x | u_input.c.x)));
}

fn func_2() -> Struct_2 {
    var var_0 = -5872i;
    let var_1 = _wgslsmith_dot_vec4_i32(countOneBits(abs(vec4<i32>(u_input.c.x, u_input.c.x, 59849i, u_input.b.x))) ^ (u_input.c >> ((~vec4<u32>(1u, 62175u, 24245u, 23547u) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 27747u, u_input.a.x), vec4<u32>(u_input.a.x, 36010u, 5910u, 4294967295u), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 5184u)) % vec4<u32>(32u))) % vec4<u32>(32u))), _wgslsmith_add_vec4_i32(~u_input.b, ~u_input.b));
    var_0 = _wgslsmith_add_i32(1i, 1i);
    let var_2 = Struct_1(select(!select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), any(vec2<bool>(false, true))), select(select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), true), vec4<bool>(true, true, false, true), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), true), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false), !select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true), true))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(-146f)), -417f), vec2<f32>(_wgslsmith_f_op_f32(min(-1385f, 345f)), 1215f))), ~(-func_3(vec3<u32>(4294967295u, 95517u, u_input.a.x), min(u_input.c.yz, vec2<i32>(-2147483647i, var_1)))), reverseBits(min(max(~u_input.a.x, 15993u), u_input.a.x)));
    var_0 = u_input.c.x;
    return Struct_2(_wgslsmith_add_i32(countOneBits(_wgslsmith_dot_vec3_i32(vec3<i32>(22180i, var_2.c.x, u_input.c.x), max(u_input.b.xyx, vec3<i32>(-1315i, var_2.c.x, 1i)))), u_input.c.x), _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(u_input.c, -vec4<i32>(30720i, u_input.c.x, var_2.c.x, var_1) ^ vec4<i32>(var_2.c.x, var_1, u_input.b.x, 2147483647i)), ~(~u_input.c.x)), select(vec2<bool>(var_2.a.x, var_2.a.x), select(!select(var_2.a.zx, var_2.a.wx, true), !var_2.a.yx, var_2.a.wy), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.b.x - -890f), var_2.b.x) < _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-1478f)), 1000f)), var_2, var_2);
}

fn func_4(arg_0: Struct_2) -> Struct_3 {
    let var_0 = -select(vec3<i32>(func_3(_wgslsmith_mult_vec3_u32(u_input.a, u_input.a), arg_0.d.c).x, func_3(_wgslsmith_sub_vec3_u32(u_input.a, u_input.a), vec2<i32>(u_input.b.x, 1i) << (u_input.a.yz % vec2<u32>(32u))).x, ~(-arg_0.e.c.x)), ~(~_wgslsmith_clamp_vec3_i32(vec3<i32>(1i, 2147483647i, -2147483647i), vec3<i32>(arg_0.b, arg_0.b, 32986i), vec3<i32>(11710i, -1i, -3227i))), func_2().e.a.yyy);
    var var_1 = Struct_3(vec2<i32>(u_input.c.x, _wgslsmith_clamp_i32(arg_0.a, -u_input.c.x, ~(-15917i)) & ~(var_0.x ^ arg_0.a)), vec4<u32>(0u, ~arg_0.d.d, 67389u, ~_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 87176u, u_input.a.x), vec4<u32>(19261u, 7853u, arg_0.e.d, 1u)), ~0u)), true);
    var_1 = Struct_3(max(u_input.c.xw, var_0.yy >> (~min(vec2<u32>(4294967295u, 41997u), vec2<u32>(u_input.a.x, arg_0.e.d)) % vec2<u32>(32u))), _wgslsmith_div_vec4_u32(~var_1.b, firstLeadingBit(~var_1.b)), true);
    return Struct_3(vec2<i32>(-1i) * -arg_0.e.c, _wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(min(u_input.a.x, u_input.a.x), u_input.a.x << (5319u % 32u), ~var_1.b.x, _wgslsmith_mult_u32(u_input.a.x, 74178u)), ~_wgslsmith_sub_vec4_u32(var_1.b, vec4<u32>(arg_0.d.d, var_1.b.x, 5224u, arg_0.e.d))), vec4<u32>(var_1.b.x, ~(u_input.a.x | u_input.a.x), arg_0.e.d, var_1.b.x), ~_wgslsmith_sub_vec4_u32(firstLeadingBit(vec4<u32>(20161u, arg_0.e.d, 20202u, 17352u)), var_1.b)), !(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(634f, arg_0.d.b.x)), arg_0.e.b.x) > 606f));
}

fn func_1(arg_0: vec3<i32>, arg_1: vec3<u32>, arg_2: u32) -> Struct_3 {
    var var_0 = Struct_3(u_input.c.xy | u_input.b.xz, ~(~vec4<u32>(4294967295u, ~arg_1.x, min(arg_1.x, 4294967295u), min(u_input.a.x, 4294967295u))), true && any(!select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true), false)));
    var_0 = Struct_3(arg_0.xx, select(vec4<u32>(var_0.b.x, arg_2 | var_0.b.x, 61621u, min(63914u, ~1u)), reverseBits(~var_0.b), vec4<bool>(var_0.c, any(vec2<bool>(false, var_0.c)), all(select(vec2<bool>(var_0.c, var_0.c), vec2<bool>(false, false), true)), false)), true);
    var_0 = func_4(func_2());
    var_0 = Struct_3(select(vec2<i32>(-2147483647i, u_input.c.x), u_input.b.wx, !vec2<bool>(var_0.c, var_0.c)) & var_0.a, vec4<u32>(~(~abs(4294967295u)), arg_1.x, _wgslsmith_clamp_u32(u_input.a.x, arg_2, var_0.b.x), _wgslsmith_dot_vec3_u32(countOneBits(~u_input.a), ~(~u_input.a))), !all(select(vec2<bool>(true, true), select(vec2<bool>(var_0.c, false), vec2<bool>(var_0.c, true), vec2<bool>(var_0.c, false)), vec2<bool>(var_0.c, false))));
    var var_1 = Struct_4(Struct_1(vec4<bool>(true, select(false, false, arg_0.x > -2147483647i), all(vec2<bool>(true, var_0.c)), func_4(func_2()).c), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1565f, -995f)))), var_0.a, ~(~firstLeadingBit(47239u))));
    return Struct_3((select(func_3(arg_1, u_input.b.zw), vec2<i32>(-24046i, 30147i) & var_0.a, true) ^ vec2<i32>(53060i, 1i)) ^ func_2().e.c, ~func_4(func_2()).b, var_0.c);
}

fn func_5(arg_0: vec2<i32>, arg_1: Struct_3, arg_2: vec4<u32>) -> Struct_1 {
    var var_0 = u_input.b.x;
    let var_1 = false;
    var_0 = ~2147483647i;
    var_0 = -64734i;
    var_0 = arg_1.a.x;
    return Struct_1(vec4<bool>(arg_1.c, false, true, func_2().e.a.x), vec2<f32>(525f, -848f), vec2<i32>(10498i, _wgslsmith_mult_i32(_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, u_input.c.x), vec2<i32>(arg_1.a.x, 1i)), 12233i), 2147483647i)), u_input.a.x ^ 1u);
}

fn func_6(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_3, arg_3: u32) -> vec4<bool> {
    var var_0 = select(!(!vec3<bool>(true | arg_0.a.x, arg_2.c, !arg_0.a.x)), arg_0.a.wyw, !vec3<bool>(any(vec2<bool>(false, true)), arg_1.c, arg_0.a.x));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_0.b.x, 1000f, _wgslsmith_f_op_f32(-arg_0.b.x), arg_0.b.x)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_0.b.x, _wgslsmith_f_op_f32(189f + arg_0.b.x), _wgslsmith_f_op_f32(-arg_0.b.x), _wgslsmith_div_f32(arg_0.b.x, -347f))))));
    let var_2 = _wgslsmith_dot_vec3_u32(~firstLeadingBit(arg_1.b.yyx), vec3<u32>(~4294967295u, 30012u, 57580u));
    var var_3 = arg_2.b;
    let var_4 = ~(~0u);
    return !(!arg_0.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -abs(~firstTrailingBit(u_input.c.x)) >> ((~0u | u_input.a.x) % 32u);
    let var_1 = ~(-((u_input.b << (vec4<u32>(35698u, 7141u, u_input.a.x, u_input.a.x) % vec4<u32>(32u))) ^ u_input.b)) & ~(vec4<i32>(-1i) * -countOneBits(u_input.c));
    var var_2 = Struct_4(Struct_1(func_6(func_5(var_1.yw, func_1(u_input.b.ywx, vec3<u32>(66802u, u_input.a.x, 1u), u_input.a.x), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 1u, 150843u), vec4<u32>(31084u, 33737u, 4294967295u, u_input.a.x))), Struct_3(~var_1.xz, ~vec4<u32>(0u, 1u, 25451u, u_input.a.x), true), Struct_3(~var_1.ww, ~vec4<u32>(u_input.a.x, u_input.a.x, 1u, u_input.a.x), true), 4294967295u), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1508f, -1418f))), func_5(-u_input.c.ww, Struct_3(vec2<i32>(59893i, var_1.x), vec4<u32>(u_input.a.x, u_input.a.x, 21128u, 1u), false), vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, 48992u)).c | (vec2<i32>(-1i) * -var_1.xw), ~_wgslsmith_mult_u32(select(1u, 0u, true), _wgslsmith_sub_u32(u_input.a.x, u_input.a.x))));
    var var_3 = Struct_4(func_5(-vec2<i32>(43787i, var_1.x >> (1u % 32u)), Struct_3(func_3(u_input.a, ~u_input.b.wx), vec4<u32>(u_input.a.x, u_input.a.x, var_2.a.d, ~var_2.a.d), true & !var_2.a.a.x), firstTrailingBit(~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, var_2.a.d, u_input.a.x, 0u), vec4<u32>(var_2.a.d, u_input.a.x, var_2.a.d, u_input.a.x)))));
    var var_4 = Struct_4(Struct_1(var_3.a.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.a.b.x, 1484f) * var_2.a.b), var_3.a.b, var_3.a.a.x | true))), func_2().e.c, var_3.a.d));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.zxz, u_input.a.xz);
}

