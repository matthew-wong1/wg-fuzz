struct Struct_1 {
    a: vec2<bool>,
    b: vec3<f32>,
    c: vec2<u32>,
    d: f32,
    e: u32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<u32>,
    c: vec3<i32>,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 15> = array<Struct_2, 15>(Struct_2(vec3<f32>(807f, -1000f, 1000f), false), Struct_2(vec3<f32>(-756f, 621f, 378f), false), Struct_2(vec3<f32>(-356f, 173f, -1117f), true), Struct_2(vec3<f32>(-571f, 198f, -1000f), false), Struct_2(vec3<f32>(-408f, -1000f, 1434f), true), Struct_2(vec3<f32>(-1971f, -428f, -276f), false), Struct_2(vec3<f32>(-1000f, -2185f, 340f), true), Struct_2(vec3<f32>(-444f, 167f, -1669f), true), Struct_2(vec3<f32>(-279f, 1306f, 360f), false), Struct_2(vec3<f32>(-215f, -1418f, -1000f), false), Struct_2(vec3<f32>(-945f, -507f, -1593f), true), Struct_2(vec3<f32>(916f, -776f, 325f), true), Struct_2(vec3<f32>(2304f, -488f, -1131f), false), Struct_2(vec3<f32>(-295f, -550f, 566f), false), Struct_2(vec3<f32>(-406f, -482f, -2734f), true));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_3, arg_1: Struct_1, arg_2: Struct_4, arg_3: f32) -> vec3<f32> {
    let var_0 = true;
    var var_1 = arg_2;
    global0 = array<Struct_2, 15>();
    let var_2 = reverseBits(_wgslsmith_mult_vec2_u32(_wgslsmith_clamp_vec2_u32(_wgslsmith_mult_vec2_u32(~arg_0.b, var_1.b.b), arg_0.b, arg_1.c), _wgslsmith_sub_vec2_u32(vec2<u32>(~arg_2.b.b.x, 1u | arg_2.b.b.x), max(~arg_2.b.b, arg_2.b.b))));
    var var_3 = Struct_4(select(_wgslsmith_div_vec4_i32(-select(var_1.a, vec4<i32>(0i, 1i, arg_0.c.x, 32305i), false), max(~vec4<i32>(7428i, -16067i, 2147483647i, u_input.b), vec4<i32>(arg_0.c.x, 0i, arg_2.b.c.x, u_input.b))), min(vec4<i32>(-36478i, var_1.a.x, arg_0.c.x | 19051i, -u_input.a), ~(~vec4<i32>(2147483647i, arg_0.c.x, 24340i, -2147483647i))), !arg_0.a.b), Struct_3(arg_2.b.a, max(arg_0.b, ~arg_2.b.b) << (arg_1.c % vec2<u32>(32u)), abs(abs(_wgslsmith_mod_vec3_i32(var_1.a.xww, vec3<i32>(-1i, arg_0.c.x, 0i))))));
    return vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.b.a.a.x) + arg_3), -523f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_3.b.a.a.x - -1071f))));
}

fn func_2(arg_0: vec2<u32>) -> Struct_2 {
    var var_0 = true;
    global0 = array<Struct_2, 15>();
    global0 = array<Struct_2, 15>();
    return Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(func_3(Struct_3(Struct_2(vec3<f32>(494f, -1400f, 516f), true), arg_0, vec3<i32>(u_input.c.x, 0i, u_input.e)), Struct_1(vec2<bool>(false, false), vec3<f32>(-803f, -2078f, 1421f), vec2<u32>(4294967295u, 38902u), 1467f, arg_0.x), Struct_4(vec4<i32>(u_input.e, u_input.c.x, 23241i, u_input.a), Struct_3(Struct_2(vec3<f32>(2913f, 1000f, -1857f), true), vec2<u32>(41147u, arg_0.x), vec3<i32>(u_input.b, -2147483647i, -18792i))), -477f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-487f, -374f, 149f)), vec3<bool>(true, true, true))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(835f, 1188f, 296f)))))), false);
}

