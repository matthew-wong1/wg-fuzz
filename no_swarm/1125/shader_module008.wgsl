struct Struct_1 {
    a: f32,
    b: bool,
    c: i32,
    d: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec4<bool>,
    d: vec3<i32>,
    e: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: f32, arg_1: vec2<u32>, arg_2: Struct_2) -> f32 {
    var var_0 = !arg_2.c;
    let var_1 = Struct_1(_wgslsmith_f_op_f32(435f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(arg_2.b, -1851f)))))), true, -14809i, vec3<i32>(-1i) * -vec3<i32>(_wgslsmith_mult_i32(arg_2.a.c, arg_2.d.x), -u_input.a.x, u_input.a.x));
    let var_2 = false;
    var_0 = arg_2.c;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(2190f)), arg_2.b, all(select(vec4<bool>(true, var_1.b, true, var_0.x), arg_2.c, true)))))));
}

fn func_2(arg_0: vec3<u32>) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(-1703f, vec2<u32>(arg_0.x, 1u) << (vec2<u32>(1u, 81446u) % vec2<u32>(32u)), Struct_2(Struct_1(-315f, true, u_input.a.x, vec3<i32>(u_input.a.x, 0i, -11485i)), 938f, vec4<bool>(false, false, true, false), vec3<i32>(u_input.a.x, u_input.b.x, u_input.b.x), 2181f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1128f))))), all(select(select(vec2<bool>(false, true), vec2<bool>(true, true), false), select(vec2<bool>(false, true), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(true, true)), vec2<bool>(true, true))), 2147483647i, ~(~_wgslsmith_clamp_vec3_i32(-vec3<i32>(2147483647i, u_input.a.x, -18537i), -vec3<i32>(0i, u_input.c, u_input.c), vec3<i32>(u_input.b.x, u_input.c, 1i))));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(1064f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(exp2(var_0.a)), true))))), var_0.b, ~countOneBits(~abs(u_input.a.x)), max(-vec3<i32>(0i, -68154i, u_input.b.x), -min(vec3<i32>(var_0.d.x, u_input.a.x, -28309i), vec3<i32>(1i, u_input.c, -2147483647i))) >> (vec3<u32>(max(reverseBits(arg_0.x), 71126u), 0u, ~1u) % vec3<u32>(32u)));
    var_0 = Struct_1(var_1.a, any(vec2<bool>(true, true)), _wgslsmith_sub_i32(abs(var_0.c), -2147483647i), var_0.d | _wgslsmith_sub_vec3_i32(reverseBits(vec3<i32>(-32778i, u_input.c, 2147483647i)), ~(var_1.d ^ var_0.d)));
    var var_2 = vec2<i32>(u_input.b.x, i32(-1i) * -u_input.c);
    var var_3 = Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a * -1144f)) * var_0.a), var_0.b, ~_wgslsmith_add_i32(select(14996i, var_0.c, var_0.b), var_0.c ^ var_0.d.x), var_0.d), var_0.a, select(!vec4<bool>(var_0.b != true, var_0.b, true, any(vec4<bool>(var_0.b, var_1.b, false, var_1.b))), !select(!vec4<bool>(true, var_1.b, var_0.b, var_1.b), vec4<bool>(var_1.b, false, var_1.b, var_1.b), select(vec4<bool>(var_0.b, var_0.b, true, false), vec4<bool>(true, false, true, true), vec4<bool>(var_0.b, var_0.b, var_1.b, var_0.b))), !var_0.b), abs(~(~vec3<i32>(u_input.a.x, 0i, var_0.d.x))), _wgslsmith_f_op_f32(var_1.a - _wgslsmith_f_op_f32(var_1.a + -1000f)));
    return var_3.a;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1397f, _wgslsmith_f_op_f32(f32(-1f) * -191f), 1921f, arg_0.a) * vec4<f32>(402f, -358f, -1265f, -619f))))));
    var var_1 = all(select(arg_1.c.yw, vec2<bool>(true, true), !arg_0.b & true)) & any(select(vec3<bool>(true, true, arg_1.c.x), vec3<bool>(true, true | arg_0.b, !arg_0.b), (arg_0.d.x < arg_0.c) | arg_0.b));
    var var_2 = _wgslsmith_mult_vec3_i32(reverseBits(arg_0.d), arg_0.d) << (select(reverseBits(~abs(vec3<u32>(1126u, u_input.d.x, u_input.d.x))), countOneBits(vec3<u32>(~37764u, _wgslsmith_mult_u32(1u, u_input.d.x), ~4294967295u)), arg_0.b) % vec3<u32>(32u));
    let var_3 = arg_0.a;
    let var_4 = Struct_2(arg_1.a, var_3, select(arg_1.c, vec4<bool>(arg_1.a.b, !arg_0.b | true, -1338f <= arg_1.a.a, any(vec2<bool>(arg_0.b, arg_1.c.x))), u_input.d.x != ~4294967295u), arg_1.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-432f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1010f, arg_0.a))))));
    return Struct_1(arg_0.a, arg_0.b || false, abs(_wgslsmith_clamp_i32(arg_0.c, 1i, _wgslsmith_sub_i32(arg_1.d.x | 2147483647i, -39916i))), -min(arg_0.d, vec3<i32>(_wgslsmith_clamp_i32(arg_1.a.d.x, arg_0.c, var_2.x), firstTrailingBit(-8104i), ~(-2147483647i))));
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    var var_0 = ~36253i;
    var_0 = ~(-28123i);
    var_0 = ~2147483647i;
    var_0 = 2147483647i;
    var_0 = _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(-34738i, 0i, 1i), vec3<i32>(49122i, 43782i, -1i)), select(arg_2.d, vec3<i32>(9104i, 41032i, u_input.a.x), arg_1.c.x)), arg_1.d) & arg_3.c, u_input.a.x);
    return func_4(func_2(_wgslsmith_mod_vec3_u32(firstLeadingBit(vec3<u32>(28712u, 15709u, 0u)) | vec3<u32>(u_input.d.x, 4294967295u, u_input.d.x), ~abs(vec3<u32>(u_input.d.x, 8729u, u_input.d.x)))), arg_1);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_1, arg_3: Struct_2) -> i32 {
    let var_0 = select(arg_3.c.wy, !vec2<bool>(arg_1.c.x, arg_0.b), all(arg_3.c));
    let var_1 = !vec2<bool>(any(vec2<bool>(arg_0.b, u_input.c >= arg_2.c)), any(!vec4<bool>(arg_2.b, var_0.x, true, arg_3.c.x)));
    var var_2 = ~(~(~vec2<u32>(~u_input.d.x, _wgslsmith_mult_u32(1u, 8592u))));
    var var_3 = firstTrailingBit(0i);
    var_2 = u_input.d;
    return firstLeadingBit(~(~arg_0.c) >> ((_wgslsmith_mod_u32(_wgslsmith_mult_u32(u_input.d.x, 1u), 1u) << (~var_2.x % 32u)) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(1639f, all(!(!select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true), false))), _wgslsmith_mult_i32(-2147483647i, func_5(Struct_1(_wgslsmith_f_op_f32(177f - -340f), any(vec2<bool>(false, false)), u_input.c, vec3<i32>(13510i, u_input.a.x, -2900i)), Struct_2(Struct_1(686f, true, -2147483647i, vec3<i32>(u_input.c, u_input.c, u_input.a.x)), _wgslsmith_div_f32(-183f, 1416f), vec4<bool>(false, true, true, true), firstTrailingBit(vec3<i32>(0i, u_input.c, u_input.b.x)), _wgslsmith_f_op_f32(step(-976f, 1000f))), Struct_1(_wgslsmith_f_op_f32(-1268f + -1000f), all(vec2<bool>(false, true)), u_input.a.x >> (u_input.d.x % 32u), -vec3<i32>(-6056i, u_input.a.x, 4555i)), Struct_2(func_1(vec4<f32>(-1260f, -975f, 850f, 645f), Struct_2(Struct_1(564f, false, u_input.b.x, vec3<i32>(u_input.a.x, 6337i, 6416i)), 1037f, vec4<bool>(true, true, true, false), vec3<i32>(-34603i, u_input.b.x, 0i), 1290f), Struct_1(-218f, false, -25029i, vec3<i32>(-1i, u_input.a.x, 2147483647i)), Struct_1(830f, true, 1i, vec3<i32>(u_input.c, 30014i, u_input.b.x))), -1000f, vec4<bool>(true, true, true, true), min(vec3<i32>(-1i, -2147483647i, u_input.b.x), vec3<i32>(u_input.c, u_input.a.x, u_input.b.x)), _wgslsmith_f_op_f32(-606f + 1892f)))), vec3<i32>(u_input.a.x, ~u_input.c, abs(_wgslsmith_sub_i32(i32(-1i) * -22176i, -1i))));
    var var_1 = !func_4(var_0, Struct_2(var_0, _wgslsmith_f_op_f32(-169f - -1092f), vec4<bool>(var_0.b, var_0.c < u_input.a.x, var_0.b, u_input.d.x <= u_input.d.x), vec3<i32>(-17526i, -900i, 0i), func_4(var_0, Struct_2(var_0, 1000f, vec4<bool>(var_0.b, var_0.b, false, true), vec3<i32>(u_input.b.x, u_input.a.x, -8747i), var_0.a)).a)).b;
    var_1 = var_0.b;
    var var_2 = func_1(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.a, -707f, -401f, var_0.a))), Struct_2(func_2(vec3<u32>(0u, 1u, u_input.d.x) ^ max(vec3<u32>(u_input.d.x, u_input.d.x, 4294967295u), vec3<u32>(0u, 69573u, u_input.d.x))), var_0.a, vec4<bool>(var_0.b && var_0.b, all(vec3<bool>(false, var_0.b, true)), !all(vec4<bool>(var_0.b, var_0.b, true, var_0.b)), var_0.b), vec3<i32>(_wgslsmith_mult_i32(var_0.c, var_0.c), func_5(func_4(Struct_1(var_0.a, false, -2147483647i, vec3<i32>(35767i, 2147483647i, var_0.c)), Struct_2(Struct_1(-436f, var_0.b, 14924i, vec3<i32>(12172i, 22307i, var_0.c)), -588f, vec4<bool>(var_0.b, true, true, false), var_0.d, -335f)), Struct_2(Struct_1(-281f, true, -1i, vec3<i32>(42075i, var_0.d.x, var_0.d.x)), -1000f, vec4<bool>(var_0.b, true, false, var_0.b), vec3<i32>(u_input.c, u_input.c, 2147483647i), var_0.a), Struct_1(-954f, true, -2147483647i, vec3<i32>(var_0.d.x, var_0.d.x, 1i)), Struct_2(Struct_1(-305f, var_0.b, -45704i, vec3<i32>(48095i, -16933i, 1i)), -1327f, vec4<bool>(var_0.b, var_0.b, var_0.b, false), var_0.d, 208f)), var_0.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(var_0.a, 468f))))), func_4(var_0, Struct_2(Struct_1(_wgslsmith_f_op_f32(-var_0.a), true, u_input.b.x, var_0.d), _wgslsmith_f_op_f32(-892f + _wgslsmith_div_f32(var_0.a, var_0.a)), select(vec4<bool>(true, true, false, true), vec4<bool>(var_0.b, var_0.b, var_0.b, false), !vec4<bool>(var_0.b, false, var_0.b, false)), var_0.d, func_4(var_0, Struct_2(Struct_1(var_0.a, false, 57273i, var_0.d), var_0.a, vec4<bool>(false, var_0.b, var_0.b, true), vec3<i32>(var_0.c, var_0.d.x, u_input.b.x), var_0.a)).a)), var_0);
    var var_3 = vec4<u32>(~_wgslsmith_div_u32(1u, u_input.d.x), u_input.d.x | u_input.d.x, _wgslsmith_sub_u32(~(~u_input.d.x), 65671u) << (u_input.d.x % 32u), ~(_wgslsmith_add_u32(~u_input.d.x, u_input.d.x & u_input.d.x) | ~6787u));
    let var_4 = Struct_2(func_4(var_0, Struct_2(var_0, var_2.a, select(vec4<bool>(false, var_2.b, var_2.b, true), vec4<bool>(false, true, true, false), select(vec4<bool>(true, var_0.b, false, true), vec4<bool>(var_0.b, var_2.b, true, var_2.b), var_0.b)), _wgslsmith_mod_vec3_i32(vec3<i32>(-7335i, var_2.d.x, u_input.a.x), var_2.d ^ var_2.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_2.a))))), -1704f, select(select(vec4<bool>(any(vec4<bool>(true, true, false, true)), true, func_2(vec3<u32>(37696u, 13313u, 1u)).b, u_input.b.x <= 1i), !vec4<bool>(true, true, var_0.b, false), false), select(!vec4<bool>(var_2.b, false, false, true), !vec4<bool>(false, true, true, var_0.b), var_0.b), any(!select(vec4<bool>(false, true, false, var_0.b), vec4<bool>(false, true, var_0.b, false), var_2.b))), ~abs(vec3<i32>(-1i) * -var_2.d), _wgslsmith_f_op_f32(-func_2(vec3<u32>(var_3.x, 0u, var_3.x)).a));
    var var_5 = var_0.d;
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(select(_wgslsmith_clamp_vec4_u32(~vec4<u32>(1u, var_3.x, 4294967295u, 53464u), min(vec4<u32>(0u, 24432u, 33606u, 37549u), vec4<u32>(0u, 1045u, u_input.d.x, var_3.x)), select(vec4<u32>(0u, var_3.x, var_3.x, 1u), vec4<u32>(var_3.x, var_3.x, 0u, 43133u), var_2.b)), ~vec4<u32>(1737u, var_3.x, var_3.x, 0u), vec4<bool>(var_0.b, func_4(Struct_1(1035f, var_2.b, 0i, var_2.d), Struct_2(Struct_1(238f, true, -6925i, vec3<i32>(-24102i, 0i, 40145i)), -1389f, var_4.c, var_0.d, var_0.a)).b, var_4.c.x, false && var_4.a.b))), _wgslsmith_div_vec4_u32(vec4<u32>(1u, select(66605u, var_3.x, true) >> (u_input.d.x % 32u), _wgslsmith_dot_vec3_u32(var_3.xxy ^ vec3<u32>(var_3.x, u_input.d.x, var_3.x), vec3<u32>(var_3.x, u_input.d.x, 23518u)), _wgslsmith_sub_u32(countOneBits(var_3.x), u_input.d.x)), select(~(~vec4<u32>(1u, 4294967295u, 23155u, 38844u)), ~vec4<u32>(1u, var_3.x, 1u, var_3.x), var_4.c)), var_0.a, 1562f);
}

