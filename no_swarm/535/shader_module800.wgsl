struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: u32,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: bool,
    e: u32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_1,
    c: vec3<i32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec2<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<i32>) -> bool {
    global0 = false;
    var var_0 = -abs(arg_0);
    global0 = (~(~22441i | u_input.d) < select(_wgslsmith_sub_i32(reverseBits(12402i), var_0.x), ~(var_0.x >> (8718u % 32u)), true)) || any(select(vec3<bool>(true, true, true), vec3<bool>(all(vec2<bool>(false, true)), false, u_input.d < 16548i), select(select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true)), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false)), select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false)))));
    let var_1 = _wgslsmith_f_op_f32(-819f - _wgslsmith_f_op_f32(max(-894f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(-475f, _wgslsmith_f_op_f32(trunc(616f)))))))));
    let var_2 = Struct_3(~arg_0, Struct_1(~_wgslsmith_dot_vec4_i32(max(arg_0, arg_0), vec4<i32>(39734i, 2147483647i, arg_0.x, 15531i) >> (u_input.a % vec4<u32>(32u))), vec2<bool>(_wgslsmith_f_op_f32(trunc(-417f)) < _wgslsmith_f_op_f32(ceil(var_1)), true), max(~reverseBits(u_input.a.x), ~(u_input.b.x << (51359u % 32u))), u_input.b.x), _wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(-(~vec3<i32>(-41780i, 1i, var_0.x)), select(firstLeadingBit(vec3<i32>(-2147483647i, 2147483647i, u_input.d)), abs(var_0.zxy), true)), var_0.ywz), Struct_1(select(select(-u_input.c, min(2147483647i, u_input.c), true), _wgslsmith_mod_i32(u_input.d, -69810i), true), select(!select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false)), select(vec2<bool>(true, true), vec2<bool>(true, true), var_1 >= 713f), all(vec2<bool>(false, true)) & any(vec4<bool>(true, true, false, false))), ~reverseBits(u_input.b.x | 28740u), _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(~u_input.a.zzw, vec3<u32>(u_input.a.x, u_input.b.x, 4294967295u)), u_input.a.x)));
    return false;
}

fn func_2(arg_0: i32, arg_1: Struct_3) -> Struct_1 {
    let var_0 = arg_0;
    let var_1 = firstTrailingBit(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.b.x & ~arg_1.d.d, u_input.b.x), _wgslsmith_mult_vec2_u32(_wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.b.x, arg_1.d.d), vec2<u32>(55831u, u_input.a.x)), ~vec2<u32>(0u, 1u)), vec2<u32>(u_input.b.x, ~15430u))));
    var var_2 = ~1u;
    let var_3 = 1462f;
    global0 = func_3(_wgslsmith_mult_vec4_i32(vec4<i32>(-18851i, _wgslsmith_sub_i32(73843i, 6224i), -2147483647i, -2147483647i), max(select(arg_1.a, vec4<i32>(-38172i, u_input.c, -1i, -2495i), vec4<bool>(arg_1.b.b.x, true, arg_1.b.b.x, arg_1.d.b.x)), vec4<i32>(arg_0, u_input.d, -1i, -28646i)))) & all(vec4<bool>(select(select(false, arg_1.d.b.x, arg_1.d.b.x), arg_1.d.b.x, arg_1.b.b.x), arg_1.d.b.x, arg_1.b.b.x, !any(vec3<bool>(true, false, false))));
    return Struct_1(1i, select(select(vec2<bool>(func_3(arg_1.a), false), arg_1.d.b, arg_1.d.b), !select(select(vec2<bool>(arg_1.b.b.x, true), vec2<bool>(false, arg_1.d.b.x), arg_1.b.b.x), !arg_1.b.b, vec2<bool>(true, arg_1.d.b.x)), !(!select(arg_1.b.b, arg_1.b.b, arg_1.d.b))), 1u, min(var_1.x, ~44781u));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: Struct_2) -> vec3<i32> {
    var var_0 = false;
    var var_1 = -256f;
    let var_2 = true;
    var_0 = true;
    global0 = all(arg_2.b.b);
    return vec3<i32>(_wgslsmith_add_i32(arg_0.a, _wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.e, -1i, arg_2.b.a) ^ ~vec3<i32>(u_input.c, u_input.e, -1i), abs(abs(vec3<i32>(2147483647i, arg_0.a, arg_0.a))))), countOneBits(~(-2147483647i)), ~(-firstTrailingBit(7027i)) >> (_wgslsmith_dot_vec3_u32(u_input.a.zzx, vec3<u32>(u_input.a.x, _wgslsmith_clamp_u32(arg_0.d, arg_0.d, 1u), _wgslsmith_mod_u32(0u, 37133u))) % 32u));
}

