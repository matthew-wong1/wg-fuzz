struct Struct_1 {
    a: vec2<bool>,
    b: vec3<bool>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: f32,
    d: i32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec2<i32>,
    c: u32,
    d: vec3<u32>,
    e: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: u32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: u32) -> i32 {
    var var_0 = _wgslsmith_mult_vec3_u32(firstLeadingBit(~((vec3<u32>(0u, 21614u, arg_0) >> (vec3<u32>(14145u, arg_0, 7569u) % vec3<u32>(32u))) | vec3<u32>(u_input.a.x, 36999u, arg_0))), (~(~vec3<u32>(u_input.a.x, 67420u, 49696u)) & ~abs(vec3<u32>(4294967295u, 63006u, 1u))) << (_wgslsmith_clamp_vec3_u32(vec3<u32>(~4294967295u, 37174u, arg_0), vec3<u32>(u_input.a.x, _wgslsmith_mod_u32(arg_0, 46213u), arg_0), abs(vec3<u32>(u_input.a.x, 4294967295u, 21724u)) & vec3<u32>(u_input.a.x, arg_0, u_input.a.x)) % vec3<u32>(32u)));
    var_0 = abs(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a.x, arg_0, min(4294967295u, 4294967295u)), vec3<u32>(_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(0u, 0u, 31280u)), countOneBits(vec3<u32>(arg_0, 1u, u_input.a.x))), min(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, u_input.a.x, u_input.a.x, 0u), vec4<u32>(u_input.a.x, 1u, arg_0, arg_0)), 13120u), var_0.x)));
    var var_1 = -34608i;
    var_1 = abs(0i);
    var var_2 = Struct_1(select(select(select(vec2<bool>(true, false), vec2<bool>(true, true), true), vec2<bool>(true, 29214u == arg_0), true), vec2<bool>(true, select(false, false, false)), all(!select(vec2<bool>(false, false), vec2<bool>(true, true), true))), !vec3<bool>(all(vec3<bool>(true, true, true)), true, true), select(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false)), select(vec2<bool>(false, true), vec2<bool>(true, false), true))), select(!select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false)), select(select(vec2<bool>(true, false), vec2<bool>(false, false), true), vec2<bool>(true, true), all(vec3<bool>(false, true, true))), vec2<bool>(false, false)), vec2<bool>(all(vec2<bool>(true, true)), !(0u > arg_0))));
    return -38680i;
}

fn func_2(arg_0: vec3<f32>, arg_1: vec4<i32>, arg_2: u32) -> Struct_1 {
    let var_0 = Struct_3(arg_1.xx, firstLeadingBit(abs(_wgslsmith_div_vec2_i32(vec2<i32>(arg_1.x, arg_1.x), -vec2<i32>(arg_1.x, 2147483647i)))), min(_wgslsmith_sub_u32(firstTrailingBit(1u), 1u), ~(~(47959u & u_input.a.x))), vec3<u32>(_wgslsmith_dot_vec3_u32(~min(vec3<u32>(u_input.a.x, 4294967295u, arg_2), vec3<u32>(arg_2, 32761u, arg_2)), vec3<u32>(abs(u_input.a.x), _wgslsmith_add_u32(35767u, u_input.a.x), u_input.a.x)), arg_2, firstTrailingBit(~(~807u))), true);
    var var_1 = 64709i ^ var_0.a.x;
    let var_2 = vec4<i32>(~(-14103i), -2147483647i, -19417i, 1i) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(~55582u, u_input.a.x, _wgslsmith_mod_u32(var_0.d.x, 71869u), var_0.c) ^ countOneBits(abs(vec4<u32>(var_0.d.x, 4600u, 12718u, 0u))), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, arg_2, u_input.a.x), ~vec4<u32>(arg_2, arg_2, 12904u, 4294967295u)) >> (vec4<u32>(42467u, 0u, arg_2, u_input.a.x) % vec4<u32>(32u)), ~(~vec4<u32>(u_input.a.x, 4294967295u, 987u, arg_2)) | _wgslsmith_sub_vec4_u32(select(vec4<u32>(0u, 96602u, 82498u, 0u), vec4<u32>(arg_2, arg_2, 4294967295u, 44150u), vec4<bool>(true, false, false, var_0.e)), ~vec4<u32>(arg_2, 7805u, 1u, 4294967295u))) % vec4<u32>(32u));
    var_1 = max(~(~var_0.a.x), _wgslsmith_add_i32(44780i, _wgslsmith_mult_i32(0i, _wgslsmith_div_i32(arg_1.x, 6482i & arg_1.x))));
    var_1 = func_3(~arg_2 << (arg_2 % 32u));
    return Struct_1(vec2<bool>(true, var_0.e), select(vec3<bool>(false, true, var_0.e), select(!vec3<bool>(var_0.e, false, var_0.e), select(select(vec3<bool>(var_0.e, false, var_0.e), vec3<bool>(true, true, var_0.e), vec3<bool>(true, false, false)), select(vec3<bool>(true, var_0.e, true), vec3<bool>(false, var_0.e, var_0.e), vec3<bool>(false, false, var_0.e)), true), vec3<bool>(any(vec2<bool>(var_0.e, false)), any(vec4<bool>(var_0.e, var_0.e, false, var_0.e)), true)), var_0.e), !vec2<bool>(any(!vec4<bool>(var_0.e, false, var_0.e, var_0.e)), !var_0.e && !var_0.e));
}

