struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: u32,
    d: vec4<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec2<i32>,
    c: vec4<bool>,
    d: i32,
    e: vec4<f32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: vec4<bool>,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: vec2<u32>) -> vec2<i32> {
    var var_0 = Struct_1(countOneBits(vec2<i32>(reverseBits(u_input.a.x) << (_wgslsmith_div_u32(1u, 4294967295u) % 32u), u_input.a.x)), all(vec2<bool>(false, -u_input.a.x != (u_input.a.x << (32046u % 32u)))), ~_wgslsmith_add_u32(abs(countOneBits(u_input.b.x)), 36467u), !select(vec4<bool>(true, true, true, false), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), false), vec4<bool>(all(vec2<bool>(true, false)), all(vec2<bool>(false, false)), all(vec4<bool>(false, false, true, false)), true)));
    let var_1 = var_0.b;
    var var_2 = Struct_2(vec3<f32>(2027f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-831f + 1000f) - 447f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1142f))))), _wgslsmith_mod_vec2_i32(var_0.a, min(vec2<i32>(countOneBits(16856i), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, var_0.a.x, 17890i), vec4<i32>(29981i, u_input.a.x, u_input.a.x, u_input.a.x))), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a.x, 76i), firstTrailingBit(var_0.a)))), vec4<bool>(!var_0.b, var_0.b | all(vec3<bool>(var_0.d.x, var_0.d.x, false)), false, false), var_0.a.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(894f, -888f, 515f, -1291f)) + vec4<f32>(216f, _wgslsmith_f_op_f32(f32(-1f) * -660f), _wgslsmith_f_op_f32(round(302f)), _wgslsmith_div_f32(-1000f, 204f)))));
    var var_3 = u_input.a;
    let var_4 = Struct_3(true, Struct_1(min(max(vec2<i32>(2147483647i, -2147483647i) << (u_input.b.yz % vec2<u32>(32u)), ~var_3.xz), u_input.a.yz), any(var_0.d) | var_0.b, 4294967295u, select(var_0.d, var_0.d, true)), vec4<bool>(true, true, false, var_0.b), vec4<i32>(~(-1i), abs(-2147483647i), max(~(-var_2.d), firstTrailingBit(_wgslsmith_add_i32(-2147483647i, u_input.a.x))), 0i >> (_wgslsmith_dot_vec2_u32(u_input.b.xw & arg_0, ~vec2<u32>(29513u, arg_0.x)) % 32u)));
    return select(vec2<i32>(_wgslsmith_add_i32(-(~46683i), var_4.b.a.x), _wgslsmith_dot_vec3_i32(~vec3<i32>(var_2.d, var_2.b.x, var_4.b.a.x), var_4.d.xxw)), u_input.a.zz, select(select(select(select(vec2<bool>(false, var_2.c.x), var_2.c.wx, true), !vec2<bool>(var_4.a, var_4.a), !var_4.a), !var_0.d.xz, vec2<bool>(true, var_0.d.x)), vec2<bool>(true, false), true));
}

fn func_4(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: Struct_2) -> f32 {
    let var_0 = u_input.a;
    let var_1 = ~max(u_input.b.x ^ countOneBits(41636u), 1u);
    var var_2 = select(!vec3<bool>(select(arg_0.c.x, arg_2.c.x, true), true, !(!arg_0.c.x)), vec3<bool>(true, -1000f > arg_2.a.x, true), select(arg_2.c.x, arg_0.c.x, !arg_0.c.x));
    let var_3 = ~_wgslsmith_mult_vec3_i32(u_input.a, firstLeadingBit(firstTrailingBit(min(var_0, vec3<i32>(-14506i, -2147483647i, 2147483647i)))));
    var_2 = vec3<bool>(false, true, all(!vec3<bool>(true, select(false, var_2.x, true), any(vec4<bool>(var_2.x, true, true, true)))));
    return _wgslsmith_f_op_f32(max(arg_2.a.x, 331f));
}