fn func_1(arg_0: u32) -> Struct_3 {
    var var_0 = vec3<bool>(select(!any(vec3<bool>(true, true, true)), any(vec2<bool>(false, true)), select(false, false, true)) && true, u_input.d <= u_input.e, all(vec3<bool>(false, true, !select(false, false, true))));
    let var_1 = !(!(!(!select(vec4<bool>(var_0.x, var_0.x, true, false), vec4<bool>(var_0.x, var_0.x, true, true), vec4<bool>(var_0.x, var_0.x, false, var_0.x)))));
    var_0 = var_1.zwy;
    var var_2 = abs(_wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(u_input.e, u_input.d), u_input.e, -1i), _wgslsmith_add_vec3_i32(_wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.e, u_input.d, -1i), vec3<i32>(0i, 587i, 0i)), vec3<i32>(-24158i, -2147483647i, -32891i)), func_4(func_2(u_input.e, Struct_3(vec4<i32>(7729i, u_input.e, -4673i, -44404i), Struct_1(-58989i, vec2<bool>(true, false), u_input.b.x, 518u), vec3<i32>(u_input.c, 2147483647i, u_input.c), Struct_1(-2147483647i, vec2<bool>(var_0.x, true), arg_0, arg_0))), select(vec4<bool>(var_0.x, true, var_0.x, false), var_1, vec4<bool>(false, false, var_1.x, true)), Struct_2(Struct_1(50025i, vec2<bool>(var_1.x, false), 12995u, arg_0), Struct_1(u_input.e, var_1.xx, u_input.a.x, arg_0), Struct_1(u_input.e, vec2<bool>(var_0.x, var_0.x), u_input.b.x, u_input.b.x), true, u_input.a.x)))));
    var var_3 = countOneBits(~_wgslsmith_mult_u32(u_input.a.x, u_input.b.x));
    return Struct_3(vec4<i32>(var_2.x, func_4(Struct_1(var_2.x, select(var_0.xy, var_1.xy, true), reverseBits(arg_0), max(u_input.b.x, 30166u)), var_1, Struct_2(Struct_1(u_input.c, vec2<bool>(var_1.x, var_0.x), arg_0, 0u), func_2(0i, Struct_3(vec4<i32>(2147483647i, 1i, u_input.c, u_input.c), Struct_1(1i, var_1.zx, arg_0, 0u), vec3<i32>(0i, var_2.x, -3199i), Struct_1(1i, vec2<bool>(var_0.x, var_1.x), arg_0, 28684u))), Struct_1(-20736i, var_0.zz, arg_0, 4294967295u), select(var_0.x, var_1.x, var_0.x), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 11496u), u_input.a.yz))).x, ~(u_input.d >> (_wgslsmith_dot_vec3_u32(u_input.a.xwx, u_input.a.wxx) % 32u)), 0i), func_2(~(7306i << (func_2(-8738i, Struct_3(vec4<i32>(47182i, u_input.d, var_2.x, u_input.e), Struct_1(5984i, var_1.xx, 20066u, arg_0), vec3<i32>(var_2.x, u_input.e, var_2.x), Struct_1(var_2.x, vec2<bool>(true, var_0.x), 91099u, arg_0))).d % 32u)), Struct_3(vec4<i32>(firstTrailingBit(var_2.x), -1005i, 1i, ~63720i), Struct_1(0i, var_0.zx, ~u_input.a.x, _wgslsmith_mult_u32(arg_0, 4294967295u)), vec3<i32>(-1i) * -vec3<i32>(var_2.x, -1i, var_2.x), func_2(u_input.e, Struct_3(vec4<i32>(u_input.c, var_2.x, u_input.e, 1i), Struct_1(1i, vec2<bool>(var_1.x, false), 1u, 67147u), vec3<i32>(-46106i, 2147483647i, 0i), Struct_1(var_2.x, vec2<bool>(false, true), u_input.a.x, 4294967295u))))), vec3<i32>(func_4(func_2(u_input.c, Struct_3(vec4<i32>(20029i, var_2.x, var_2.x, var_2.x), Struct_1(u_input.d, vec2<bool>(false, var_0.x), u_input.a.x, 0u), vec3<i32>(-47649i, -2147483647i, var_2.x), Struct_1(52061i, var_1.zy, 4294967295u, 5582u))), select(vec4<bool>(var_0.x, var_1.x, false, false), var_1, vec4<bool>(var_1.x, false, var_1.x, false)), Struct_2(Struct_1(-23069i, var_0.xz, u_input.a.x, 1u), Struct_1(u_input.c, vec2<bool>(var_0.x, false), arg_0, 25353u), Struct_1(24427i, vec2<bool>(false, var_0.x), arg_0, 156322u), var_1.x, arg_0)).x, ~(2147483647i << (arg_0 % 32u)), 0i) >> (firstTrailingBit(vec3<u32>(u_input.a.x, ~arg_0, arg_0)) % vec3<u32>(32u)), Struct_1(var_2.x, vec2<bool>(true, var_0.x), 54609u, _wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(~arg_0, u_input.a.x, countOneBits(u_input.b.x), firstTrailingBit(4294967295u)))));
}

