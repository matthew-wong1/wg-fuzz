struct Struct_1 {
    a: u32,
    b: i32,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: Struct_1,
    d: i32,
    e: bool,
}

struct Struct_3 {
    a: i32,
    b: vec2<bool>,
    c: u32,
    d: vec2<f32>,
}

struct Struct_4 {
    a: vec2<u32>,
    b: Struct_2,
    c: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: f32, arg_1: i32, arg_2: bool) -> vec2<bool> {
    var var_0 = vec2<u32>(4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a | u_input.b, min(8936u, u_input.d) ^ _wgslsmith_dot_vec2_u32(vec2<u32>(19528u, u_input.d), vec2<u32>(1u, u_input.b)), 113444u), ~(~vec3<u32>(u_input.d, u_input.d, 4347u))));
    let var_1 = (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -385f))) || true;
    let var_2 = vec4<f32>(107f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(abs(arg_0)), false)), arg_0, _wgslsmith_f_op_f32(-arg_0));
    var_0 = max(u_input.c, u_input.c);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(1000f * arg_0)) * 485f)) >= -1322f;
    return select(vec2<bool>(arg_2, abs(~1u) <= u_input.d), vec2<bool>(all(select(vec4<bool>(true, var_1, arg_2, var_1), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true))), arg_2), vec2<bool>(!any(select(vec3<bool>(true, arg_2, arg_2), vec3<bool>(var_1, arg_2, var_1), vec3<bool>(arg_2, arg_2, false))), any(vec2<bool>(true, all(vec4<bool>(true, true, true, false))))));
}

fn func_2(arg_0: vec4<bool>) -> vec3<bool> {
    var var_0 = vec2<bool>(true, false);
    let var_1 = false;
    var_0 = select(select(select(select(vec2<bool>(true, false), select(arg_0.wz, arg_0.xw, false), any(vec4<bool>(false, true, false, true))), select(arg_0.zw, vec2<bool>(var_1, true), true), select(arg_0.yw, select(arg_0.xw, vec2<bool>(var_1, false), vec2<bool>(arg_0.x, true)), func_3(1568f, 33161i, true))), vec2<bool>(!(false & arg_0.x), true), false), !(!(!vec2<bool>(var_0.x, arg_0.x))), any(select(vec3<bool>(false, false, any(vec3<bool>(true, arg_0.x, var_1))), vec3<bool>(var_0.x || true, true, !var_0.x), var_1)));
    let var_2 = arg_0.yy;
    let var_3 = !(!(!select(func_3(-1778f, -2147483647i, var_0.x), vec2<bool>(false, false), true)));
    return !(!vec3<bool>(all(vec4<bool>(false, var_1, arg_0.x, true)), any(vec4<bool>(arg_0.x, var_1, var_2.x, var_2.x)), false));
}

