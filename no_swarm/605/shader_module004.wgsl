struct Struct_1 {
    a: bool,
    b: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<i32>,
    c: f32,
    d: Struct_2,
    e: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
}

struct Struct_5 {
    a: Struct_3,
    b: i32,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: u32) -> vec2<u32> {
    let var_0 = vec2<u32>(4294967295u, firstTrailingBit(_wgslsmith_sub_u32(~firstTrailingBit(19607u), ~(~arg_0))));
    var var_1 = Struct_1(select(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(23610u, 61862u), u_input.a), select(arg_0, var_0.x, true)) == ~select(91703u, 12855u, true), any(vec3<bool>(true, false, all(vec3<bool>(false, false, false)))), any(vec2<bool>(true, true))), var_0);
    let var_2 = Struct_4(Struct_3(Struct_2(Struct_1(true, abs(vec2<u32>(4294967295u, 4294967295u))), _wgslsmith_sub_u32(var_0.x, ~arg_0), Struct_1(var_1.a, vec2<u32>(4294967295u, arg_0)), !select(vec3<bool>(var_1.a, var_1.a, var_1.a), vec3<bool>(true, true, false), vec3<bool>(var_1.a, var_1.a, var_1.a))), select(abs(-vec2<i32>(-1i, -1i)), vec2<i32>(12079i, -682i), vec2<bool>(true, all(vec3<bool>(false, var_1.a, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1f))), Struct_2(Struct_1(var_1.a, vec2<u32>(arg_0, arg_0)), 1u, Struct_1(true, ~vec2<u32>(35970u, 62902u)), !select(vec3<bool>(true, var_1.a, var_1.a), vec3<bool>(var_1.a, true, var_1.a), false)), true), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(-836f, -729f)), 854f)))));
    let var_3 = var_2.a.c;
    var var_4 = _wgslsmith_div_u32(~(~_wgslsmith_mod_u32(var_0.x, u_input.a.x)), 19714u) >> (min(~var_0.x, u_input.a.x) % 32u);
    return select(~u_input.a, vec2<u32>(_wgslsmith_mult_u32(var_1.b.x, abs(var_1.b.x)) << (u_input.a.x % 32u), 24719u), vec2<bool>(!(!any(vec4<bool>(true, var_1.a, true, var_1.a))), var_2.a.a.c.a));
}

fn func_2(arg_0: i32, arg_1: vec2<f32>, arg_2: u32, arg_3: vec3<bool>) -> Struct_1 {
    var var_0 = Struct_2(Struct_1((_wgslsmith_f_op_f32(-arg_1.x) <= _wgslsmith_f_op_f32(-987f + -1000f)) & arg_3.x, u_input.a), arg_2, Struct_1(arg_3.x, firstTrailingBit(func_3(_wgslsmith_dot_vec3_u32(vec3<u32>(76118u, arg_2, arg_2), vec3<u32>(36998u, arg_2, u_input.a.x))))), !arg_3);
    var_0 = Struct_2(Struct_1(true, u_input.a), arg_2, Struct_1(true, vec2<u32>(_wgslsmith_div_u32(48387u, 1u), (var_0.a.b.x ^ 75139u) & _wgslsmith_dot_vec3_u32(vec3<u32>(arg_2, 1u, 46001u), vec3<u32>(arg_2, u_input.a.x, u_input.a.x)))), select(select(arg_3, vec3<bool>(true, arg_3.x, any(vec2<bool>(arg_3.x, arg_3.x))), all(!var_0.d.zy)), select(vec3<bool>(arg_0 >= arg_0, true, true), !select(var_0.d, arg_3, var_0.d), select(!vec3<bool>(var_0.c.a, var_0.a.a, arg_3.x), vec3<bool>(var_0.c.a, true, arg_3.x), var_0.c.a)), arg_3));
    var var_1 = var_0.c;
    var_0 = Struct_2(Struct_1(arg_3.x, vec2<u32>(54798u, 12027u)), ~_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(var_0.c.b.x, u_input.a.x, u_input.a.x, 46223u)), min(abs(vec4<u32>(4294967295u, 4294967295u, u_input.a.x, 54958u)), vec4<u32>(var_1.b.x, 4294967295u, 53485u, 25068u))), Struct_1(true, var_1.b), var_0.d);
    var_1 = Struct_1(any(!vec4<bool>(true, -1i != arg_0, false, !arg_3.x)), vec2<u32>(firstTrailingBit(1u), 4294967295u));
    return var_0.a;
}

