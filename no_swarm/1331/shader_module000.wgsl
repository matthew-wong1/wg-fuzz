struct Struct_1 {
    a: f32,
    b: f32,
    c: vec3<i32>,
    d: bool,
    e: vec4<i32>,
}

struct Struct_2 {
    a: bool,
    b: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_1,
    c: u32,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: Struct_3, arg_1: Struct_1) -> Struct_2 {
    var var_0 = arg_0.b;
    var var_1 = arg_0.b.b;
    let var_2 = arg_1.b;
    var var_3 = select(select(vec3<bool>(true, any(vec2<bool>(arg_1.d, false)), true), !(!(!vec3<bool>(arg_1.d, false, false))), select(vec3<bool>(var_0.a, true, !arg_1.d), select(!vec3<bool>(false, false, arg_1.d), !vec3<bool>(true, arg_0.b.a, true), !vec3<bool>(false, arg_1.d, false)), vec3<bool>(arg_1.d, !arg_0.a.d, false))), vec3<bool>(arg_0.a.d, var_0.a, !((-27740i <= u_input.a) || true)), arg_1.d || any(vec4<bool>(var_0.a, false, !arg_0.a.d, arg_0.a.d)));
    return arg_0.b;
}

fn func_3(arg_0: u32, arg_1: Struct_2, arg_2: Struct_2, arg_3: Struct_2) -> Struct_3 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(step(-599f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-303f, -948f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -514f), -1000f)) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -632f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1507f)) + -807f)))), vec3<i32>(-38168i, -1i, _wgslsmith_mult_i32(_wgslsmith_mod_i32(-34229i, u_input.c), select(8077i, u_input.a, arg_1.a) ^ u_input.c)), !arg_1.a != arg_3.a, ~(-(vec4<i32>(u_input.a, u_input.a, -20201i, u_input.a) & vec4<i32>(u_input.a, 5279i, -6789i, -20522i))) << (_wgslsmith_mod_vec4_u32(vec4<u32>(~arg_1.b, 1u, ~arg_3.b, ~0u), ~(~vec4<u32>(arg_1.b, arg_1.b, 4294967295u, u_input.b))) % vec4<u32>(32u)));
    var var_1 = 11250u;
    var var_2 = var_0.a;
    var_1 = ~111597u;
    var_2 = var_0.a;
    return Struct_3(var_0, func_2(Struct_3(var_0, func_2(Struct_3(var_0, Struct_2(var_0.d, 12184u)), var_0)), Struct_1(var_0.b, var_0.a, var_0.c, var_0.d, -vec4<i32>(var_0.c.x, 34334i, -21566i, 39388i))));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1) -> vec4<f32> {
    var var_0 = func_2(Struct_3(Struct_1(-2502f, _wgslsmith_f_op_f32(arg_0.a.b + _wgslsmith_f_op_f32(-1325f * arg_0.a.a)), ~arg_1.e.zzw, func_2(func_3(27810u, arg_0.b, arg_0.b, Struct_2(arg_0.a.d, 4294967295u)), Struct_1(arg_0.a.b, arg_0.a.b, arg_1.c, arg_1.d, vec4<i32>(78251i, arg_1.c.x, arg_1.e.x, -85730i))).a, vec4<i32>(arg_0.a.c.x, 11395i, 1i, _wgslsmith_clamp_i32(-60535i, 48358i, arg_0.a.e.x))), func_2(Struct_3(func_3(0u, Struct_2(true, 10791u), Struct_2(true, 43174u), arg_0.b).a, func_3(u_input.b, arg_0.b, arg_0.b, Struct_2(arg_0.b.a, 1u)).b), arg_0.a)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1085f * arg_0.a.b))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(1059f)), arg_0.a.b), select(-arg_1.c | _wgslsmith_add_vec3_i32(vec3<i32>(u_input.c, arg_1.c.x, 0i), arg_1.e.wxw), vec3<i32>(_wgslsmith_add_i32(-33467i, arg_0.a.c.x), ~0i, ~0i), vec3<bool>(!arg_1.d, arg_1.d, all(vec4<bool>(true, false, arg_1.d, false)))), !(true && (0u < arg_0.b.b)), vec4<i32>(-1i) * -vec4<i32>(0i, 1572i, arg_0.a.e.x, u_input.a)));
    var_0 = func_3(~11222u, arg_0.b, arg_0.b, Struct_2(var_0.a, 53143u)).b;
    var var_1 = Struct_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.a + arg_0.a.b)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.a), _wgslsmith_f_op_f32(f32(-1f) * -371f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(452f + arg_0.a.a) * _wgslsmith_div_f32(-1893f, arg_1.b)), _wgslsmith_f_op_f32(f32(-1f) * -860f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(1100f, arg_0.a.b)), _wgslsmith_f_op_f32(floor(-1049f)), _wgslsmith_f_op_f32(round(-299f)), -1703f) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(-170f, arg_1.a, arg_1.b, arg_1.a) + vec4<f32>(arg_1.a, arg_0.a.b, arg_1.b, 883f)), _wgslsmith_div_vec4_f32(vec4<f32>(1000f, 472f, 917f, arg_0.a.a), vec4<f32>(arg_1.b, 835f, 626f, arg_0.a.a)))))), func_3(101905u >> (_wgslsmith_add_u32(1u, _wgslsmith_mult_u32(18576u, u_input.b)) % 32u), arg_0.b, arg_0.b, func_2(Struct_3(arg_1, arg_0.b), arg_1)).a, 4294967295u, select(select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(arg_0.b.a, arg_1.d, arg_1.d, arg_1.d), vec4<bool>(true, arg_0.a.d, false, arg_1.d), var_0.a), vec4<bool>(arg_1.d, arg_0.b.a, arg_1.d, true)), vec4<bool>(func_3(arg_0.b.b, Struct_2(arg_0.a.d, arg_0.b.b), arg_0.b, arg_0.b).a.d, arg_1.b == -1607f, arg_1.d, all(vec3<bool>(arg_1.d, true, true))), vec4<bool>(!arg_0.a.d, var_0.a, true && arg_0.b.a, true)), !select(select(vec4<bool>(arg_0.b.a, var_0.a, false, arg_1.d), vec4<bool>(arg_1.d, arg_0.a.d, var_0.a, true), arg_1.d), select(vec4<bool>(arg_0.a.d, true, var_0.a, arg_1.d), vec4<bool>(false, arg_0.b.a, true, var_0.a), true), select(vec4<bool>(false, var_0.a, var_0.a, var_0.a), vec4<bool>(true, var_0.a, arg_1.d, true), arg_0.a.d)), select(vec4<bool>(arg_1.d, true, !arg_1.d, true), vec4<bool>(func_2(arg_0, arg_1).a, true, arg_0.a.d, any(vec4<bool>(true, arg_1.d, false, arg_1.d))), var_0.a)));
    let var_2 = firstLeadingBit(reverseBits(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(var_1.b.e.x, var_1.b.e.x), ~firstLeadingBit(var_1.b.c.xx))));
    let var_3 = true;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-var_1.a))));
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: i32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1110f, arg_0, arg_1.a, 1104f)) + _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1115f, -1519f, arg_0, 2180f)))), vec4<f32>(arg_1.a, _wgslsmith_f_op_f32(146f - arg_0), arg_1.a, _wgslsmith_f_op_f32(958f + 1546f))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(1492f, arg_1.b))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_0 - arg_0))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_1.a))), arg_1.b) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(2053f, -1143f, arg_0, -1429f))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-486f, -1022f, arg_1.b, -1032f), vec4<f32>(arg_0, arg_1.b, arg_0, 1069f), vec4<bool>(true, arg_1.d, arg_1.d, arg_1.d))))))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0));
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_4(func_3(_wgslsmith_div_u32(0u, u_input.b), Struct_2(arg_1.d, 58555u), Struct_2(arg_1.d, u_input.b), func_2(Struct_3(arg_1, Struct_2(arg_1.d, 4294967295u)), Struct_1(375f, var_0.x, vec3<i32>(-2147483647i, -9835i, 1i), arg_1.d, arg_1.e))), arg_1)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(362f, 1829f, arg_0, -1283f) - vec4<f32>(-587f, -547f, 240f, -1032f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-524f, var_0.x, 1000f, arg_0), vec4<f32>(132f, arg_0, arg_0, var_1))))) - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.b, 454f, -1744f, 415f) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_1.a, -191f, var_0.x, var_1))) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-151f, -870f, -156f, var_0.x))))))));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0, var_1))), -304f, _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -728f)) + _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(-615f, 276f)), arg_1.b, _wgslsmith_f_op_f32(f32(-1f) * -446f), _wgslsmith_f_op_f32(round(var_1))), vec4<f32>(_wgslsmith_f_op_vec4_f32(func_4(Struct_3(arg_1, Struct_2(false, u_input.b)), Struct_1(-670f, arg_0, vec3<i32>(arg_1.e.x, u_input.a, -1i), true, arg_1.e))).x, _wgslsmith_f_op_f32(select(arg_1.b, var_0.x, true)), func_3(u_input.b, Struct_2(true, 1531u), Struct_2(arg_1.d, 81288u), Struct_2(arg_1.d, 1u)).a.b, _wgslsmith_f_op_f32(-var_0.x)))));
    var var_2 = vec3<u32>(~u_input.b, _wgslsmith_div_u32(~func_2(Struct_3(arg_1, Struct_2(false, u_input.b)), func_3(4294967295u, Struct_2(true, u_input.b), Struct_2(arg_1.d, u_input.b), Struct_2(arg_1.d, 108496u)).a).b, u_input.b), ~_wgslsmith_mod_u32(max(u_input.b, ~0u), u_input.b));
    return func_3(1u, Struct_2(true, 1u), Struct_2(func_2(Struct_3(arg_1, Struct_2(arg_1.d, 0u)), Struct_1(556f, _wgslsmith_f_op_f32(arg_0 - -591f), arg_1.c, arg_1.d, ~arg_1.e)).a, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, _wgslsmith_mod_u32(6703u, 29021u), u_input.b ^ u_input.b), ~(vec3<u32>(var_2.x, 0u, u_input.b) & vec3<u32>(u_input.b, 1u, var_2.x)))), func_3(max(70423u, u_input.b | ~49609u), Struct_2(!all(vec2<bool>(arg_1.d, false)), var_2.x), Struct_2(false, reverseBits(var_2.x) ^ select(var_2.x, 2332u, arg_1.d)), Struct_2(var_1 != _wgslsmith_f_op_f32(ceil(-1297f)), ~func_2(Struct_3(arg_1, Struct_2(false, 0u)), arg_1).b)).b).a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~vec2<u32>(u_input.b, _wgslsmith_sub_u32(0u, _wgslsmith_mod_u32(~u_input.b, ~u_input.b)));
    let var_1 = Struct_3(func_1(-523f, Struct_1(-1917f, _wgslsmith_f_op_f32(364f - 568f), abs(vec3<i32>(0i, u_input.c, -1i)), select(true, true, true), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.c, 18670i, u_input.c, 1i) << (vec4<u32>(u_input.b, 8148u, var_0.x, u_input.b) % vec4<u32>(32u)), vec4<i32>(u_input.a, u_input.c, u_input.a, u_input.a), ~vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.c))), u_input.a), Struct_2(true, firstTrailingBit(~(~7243u))));
    var_0 = ~firstTrailingBit(vec2<u32>(var_0.x, u_input.b));
    let var_2 = Struct_1(func_1(var_1.a.b, Struct_1(_wgslsmith_f_op_f32(349f + _wgslsmith_f_op_f32(max(var_1.a.a, 970f))), _wgslsmith_f_op_f32(-var_1.a.a), _wgslsmith_mult_vec3_i32(-vec3<i32>(-2147483647i, -54487i, u_input.a), ~var_1.a.c), !var_1.b.a | !var_1.a.d, ~var_1.a.e), ~func_3(var_0.x, func_2(var_1, var_1.a), Struct_2(true, 1260u), var_1.b).a.e.x).b, _wgslsmith_div_f32(-440f, -625f), var_1.a.e.xwx, true, var_1.a.e);
    var var_3 = var_1.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1646f, 166f, var_2.a)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec4_f32(func_4(Struct_3(Struct_1(745f, -1252f, vec3<i32>(-46923i, -1i, -13188i), var_3.d, var_3.e), Struct_2(false, 0u)), Struct_1(-585f, 1060f, vec3<i32>(var_3.e.x, u_input.a, 26002i), var_1.a.d, var_3.e))).zzx)))), _wgslsmith_add_u32((21242u << (~var_0.x % 32u)) & ~_wgslsmith_sub_u32(var_0.x, 1u), _wgslsmith_dot_vec2_u32(vec2<u32>(reverseBits(15878u), func_3(0u, var_1.b, Struct_2(var_1.a.d, u_input.b), Struct_2(var_2.d, var_0.x)).b.b), abs(vec2<u32>(0u, 4294967295u)) << (~vec2<u32>(var_0.x, 31473u) % vec2<u32>(32u)))), vec4<u32>(0u, 46148u, var_0.x, abs(59753u)));
}