fn func_1(arg_0: Struct_4) -> Struct_1 {
    var var_0 = Struct_1(4294967295u, arg_0.c.a | reverseBits(arg_0.b.c.b));
    var var_1 = Struct_1(~(~(~var_0.a)), 2147483647i);
    let var_2 = ~_wgslsmith_mod_u32(12355u, arg_0.c.c);
    let var_3 = !func_2(!vec4<bool>(var_1.a != u_input.c.x, true, !arg_0.c.b.x, arg_0.c.b.x));
    var var_4 = arg_0.b.c;
    return arg_0.b.c;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1, arg_2: u32, arg_3: Struct_4) -> Struct_2 {
    let var_0 = Struct_4(vec2<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(arg_3.b.c.a, arg_1.a, 1096u, arg_3.c.c), vec4<u32>(arg_1.a, u_input.a, arg_1.a, 4294967295u)) >> (min(vec4<u32>(1u, 1u, 59426u, 0u), vec4<u32>(59550u, arg_3.b.b, 50143u, u_input.b)) % vec4<u32>(32u)), select(min(vec4<u32>(4294967295u, 62325u, arg_2, arg_2), vec4<u32>(arg_0.c, arg_1.a, arg_3.b.c.a, 1u)), ~vec4<u32>(52859u, 1u, 17480u, 4294967295u), arg_3.b.e)), firstLeadingBit(~_wgslsmith_div_u32(arg_3.a.x, 1u))), Struct_2(_wgslsmith_dot_vec4_i32(abs(firstLeadingBit(vec4<i32>(-17058i, arg_1.b, arg_0.a, -2095i))), select(reverseBits(vec4<i32>(arg_3.b.a, 2147483647i, 6341i, -16216i)), -vec4<i32>(arg_0.a, -731i, 0i, arg_1.b), true)), 28933u, arg_1, arg_0.a, !arg_0.b.x), Struct_3(_wgslsmith_mod_i32(~1i, ~arg_3.c.a << (arg_3.c.c % 32u)), !vec2<bool>(arg_3.b.e, true), 0u, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(386f * arg_3.c.d.x), _wgslsmith_f_op_f32(ceil(arg_0.d.x))))));
    var var_1 = arg_3.c;
    var_1 = arg_0;
    var_1 = Struct_3(_wgslsmith_dot_vec4_i32(-firstLeadingBit(-vec4<i32>(arg_3.c.a, var_0.c.a, 2147483647i, var_0.c.a)), _wgslsmith_div_vec4_i32(~(~vec4<i32>(arg_3.b.c.b, arg_3.b.d, arg_3.b.d, arg_1.b)), _wgslsmith_add_vec4_i32(vec4<i32>(-26035i, arg_1.b, -51166i, -27157i) | vec4<i32>(1i, -2147483647i, 2147483647i, 32862i), ~vec4<i32>(var_1.a, 36437i, 0i, var_1.a)))), !var_0.c.b, _wgslsmith_mod_u32(u_input.b, ~min(arg_2, _wgslsmith_clamp_u32(var_1.c, var_0.b.c.a, 3630u))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.d.x) + _wgslsmith_f_op_f32(abs(arg_0.d.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-122f)) * _wgslsmith_f_op_f32(trunc(553f))))));
    var_1 = Struct_3(-61618i, !func_2(select(!vec4<bool>(false, true, true, var_0.b.e), select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, arg_0.b.x, true), vec4<bool>(arg_3.b.e, true, arg_3.b.e, false)), true)).zz, countOneBits(~(~1u)), _wgslsmith_f_op_vec2_f32(var_0.c.d * _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(arg_3.c.d, arg_0.d)), _wgslsmith_div_vec2_f32(var_0.c.d, var_1.d)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1029f, var_1.d.x))) * _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1000f, 1173f), vec2<f32>(var_0.c.d.x, -514f)))))));
    return Struct_2(abs(~countOneBits(_wgslsmith_mult_i32(var_1.a, var_0.b.c.b))), min(63281u, ~_wgslsmith_sub_u32(arg_2 >> (1u % 32u), ~arg_1.a)), func_1(Struct_4(_wgslsmith_sub_vec2_u32(~vec2<u32>(u_input.d, arg_2), vec2<u32>(var_1.c, arg_2)), Struct_2(-27659i << (0u % 32u), arg_1.a, Struct_1(1u, arg_0.a), ~arg_1.b, true), arg_3.c)), abs(-firstTrailingBit(-1i >> (arg_2 % 32u))), true);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_4, arg_2: Struct_1) -> Struct_1 {
    let var_0 = vec4<f32>(arg_1.c.d.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(arg_1.c.d.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.c.d.x)) * arg_1.c.d.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(arg_1.c.d.x)))))));
    var var_1 = Struct_2(arg_2.b, 10359u, arg_2, abs(arg_1.c.a), any(!vec3<bool>(all(vec4<bool>(arg_1.b.e, true, arg_1.b.e, false)), false, true)));
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.x)) - 638f)), _wgslsmith_f_op_f32(f32(-1f) * -1725f), arg_1.c.d.x);
    let var_3 = false;
    var_1 = func_4(arg_1.c, Struct_1(64194u, -arg_0.b), var_1.b, arg_1);
    return Struct_1(~firstTrailingBit(u_input.a), ~var_1.d);
}