fn func_4(arg_0: Struct_3, arg_1: f32, arg_2: Struct_2, arg_3: Struct_2) -> Struct_2 {
    var var_0 = select(u_input.b, ~u_input.b, !any(vec4<bool>(true, false, false, arg_3.c > -1378f)));
    var var_1 = arg_3;
    var var_2 = Struct_2(Struct_1(!vec2<bool>(arg_1 < arg_2.c, 0u <= u_input.a.x), vec3<bool>(arg_2.a.b.x, true, true), select(select(vec2<bool>(arg_0.e, arg_0.e), !arg_2.a.a, !vec2<bool>(arg_3.a.a.x, false)), arg_2.a.c, arg_3.a.c.x)), select(-var_0.zxy, arg_3.b, vec3<bool>(!var_1.a.a.x, any(vec4<bool>(false, true, true, arg_0.e)), all(vec4<bool>(var_1.a.a.x, arg_3.a.a.x, true, true)))), arg_3.c, arg_0.a.x & _wgslsmith_add_i32(1i, var_0.x));
    var var_3 = ~select(arg_0.d, arg_0.d, !arg_2.a.b) << (abs(arg_0.d >> (min(arg_0.d, vec3<u32>(u_input.a.x, arg_0.d.x, arg_0.c)) % vec3<u32>(32u))) % vec3<u32>(32u));
    var var_4 = vec3<bool>(arg_2.c <= _wgslsmith_f_op_f32(sign(arg_3.c)), !all(var_1.a.b), var_2.a.a.x);
    return Struct_2(var_1.a, -vec3<i32>(arg_3.b.x, _wgslsmith_dot_vec3_i32(vec3<i32>(-31527i, 14772i, -1i), var_1.b | arg_2.b), u_input.b.x), 230f, var_2.b.x);
}

fn func_5(arg_0: i32, arg_1: Struct_2, arg_2: Struct_1) -> bool {
    var var_0 = arg_2.a.x;
    var_0 = any(!(!select(func_2(vec3<f32>(arg_1.c, arg_1.c, arg_1.c), vec4<i32>(4834i, -24724i, -2147483647i, 36788i), 74990u).b, vec3<bool>(false, arg_2.a.x, arg_2.b.x), select(arg_1.a.b, arg_1.a.b, vec3<bool>(arg_1.a.c.x, false, arg_2.b.x)))));
    let var_1 = func_2(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(492f, arg_1.c), 1f, 1635f)))), vec4<i32>(_wgslsmith_div_i32(arg_0, arg_0), select(arg_1.d, arg_0, all(arg_1.a.a)), arg_1.d, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -u_input.b, -_wgslsmith_mod_vec4_i32(u_input.b, vec4<i32>(45826i, arg_0, arg_0, 8366i)))), u_input.a.x);
    let var_2 = Struct_3(u_input.b.wy, ~_wgslsmith_sub_vec2_i32(vec2<i32>(arg_1.b.x, arg_0), vec2<i32>(-27688i, func_3(u_input.a.x))), ~(~u_input.a.x), countOneBits(_wgslsmith_sub_vec3_u32(abs(~vec3<u32>(1u, u_input.a.x, 1u)), ~vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x))), !all(vec4<bool>(true, true, arg_2.b.x, false)));
    var_0 = (arg_1.c < arg_1.c) | !any(select(!var_1.c, vec2<bool>(var_2.e, false), !vec2<bool>(var_2.e, arg_1.a.c.x)));
    return (false || (false || arg_1.a.c.x)) & !select(all(vec4<bool>(false, var_1.b.x, true, true)), arg_1.a.a.x, false);
}

