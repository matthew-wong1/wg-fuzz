struct Struct_1 {
    a: vec3<f32>,
    b: vec3<i32>,
    c: f32,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: i32,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: i32,
}

struct Struct_5 {
    a: Struct_2,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: u32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1995f;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> f32 {
    let var_0 = Struct_2(Struct_1(vec3<f32>(691f, _wgslsmith_f_op_f32(442f + _wgslsmith_f_op_f32(f32(-1f) * -135f)), 1480f), _wgslsmith_add_vec3_i32(~(~vec3<i32>(-35351i, u_input.a.x, u_input.c)), select(vec3<i32>(u_input.a.x, 15715i, 2147483647i) ^ vec3<i32>(-7364i, u_input.a.x, -20875i), ~vec3<i32>(-2147483647i, u_input.a.x, u_input.b), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), false))), 826f, -1270f), 9997i);
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.a.a.x, var_0.a.c) - _wgslsmith_f_op_f32(-var_0.a.a.x)) * _wgslsmith_f_op_f32(-var_0.a.c)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(var_0.a.c)), _wgslsmith_f_op_f32(f32(-1f) * -156f))))));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(761f, 900f, 1277f, var_0.a.a.x))))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(941f, var_0.a.c, var_0.a.a.x, _wgslsmith_f_op_f32(-615f * var_0.a.d)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.a.c, 241f, var_0.a.d, var_0.a.d))) - vec4<f32>(_wgslsmith_f_op_f32(-var_0.a.a.x), _wgslsmith_f_op_f32(var_0.a.c * -1590f), 1759f, 1009f))));
    var var_2 = Struct_5(var_0, abs(~vec4<u32>(71654u << (1u % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(34105u, u_input.d, 758u, u_input.d), vec4<u32>(0u, 0u, u_input.d, u_input.d)), 4294967295u, u_input.d)));
    let var_3 = ~vec3<u32>(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(var_2.b, var_2.b), u_input.d | var_2.b.x) >> (_wgslsmith_dot_vec3_u32(var_2.b.xxz, vec3<u32>(4294967295u, var_2.b.x, u_input.d)) % 32u), abs(select(u_input.d, ~var_2.b.x, all(vec3<bool>(false, true, false)))), ~0u);
    return var_0.a.a.x;
}

fn func_2(arg_0: bool, arg_1: vec4<i32>) -> i32 {
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -899f);
    var var_0 = false;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) * _wgslsmith_f_op_f32(f32(-1f) * -833f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-817f - -1633f)) * -1237f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-717f)) + _wgslsmith_div_f32(249f, 114f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3()))));
    var var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(-333f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(563f - -1000f), _wgslsmith_div_f32(974f, -359f)))), _wgslsmith_f_op_f32(f32(-1f) * -795f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-899f - -361f)))));
    var var_3 = _wgslsmith_sub_i32(arg_1.x, _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(max(arg_1, arg_1), vec4<i32>(u_input.c, 59638i, u_input.c, u_input.a.x) & arg_1) | -15710i, abs(arg_1.x)));
    return _wgslsmith_sub_i32(u_input.c, _wgslsmith_sub_i32(u_input.c, _wgslsmith_div_i32(reverseBits(u_input.a.x) << (reverseBits(36934u) % 32u), max(~u_input.a.x, _wgslsmith_clamp_i32(u_input.c, arg_1.x, u_input.a.x)))));
}

