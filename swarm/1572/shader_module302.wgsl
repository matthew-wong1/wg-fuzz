struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: i32,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: vec3<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec3<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<i32>, arg_1: vec3<u32>) -> bool {
    var var_0 = vec4<i32>(arg_0.x, u_input.d.x, 2147483647i | u_input.b.x, ~25711i);
    let var_1 = _wgslsmith_dot_vec2_i32(u_input.b.yz, vec2<i32>(1i, 2147483647i));
    var var_2 = _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1362f + 1f)));
    let var_3 = vec3<bool>(!((true | all(vec3<bool>(false, true, true))) & false), !any(vec3<bool>(true, true, arg_1.x > arg_1.x)), true);
    var var_4 = -901f;
    return false;
}

fn func_2(arg_0: vec4<i32>, arg_1: f32) -> vec3<u32> {
    let var_0 = ~(u_input.e | vec3<u32>(_wgslsmith_div_u32(0u, firstLeadingBit(u_input.c)), ~(~u_input.e.x), abs(0u)));
    var var_1 = arg_1;
    var var_2 = Struct_2(!select(vec2<bool>(false, true), vec2<bool>(u_input.b.x <= -1i, all(vec2<bool>(false, true))), vec2<bool>(true, true)), Struct_1(false, vec2<u32>(~countOneBits(11248u), _wgslsmith_add_u32(u_input.a, var_0.x) << (~32776u % 32u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(154f, arg_1, arg_1, arg_1)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_1, 375f, -1271f, arg_1)))))), Struct_1(true && func_3(~vec3<i32>(-1i, arg_0.x, 35059i), var_0), ~(_wgslsmith_add_vec2_u32(u_input.e.yz, vec2<u32>(u_input.c, 1u)) << (var_0.zx % vec2<u32>(32u))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_1, arg_1, arg_1, arg_1), vec4<f32>(927f, 327f, arg_1, 266f))) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(817f, -885f, 1108f, arg_1), vec4<f32>(-136f, arg_1, -343f, -354f), false))) - vec4<f32>(arg_1, arg_1, 123f, arg_1))));
    return vec3<u32>(~0u, ~(~4294967295u) | var_2.c.b.x, ~(reverseBits(_wgslsmith_add_u32(54398u, var_0.x)) >> ((firstTrailingBit(5588u) ^ abs(0u)) % 32u)));
}

fn func_1() -> Struct_1 {
    var var_0 = !((!all(vec3<bool>(false, true, false)) | true) | true);
    var var_1 = u_input.e;
    let var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-628f, _wgslsmith_f_op_f32(sign(330f))))))));
    var var_3 = ~u_input.b.x;
    var_1 = _wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(func_2(vec4<i32>(u_input.d.x, firstLeadingBit(-29418i), 0i, 6927i), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -254f), -1903f)), vec3<u32>(var_1.x, 46098u, 41871u)), ~((u_input.e | vec3<u32>(var_1.x, var_1.x, u_input.a)) << (_wgslsmith_sub_vec3_u32(u_input.e, u_input.e) % vec3<u32>(32u))) & (_wgslsmith_div_vec3_u32(firstLeadingBit(vec3<u32>(38676u, 0u, u_input.c)), vec3<u32>(0u, 13782u, u_input.e.x) << (u_input.e % vec3<u32>(32u))) ^ vec3<u32>(reverseBits(0u), reverseBits(0u), var_1.x)));
    return Struct_1(any(vec2<bool>(true, any(select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true))))), firstLeadingBit(firstLeadingBit(u_input.e.yx | min(vec2<u32>(0u, u_input.c), u_input.e.yx))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_2, -180f, 1000f, var_2)))))));
}