fn func_1(arg_0: Struct_3, arg_1: Struct_2) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_f32(floor(410f));
    let var_1 = Struct_1(select(vec2<bool>(any(select(arg_1.a.b, vec3<bool>(true, false, arg_1.a.b.x), vec3<bool>(true, true, arg_0.e))), arg_1.a.a.x), arg_1.a.c, vec2<bool>(!(var_0 >= var_0), false)), !(!arg_1.a.b), select(!vec2<bool>(true, any(vec4<bool>(true, arg_1.a.a.x, false, arg_1.a.a.x))), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(arg_0.e, arg_1.a.a.x)));
    let var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-arg_1.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -856f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.c) - _wgslsmith_f_op_f32(floor(-865f)))), _wgslsmith_f_op_f32(-311f * arg_1.c)) + _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_1.c, arg_1.c, -350f)))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 - -813f)), 1291f, arg_1.c))));
    let var_3 = func_5(arg_1.d, func_4(arg_0, var_0, Struct_2(func_2(var_2, vec4<i32>(u_input.b.x, u_input.b.x, 1i, arg_0.a.x) << (vec4<u32>(arg_0.d.x, u_input.a.x, 27471u, u_input.a.x) % vec4<u32>(32u)), 32955u), -(~u_input.b.yzz), -258f, -48106i), Struct_2(func_2(_wgslsmith_f_op_vec3_f32(var_2 + var_2), _wgslsmith_mod_vec4_i32(u_input.b, u_input.b), 1u), max(arg_1.b, arg_1.b), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -580f))), firstTrailingBit(65426i ^ arg_0.b.x))), Struct_1(!arg_1.a.b.yz, select(!vec3<bool>(arg_1.a.b.x, var_1.a.x, arg_1.a.b.x), arg_1.a.b, !func_2(vec3<f32>(var_2.x, var_0, arg_1.c), vec4<i32>(arg_1.b.x, -56206i, 2147483647i, u_input.b.x), 0u).b.x), vec2<bool>(false, true)));
    let var_4 = select(vec4<bool>(firstLeadingBit(firstLeadingBit(4294967295u)) < (4294967295u ^ select(arg_0.c, 4294967295u, false)), select(true && arg_1.a.b.x, true, true), arg_1.a.c.x | (var_1.b.x | arg_0.e), arg_0.e), !select(vec4<bool>(arg_1.c <= var_0, var_1.a.x, false, any(var_1.b.xy)), !select(vec4<bool>(var_1.a.x, true, arg_0.e, var_3), vec4<bool>(true, true, arg_0.e, true), vec4<bool>(var_1.a.x, var_1.c.x, false, arg_1.a.b.x)), any(vec4<bool>(var_1.a.x, true, true, true))), any(select(!select(arg_1.a.b, vec3<bool>(false, arg_1.a.a.x, var_3), arg_1.a.b), !arg_1.a.b, func_2(vec3<f32>(-1213f, -846f, var_0), firstTrailingBit(vec4<i32>(-8393i, arg_1.b.x, u_input.b.x, u_input.b.x)), ~4294967295u).b)));
    return vec2<bool>(select(false, func_5(~(-2147483647i), arg_1, func_2(var_2, vec4<i32>(1i, -24843i, -25926i, -21922i), _wgslsmith_sub_u32(u_input.a.x, 4294967295u))), arg_1.a.b.x), true);
}