fn func_4(arg_0: u32, arg_1: vec4<i32>, arg_2: Struct_2, arg_3: u32) -> Struct_1 {
    let var_0 = Struct_3(Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1018f, -877f, -1108f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.a.x, -1423f, 795f))), !any(vec2<bool>(arg_2.b, arg_2.b))), _wgslsmith_clamp_vec2_u32(reverseBits(~vec2<u32>(arg_0, u_input.d)) << (_wgslsmith_clamp_vec2_u32(~vec2<u32>(29205u, 1u), ~vec2<u32>(arg_3, arg_0), abs(vec2<u32>(u_input.d, u_input.d))) % vec2<u32>(32u)), (select(vec2<u32>(1u, 46059u), vec2<u32>(arg_3, arg_0), vec2<bool>(arg_2.b, false)) | abs(vec2<u32>(u_input.d, 6201u))) >> (_wgslsmith_mod_vec2_u32(~vec2<u32>(0u, u_input.d), vec2<u32>(u_input.d, 0u)) % vec2<u32>(32u)), ~(~(~vec2<u32>(arg_3, 4294967295u)))), select(-abs(arg_1.xxw), -vec3<i32>(2147483647i, -16343i, -33368i), true) & arg_1.wzy);
    var var_1 = vec2<bool>(!arg_2.b, any(!(!vec3<bool>(arg_2.b, arg_2.b, true))) & any(vec2<bool>(var_0.a.b, false)));
    global0 = array<Struct_2, 15>();
    var_1 = !select(select(vec2<bool>(true, true), !select(vec2<bool>(arg_2.b, arg_2.b), vec2<bool>(true, false), vec2<bool>(var_1.x, true)), arg_2.b), vec2<bool>(true, false), false);
    global0 = array<Struct_2, 15>();
    return Struct_1(!(!vec2<bool>(var_0.a.b, false)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.a.a * arg_2.a) + vec3<f32>(arg_2.a.x, 997f, -1179f)))), vec2<u32>(arg_3, ~(_wgslsmith_clamp_u32(var_0.b.x, arg_3, 0u) << (min(var_0.b.x, 4294967295u) % 32u))), 730f, _wgslsmith_clamp_u32(~(~(20494u & u_input.d)), arg_3, 1957u));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_4, arg_2: vec4<i32>, arg_3: vec4<i32>) -> Struct_3 {
    let var_0 = arg_1;
    global0 = array<Struct_2, 15>();
    global0 = array<Struct_2, 15>();
    var var_1 = vec3<u32>(~(~_wgslsmith_sub_u32(~28040u, func_4(1u, var_0.a, arg_1.b.a, var_0.b.b.x).c.x)), _wgslsmith_div_u32(arg_0.e, arg_0.c.x), 1u);
    var var_2 = Struct_3(func_2((~vec2<u32>(u_input.d, 90898u) >> (arg_1.b.b % vec2<u32>(32u))) & _wgslsmith_mod_vec2_u32(~var_0.b.b, countOneBits(arg_0.c))), ~var_1.xy, arg_2.yyx ^ _wgslsmith_mult_vec3_i32(arg_3.ywy, arg_1.a.wxz));
    return Struct_3(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~(~_wgslsmith_sub_u32(4294967295u, var_2.b.x)), 4294967295u), 15u)], vec2<u32>(_wgslsmith_mod_u32(47635u, 273u), 0u), ~min(vec3<i32>(~u_input.b, _wgslsmith_mult_i32(u_input.a, var_0.a.x), -4535i), arg_2.zzx));
}

fn func_6(arg_0: Struct_4, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: Struct_1) -> Struct_3 {
    var var_0 = vec3<i32>(reverseBits(_wgslsmith_add_i32(u_input.b, 1i)), _wgslsmith_mod_i32(-(~(0i ^ arg_0.a.x)), arg_0.b.c.x), _wgslsmith_mult_i32(0i, u_input.a));
    var_0 = _wgslsmith_clamp_vec3_i32(vec3<i32>(~(~(-u_input.a)), -u_input.a, _wgslsmith_dot_vec2_i32(~(u_input.c >> (arg_0.b.b % vec2<u32>(32u))), var_0.xz)), ~_wgslsmith_mod_vec3_i32(arg_0.a.yxw, firstLeadingBit(~vec3<i32>(-1i, arg_0.b.c.x, 2147483647i))), vec3<i32>(19726i, -55817i, ~u_input.e) ^ ~(~(vec3<i32>(var_0.x, u_input.b, -14884i) | vec3<i32>(var_0.x, arg_0.a.x, 2147483647i))));
    var var_1 = _wgslsmith_clamp_vec2_i32(vec2<i32>(_wgslsmith_mult_i32(var_0.x, i32(-1i) * -3853i), reverseBits(_wgslsmith_dot_vec4_i32(arg_0.a, select(arg_0.a, vec4<i32>(-287i, u_input.c.x, 0i, var_0.x), false)))), abs(var_0.yz), abs(-u_input.c));
    return func_5(func_4(u_input.d, arg_0.a, Struct_2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(arg_0.b.a.a)), _wgslsmith_f_op_vec3_f32(floor(arg_2.b)), vec3<bool>(true, false, true))), select(func_4(arg_3.e, arg_0.a, Struct_2(vec3<f32>(-1985f, -1352f, arg_0.b.a.a.x), arg_0.b.a.b), 17384u).a.x, true, arg_0.b.a.b)), 27981u), arg_0, -_wgslsmith_div_vec4_i32(-vec4<i32>(-14736i, 61812i, -27846i, 43497i), arg_0.a), vec4<i32>(-11762i, firstTrailingBit(arg_0.b.c.x), 26080i, _wgslsmith_mult_i32(u_input.b, i32(-1i) * -1i)));
}