fn func_5(arg_0: Struct_3) -> Struct_3 {
    let var_0 = vec2<i32>(_wgslsmith_add_i32(arg_0.b.a, -1i & ~arg_0.b.a), u_input.d);
    let var_1 = abs(-select(arg_0.a.xz, vec2<i32>(_wgslsmith_sub_i32(-2147483647i, u_input.c), i32(-1i) * -45884i), arg_0.b.b.x));
    let var_2 = u_input.a.xz;
    let var_3 = vec3<u32>(firstLeadingBit(~1u), ~u_input.a.x, _wgslsmith_add_u32(arg_0.b.d, 35854u));
    let var_4 = select(~var_3.x, ~_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(~var_3, var_3 | u_input.a.yyz), u_input.a.wxx), arg_0.d.b.x);
    return func_1(_wgslsmith_mult_u32(1u, _wgslsmith_dot_vec2_u32(countOneBits(_wgslsmith_div_vec2_u32(u_input.a.yx, u_input.b)), _wgslsmith_add_vec2_u32(var_2, _wgslsmith_add_vec2_u32(var_2, vec2<u32>(arg_0.b.c, var_2.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<u32>(firstLeadingBit(abs(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, u_input.a.x), u_input.b)) & ~_wgslsmith_mod_u32(u_input.a.x, u_input.b.x)), u_input.a.x, abs(_wgslsmith_clamp_u32(4294967295u | min(u_input.a.x, u_input.b.x), 43229u, u_input.a.x | _wgslsmith_dot_vec3_u32(u_input.a.xwx, u_input.a.zzy))));
    let var_1 = func_5(func_1(83904u));
    var var_2 = func_3(_wgslsmith_add_vec4_i32(var_1.a | ~vec4<i32>(u_input.d, u_input.e, -28558i, 0i), -_wgslsmith_sub_vec4_i32(-vec4<i32>(2147483647i, u_input.c, 41084i, 30138i), var_1.a)));
    global0 = !(!var_1.b.b.x);
    var var_3 = func_5(Struct_3(firstLeadingBit(vec4<i32>(abs(65624i), min(39505i, -24767i), _wgslsmith_div_i32(var_1.a.x, var_1.d.a), u_input.e)), var_1.d, var_1.a.wxy, Struct_1(~_wgslsmith_mult_i32(-649i, -4262i), vec2<bool>(true, true), 4294967295u, var_1.d.d))).b;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.c.xy, vec3<i32>(~_wgslsmith_dot_vec2_i32(vec2<i32>(-14764i, 22779i), func_5(var_1).c.xy), -func_5(func_5(Struct_3(var_1.a, var_1.d, vec3<i32>(var_1.d.a, var_3.a, -1i), Struct_1(2084i, var_3.b, 23251u, u_input.b.x)))).b.a, func_2(_wgslsmith_div_i32(func_2(u_input.e, Struct_3(var_1.a, Struct_1(2147483647i, vec2<bool>(var_3.b.x, var_1.b.b.x), u_input.a.x, var_0.x), var_1.c, var_1.b)).a, 51315i), func_5(var_1)).a), vec2<f32>(_wgslsmith_div_f32(-704f, _wgslsmith_f_op_f32(-204f * _wgslsmith_f_op_f32(select(-638f, 1000f, var_1.d.b.x)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(-779f, 149f)), 996f, var_1.b.b.x || false)), _wgslsmith_f_op_f32(round(-244f))))), u_input.c & 1i);
}