fn func_1(arg_0: vec2<bool>) -> Struct_2 {
    global0 = -747f;
    var var_0 = Struct_4(Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(918f, -436f, -2093f) - vec3<f32>(-908f, 1267f, -323f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-133f, -307f, -203f)), arg_0.x)), -(vec3<i32>(u_input.a.x, -5359i, -26863i) << (vec3<u32>(u_input.d, u_input.d, 1u) % vec3<u32>(32u))), -1054f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(355f - -2731f))), func_2(true, ~vec4<i32>(10726i, u_input.a.x, u_input.a.x, 1i))), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(2142f, 1271f, 1043f)))), vec3<i32>(_wgslsmith_clamp_i32(~u_input.a.x, 1i, 12907i), u_input.c, max(u_input.a.x, ~u_input.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(-405f)), _wgslsmith_f_op_f32(f32(-1f) * -1358f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -568f), -1064f))), ~(-2592i));
    var var_1 = select(vec4<bool>(any(!vec2<bool>(arg_0.x, arg_0.x)), arg_0.x, true, !(!(!arg_0.x))), select(!vec4<bool>(u_input.a.x != u_input.c, 34162u <= u_input.d, var_0.b.b.x != -47911i, any(vec3<bool>(arg_0.x, arg_0.x, arg_0.x))), select(vec4<bool>(arg_0.x, u_input.d <= 5818u, any(vec4<bool>(false, false, false, arg_0.x)), any(vec4<bool>(true, false, false, true))), !(!vec4<bool>(arg_0.x, arg_0.x, true, arg_0.x)), !all(vec2<bool>(arg_0.x, arg_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.a.a.x)) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-913f + var_0.b.a.x))), all(arg_0) || false);
    var_1 = vec4<bool>(arg_0.x, var_1.x && ((87889u <= (u_input.d | u_input.d)) & false), !arg_0.x, !(arg_0.x || (u_input.d == u_input.d)));
    let var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1407f), _wgslsmith_f_op_f32(ceil(-128f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1157f, var_0.b.c))), -418f, 683f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.a.x, var_0.b.a.x, _wgslsmith_f_op_f32(715f - -333f), 381f)) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.a.x, 196f, var_0.b.c, 182f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.a.c, -716f, 727f, var_0.b.c) + vec4<f32>(var_0.b.c, -1000f, 848f, -646f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.c, 245f, var_0.b.d, -1016f)))));
    return Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(2184f, var_2.x, -452f)))), var_0.a.a.b, -1000f, -389f), u_input.a.x);
}

fn func_4(arg_0: Struct_2) -> u32 {
    global0 = _wgslsmith_f_op_f32(func_3());
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_0.a.a.x)) + _wgslsmith_f_op_f32(floor(arg_0.a.c))) - _wgslsmith_f_op_f32(1102f * _wgslsmith_f_op_f32(f32(-1f) * -643f)))));
    global0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.c) * -1294f))));
    global0 = _wgslsmith_f_op_f32(-arg_0.a.c);
    return ~_wgslsmith_sub_u32(u_input.d, ~(~(~43427u)));
}

fn func_5(arg_0: vec3<u32>, arg_1: vec2<u32>, arg_2: u32) -> vec3<f32> {
    var var_0 = ~arg_1.x;
    var var_1 = u_input.b;
    let var_2 = arg_1.x;
    let var_3 = func_1(!vec2<bool>(any(vec4<bool>(false, true, true, true)), true)).a;
    var var_4 = Struct_4(Struct_2(Struct_1(var_3.a, ~var_3.b, 2223f, _wgslsmith_f_op_f32(func_3())), -53252i), var_3, _wgslsmith_clamp_i32(~(-9488i), abs(15640i) >> (max(var_2, func_4(Struct_2(Struct_1(var_3.a, vec3<i32>(var_3.b.x, var_3.b.x, 285i), var_3.d, var_3.d), -3331i))) % 32u), _wgslsmith_add_i32(-17000i, 0i)));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_3.a) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(187f, var_4.b.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_3.a.x), _wgslsmith_f_op_f32(-995f + -715f)))));
}