fn func_4(arg_0: Struct_2, arg_1: f32) -> vec3<f32> {
    var var_0 = -15772i | countOneBits(_wgslsmith_dot_vec2_i32(vec2<i32>(-34447i, 0i), abs(vec2<i32>(34706i, -2147483647i))) << (_wgslsmith_sub_u32(u_input.a.x, firstTrailingBit(u_input.a.x)) % 32u));
    var var_1 = ~arg_0.b;
    let var_2 = vec4<u32>(~(4294967295u << (_wgslsmith_add_u32(~u_input.a.x, ~arg_0.a.b.x) % 32u)), 0u, _wgslsmith_mult_u32(u_input.a.x, u_input.a.x), ~abs(_wgslsmith_div_u32(~42107u, arg_0.b)));
    var_0 = _wgslsmith_clamp_i32(-1i, ~1i, _wgslsmith_add_i32(i32(-1i) * -_wgslsmith_clamp_i32(13235i, 2147483647i, -8124i), -1i));
    var_0 = -(~min(firstTrailingBit(21660i), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 0i, -2147483647i, -1i), vec4<i32>(19006i, 44750i, 67407i, 3038i)))) >> (var_2.x % 32u);
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(-349f, -1752f)), _wgslsmith_f_op_f32(min(arg_1, arg_1)))), _wgslsmith_f_op_f32(-arg_1))), arg_1, arg_1) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, 401f, 941f))))));
}

fn func_1(arg_0: Struct_5) -> bool {
    let var_0 = 16458u;
    let var_1 = arg_0.a.d;
    var var_2 = !arg_0.a.a.d.zx;
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_4(Struct_2(func_2(2147483647i, vec2<f32>(arg_0.a.c, arg_0.a.c), 772u, var_1.d), ~4294967295u, Struct_1(true, var_1.c.b), !var_1.d), arg_0.a.c))) * vec3<f32>(_wgslsmith_div_f32(arg_0.a.c, -112f), 795f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0.a.c, _wgslsmith_f_op_f32(step(arg_0.a.c, -1000f)), any(vec4<bool>(true, false, var_1.d.x, var_2.x)))))));
    return !any(arg_0.a.a.d.zx);
}