fn func_2() -> vec3<i32> {
    let var_0 = Struct_2(vec3<f32>(853f, -991f, _wgslsmith_f_op_f32(func_4(Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(340f, -728f, 138f)), vec2<i32>(21859i, u_input.a.x), vec4<bool>(true, true, true, true), u_input.a.x, _wgslsmith_f_op_vec4_f32(vec4<f32>(-262f, 465f, 2057f, -192f) + vec4<f32>(-819f, 205f, -1177f, -2114f))), _wgslsmith_mod_vec2_i32(~u_input.a.zy, func_3(vec2<u32>(67353u, u_input.b.x))), Struct_2(vec3<f32>(399f, -1265f, 544f), vec2<i32>(-2147483647i, -47074i), vec4<bool>(false, true, false, true), u_input.a.x << (0u % 32u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-450f, 1000f, -728f, 1393f)))))), -u_input.a.zz, select(vec4<bool>(true, true, true, all(vec4<bool>(true, true, true, true))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), any(vec4<bool>(true, true, true, true))), any(select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false)), vec4<bool>(false, true, false, false), true))), -u_input.a.x, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(645f * 395f) - _wgslsmith_f_op_f32(sign(1230f))) * 860f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -701f))) * _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(365f, -655f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1293f), 907f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1605f + -1000f)) * _wgslsmith_f_op_f32(trunc(731f)))));
    var var_1 = 0i;
    var var_2 = all(vec3<bool>(var_0.c.x, any(var_0.c), !(!any(vec4<bool>(true, true, var_0.c.x, false)))));
    let var_3 = Struct_1(-(vec2<i32>(-1i) * -u_input.a.xy), true, 15318u, var_0.c);
    let var_4 = all(vec4<bool>(~u_input.b.x >= ~24592u, -17739i <= _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(var_0.b, var_3.a), 1i), any(select(var_3.d.yxy, select(var_3.d.yyx, vec3<bool>(false, var_0.c.x, true), var_0.c.x), true)), false));
    return firstLeadingBit(select(firstTrailingBit(select(u_input.a, u_input.a | vec3<i32>(-23095i, var_3.a.x, u_input.a.x), vec3<bool>(var_4, var_0.c.x, false))), vec3<i32>(_wgslsmith_mod_i32(1i, -var_0.b.x), u_input.a.x, ~41342i), var_3.d.wzz));
}

fn func_5(arg_0: vec3<i32>, arg_1: vec2<f32>) -> Struct_2 {
    let var_0 = ~_wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(u_input.b.zwy, ~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, 4294967295u), vec3<u32>(4294967295u, 0u, 1u))), max(select(~vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), reverseBits(u_input.b.yxw), true), vec3<u32>(_wgslsmith_dot_vec2_u32(u_input.b.zz, u_input.b.yz), ~0u, u_input.b.x)));
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(625f)) * _wgslsmith_f_op_f32(arg_1.x * arg_1.x)), arg_1.x, 668f) * _wgslsmith_f_op_vec3_f32(step(vec3<f32>(145f, arg_1.x, _wgslsmith_f_op_f32(round(arg_1.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1168f, -657f, -1000f) + vec3<f32>(-907f, 1000f, -569f)))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_1.x, 770f, 492f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, 1510f, arg_1.x)), select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), false))) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(995f, 949f, -1506f) * vec3<f32>(arg_1.x, 252f, 1636f)))))));
    var var_2 = 856f;
    var var_3 = Struct_1(~vec2<i32>(~max(1i, 2147483647i), _wgslsmith_dot_vec2_i32(~arg_0.zy, vec2<i32>(82276i, u_input.a.x))), select(u_input.a.x != u_input.a.x, any(vec3<bool>(false, false, false)) | (-1130f > _wgslsmith_div_f32(-667f, arg_1.x)), false), abs(0u) ^ _wgslsmith_dot_vec4_u32(reverseBits(~vec4<u32>(0u, 3630u, 4294967295u, u_input.b.x)), vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, var_0.x) >> (u_input.b % vec4<u32>(32u))), !vec4<bool>(any(vec2<bool>(true, false)), !(arg_0.x > u_input.a.x), any(vec3<bool>(true, true, true)), select(0i, arg_0.x, true) == 1640i));
    return Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1208f, -1382f, 1000f))) + var_1) * vec3<f32>(_wgslsmith_div_f32(-240f, 1089f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(489f, arg_1.x) - _wgslsmith_f_op_f32(707f + arg_1.x)), _wgslsmith_f_op_f32(-463f - arg_1.x))), vec2<i32>(_wgslsmith_add_i32(-u_input.a.x, firstTrailingBit(reverseBits(-67532i))), ~_wgslsmith_dot_vec3_i32(u_input.a, u_input.a)), select(!vec4<bool>(var_3.b, true, var_3.d.x, false), select(var_3.d, !var_3.d, var_3.d), var_3.b), arg_0.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(-arg_1.x)), _wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) + _wgslsmith_f_op_f32(arg_1.x * 785f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-316f + var_1.x), 1000f))));
}

