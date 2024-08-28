struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: vec2<i32>,
    d: vec2<i32>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: u32,
    c: u32,
    d: Struct_1,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: u32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_2) -> f32 {
    var var_0 = Struct_1(select(vec3<bool>(~0u < _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, arg_0.d.e.x, 1u), vec3<u32>(u_input.a.x, 4294967295u, u_input.c)), abs(u_input.a.x) == u_input.c, true), vec3<bool>(false, select(!arg_0.d.a.x, false, true), _wgslsmith_f_op_f32(1152f * -375f) != _wgslsmith_f_op_f32(arg_0.a.x * 1960f)), !select(arg_0.d.a, arg_0.d.a, vec3<bool>(false, false, true))), (_wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.b, -20274i, arg_0.d.d.x, arg_0.d.c.x), vec4<i32>(arg_0.d.c.x, arg_0.d.d.x, 1i, u_input.b) ^ vec4<i32>(53120i, 39784i, 45978i, -44513i)) > u_input.b) == false, arg_0.d.c, _wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_add_i32(-4687i, u_input.b), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.d.c.x, 76593i, -4005i, 0i), vec4<i32>(arg_0.d.d.x, 2147483647i, 2147483647i, arg_0.d.c.x))) >> (arg_0.d.e.yz % vec2<u32>(32u)), abs(arg_0.d.c) & abs(-vec2<i32>(-1i, -2147483647i))), countOneBits(_wgslsmith_div_vec3_u32(vec3<u32>(0u, u_input.c, 41874u | arg_0.c), ~arg_0.d.e)));
    var_0 = arg_0.d;
    let var_1 = arg_0.d;
    var var_2 = select(select(vec2<bool>(false, var_0.b), !vec2<bool>(any(vec4<bool>(var_0.b, var_1.b, arg_0.d.a.x, true)), var_0.a.x), false), !(!(!select(arg_0.d.a.zz, vec2<bool>(true, var_1.a.x), true))), true);
    let var_3 = (arg_0.d.e.x ^ ~_wgslsmith_mod_u32(var_1.e.x, ~var_1.e.x)) | ~_wgslsmith_mult_u32(~1u, arg_0.c | arg_0.e.x);
    return _wgslsmith_f_op_f32(1611f * 1999f);
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-1015f + -596f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_2(vec3<f32>(217f, 1277f, 206f), 4294967295u, u_input.c, Struct_1(vec3<bool>(true, true, false), false, vec2<i32>(u_input.b, 0i), vec2<i32>(u_input.b, u_input.b), vec3<u32>(u_input.a.x, u_input.a.x, 4925u)), vec4<u32>(u_input.c, 1u, 97776u, 4294967295u))))))), 0u, abs(0u), Struct_1(vec3<bool>(false || (u_input.a.x != 1u), !all(vec2<bool>(true, false)), !all(vec3<bool>(true, false, false))), !(!any(vec3<bool>(false, true, true))), vec2<i32>(_wgslsmith_add_i32(_wgslsmith_div_i32(u_input.b, 2147483647i), ~u_input.b), _wgslsmith_clamp_i32(-2147483647i, 32436i, u_input.b)), ~vec2<i32>(-1i, u_input.b) & ~(-vec2<i32>(-10365i, -63831i)), vec3<u32>(_wgslsmith_div_u32(u_input.a.x, u_input.a.x), u_input.c, countOneBits(0u))), vec4<u32>(u_input.c, _wgslsmith_sub_u32(83143u, _wgslsmith_add_u32(u_input.a.x, 62647u)), 29525u, abs(1u)));
    var var_1 = var_0.d;
    var_1 = Struct_1(select(!(!var_0.d.a), vec3<bool>(var_0.d.a.x, (1i <= var_0.d.c.x) && all(vec2<bool>(var_1.a.x, var_1.b)), var_1.a.x), all(vec4<bool>(var_1.a.x && true, var_1.b, true, !var_1.b))), !var_0.d.a.x, var_0.d.d, ~_wgslsmith_div_vec2_i32(~vec2<i32>(-38731i, u_input.b) | ~vec2<i32>(var_1.c.x, -51120i), firstTrailingBit(_wgslsmith_mult_vec2_i32(var_0.d.c, vec2<i32>(var_0.d.c.x, u_input.b)))), reverseBits(~reverseBits(max(vec3<u32>(4294967295u, 34901u, var_1.e.x), vec3<u32>(0u, u_input.a.x, 29051u)))));
    var var_2 = ~min(countOneBits(u_input.c), var_0.e.x);
    var_1 = var_0.d;
    return Struct_1(select(select(var_1.a, vec3<bool>(any(vec4<bool>(var_0.d.a.x, var_1.a.x, var_0.d.b, var_0.d.b)), any(vec4<bool>(true, var_0.d.a.x, true, false)), true), any(vec3<bool>(true, true, true))), select(!vec3<bool>(true, false, var_1.b), var_1.a, !select(var_1.a.x, var_1.a.x, var_1.b)), var_0.a.x <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-689f - var_0.a.x) + _wgslsmith_f_op_f32(-var_0.a.x))), true, ~abs(firstLeadingBit(vec2<i32>(1i, -1i))), abs(countOneBits(vec2<i32>(reverseBits(2147483647i), _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, var_0.d.d.x), vec2<i32>(29788i, u_input.b))))), ~(~vec3<u32>(var_0.b, var_0.c & 44956u, u_input.a.x >> (var_1.e.x % 32u))));
}