fn func_5(arg_0: vec2<bool>) -> Struct_4 {
    var var_0 = Struct_5(Struct_3(Struct_2(func_2(abs(1427i), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-431f, 1896f)), u_input.a.x << (u_input.a.x % 32u), vec3<bool>(false, arg_0.x, arg_0.x)), _wgslsmith_clamp_u32(4294967295u, u_input.a.x, 87300u) ^ u_input.a.x, Struct_1(true, ~u_input.a), select(select(vec3<bool>(false, true, false), vec3<bool>(arg_0.x, true, arg_0.x), arg_0.x), !vec3<bool>(false, arg_0.x, true), select(vec3<bool>(arg_0.x, arg_0.x, arg_0.x), vec3<bool>(true, arg_0.x, true), vec3<bool>(arg_0.x, arg_0.x, false)))), vec2<i32>(-_wgslsmith_add_i32(1i, -2147483647i), (65593i << (u_input.a.x % 32u)) & 2147483647i), 1f, Struct_2(func_2(~(-2147483647i), _wgslsmith_f_op_vec2_f32(vec2<f32>(735f, 1779f) - vec2<f32>(1380f, -310f)), ~5247u, !vec3<bool>(arg_0.x, arg_0.x, arg_0.x)), reverseBits(~0u), func_2(abs(2147483647i), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1427f, -687f)), _wgslsmith_add_u32(u_input.a.x, u_input.a.x), vec3<bool>(false, arg_0.x, arg_0.x)), vec3<bool>(any(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x)), arg_0.x & arg_0.x, any(vec3<bool>(arg_0.x, arg_0.x, false)))), !func_2(~(-2147483647i), _wgslsmith_div_vec2_f32(vec2<f32>(-185f, -426f), vec2<f32>(1523f, -1027f)), 4294967295u, vec3<bool>(arg_0.x, arg_0.x, arg_0.x)).a), _wgslsmith_mod_i32(_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 3642i, -11628i, -1i), vec4<i32>(-18525i, -1i, 0i, -1i)) & _wgslsmith_clamp_i32(-4424i, 18813i, -2147483647i), -15165i), firstLeadingBit(26975i)), vec2<u32>(_wgslsmith_add_u32(func_2(_wgslsmith_dot_vec4_i32(vec4<i32>(10245i, 26899i, 1i, -35683i), vec4<i32>(2147483647i, 35381i, 6901i, 40547i)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(380f, -1016f)), _wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, u_input.a.x), !vec3<bool>(false, arg_0.x, arg_0.x)).b.x, u_input.a.x), firstLeadingBit(func_3(~u_input.a.x).x)));
    var_0 = Struct_5(var_0.a, ~(_wgslsmith_mult_i32(_wgslsmith_clamp_i32(var_0.a.b.x, -1i, var_0.a.b.x), firstLeadingBit(10436i)) & var_0.a.b.x), firstTrailingBit(firstTrailingBit(_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, 4294967295u) | u_input.a, vec2<u32>(4294967295u, 4294967295u)))));
    var var_1 = Struct_3(Struct_2(Struct_1(true, u_input.a), var_0.c.x, func_2(9759i, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1563f, var_0.a.c))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.c, var_0.a.c))), ~(u_input.a.x ^ 60738u), var_0.a.d.d), vec3<bool>(var_0.a.e, !(true && arg_0.x), var_0.a.d.d.x)), _wgslsmith_div_vec2_i32(var_0.a.b, min(~(vec2<i32>(var_0.b, 0i) ^ vec2<i32>(0i, var_0.a.b.x)), firstTrailingBit(vec2<i32>(var_0.b, 61445i)) << (vec2<u32>(0u, 36004u) % vec2<u32>(32u)))), var_0.a.c, Struct_2(var_0.a.d.c, select(reverseBits(13552u), _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(6773u, 15258u, 57071u), vec3<u32>(1u, u_input.a.x, u_input.a.x), vec3<u32>(u_input.a.x, u_input.a.x, 2209u)), vec3<u32>(0u, u_input.a.x, var_0.c.x)), true), func_2(var_0.b, vec2<f32>(_wgslsmith_f_op_f32(-var_0.a.c), _wgslsmith_f_op_f32(var_0.a.c * 944f)), 1u, select(!var_0.a.d.d, vec3<bool>(true, true, false), !arg_0.x)), vec3<bool>(arg_0.x, false, var_0.a.a.c.a)), !(!all(select(vec2<bool>(arg_0.x, true), vec2<bool>(false, var_0.a.a.a.a), arg_0))));
    let var_2 = var_0.a;
    let var_3 = _wgslsmith_dot_vec4_i32(max(~(~_wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, -2147483647i, var_2.b.x, -47536i), vec4<i32>(2147483647i, 0i, var_0.a.b.x, var_1.b.x), vec4<i32>(2147483647i, -1i, var_2.b.x, -2147483647i))), ~vec4<i32>(var_2.b.x & var_1.b.x, var_0.a.b.x >> (var_1.a.b % 32u), -53312i, _wgslsmith_mod_i32(-371i, -16043i))), _wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(var_1.b.x, 2147483647i, var_1.b.x, var_0.b), vec4<i32>(-1i, var_1.b.x, var_0.b, 8605i)), vec4<i32>(var_1.b.x, var_0.b, var_1.b.x, var_1.b.x)), ~abs(vec4<i32>(var_2.b.x, var_0.a.b.x, var_0.b, 36095i))), select(_wgslsmith_mult_vec4_i32(-vec4<i32>(var_1.b.x, var_0.b, var_1.b.x, 0i), _wgslsmith_mod_vec4_i32(vec4<i32>(var_2.b.x, -6915i, 8093i, 2147483647i), vec4<i32>(-1i, var_1.b.x, 1i, var_0.b))), select(abs(vec4<i32>(-14629i, var_1.b.x, -1i, var_1.b.x)), vec4<i32>(-27538i, var_0.a.b.x, 6254i, var_2.b.x), !vec4<bool>(false, true, true, var_2.e)), vec4<bool>(false, all(vec2<bool>(var_2.a.a.a, false)), var_0.a.a.d.x, var_2.a.c.b.x >= 50872u))));
    return Struct_4(var_0.a, _wgslsmith_f_op_f32(round(1265f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(select(!select(vec2<bool>(true, true), vec2<bool>(false, true), true), vec2<bool>(true, true), vec2<bool>(true, select(func_1(Struct_5(Struct_3(Struct_2(Struct_1(false, vec2<u32>(45901u, 29678u)), 4294967295u, Struct_1(false, vec2<u32>(u_input.a.x, 81439u)), vec3<bool>(false, true, true)), vec2<i32>(-67903i, 13725i), -769f, Struct_2(Struct_1(false, u_input.a), 96831u, Struct_1(true, u_input.a), vec3<bool>(true, true, false)), false), 1673i, vec2<u32>(104363u, u_input.a.x))), true, all(vec2<bool>(false, true))))));
    let var_1 = func_5(select(vec2<bool>(func_5(var_0.a.d.d.zy).a.a.d.x, var_0.a.d.a.a), var_0.a.a.d.yx, !select(!vec2<bool>(var_0.a.e, var_0.a.d.d.x), var_0.a.d.d.xx, var_0.a.e | var_0.a.d.c.a))).a;
    let var_2 = -(~var_0.a.b);
    let var_3 = Struct_3(Struct_2(Struct_1(!var_1.a.c.a, _wgslsmith_clamp_vec2_u32(abs(u_input.a), ~vec2<u32>(32597u, var_1.a.a.b.x), u_input.a >> (vec2<u32>(var_0.a.a.a.b.x, u_input.a.x) % vec2<u32>(32u)))), ~_wgslsmith_mod_u32(u_input.a.x, 0u << (u_input.a.x % 32u)), var_0.a.a.c, var_0.a.a.d), ~var_0.a.b, -804f, func_5(vec2<bool>(var_1.e, !(!var_1.e))).a.d, !(!(!select(false, false, var_1.d.d.x))));
    let var_4 = var_3.d;
    let var_5 = Struct_5(Struct_3(func_5(var_3.d.d.yx).a.a, _wgslsmith_mult_vec2_i32(func_5(vec2<bool>(true, true)).a.b, -(var_3.b & var_3.b)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.c - -870f) + _wgslsmith_f_op_f32(min(-1000f, 2377f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.c) + _wgslsmith_f_op_f32(max(var_3.c, 1162f))))), var_0.a.a, var_1.c == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-786f, var_3.c, var_3.e)) * 1f)), _wgslsmith_mult_i32(0i, _wgslsmith_clamp_i32(_wgslsmith_div_i32(-2147483647i, _wgslsmith_mod_i32(19248i, -2147483647i)), (var_0.a.b.x << (var_4.b % 32u)) | reverseBits(1i), var_0.a.b.x)), abs(min(firstTrailingBit(vec2<u32>(var_3.a.c.b.x, 32683u)), _wgslsmith_clamp_vec2_u32(u_input.a, ~u_input.a, var_3.a.c.b))));
    let var_6 = var_5;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-func_5(vec2<bool>(var_1.d.a.a, false)).a.c), -430f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_4(var_4, -1000f)).x + _wgslsmith_f_op_f32(var_0.b * var_0.a.c)), _wgslsmith_f_op_f32(min(-1134f, _wgslsmith_f_op_f32(-var_1.c)))))), vec2<u32>(_wgslsmith_sub_u32(var_6.a.a.c.b.x, ~(~0u)), 4484u));
}