fn func_1(arg_0: Struct_3, arg_1: i32, arg_2: vec2<i32>, arg_3: Struct_1) -> i32 {
    let var_0 = func_5(select(func_2(), min(_wgslsmith_div_vec3_i32(vec3<i32>(arg_2.x, 28852i, -33666i) ^ arg_0.d.wyx, _wgslsmith_add_vec3_i32(arg_0.d.wyy, arg_0.d.wxw)), u_input.a), select(select(!arg_3.d.zxw, arg_0.b.d.zww, !vec3<bool>(arg_3.d.x, arg_3.b, arg_0.a)), !vec3<bool>(arg_0.a, arg_3.d.x, true), true)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-382f, -1000f))), select(vec2<bool>(arg_0.a, true), arg_0.b.d.yw, select(vec2<bool>(arg_3.b, arg_0.a), vec2<bool>(arg_0.a, arg_0.a), arg_3.b))))));
    let var_1 = max(u_input.a, vec3<i32>(-36527i, arg_1, select(max(var_0.b.x, -1i), 37558i, !arg_0.a) & max(arg_2.x, i32(-1i) * -6606i)));
    let var_2 = _wgslsmith_add_vec3_i32(arg_0.d.wwy, abs(vec3<i32>(-1i, ~abs(u_input.a.x), _wgslsmith_sub_i32(35005i, func_3(u_input.b.xw).x))));
    var var_3 = var_0;
    let var_4 = _wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_add_i32(~1i >> (1u % 32u), -abs(2147483647i)), 1i, ~max(arg_0.b.a.x, 1i), u_input.a.x), vec4<i32>(7095i, 27948i, countOneBits(arg_1) << (1u % 32u), _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(0i, u_input.a.x, 0i, arg_3.a.x), arg_0.d), -vec4<i32>(13672i, arg_1, -13149i, 69201i))) << (~(~(~vec4<u32>(38171u, arg_3.c, arg_3.c, arg_0.b.c))) % vec4<u32>(32u)), _wgslsmith_sub_vec4_i32(arg_0.d, arg_0.d));
    return i32(-1i) * -1i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -vec2<i32>(_wgslsmith_add_i32(countOneBits(u_input.a.x), func_1(Struct_3(true, Struct_1(vec2<i32>(u_input.a.x, -1i), true, u_input.b.x, vec4<bool>(true, false, false, false)), vec4<bool>(true, true, false, false), vec4<i32>(1i, -2606i, -25512i, u_input.a.x)), _wgslsmith_mult_i32(1i, u_input.a.x), select(vec2<i32>(-2147483647i, u_input.a.x), vec2<i32>(-2655i, 1i), true), Struct_1(u_input.a.xz, true, 15680u, vec4<bool>(false, false, false, false)))), u_input.a.x);
    var var_1 = func_5(~vec3<i32>(u_input.a.x, -2147483647i, -39630i), vec2<f32>(-239f, -1428f));
    var_1 = Struct_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1154f, var_1.a.x, 1068f))) - var_1.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1256f, var_1.a.x, var_1.e.x) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.e.x, 581f, -1268f))))), -(~vec2<i32>(-7611i, var_0.x)), var_1.c, -52175i, _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(var_1.e.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.e.x * var_1.e.x)), -1000f) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1000f, var_1.a.x, 1875f, var_1.a.x)))))));
    var var_2 = any(!func_5(min(-vec3<i32>(u_input.a.x, var_1.d, var_0.x), u_input.a), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a.x, var_1.e.x)) * var_1.e.xx)).c.wxy);
    var_0 = var_1.b;
    let var_3 = var_1.c.xyz;
    let x = u_input.a;
    s_output = StorageBuffer(func_2().x, -func_5(vec3<i32>(_wgslsmith_sub_i32(u_input.a.x, 0i), var_1.d, 1i), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(var_1.e.xx, var_1.e.zy) - vec2<f32>(var_1.a.x, 1000f))).d);
}

