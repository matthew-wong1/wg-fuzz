struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: u32,
    d: vec3<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: u32,
    c: Struct_1,
    d: f32,
    e: vec3<u32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_2,
    c: vec3<u32>,
    d: i32,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: f32,
    b: vec4<f32>,
    c: u32,
    d: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec2<u32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3() -> u32 {
    let var_0 = Struct_5(_wgslsmith_div_f32(-406f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1285f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(1000f * -725f), _wgslsmith_f_op_f32(f32(-1f) * -1249f), _wgslsmith_f_op_f32(-133f - 1696f), 221f)))), 1u & _wgslsmith_div_u32(u_input.a.x, ~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.a.x, 32052u, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, u_input.c.x, 0u))), u_input.b);
    var var_1 = ~var_0.c;
    let var_2 = Struct_1(var_0.a > _wgslsmith_f_op_f32(f32(-1f) * -969f), vec4<u32>(~firstTrailingBit(~u_input.a.x), firstTrailingBit(~4294967295u), _wgslsmith_dot_vec4_u32(vec4<u32>(~var_0.c, 25088u, var_0.c, _wgslsmith_div_u32(35011u, u_input.a.x)), _wgslsmith_add_vec4_u32(vec4<u32>(var_0.c, 33148u, 0u, 10748u), vec4<u32>(1u, var_0.c, u_input.a.x, var_0.c))), ~select(5404u, var_0.c, true) & _wgslsmith_sub_u32(u_input.a.x, u_input.a.x & 6139u)), _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(21435u, var_0.c, 0u)) & firstLeadingBit(vec3<u32>(59278u, 29170u, 120082u)), vec3<u32>(~var_0.c, 47538u, 27633u << (var_0.c % 32u))), 53792u, abs(_wgslsmith_div_u32(~29925u, u_input.c.x << (var_0.c % 32u)))), _wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(select(firstLeadingBit(vec3<i32>(-65229i, -13587i, u_input.b)), ~vec3<i32>(-2147483647i, 7319i, 7106i), true), reverseBits(-vec3<i32>(var_0.d, -17317i, 28567i))), -(~(-vec3<i32>(0i, 16780i, var_0.d)))));
    var var_3 = var_0;
    let var_4 = var_2;
    return abs(4294967295u >> (var_2.c % 32u));
}