fn func_4(arg_0: bool, arg_1: vec4<i32>, arg_2: bool, arg_3: Struct_1) -> vec3<f32> {
    let var_0 = arg_0;
    var var_1 = Struct_1(!(!arg_3.a), false, arg_1.yw, ~func_2().d, max(abs(select(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a.x, 0u, 4294967295u), arg_3.e, vec3<u32>(14672u, arg_3.e.x, 5846u)), ~arg_3.e, arg_3.a)), u_input.a));
    var var_2 = true;
    var_1 = arg_3;
    var_2 = false;
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(784f, 487f, 418f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(962f, 1438f, 2246f))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1649f, -187f, -326f)), vec3<f32>(-232f, -1188f, 365f))))))));
}

fn func_1(arg_0: i32, arg_1: i32, arg_2: vec2<bool>) -> Struct_2 {
    let var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_4(any(vec3<bool>(false, true, arg_2.x)), -vec4<i32>(arg_1, arg_0, -41121i, arg_1), true, func_2())) - vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -914f), _wgslsmith_f_op_f32(1642f * -1000f), _wgslsmith_f_op_f32(1017f - -1766f)))), ~22741u, abs(36729u), Struct_1(!func_2().a, true, vec2<i32>(arg_0, _wgslsmith_mult_i32(countOneBits(-16574i), arg_1)), vec2<i32>(abs(14549i), _wgslsmith_mod_i32(-1i, u_input.b)) | abs(vec2<i32>(0i, u_input.b)), vec3<u32>(~(u_input.a.x & 4294967295u), ~4294967295u, u_input.c)), vec4<u32>(select(_wgslsmith_clamp_u32(u_input.c, min(38707u, 0u), 0u), u_input.c, true), ~1u, 1u, ~abs(abs(4294967295u))));
    let var_1 = _wgslsmith_sub_vec4_i32(vec4<i32>(arg_1, _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(~vec4<i32>(u_input.b, 1i, 11774i, 6076i), firstTrailingBit(vec4<i32>(arg_0, -32002i, u_input.b, 0i)), -vec4<i32>(arg_1, arg_0, u_input.b, -2147483647i)), vec4<i32>(_wgslsmith_dot_vec2_i32(var_0.d.c, var_0.d.c), -28363i >> (1u % 32u), arg_0, reverseBits(0i))), func_2().c.x, ~43481i), _wgslsmith_sub_vec4_i32(vec4<i32>(arg_0, arg_0, 1i, arg_0), vec4<i32>(reverseBits(2147483647i), -1i, -9645i, firstTrailingBit(1i))));
    let var_2 = func_2();
    var var_3 = var_2;
    let var_4 = _wgslsmith_f_op_vec3_f32(func_4((_wgslsmith_sub_i32(-318i << (1u % 32u), 0i) | var_2.d.x) != ((i32(-1i) * -arg_0) << (~(var_0.e.x << (0u % 32u)) % 32u)), -var_1, false, var_2)).x;
    return Struct_2(_wgslsmith_f_op_vec3_f32(ceil(var_0.a)), 1u, 17244u, Struct_1(!(!var_0.d.a), !any(!vec4<bool>(false, var_0.d.b, var_3.b, var_2.b)), var_0.d.d, _wgslsmith_mult_vec2_i32(vec2<i32>(0i, u_input.b), min(-var_1.yy, var_3.d)), ~select(select(var_0.d.e, var_3.e, vec3<bool>(true, false, var_3.b)), firstTrailingBit(var_2.e), var_3.a)), max(~(firstLeadingBit(vec4<u32>(var_0.b, 22523u, 0u, var_2.e.x)) << (~var_0.e % vec4<u32>(32u))), _wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(15437u, u_input.a.x, 37543u, u_input.a.x), _wgslsmith_mod_vec4_u32(var_0.e, vec4<u32>(20697u, var_3.e.x, u_input.c, var_0.b))), select(~var_0.e, vec4<u32>(0u, 26660u, 0u, var_3.e.x) << (vec4<u32>(u_input.a.x, var_2.e.x, 16305u, var_3.e.x) % vec4<u32>(32u)), !vec4<bool>(var_3.a.x, var_0.d.b, var_0.d.b, true)))));
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: Struct_2) -> bool {
    let var_0 = all(!func_1(arg_2.d.d.x, firstLeadingBit(-u_input.b), vec2<bool>(true, true)).d.a);
    var var_1 = vec4<bool>(arg_1.b <= max(arg_2.c, _wgslsmith_dot_vec2_u32(arg_0 >> (vec2<u32>(4294967295u, u_input.c) % vec2<u32>(32u)), ~vec2<u32>(42369u, 0u))), arg_2.d.b, false, true);
    let var_2 = func_1(arg_2.d.c.x, min(~1i, arg_1.d.c.x), func_2().a.zz).d;
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_2.a.x, 681f, 1f, arg_2.a.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(990f, arg_2.a.x, -150f, -1061f), vec4<f32>(arg_2.a.x, -381f, -184f, -913f)))))) + vec4<f32>(_wgslsmith_f_op_f32(arg_1.a.x + _wgslsmith_f_op_f32(-arg_1.a.x)), _wgslsmith_f_op_f32(round(150f)), func_1(u_input.b, var_2.d.x, select(!var_1.wx, select(var_2.a.zz, vec2<bool>(var_0, var_2.b), false), var_1.ww)).a.x, -642f));
    let var_4 = Struct_1(!func_1(_wgslsmith_add_i32(-var_2.d.x, var_2.c.x), 16125i, select(!arg_1.d.a.xy, func_1(arg_2.d.c.x, var_2.c.x, vec2<bool>(true, arg_1.d.a.x)).d.a.zx, !vec2<bool>(var_0, false))).d.a, false && all(vec4<bool>(var_0, all(vec4<bool>(false, true, var_2.b, var_0)), all(vec4<bool>(var_1.x, arg_2.d.a.x, true, true)), arg_2.d.a.x)), _wgslsmith_clamp_vec2_i32(vec2<i32>(69414i, _wgslsmith_add_i32(var_2.d.x, 0i)), vec2<i32>(-max(u_input.b, -17211i), arg_2.d.c.x), vec2<i32>(~(~u_input.b), _wgslsmith_add_i32(0i, -1i | arg_2.d.c.x))), ~vec2<i32>(_wgslsmith_mult_i32(_wgslsmith_mod_i32(11032i, u_input.b), i32(-1i) * -2147483647i), ~(arg_2.d.d.x ^ arg_2.d.d.x)), var_2.e);
    return any(arg_1.d.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(!vec4<bool>(select(true, true, all(vec3<bool>(false, false, true))), func_5(_wgslsmith_mult_vec2_u32(vec2<u32>(10222u, 0u), u_input.a.zz), func_1(u_input.b, u_input.b, vec2<bool>(false, false)), Struct_2(vec3<f32>(544f, 560f, 834f), u_input.c, 0u, Struct_1(vec3<bool>(false, false, true), false, vec2<i32>(0i, -31221i), vec2<i32>(-30694i, u_input.b), vec3<u32>(u_input.a.x, 0u, u_input.c)), vec4<u32>(u_input.a.x, 0u, 77929u, 7092u))), true, true), select(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, u_input.b < u_input.b, true, true), vec4<bool>(true, true, any(vec4<bool>(true, true, true, true)), false)), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), false), select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), func_2().b), vec4<bool>(true, true, true, true))), 396f != _wgslsmith_f_op_vec3_f32(func_4(func_2().b, vec4<i32>(u_input.b, -33377i & u_input.b, ~9606i, -2147483647i), u_input.b < u_input.b, func_1(-1i, -u_input.b, select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true))).d)).x);
    var var_1 = var_0;
    var var_2 = select(var_1.zzy, select(select(var_0.wxw, !func_2().a, select(!var_1.xzy, func_2().a, all(vec2<bool>(var_1.x, var_1.x)))), !vec3<bool>(true, !var_1.x, true), all(func_1(2147483647i, ~1i, vec2<bool>(false, false)).d.a)), true);
    let var_3 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(857f - 1160f))))));
    let var_4 = func_2();
    let var_5 = vec2<bool>(func_1(func_1(_wgslsmith_sub_i32(-1i, ~var_4.c.x), _wgslsmith_sub_i32(var_4.d.x, -39610i), !select(vec2<bool>(var_0.x, var_2.x), var_0.wy, vec2<bool>(var_0.x, var_4.a.x))).d.d.x, u_input.b, var_1.zz).d.b, !any(var_0) & (_wgslsmith_f_op_f32(-1148f - _wgslsmith_f_op_f32(-var_3)) == _wgslsmith_f_op_f32(-var_3)));
    var var_6 = !var_4.b;
    var_6 = !(!all(var_0));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.c.x, var_4.e.x, ~u_input.a, func_1(-1i, _wgslsmith_mult_i32(max(~u_input.b, -1i), 9902i), select(!select(var_0.wx, var_0.xw, vec2<bool>(var_1.x, false)), !vec2<bool>(var_1.x, true), false)).d.e.x, reverseBits(vec2<i32>(_wgslsmith_add_i32(34496i, 1i), abs(u_input.b))) | vec2<i32>(-(~0i), 81392i));
}