fn func_1(arg_0: u32, arg_1: vec3<i32>) -> vec4<i32> {
    let var_0 = func_6(Struct_4(firstTrailingBit(-(vec4<i32>(arg_1.x, arg_1.x, arg_1.x, arg_1.x) ^ vec4<i32>(-1i, u_input.b, arg_1.x, -2147483647i))), func_5(func_4(~arg_0, -vec4<i32>(2147483647i, 1i, arg_1.x, arg_1.x), func_2(vec2<u32>(4294967295u, u_input.d)), 1u >> (u_input.d % 32u)), Struct_4(_wgslsmith_mod_vec4_i32(vec4<i32>(arg_1.x, -1i, 13762i, 48457i), vec4<i32>(40578i, -2147483647i, 0i, arg_1.x)), Struct_3(global0[_wgslsmith_index_u32(arg_0, 15u)], vec2<u32>(1u, 21256u), vec3<i32>(u_input.e, u_input.b, u_input.a))), _wgslsmith_clamp_vec4_i32(vec4<i32>(0i, -40756i, 1i, arg_1.x), vec4<i32>(1i, 1i, 32128i, 6210i), -vec4<i32>(arg_1.x, -1i, u_input.a, 57414i)), vec4<i32>(-1i, ~u_input.b, -u_input.b, max(u_input.a, u_input.c.x)))), vec2<f32>(546f, _wgslsmith_f_op_f32(-func_4(~arg_0, vec4<i32>(-21935i, u_input.a, 16314i, arg_1.x), global0[_wgslsmith_index_u32(arg_0, 15u)], arg_0 ^ u_input.d).d)), Struct_1(select(vec2<bool>(false, true), func_4(~arg_0, firstTrailingBit(vec4<i32>(arg_1.x, -35097i, u_input.b, 1i)), Struct_2(vec3<f32>(-519f, -513f, -577f), true), ~37111u).a, vec2<bool>(false, all(vec2<bool>(false, true)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-684f, 1001f, -895f) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-189f, -295f, -2125f), vec3<f32>(1602f, 755f, 1066f), vec3<bool>(true, true, false))))), vec2<u32>(0u, u_input.d), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -434f), -1242f), ~_wgslsmith_mod_u32(_wgslsmith_sub_u32(u_input.d, 0u), 0u)), func_4(82469u, abs(countOneBits(_wgslsmith_div_vec4_i32(vec4<i32>(arg_1.x, arg_1.x, arg_1.x, arg_1.x), vec4<i32>(72981i, u_input.a, 16015i, arg_1.x)))), global0[_wgslsmith_index_u32(arg_0, 15u)], ~(~_wgslsmith_mod_u32(arg_0, arg_0))));
    var var_1 = abs(~22691u) | _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(~(~vec4<u32>(arg_0, u_input.d, 1u, 16153u)), ~(~vec4<u32>(1u, 1u, u_input.d, arg_0))), vec4<u32>(14016u, 0u, func_4(25574u, vec4<i32>(arg_1.x, u_input.c.x, -11883i, 919i), func_6(Struct_4(vec4<i32>(arg_1.x, -14092i, -1i, arg_1.x), var_0), vec2<f32>(-1429f, 256f), Struct_1(vec2<bool>(false, true), vec3<f32>(1283f, 317f, var_0.a.a.x), var_0.b, var_0.a.a.x, u_input.d), Struct_1(vec2<bool>(var_0.a.b, true), var_0.a.a, vec2<u32>(u_input.d, arg_0), 426f, 0u)).a, ~var_0.b.x).c.x, 11531u));
    var_1 = 0u & arg_0;
    let var_2 = Struct_1(select(!func_4(4294967295u, vec4<i32>(-1i, arg_1.x, -1i, -64818i) & vec4<i32>(1i, -2147483647i, u_input.c.x, -1i), Struct_2(var_0.a.a, false), func_6(Struct_4(vec4<i32>(arg_1.x, u_input.b, 7679i, u_input.a), Struct_3(Struct_2(var_0.a.a, true), var_0.b, var_0.c)), var_0.a.a.zz, Struct_1(vec2<bool>(var_0.a.b, var_0.a.b), var_0.a.a, var_0.b, 884f, arg_0), Struct_1(vec2<bool>(false, true), vec3<f32>(1495f, -1641f, var_0.a.a.x), vec2<u32>(var_0.b.x, var_0.b.x), var_0.a.a.x, arg_0)).b.x).a, func_4(u_input.d, vec4<i32>(36280i, 1i | u_input.b, 0i, _wgslsmith_sub_i32(var_0.c.x, arg_1.x)), Struct_2(vec3<f32>(-1247f, -807f, var_0.a.a.x), true), var_0.b.x).a, all(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(var_0.a.b, var_0.a.b, false), vec3<bool>(var_0.a.b, false, true)), vec3<bool>(var_0.a.b, true, true)))), var_0.a.a, func_4(_wgslsmith_mod_u32(countOneBits(arg_0), ~(~1u)), -_wgslsmith_add_vec4_i32(-vec4<i32>(1i, 35351i, u_input.b, 23788i), vec4<i32>(-61156i, 2147483647i, -15090i, -1i) ^ vec4<i32>(17995i, -5547i, u_input.b, u_input.a)), func_2(var_0.b), 0u).c, _wgslsmith_f_op_f32(select(863f, var_0.a.a.x, true)), 1u);
    var var_3 = ~abs(-func_6(Struct_4(vec4<i32>(arg_1.x, 13374i, var_0.c.x, var_0.c.x), Struct_3(var_0.a, vec2<u32>(arg_0, 0u), vec3<i32>(2147483647i, -21862i, arg_1.x))), var_2.b.xz, var_2, var_2).c.x | _wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(var_0.c.x, -12465i, var_0.c.x, u_input.e)), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.b, -10725i, 1i, arg_1.x), vec4<i32>(0i, -2147483647i, arg_1.x, -12348i))));
    return ~_wgslsmith_add_vec4_i32(vec4<i32>(-1i) * -_wgslsmith_div_vec4_i32(vec4<i32>(arg_1.x, u_input.c.x, var_0.c.x, var_0.c.x), vec4<i32>(u_input.e, 5559i, var_0.c.x, arg_1.x)), vec4<i32>(_wgslsmith_sub_i32(-2147483647i, var_0.c.x), ~(~u_input.a), 19561i, 44205i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(select(func_1(1u, _wgslsmith_div_vec3_i32(vec3<i32>(u_input.b, -14379i, u_input.a) << (vec3<u32>(u_input.d, 92436u, 23875u) % vec3<u32>(32u)), vec3<i32>(u_input.e, u_input.c.x, u_input.a) ^ vec3<i32>(u_input.a, u_input.b, 359i))), vec4<i32>(_wgslsmith_clamp_i32(u_input.e | u_input.b, func_1(0u, vec3<i32>(u_input.b, -64371i, u_input.e)).x, 57655i), -u_input.c.x ^ select(u_input.e, -1i, false), -22980i, func_6(Struct_4(vec4<i32>(-2147483647i, u_input.a, 1i, 29431i), Struct_3(Struct_2(vec3<f32>(-613f, 568f, 733f), true), vec2<u32>(59078u, 6106u), vec3<i32>(2147483647i, u_input.b, u_input.a))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1408f, -453f)), func_4(43892u, vec4<i32>(26992i, 0i, u_input.b, -37499i), global0[_wgslsmith_index_u32(4294967295u, 15u)], u_input.d), Struct_1(vec2<bool>(false, true), vec3<f32>(-691f, -917f, -329f), vec2<u32>(0u, u_input.d), -101f, u_input.d)).c.x), select(vec4<bool>(true, true, true, false), select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true)), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), true), func_2(vec2<u32>(18271u, u_input.d)).b), false)), Struct_3(func_2(max(vec2<u32>(75407u, 4294967295u), ~vec2<u32>(u_input.d, 1u))), vec2<u32>(31387u, ~select(0u, u_input.d, false)), _wgslsmith_add_vec3_i32(-abs(vec3<i32>(2147483647i, u_input.a, 74911i)), ~(~vec3<i32>(u_input.a, u_input.a, u_input.b)))));
    global0 = array<Struct_2, 15>();
    let var_1 = var_0.b.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_i32(firstTrailingBit(var_0.a), var_0.a) << (48900u % 32u), ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 0u, 11401u, u_input.d) << (vec4<u32>(0u, 57996u, 60420u, 85123u) % vec4<u32>(32u)), ~vec4<u32>(4294967295u, 30911u, 40023u, 28305u))));
}