fn func_2(arg_0: u32, arg_1: vec3<f32>, arg_2: f32) -> Struct_1 {
    var var_0 = Struct_1(true, ~vec4<u32>(~min(u_input.c.x, u_input.c.x), func_3(), _wgslsmith_mod_u32(u_input.a.x, u_input.c.x), ~abs(arg_0)), 1u, vec3<i32>(-44724i, _wgslsmith_clamp_i32(_wgslsmith_mod_i32(u_input.b, reverseBits(8119i)), -1i, ~(~0i)), -_wgslsmith_mod_i32(~u_input.b, -1i)));
    let var_1 = vec3<f32>(arg_1.x, -164f, 484f);
    var var_2 = all(vec3<bool>(any(!vec3<bool>(var_0.a, true, var_0.a)), !(2147483647i >= -var_0.d.x), any(vec2<bool>(true, var_0.a)) && select(true, any(vec2<bool>(false, false)), var_0.a)));
    var var_3 = Struct_1(var_0.a == true, vec4<u32>(522u, ~(~(~0u)), min(75780u, arg_0 & countOneBits(u_input.a.x)), _wgslsmith_mult_u32(_wgslsmith_sub_u32(u_input.a.x, _wgslsmith_mult_u32(u_input.c.x, u_input.a.x)), ~12805u)), ~u_input.c.x, ~(var_0.d & var_0.d));
    var var_4 = Struct_1(!(26599u <= firstTrailingBit(~var_3.b.x)), vec4<u32>(1u << (1u % 32u), ~4294967295u, 77328u, u_input.a.x), firstTrailingBit(firstTrailingBit(arg_0) & reverseBits(u_input.c.x)), ~_wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(var_0.d.x, var_0.d.x, u_input.b) << (var_3.b.zyz % vec3<u32>(32u)), -var_3.d), ~_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b, -36662i, u_input.b), vec3<i32>(var_0.d.x, -15271i, var_3.d.x))));
    return Struct_1(false, min(~(~var_3.b), ~(~vec4<u32>(4294967295u, var_4.c, 31055u, arg_0)) | reverseBits(~vec4<u32>(var_4.c, 62590u, arg_0, var_0.c))), var_4.b.x << ((_wgslsmith_mod_u32(~1u, 1u) << (_wgslsmith_mult_u32(arg_0, abs(56508u)) % 32u)) % 32u), _wgslsmith_clamp_vec3_i32(_wgslsmith_mod_vec3_i32(-_wgslsmith_mod_vec3_i32(vec3<i32>(0i, var_3.d.x, var_0.d.x), vec3<i32>(12569i, -2147483647i, -2147483647i)), vec3<i32>(-1i) * -vec3<i32>(u_input.b, 1350i, 1i)), ((vec3<i32>(var_4.d.x, u_input.b, var_4.d.x) | vec3<i32>(1i, u_input.b, u_input.b)) << (vec3<u32>(var_4.b.x, 4294967295u, var_3.c) % vec3<u32>(32u))) >> (vec3<u32>(~4294967295u, 1u, abs(var_0.b.x)) % vec3<u32>(32u)), _wgslsmith_mod_vec3_i32(-var_4.d, firstLeadingBit(var_0.d))));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: Struct_1) -> Struct_3 {
    var var_0 = select(_wgslsmith_sub_i32(~_wgslsmith_clamp_i32(2147483647i, -arg_2.x, -arg_2.x), reverseBits(_wgslsmith_add_i32(firstLeadingBit(2147483647i), -27015i))), _wgslsmith_mod_i32(_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(arg_2, arg_3.d.yz), vec2<i32>(1i, arg_3.d.x)), ~arg_2.x, min(arg_2.x, arg_1.d.x)), ~_wgslsmith_dot_vec2_i32(vec2<i32>(49908i, arg_2.x), arg_3.d.zx)), func_2(_wgslsmith_sub_u32(_wgslsmith_add_u32(_wgslsmith_mult_u32(arg_1.c, 4742u), ~0u), arg_3.c), _wgslsmith_f_op_vec3_f32(select(arg_0.zxx, vec3<f32>(1f, 1f, 1f), select(select(vec3<bool>(arg_1.a, arg_3.a, true), vec3<bool>(true, arg_3.a, true), vec3<bool>(arg_3.a, true, true)), !vec3<bool>(arg_3.a, true, true), false))), 187f).a);
    let var_1 = arg_1.b.yx;
    var var_2 = ~arg_1.c;
    let var_3 = 15835i;
    var_0 = -5203i;
    return Struct_3(vec2<bool>(all(!select(vec2<bool>(arg_3.a, false), vec2<bool>(false, true), vec2<bool>(true, true))), _wgslsmith_sub_u32(max(1u, arg_3.c), countOneBits(u_input.a.x)) < ~0u), Struct_2(select(!(!vec4<bool>(arg_3.a, true, true, false)), !select(vec4<bool>(arg_1.a, true, true, arg_1.a), vec4<bool>(arg_1.a, true, false, arg_3.a), vec4<bool>(arg_3.a, arg_3.a, arg_3.a, arg_1.a)), arg_3.a), 70284u, Struct_1(any(!vec2<bool>(false, arg_3.a)), select(func_2(var_1.x, vec3<f32>(arg_0.x, -814f, arg_0.x), 1147f).b, _wgslsmith_mult_vec4_u32(vec4<u32>(arg_3.b.x, arg_3.b.x, arg_1.b.x, 4915u), arg_1.b), func_2(4439u, vec3<f32>(arg_0.x, 1496f, arg_0.x), 1774f).a), max(39615u, 1u) << (0u % 32u), _wgslsmith_div_vec3_i32(arg_1.d, vec3<i32>(var_3, arg_2.x, var_3))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1100f, arg_0.x) - _wgslsmith_div_f32(-1390f, arg_0.x)))), ~u_input.a), arg_1.b.xyw, u_input.b);
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: vec2<f32>) -> bool {
    let var_0 = vec4<bool>(arg_1.a, !select(any(select(vec3<bool>(false, true, false), vec3<bool>(arg_1.a, arg_1.a, true), true)), arg_1.a || true, false), arg_1.a, true);
    var var_1 = Struct_5(_wgslsmith_f_op_f32(round(-370f)), vec4<f32>(_wgslsmith_f_op_f32(ceil(-758f)), -241f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -716f)))), arg_2.x), ~u_input.c.x, _wgslsmith_dot_vec2_i32(arg_1.d.yx, ~(-arg_1.d.xz)));
    var var_2 = ~(vec3<u32>(select(15139u, reverseBits(arg_0.x), true), arg_0.x, ~_wgslsmith_add_u32(5677u, u_input.c.x)) & _wgslsmith_div_vec3_u32(~vec3<u32>(arg_0.x, 34427u, u_input.c.x), countOneBits(max(arg_1.b.wwx, arg_1.b.yzz))));
    var var_3 = func_4(vec4<f32>(_wgslsmith_f_op_f32(var_1.b.x + _wgslsmith_f_op_f32(var_1.a + -197f)), -478f, _wgslsmith_f_op_f32(-1556f - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), arg_2.x), func_2(~abs(~21801u), vec3<f32>(_wgslsmith_f_op_f32(-800f + arg_2.x), 433f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.x))), _wgslsmith_div_f32(var_1.a, _wgslsmith_f_op_f32(exp2(arg_2.x)))), arg_1.d.xz, Struct_1(true, arg_1.b, min(var_2.x, 12019u), vec3<i32>(-(~u_input.b), arg_1.d.x, _wgslsmith_mod_i32(_wgslsmith_add_i32(-22478i, -60687i), -1i))));
    let var_4 = select(countOneBits(arg_1.b.zxw), arg_1.b.xyw, false);
    return select(max(arg_1.d.x, var_1.d) ^ select(var_3.b.c.d.x, arg_1.d.x, func_4(var_1.b, arg_1, vec2<i32>(arg_1.d.x, 2147483647i), arg_1).b.a.x), u_input.b, false) > var_3.d;
}