fn func_6(arg_0: Struct_1, arg_1: f32, arg_2: Struct_2) -> StorageBuffer {
    var var_0 = arg_0.b;
    var_0 = func_1(Struct_4(_wgslsmith_div_vec2_u32(u_input.c, vec2<u32>(arg_0.a, u_input.b)) >> (u_input.c % vec2<u32>(32u)), Struct_2(_wgslsmith_mod_i32(firstTrailingBit(arg_2.c.b), func_1(Struct_4(u_input.c, arg_2, Struct_3(1i, vec2<bool>(false, arg_2.e), arg_2.c.a, vec2<f32>(668f, -694f)))).b), 0u, Struct_1(arg_2.c.a, abs(arg_0.b)), -30010i, true), Struct_3(arg_2.a << (_wgslsmith_add_u32(24u, arg_0.a) % 32u), vec2<bool>(arg_2.e, u_input.b == 0u), arg_0.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(611f, arg_1) + vec2<f32>(-642f, arg_1)) * _wgslsmith_f_op_vec2_f32(step(vec2<f32>(451f, arg_1), vec2<f32>(996f, 1546f))))))).b;
    var_0 = func_1(Struct_4(~(u_input.c & ~u_input.c), Struct_2(arg_2.c.b & (arg_0.b << (34364u % 32u)), 0u, func_4(Struct_3(arg_2.c.b, vec2<bool>(false, true), 85076u, vec2<f32>(-679f, 2945f)), func_4(Struct_3(0i, vec2<bool>(arg_2.e, arg_2.e), 53934u, vec2<f32>(arg_1, 303f)), arg_0, arg_0.a, Struct_4(vec2<u32>(1u, 1u), arg_2, Struct_3(arg_2.d, vec2<bool>(arg_2.e, arg_2.e), arg_0.a, vec2<f32>(196f, -598f)))).c, reverseBits(0u), Struct_4(u_input.c, arg_2, Struct_3(arg_0.b, vec2<bool>(true, false), arg_2.b, vec2<f32>(arg_1, 812f)))).c, 22373i, true), Struct_3(_wgslsmith_div_i32(firstLeadingBit(arg_0.b), arg_2.c.b), !vec2<bool>(arg_2.e, true), _wgslsmith_add_u32(_wgslsmith_div_u32(arg_0.a, arg_2.c.a), ~119418u), vec2<f32>(_wgslsmith_f_op_f32(max(arg_1, 1888f)), _wgslsmith_f_op_f32(step(arg_1, arg_1)))))).b;
    let var_1 = Struct_4(firstLeadingBit(abs(u_input.c | vec2<u32>(4294967295u, 1u))) << (firstLeadingBit(_wgslsmith_add_vec2_u32(~u_input.c, _wgslsmith_add_vec2_u32(u_input.c, vec2<u32>(0u, 50779u)))) % vec2<u32>(32u)), Struct_2(-1i, _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(1u, arg_0.a, arg_2.c.a), vec3<u32>(u_input.a, arg_2.b, arg_0.a)), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c.x, u_input.d, u_input.c.x), vec3<u32>(4294967295u, 0u, u_input.c.x))), firstLeadingBit(vec3<u32>(u_input.a, 0u, 40024u)) >> ((vec3<u32>(u_input.a, arg_2.c.a, arg_2.b) & vec3<u32>(arg_2.c.a, arg_0.a, u_input.c.x)) % vec3<u32>(32u))), arg_2.c, abs(0i), !all(vec2<bool>(false, true))), Struct_3(min(-30457i, 1i), vec2<bool>(false, arg_2.e), ~_wgslsmith_mult_u32(arg_0.a, firstLeadingBit(25970u)), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(204f, _wgslsmith_f_op_f32(f32(-1f) * -1020f))))));
    var var_2 = var_1;
    return StorageBuffer(~min(~(~vec4<i32>(0i, arg_0.b, var_1.c.a, -18541i)), -(vec4<i32>(arg_0.b, -32495i, -2147483647i, var_2.c.a) << (vec4<u32>(0u, var_1.b.b, 0u, 37507u) % vec4<u32>(32u)))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-768f, _wgslsmith_div_f32(349f, _wgslsmith_div_f32(arg_1, var_1.c.d.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_6(func_5(Struct_1(0u, ~(~(-2147483647i))), Struct_4(u_input.c, func_4(Struct_3(2147483647i, vec2<bool>(true, false), 21104u, vec2<f32>(1086f, 531f)), func_1(Struct_4(vec2<u32>(u_input.b, 4294967295u), Struct_2(-69280i, 102770u, Struct_1(8614u, 1i), 23618i, true), Struct_3(-16009i, vec2<bool>(false, true), 4294967295u, vec2<f32>(-597f, -588f)))), 5429u, Struct_4(vec2<u32>(4294967295u, u_input.a), Struct_2(43319i, u_input.b, Struct_1(4294967295u, -17775i), 40231i, false), Struct_3(-894i, vec2<bool>(false, true), u_input.b, vec2<f32>(-161f, -1079f)))), Struct_3(2147483647i, func_2(vec4<bool>(false, false, false, false)).yz, u_input.a, _wgslsmith_f_op_vec2_f32(min(vec2<f32>(908f, 398f), vec2<f32>(-892f, 396f))))), Struct_1(u_input.d, 2147483647i)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(-733f)))), func_4(Struct_3(~max(4740i, -19615i), vec2<bool>(true, true), _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.b, 3048u), vec2<u32>(46715u, u_input.c.x)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(722f, 629f), vec2<f32>(-1000f, 2046f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(1508f, 445f) - vec2<f32>(573f, 742f)), all(vec2<bool>(true, false))))), func_5(Struct_1(u_input.c.x, -22042i), Struct_4(vec2<u32>(u_input.c.x, 44988u), Struct_2(1i, 10876u, Struct_1(38403u, 1i), -1i, true), Struct_3(0i, vec2<bool>(false, false), 4294967295u, vec2<f32>(806f, -1210f))), func_4(Struct_3(14911i, vec2<bool>(false, false), u_input.b, vec2<f32>(-778f, 237f)), Struct_1(u_input.c.x, -46962i), 0u, Struct_4(vec2<u32>(u_input.b, 4294967295u), Struct_2(52651i, 1u, Struct_1(1u, -50147i), -18913i, true), Struct_3(0i, vec2<bool>(true, false), 1u, vec2<f32>(298f, -1174f)))).c), 47205u, Struct_4(_wgslsmith_mod_vec2_u32(reverseBits(u_input.c), ~u_input.c), func_4(Struct_3(2147483647i, vec2<bool>(true, false), 1u, vec2<f32>(-219f, -396f)), Struct_1(29333u, 1i), func_1(Struct_4(u_input.c, Struct_2(42177i, u_input.b, Struct_1(4711u, -2147483647i), -19975i, true), Struct_3(1i, vec2<bool>(false, false), u_input.a, vec2<f32>(-645f, 1816f)))).a, Struct_4(u_input.c, Struct_2(-1i, u_input.c.x, Struct_1(1u, 18123i), 11074i, false), Struct_3(-40326i, vec2<bool>(true, true), u_input.d, vec2<f32>(-1047f, 362f)))), Struct_3(max(-1645i, 43073i), select(vec2<bool>(true, false), vec2<bool>(true, true), true), 48000u, _wgslsmith_f_op_vec2_f32(vec2<f32>(418f, -2082f) * vec2<f32>(403f, -778f))))));
}