fn func_6(arg_0: bool, arg_1: Struct_1, arg_2: vec3<i32>) -> f32 {
    let var_0 = Struct_2(arg_1, arg_2, _wgslsmith_f_op_f32(select(-631f, _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(round(394f))), u_input.a.x >= ~(~29314u))), u_input.b.x);
    let var_1 = vec4<i32>(u_input.b.x, -arg_2.x, _wgslsmith_mod_i32(func_4(Struct_3(var_0.b.xz, var_0.b.zz, u_input.a.x, vec3<u32>(0u, u_input.a.x, 4294967295u), arg_1.b.x), _wgslsmith_f_op_f32(f32(-1f) * -1772f), var_0, var_0).b.x, firstLeadingBit(var_0.d | var_0.d)), var_0.d) ^ u_input.b;
    var var_2 = 82u;
    let var_3 = !var_0.a.b.x;
    var_2 = ~_wgslsmith_dot_vec3_u32(~(~firstTrailingBit(vec3<u32>(u_input.a.x, 0u, 0u))), vec3<u32>(_wgslsmith_mod_u32(~50594u, ~22699u), _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 1u)), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 0u) >> (vec4<u32>(4294967295u, u_input.a.x, 39968u, 6779u) % vec4<u32>(32u))), 79105u));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(254f * var_0.c))) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1445f + var_0.c), _wgslsmith_f_op_f32(-var_0.c), var_0.c <= -610f)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(true, ~(~0u) > u_input.a.x, -1i <= _wgslsmith_add_i32(2147483647i, ~_wgslsmith_sub_i32(u_input.b.x, -1i)));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_6(select(var_0.x, var_0.x, true), Struct_1(vec2<bool>(false, true), vec3<bool>(true, true, true), func_1(Struct_3(vec2<i32>(-1i, 1i), u_input.b.yz, 4294967295u, vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x), var_0.x), Struct_2(Struct_1(vec2<bool>(true, false), vec3<bool>(var_0.x, var_0.x, var_0.x), var_0.zy), vec3<i32>(u_input.b.x, u_input.b.x, -9142i), -198f, 0i))), -reverseBits(u_input.b.xzy)))) + -259f);
    let var_2 = select(select(select(vec3<bool>(any(vec4<bool>(var_0.x, var_0.x, var_0.x, true)), var_0.x, !var_0.x), vec3<bool>(true, true, var_0.x), !var_0.x), !vec3<bool>(!var_0.x, var_0.x & false, var_0.x), var_0.x), select(select(select(!vec3<bool>(var_0.x, var_0.x, false), vec3<bool>(true, true, true), vec3<bool>(var_0.x, var_0.x, var_0.x)), !(!vec3<bool>(var_0.x, var_0.x, false)), false), func_4(Struct_3(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.b.x, 907i), u_input.b.wy), _wgslsmith_clamp_vec2_i32(u_input.b.wz, vec2<i32>(-2147483647i, 2147483647i), vec2<i32>(1i, u_input.b.x)), ~u_input.a.x, reverseBits(vec3<u32>(u_input.a.x, 47738u, u_input.a.x)), var_1 <= var_1), _wgslsmith_f_op_f32(var_1 * func_4(Struct_3(vec2<i32>(u_input.b.x, -1i), u_input.b.yx, 28187u, vec3<u32>(118410u, 25498u, 0u), var_0.x), -953f, Struct_2(Struct_1(vec2<bool>(var_0.x, false), vec3<bool>(false, var_0.x, var_0.x), vec2<bool>(false, true)), u_input.b.wyx, -1138f, u_input.b.x), Struct_2(Struct_1(vec2<bool>(var_0.x, var_0.x), vec3<bool>(var_0.x, var_0.x, false), var_0.yy), u_input.b.zzx, var_1, 1i)).c), func_4(Struct_3(vec2<i32>(u_input.b.x, u_input.b.x), u_input.b.zy, u_input.a.x, vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x), false), _wgslsmith_f_op_f32(-var_1), Struct_2(Struct_1(vec2<bool>(var_0.x, true), vec3<bool>(true, var_0.x, false), var_0.yy), vec3<i32>(1i, u_input.b.x, 50749i), var_1, u_input.b.x), func_4(Struct_3(vec2<i32>(u_input.b.x, 11820i), vec2<i32>(u_input.b.x, u_input.b.x), u_input.a.x, vec3<u32>(u_input.a.x, u_input.a.x, 11494u), var_0.x), -2190f, Struct_2(Struct_1(vec2<bool>(var_0.x, false), vec3<bool>(var_0.x, var_0.x, true), var_0.yz), vec3<i32>(-1i, 46202i, 51299i), -229f, -2147483647i), Struct_2(Struct_1(var_0.zy, vec3<bool>(false, false, var_0.x), vec2<bool>(var_0.x, var_0.x)), vec3<i32>(u_input.b.x, 1i, 1928i), var_1, 59208i))), func_4(Struct_3(u_input.b.xx, vec2<i32>(u_input.b.x, 1i), u_input.a.x, vec3<u32>(u_input.a.x, 0u, 4294967295u), var_0.x), _wgslsmith_f_op_f32(round(var_1)), func_4(Struct_3(vec2<i32>(0i, 1i), u_input.b.zz, u_input.a.x, vec3<u32>(0u, u_input.a.x, u_input.a.x), true), var_1, Struct_2(Struct_1(var_0.yx, vec3<bool>(var_0.x, true, var_0.x), var_0.yx), vec3<i32>(u_input.b.x, 0i, u_input.b.x), 199f, u_input.b.x), Struct_2(Struct_1(vec2<bool>(var_0.x, var_0.x), vec3<bool>(var_0.x, true, var_0.x), var_0.xy), vec3<i32>(-46394i, 2147483647i, 1i), 1000f, u_input.b.x)), func_4(Struct_3(u_input.b.yx, u_input.b.yx, u_input.a.x, vec3<u32>(0u, 6239u, u_input.a.x), var_0.x), 1024f, Struct_2(Struct_1(var_0.xy, vec3<bool>(var_0.x, true, true), vec2<bool>(true, var_0.x)), vec3<i32>(-1i, 1863i, 0i), var_1, u_input.b.x), Struct_2(Struct_1(var_0.yx, vec3<bool>(var_0.x, var_0.x, var_0.x), vec2<bool>(true, var_0.x)), u_input.b.yzx, -1333f, u_input.b.x)))).a.b, _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, 0u, 1u), vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, 317u)), 30378u) > 8028u), false);
    var var_3 = Struct_2(Struct_1(func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-373f, var_1, -929f) - vec3<f32>(-1413f, -620f, 816f))), -vec4<i32>(u_input.b.x, -1543i, -35700i, u_input.b.x), max(_wgslsmith_div_u32(u_input.a.x, u_input.a.x), _wgslsmith_clamp_u32(46250u, u_input.a.x, 1u))).b.zy, select(vec3<bool>(false, var_0.x, true), !vec3<bool>(true, false, var_0.x), true), !(!var_2.yz)), max(_wgslsmith_add_vec3_i32(vec3<i32>(~u_input.b.x, u_input.b.x, ~20981i), u_input.b.yzw), -(vec3<i32>(-1i) * -u_input.b.zxw)), _wgslsmith_f_op_f32(var_1 + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_6(all(vec3<bool>(true, true, var_0.x)), Struct_1(vec2<bool>(var_2.x, var_0.x), var_2, var_0.zx), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b.x, 7920i, 18889i), u_input.b.wyy))) * _wgslsmith_div_f32(var_1, -228f))), _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(max(24007i, 7605i), firstTrailingBit(u_input.b.x)), abs(u_input.b.ww)), 19886i ^ ~(-2147483647i | u_input.b.x)));
    var var_4 = var_3.d;
    var var_5 = Struct_3(-abs(vec2<i32>(var_3.d, u_input.b.x ^ -2147483647i)), vec2<i32>(_wgslsmith_mult_i32(firstLeadingBit(-u_input.b.x), -2147483647i), _wgslsmith_clamp_i32(reverseBits(u_input.b.x), u_input.b.x, reverseBits(_wgslsmith_add_i32(var_3.b.x, -7898i)))), ~_wgslsmith_dot_vec2_u32(max(u_input.a, _wgslsmith_clamp_vec2_u32(u_input.a, vec2<u32>(u_input.a.x, u_input.a.x), vec2<u32>(18439u, 0u))), abs(~u_input.a)), ~countOneBits(_wgslsmith_mult_vec3_u32(vec3<u32>(0u, u_input.a.x, 1671u), vec3<u32>(1u, u_input.a.x, 4294967295u)) ^ min(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<u32>(107360u, 1u, 1u))), func_4(Struct_3(u_input.b.wx & var_3.b.zx, u_input.b.yz >> (_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, u_input.a.x), vec2<u32>(1u, 37376u), u_input.a) % vec2<u32>(32u)), _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.a.x), u_input.a), 20808u), firstLeadingBit(vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u)), (4294967295u <= u_input.a.x) & false), var_3.c, func_4(Struct_3(_wgslsmith_sub_vec2_i32(vec2<i32>(var_3.b.x, u_input.b.x), vec2<i32>(var_3.d, var_3.b.x)), _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.b.x, u_input.b.x), vec2<i32>(-2147483647i, -68562i), var_3.b.yx), ~u_input.a.x, _wgslsmith_clamp_vec3_u32(vec3<u32>(83520u, 1u, u_input.a.x), vec3<u32>(9424u, 74385u, u_input.a.x), vec3<u32>(28269u, 76042u, 0u)), any(var_2.yy)), var_1, func_4(Struct_3(vec2<i32>(1i, -17926i), vec2<i32>(u_input.b.x, var_3.b.x), 0u, vec3<u32>(4294967295u, u_input.a.x, u_input.a.x), var_2.x), _wgslsmith_f_op_f32(round(var_3.c)), Struct_2(var_3.a, vec3<i32>(u_input.b.x, -1i, 0i), 1218f, -36198i), Struct_2(var_3.a, vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x), -1000f, var_3.b.x)), Struct_2(func_2(vec3<f32>(668f, -265f, 1154f), u_input.b, u_input.a.x), var_3.b, var_1, _wgslsmith_sub_i32(-10610i, 1i))), func_4(Struct_3(vec2<i32>(18667i, var_3.d), vec2<i32>(21041i, -24806i), 1u, _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<u32>(99697u, u_input.a.x, u_input.a.x)), var_1 == var_3.c), _wgslsmith_f_op_f32(f32(-1f) * -107f), Struct_2(func_4(Struct_3(vec2<i32>(-2147483647i, u_input.b.x), var_3.b.xz, u_input.a.x, vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), false), 1468f, Struct_2(Struct_1(var_2.zx, vec3<bool>(var_0.x, var_0.x, var_2.x), var_3.a.a), u_input.b.wyz, -130f, 34588i), Struct_2(Struct_1(var_3.a.b.zx, var_2, vec2<bool>(true, true)), u_input.b.zyy, var_3.c, -2147483647i)).a, vec3<i32>(1i, var_3.b.x, -16355i), -220f, u_input.b.x), func_4(Struct_3(var_3.b.xz, vec2<i32>(-20433i, u_input.b.x), 4673u, vec3<u32>(u_input.a.x, 64714u, 73843u), true), -850f, Struct_2(var_3.a, vec3<i32>(-2147483647i, -9428i, var_3.d), 2185f, u_input.b.x), func_4(Struct_3(vec2<i32>(0i, u_input.b.x), vec2<i32>(var_3.d, -25502i), 67415u, vec3<u32>(39390u, u_input.a.x, u_input.a.x), true), -1000f, Struct_2(Struct_1(var_3.a.b.yx, var_2, vec2<bool>(false, var_3.a.b.x)), vec3<i32>(u_input.b.x, var_3.d, u_input.b.x), var_3.c, var_3.b.x), Struct_2(var_3.a, var_3.b, -1771f, var_3.b.x))))).a.a.x);
    var var_6 = vec4<bool>(true, firstLeadingBit(~2147483647i) < _wgslsmith_add_i32((1i << (var_5.c % 32u)) ^ ~57620i, var_5.a.x), !(!var_2.x), !all(var_2));
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<u32>(firstTrailingBit(1u) & 45390u, var_5.c), -189f, _wgslsmith_clamp_u32(0u, 1u, _wgslsmith_add_u32(~(~u_input.a.x), u_input.a.x)), max(-1i, 0i) | var_5.a.x, _wgslsmith_mod_i32(u_input.b.x, var_3.b.x));
}