fn func_6(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: i32) -> Struct_5 {
    global0 = 1000f;
    global0 = arg_0.d;
    var var_0 = vec3<u32>(~reverseBits(1u), _wgslsmith_dot_vec4_u32(~(vec4<u32>(0u, u_input.d, 4294967295u, 1506u) | vec4<u32>(u_input.d, 0u, u_input.d, 4294967295u)), ~max(vec4<u32>(23879u, u_input.d, 1u, u_input.d), vec4<u32>(28140u, u_input.d, 35563u, u_input.d))), abs(44742u)) >> (vec3<u32>(firstLeadingBit(0u), _wgslsmith_mod_u32(reverseBits(reverseBits(0u)), ~u_input.d), u_input.d) % vec3<u32>(32u));
    let var_1 = Struct_2(func_1(select(vec2<bool>(true, false), vec2<bool>(true, any(vec4<bool>(true, false, true, true))), true)).a, ~max(arg_2, 0i));
    let var_2 = vec2<i32>(arg_2, -firstLeadingBit(-select(1i, arg_2, true)));
    return Struct_5(Struct_2(arg_0, arg_0.b.x), vec4<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, 4294967295u, 55586u), vec3<u32>(0u, u_input.d, var_0.x)), max(var_0.x, var_0.x)), _wgslsmith_sub_u32(1u, var_0.x), ~u_input.d, ~(~1u)) & vec4<u32>(14484u | _wgslsmith_sub_u32(u_input.d, var_0.x), _wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(4294967295u, 0u, 92578u, 1u)), vec4<u32>(u_input.d, var_0.x, u_input.d, u_input.d) ^ vec4<u32>(var_0.x, 38293u, 42578u, u_input.d)), var_0.x | select(u_input.d, 23605u, true), 30719u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(Struct_1(_wgslsmith_f_op_vec3_f32(func_5(vec3<u32>(~u_input.d, 0u, _wgslsmith_sub_u32(u_input.d, 4294967295u)), countOneBits(vec2<u32>(2523u, u_input.d)), func_4(func_1(vec2<bool>(true, false))))), -vec3<i32>(-2147483647i, min(22085i, u_input.a.x), abs(u_input.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(150f * 1979f))), _wgslsmith_f_op_f32(-216f - _wgslsmith_f_op_f32(-882f + -678f))), _wgslsmith_mod_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.b, 28888i, u_input.c), firstLeadingBit(vec3<i32>(61115i, u_input.b, -1i))) & -_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.c, u_input.a.x, u_input.a.x), vec3<i32>(46896i, u_input.c, u_input.a.x)), ~vec3<i32>(_wgslsmith_div_i32(1i, u_input.b), _wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(0i, u_input.b)), 1i)), ~1i);
    global0 = _wgslsmith_f_op_f32(var_0.a.a.d + var_0.a.a.d);
    let var_1 = Struct_3(select(~(~var_0.b.zwy), abs(abs(var_0.b.xwx)), all(vec3<bool>(true, true, true))) << (~(vec3<u32>(var_0.b.x, 4294967295u, u_input.d) >> (min(var_0.b.yzw, vec3<u32>(1u, 3399u, 0u)) % vec3<u32>(32u))) % vec3<u32>(32u)), firstLeadingBit(func_1(vec2<bool>(true, true)).a.b.x));
    var var_2 = !any(select(select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false), false), vec4<bool>(true, false, 59319i == var_0.a.b, true), true));
    let var_3 = -var_1.b != -16502i;
    var var_4 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-153f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1000f))), var_0.a.a.d, var_0.a.a.d));
    let var_5 = vec2<bool>(!var_3 & var_3, true);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c >> (var_0.b.x % 32u), vec4<f32>(_wgslsmith_f_op_f32(-159f - _wgslsmith_f_op_f32(var_4.x - -651f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(-1149f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.a.c) + _wgslsmith_f_op_f32(f32(-1f) * -1991f)), false)), var_4.x, func_6(var_0.a.a, ~(~var_0.a.a.b), abs(u_input.b)).a.a.a.x), max(0u, min(func_4(func_6(var_0.a.a, var_0.a.a.b, var_0.a.a.b.x).a), 10187u)), max(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.b.x << (u_input.d % 32u), var_1.a.x), ~(~var_1.a.xz)), min(var_0.b.x, abs(firstLeadingBit(var_1.a.x)))), 4294967295u);
}