fn func_5(arg_0: Struct_3, arg_1: vec4<u32>, arg_2: vec4<bool>) -> Struct_3 {
    let var_0 = func_4(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_0.b.d, arg_0.b.d, arg_0.b.d, -549f), vec4<f32>(arg_0.b.d, 340f, arg_0.b.d, -555f))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-487f, 447f, arg_0.b.d, 193f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b.d, arg_0.b.d, -1245f, -578f)), func_4(vec4<f32>(954f, 1231f, -506f, arg_0.b.d), Struct_1(true, arg_0.b.c.b, 4294967295u, vec3<i32>(-1i, -2147483647i, -2147483647i)), vec2<i32>(-2147483647i, arg_0.d), Struct_1(arg_2.x, vec4<u32>(65036u, u_input.c.x, u_input.c.x, u_input.c.x), 0u, vec3<i32>(48129i, u_input.b, -1i))).b.a)), arg_2)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(952f, arg_0.b.d, arg_0.b.d, 368f) - vec4<f32>(511f, -419f, -400f, arg_0.b.d)), vec4<f32>(arg_0.b.d, arg_0.b.d, arg_0.b.d, arg_0.b.d))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b.d, -1069f, arg_0.b.d, 1172f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1098f, 604f, arg_0.b.d, -875f)))))), Struct_1(arg_2.x & (~u_input.c.x != (arg_0.c.x | u_input.c.x)), func_4(_wgslsmith_div_vec4_f32(vec4<f32>(1966f, -754f, 235f, arg_0.b.d), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.b.d, arg_0.b.d, -210f, 252f), vec4<f32>(1704f, 905f, arg_0.b.d, 1104f), arg_2))), func_2(arg_0.c.x, vec3<f32>(arg_0.b.d, arg_0.b.d, -686f), arg_0.b.d), arg_0.b.c.d.xz, func_2(~u_input.c.x, _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-508f, 438f, 549f))), _wgslsmith_f_op_f32(f32(-1f) * -1300f))).b.c.b, firstTrailingBit(_wgslsmith_clamp_u32(reverseBits(u_input.a.x), _wgslsmith_mult_u32(4294967295u, arg_0.b.e.x), reverseBits(arg_0.b.c.b.x))), -min(arg_0.b.c.d, _wgslsmith_add_vec3_i32(arg_0.b.c.d, arg_0.b.c.d))), arg_0.b.c.d.zy, func_4(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(569f, -348f, arg_0.b.d, -431f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1124f, 1615f, arg_0.b.d, arg_0.b.d))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-312f, 471f, 784f, -1000f)), !vec4<bool>(true, true, arg_0.a.x, arg_2.x))), arg_0.b.c, ~arg_0.b.c.d.yx, func_4(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.b.d, 137f, -1632f, arg_0.b.d), _wgslsmith_div_vec4_f32(vec4<f32>(arg_0.b.d, -492f, arg_0.b.d, 283f), vec4<f32>(1258f, arg_0.b.d, 575f, -364f))), arg_0.b.c, select(arg_0.b.c.d.xy, vec2<i32>(u_input.b, u_input.b) & vec2<i32>(-1622i, u_input.b), arg_0.b.a.zz), func_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 752f, 469f, 1318f) * vec4<f32>(arg_0.b.d, arg_0.b.d, arg_0.b.d, 521f)), Struct_1(true, arg_1, 45031u, arg_0.b.c.d), vec2<i32>(53987i, -53081i), func_4(vec4<f32>(742f, 313f, arg_0.b.d, 701f), arg_0.b.c, vec2<i32>(-2147483647i, 0i), Struct_1(arg_0.b.c.a, arg_1, 29050u, arg_0.b.c.d)).b.c).b.c).b.c).b.c).a.x;
    var var_1 = false;
    var var_2 = Struct_3(func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, -309f, _wgslsmith_f_op_f32(f32(-1f) * -622f), 188f)), Struct_1(var_0, ~select(arg_1, arg_1, arg_0.b.a), ~arg_0.c.x, ~arg_0.b.c.d | vec3<i32>(u_input.b, -58665i, arg_0.d)), vec2<i32>(_wgslsmith_mod_i32(-arg_0.d, _wgslsmith_mult_i32(u_input.b, 48088i)), -1i), Struct_1(any(!vec3<bool>(var_0, arg_0.a.x, false)), arg_1 & arg_0.b.c.b, 1u, reverseBits(countOneBits(arg_0.b.c.d)))).a, func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_0.b.d, arg_0.b.d, -360f, 368f), vec4<f32>(1806f, arg_0.b.d, arg_0.b.d, arg_0.b.d))) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_0.b.d, arg_0.b.d, arg_0.b.d, arg_0.b.d)))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-401f, arg_0.b.d, 1000f, arg_0.b.d) - vec4<f32>(1040f, -405f, arg_0.b.d, arg_0.b.d)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b.d, -1221f, -927f, -1037f)), arg_2))), arg_0.b.c, vec2<i32>(select(u_input.b, -41223i, false) & min(arg_0.d, u_input.b), min(23181i, ~28742i)), arg_0.b.c).b, vec3<u32>(abs(arg_1.x ^ select(arg_0.b.c.c, arg_1.x, true)), 1u, 76285u), ~(i32(-1i) * -23008i));
    return Struct_3(arg_0.a, Struct_2(select(arg_2, vec4<bool>(true, !var_2.a.x, arg_0.b.a.x, !var_0), true), ~(~(u_input.c.x | arg_1.x)), var_2.b.c, -1891f, ~vec3<u32>(0u, ~26918u, ~1u)), firstLeadingBit(_wgslsmith_add_vec3_u32(vec3<u32>(var_2.c.x, 0u, arg_0.b.c.c), var_2.b.c.b.xzy) >> (var_2.c % vec3<u32>(32u))), 0i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<u32>(abs(~_wgslsmith_mod_u32(0u, 1u)), ~_wgslsmith_add_u32(u_input.c.x, u_input.a.x), abs(0u) >> ((u_input.c.x | 4294967295u) % 32u), _wgslsmith_mod_u32(~u_input.c.x, _wgslsmith_div_u32(~4294967295u, 10294u))) ^ ~(~(~abs(vec4<u32>(10382u, u_input.a.x, u_input.c.x, 4294967295u))));
    let var_1 = u_input.b;
    let var_2 = func_5(Struct_3(select(vec2<bool>(u_input.a.x == var_0.x, true), vec2<bool>(true, all(vec4<bool>(true, false, true, true))), !func_1(vec2<u32>(14193u, var_0.x), Struct_1(true, vec4<u32>(u_input.a.x, u_input.c.x, var_0.x, var_0.x), var_0.x, vec3<i32>(0i, var_1, 5666i)), vec2<f32>(553f, 173f))), func_4(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1000f, -259f, 1000f, 1064f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-977f, 181f, -290f, -624f)), func_4(vec4<f32>(203f, 1000f, 653f, -1118f), Struct_1(false, vec4<u32>(u_input.a.x, var_0.x, 4294967295u, var_0.x), var_0.x, vec3<i32>(-3923i, -60954i, var_1)), vec2<i32>(-1i, 2147483647i), Struct_1(true, vec4<u32>(u_input.a.x, 29084u, u_input.a.x, 41228u), 20928u, vec3<i32>(-2147483647i, 18028i, 1i))).b.a.x)), func_2(reverseBits(u_input.a.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(693f, -1000f, -1576f) + vec3<f32>(-1103f, 1268f, -141f)), -378f), ~vec2<i32>(0i, var_1), Struct_1(true, vec4<u32>(41336u, u_input.c.x, u_input.a.x, var_0.x) | vec4<u32>(33733u, u_input.a.x, 52099u, 81940u), _wgslsmith_sub_u32(74824u, 28226u), -vec3<i32>(u_input.b, 8598i, 30184i))).b, u_input.a, _wgslsmith_mod_i32(1i, var_1)), vec4<u32>(10271u, 46543u << (_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(var_0.yx, u_input.a.yz), _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, u_input.a.x, 81462u, u_input.c.x), vec4<u32>(294u, 14076u, u_input.a.x, u_input.c.x))) % 32u), u_input.a.x, 32596u), !select(!select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true)), select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true)), false));
    var_0 = vec4<u32>(~(~var_0.x), var_2.b.e.x, func_2(select(var_0.x, _wgslsmith_add_u32(42266u, 11279u), false) >> (38669u % 32u), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.b.d, var_2.b.d, -222f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.b.d, -106f, -1772f))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(-597f)), _wgslsmith_f_op_f32(var_2.b.d - _wgslsmith_f_op_f32(var_2.b.d * var_2.b.d)), true))).c, ~(~(~4294967295u)));
    var_0 = ~(~var_2.b.c.b);
    var var_3 = Struct_4(var_2);
    let var_4 = var_3.a.b.d != func_5(var_3.a, reverseBits(reverseBits(vec4<u32>(var_3.a.b.c.b.x, var_3.a.c.x, 172u, var_0.x) | var_3.a.b.c.b)), vec4<bool>(!var_2.a.x && (var_2.b.c.a & false), -11199i < u_input.b, true, func_2(var_3.a.c.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1180f, -1672f, var_2.b.d)), -732f).a)).b.d;
    let x = u_input.a;
    s_output = StorageBuffer(~16885u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -937f) * _wgslsmith_div_f32(-1000f, var_2.b.d)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_3.a.b.d, -3052f, true))))), vec2<u32>(var_0.x << (var_2.b.c.b.x % 32u), ~max(var_3.a.b.b, 56164u | u_input.a.x)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(var_2.b.d + _wgslsmith_f_op_f32(select(340f, var_3.a.b.d, true))), -948f, _wgslsmith_f_op_f32(var_2.b.d * -375f), func_5(func_5(Struct_3(vec2<bool>(var_4, true), var_2.b, var_0.zzz, 1i), var_3.a.b.c.b, var_2.b.a), _wgslsmith_mult_vec4_u32(vec4<u32>(39416u, 1u, 4294967295u, 0u), vec4<u32>(0u, 4294967295u, u_input.a.x, u_input.a.x)), !var_2.b.a).b.d), vec4<f32>(var_2.b.d, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_2.b.d + -1484f))), _wgslsmith_f_op_f32(f32(-1f) * -317f), 1434f))));
}