fn func_4(arg_0: Struct_2, arg_1: u32, arg_2: vec3<i32>, arg_3: f32) -> vec4<f32> {
    var var_0 = vec3<bool>((all(select(vec4<bool>(arg_0.a.x, arg_0.b.a, true, false), vec4<bool>(true, arg_0.c.a, false, arg_0.b.a), vec4<bool>(true, arg_0.b.a, true, true))) || false) & true, arg_0.a.x & (!(!arg_0.b.a) & any(select(vec3<bool>(arg_0.a.x, arg_0.c.a, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true)))), true);
    var var_1 = Struct_3(vec4<bool>(!(1i > arg_2.x), u_input.d.x > ~reverseBits(-12929i), func_3(arg_2 ^ vec3<i32>(arg_2.x, arg_2.x, arg_2.x), _wgslsmith_clamp_vec3_u32(min(vec3<u32>(arg_1, 67716u, arg_0.c.b.x), u_input.e), select(u_input.e, u_input.e, false), u_input.e ^ u_input.e)), true & (false & (arg_0.b.a || true))), (-abs(u_input.b.x) ^ _wgslsmith_mult_i32(_wgslsmith_add_i32(1i, arg_2.x), 0i)) << (arg_1 % 32u), !(!any(!vec4<bool>(var_0.x, true, true, arg_0.a.x))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, 1000f) - arg_3);
    var var_3 = vec3<u32>(1u, 1u, _wgslsmith_div_u32(u_input.a << (u_input.a % 32u), (u_input.a | (4294967295u >> (arg_0.c.b.x % 32u))) & ~(arg_1 & 155u)));
    let var_4 = ~abs(_wgslsmith_mult_vec3_i32(vec3<i32>(-1i) * -u_input.b, vec3<i32>(arg_2.x, select(var_1.b, 62993i, var_1.c), ~2147483647i)));
    return vec4<f32>(func_1().c.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3))))), 694f, 1173f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(func_4(Struct_2(!select(vec2<bool>(false, true), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true)), false), Struct_1((2841u << (u_input.e.x % 32u)) != ~u_input.a, u_input.e.yx, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1186f, -1170f, -1489f, 355f) - vec4<f32>(-1484f, 1679f, -549f, -1269f)))), func_1()), 43069u | _wgslsmith_div_u32(~9019u, u_input.e.x), vec3<i32>(min(-_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, 26220i), u_input.d.yz), -firstTrailingBit(u_input.d.x)), u_input.b.x, ~(-(i32(-1i) * -1i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-616f))) + _wgslsmith_f_op_f32(134f * _wgslsmith_f_op_f32(step(820f, -335f)))))));
    var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.x, var_0.x, var_0.x, 1737f))) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, 578f, -1590f, var_0.x) + vec4<f32>(100f, var_0.x, var_0.x, var_0.x)))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_4(Struct_2(vec2<bool>(true, false), Struct_1(false, vec2<u32>(u_input.e.x, u_input.c), vec4<f32>(-1000f, -1731f, 1709f, -1127f)), Struct_1(false, vec2<u32>(u_input.e.x, u_input.c), vec4<f32>(var_0.x, -217f, 318f, var_0.x))), max(u_input.e.x, 1u), u_input.d ^ u_input.d, _wgslsmith_f_op_f32(218f * var_0.x))).x), 843f, var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(753f, 516f)))))));
    var_0 = vec4<f32>(560f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1268f + var_0.x) + var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(func_1().c.x, var_0.x)), -414f);
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(func_1().c)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x) * vec4<f32>(var_0.x, var_0.x, -225f, -1186f)))))));
    var var_1 = Struct_2(!select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), !select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true)), !select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false))), func_1(), func_1());
    var var_2 = var_1.c;
    let var_3 = !(!(!vec4<bool>(var_1.a.x, true | var_2.a, var_1.b.a, false)));
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-757f * _wgslsmith_f_op_f32(sign(var_1.b.c.x))) - _wgslsmith_f_op_f32(var_0.x - 220f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1006f, -2159f)))));
    var var_5 = Struct_3(select(var_3, vec4<bool>(var_2.a, true, false, any(select(var_3.zzz, vec3<bool>(var_3.x, false, var_1.c.a), var_2.a))), var_1.b.a), _wgslsmith_clamp_i32(-(~u_input.b.x), abs(~_wgslsmith_div_i32(2147483647i, -18795i)), u_input.b.x), true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(min(0u, u_input.e.x), _wgslsmith_sub_u32(~(var_1.c.b.x & var_2.b.x), var_1.b.b.x)), var_0.yww, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b.c.x, 1345f, 233f))), _wgslsmith_f_op_vec4_f32(func_4(Struct_2(!var_1.a, var_1.b, func_1()), var_2.b.x, vec3<i32>(var_5.b, var_5.b, u_input.b.x | -42367i), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1663f, 1236f)))).zxw), 45120i);
}

