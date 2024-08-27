struct Struct_1 {
    a: vec3<f32>,
    b: vec3<f32>,
    c: bool,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 4294967295u;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: Struct_1, arg_3: f32) -> Struct_1 {
    global0 = ~(~1u);
    let var_0 = arg_2;
    var var_1 = var_0.d;
    var var_2 = var_0;
    var var_3 = arg_1;
    return arg_2;
}

fn func_3(arg_0: i32, arg_1: vec3<i32>, arg_2: vec3<bool>) -> f32 {
    let var_0 = select(arg_2.yz, arg_2.zz, all(vec4<bool>(arg_2.x, 2147483647i > arg_1.x, arg_2.x, true)));
    let var_1 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -774f), _wgslsmith_f_op_f32(f32(-1f) * -1709f), true | arg_2.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(439f, _wgslsmith_f_op_f32(max(-1392f, 480f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(348f)))) + -775f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-928f, 648f, 2140f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-501f, -2019f, -594f) * vec3<f32>(-828f, -1638f, -1027f)), !arg_2.x)))), any(select(!(!vec4<bool>(var_0.x, var_0.x, true, false)), vec4<bool>(false, false, func_1(vec4<bool>(true, var_0.x, var_0.x, arg_2.x), Struct_1(vec3<f32>(-667f, -2234f, -1000f), vec3<f32>(-646f, -342f, 1000f), arg_2.x, u_input.e), Struct_1(vec3<f32>(961f, 1107f, -1848f), vec3<f32>(1050f, 1000f, 888f), var_0.x, u_input.b), -313f).c, arg_2.x), any(select(vec4<bool>(true, false, false, false), vec4<bool>(var_0.x, var_0.x, true, var_0.x), vec4<bool>(false, true, arg_2.x, arg_2.x))))), abs(u_input.b));
    let var_2 = var_1;
    let var_3 = _wgslsmith_f_op_f32(abs(var_2.a.x));
    var var_4 = 39849i >> (_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(max(vec4<u32>(0u, u_input.b.x, 1u, 14207u) | vec4<u32>(var_1.d.x, var_2.d.x, 19363u, 1u), abs(vec4<u32>(48319u, u_input.e.x, 336u, 25210u))), select(~vec4<u32>(var_1.d.x, var_2.d.x, 0u, u_input.e.x), firstTrailingBit(vec4<u32>(var_2.d.x, var_1.d.x, 1u, 47773u)), !var_0.x)), firstTrailingBit(_wgslsmith_add_vec4_u32(~vec4<u32>(var_2.d.x, 0u, var_2.d.x, 82692u), vec4<u32>(0u, 12952u, var_2.d.x, var_1.d.x) ^ vec4<u32>(var_1.d.x, 300u, 65019u, u_input.e.x)))) % 32u);
    return _wgslsmith_f_op_f32(var_3 + 449f);
}

fn func_4(arg_0: Struct_1) -> vec2<bool> {
    var var_0 = _wgslsmith_div_f32(-580f, func_1(!(!vec4<bool>(false, true, arg_0.c, true)), func_1(vec4<bool>(!arg_0.c, true, arg_0.c, !arg_0.c), Struct_1(arg_0.a, vec3<f32>(arg_0.a.x, arg_0.b.x, 251f), any(vec2<bool>(false, false)), vec2<u32>(4789u, 10509u) ^ vec2<u32>(arg_0.d.x, 0u)), Struct_1(arg_0.b, vec3<f32>(arg_0.a.x, arg_0.b.x, -1000f), true, ~vec2<u32>(11854u, u_input.e.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-769f * 1000f))), func_1(select(select(vec4<bool>(arg_0.c, arg_0.c, true, arg_0.c), vec4<bool>(arg_0.c, false, arg_0.c, true), vec4<bool>(false, arg_0.c, arg_0.c, arg_0.c)), !vec4<bool>(false, arg_0.c, arg_0.c, arg_0.c), true), arg_0, arg_0, arg_0.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-631f, _wgslsmith_f_op_f32(f32(-1f) * -430f), arg_0.c)) + _wgslsmith_f_op_f32(-func_1(vec4<bool>(true, arg_0.c, arg_0.c, true), Struct_1(vec3<f32>(525f, -1000f, 186f), vec3<f32>(570f, -592f, arg_0.b.x), false, vec2<u32>(u_input.e.x, 17476u)), Struct_1(arg_0.b, arg_0.b, false, vec2<u32>(43214u, arg_0.d.x)), arg_0.a.x).a.x))).a.x);
    var var_1 = _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_dot_vec4_i32(~(vec4<i32>(u_input.a, 1i, u_input.c.x, -2147483647i) & vec4<i32>(-58388i, u_input.a, u_input.a, -2147483647i)), vec4<i32>(~0i, u_input.a, u_input.d, min(u_input.a, 8386i))), 2147483647i), vec2<i32>(-2147483647i, ~abs(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, -1i), vec2<i32>(10590i, u_input.a)))));
    var_0 = _wgslsmith_f_op_f32(abs(103f));
    let var_2 = func_1(select(select(!vec4<bool>(false, true, arg_0.c, arg_0.c), !select(vec4<bool>(false, false, false, arg_0.c), vec4<bool>(arg_0.c, false, arg_0.c, arg_0.c), vec4<bool>(arg_0.c, false, true, true)), !select(arg_0.c, arg_0.c, arg_0.c)), select(select(!vec4<bool>(arg_0.c, false, arg_0.c, arg_0.c), vec4<bool>(arg_0.c, arg_0.c, arg_0.c, arg_0.c), arg_0.c || arg_0.c), vec4<bool>(arg_0.c, true, true, any(vec2<bool>(false, arg_0.c))), arg_0.c), vec4<bool>(all(select(vec2<bool>(true, arg_0.c), vec2<bool>(true, arg_0.c), false)), any(vec4<bool>(arg_0.c, arg_0.c, true, arg_0.c)), true, true)), Struct_1(arg_0.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 276f, arg_0.a.x))), !func_1(select(vec4<bool>(arg_0.c, arg_0.c, arg_0.c, true), vec4<bool>(arg_0.c, false, arg_0.c, arg_0.c), true), func_1(vec4<bool>(arg_0.c, arg_0.c, arg_0.c, true), Struct_1(vec3<f32>(arg_0.b.x, arg_0.a.x, arg_0.b.x), arg_0.a, arg_0.c, arg_0.d), arg_0, arg_0.a.x), Struct_1(vec3<f32>(-1934f, arg_0.b.x, 515f), vec3<f32>(arg_0.b.x, 535f, 452f), arg_0.c, u_input.e), _wgslsmith_f_op_f32(min(-871f, 1686f))).c, vec2<u32>(~(33773u | u_input.b.x), u_input.b.x)), Struct_1(arg_0.b, vec3<f32>(-436f, arg_0.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_0.b.x)) + _wgslsmith_f_op_f32(step(797f, -353f)))), !arg_0.c, abs(~reverseBits(vec2<u32>(53908u, 4294967295u)))), 362f);
    let var_3 = _wgslsmith_add_u32(~14070u, 1u);
    return vec2<bool>(func_1(vec4<bool>(all(vec4<bool>(var_2.c, false, arg_0.c, var_2.c)), any(select(vec3<bool>(arg_0.c, arg_0.c, false), vec3<bool>(false, false, var_2.c), vec3<bool>(true, false, arg_0.c))), false, all(select(vec3<bool>(true, arg_0.c, arg_0.c), vec3<bool>(true, var_2.c, true), true))), Struct_1(arg_0.b, vec3<f32>(_wgslsmith_f_op_f32(trunc(var_2.a.x)), arg_0.a.x, _wgslsmith_f_op_f32(-var_2.a.x)), arg_0.c, vec2<u32>(1u, ~u_input.b.x)), Struct_1(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(-864f, -701f, -160f) + arg_0.a), _wgslsmith_f_op_vec3_f32(vec3<f32>(-565f, 966f, arg_0.b.x) + vec3<f32>(arg_0.a.x, 1121f, 126f)))), vec3<f32>(_wgslsmith_f_op_f32(ceil(var_2.a.x)), _wgslsmith_f_op_f32(-arg_0.b.x), _wgslsmith_f_op_f32(1038f - -1000f)), arg_0.c, vec2<u32>(_wgslsmith_mult_u32(1u, var_3), 54011u)), 807f).c, arg_0.c);
}

fn func_2(arg_0: Struct_1, arg_1: u32) -> Struct_1 {
    global0 = _wgslsmith_sub_u32(1u, arg_1);
    let var_0 = select(!func_4(func_1(!vec4<bool>(false, arg_0.c, true, arg_0.c), Struct_1(vec3<f32>(arg_0.b.x, -172f, 916f), arg_0.a, arg_0.c, u_input.e), Struct_1(arg_0.a, arg_0.b, true, vec2<u32>(53605u, 20385u)), _wgslsmith_f_op_f32(func_3(-1i, vec3<i32>(u_input.d, 1i, u_input.a), vec3<bool>(arg_0.c, arg_0.c, arg_0.c))))), !(!vec2<bool>(true, !arg_0.c)), vec2<bool>(arg_0.c, true));
    var var_1 = 1u;
    let var_2 = var_0;
    var_1 = arg_1 << (_wgslsmith_clamp_u32(~(~max(arg_0.d.x, arg_0.d.x)), 15967u, 1u) % 32u);
    return Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-arg_0.b.x), _wgslsmith_f_op_f32(arg_0.a.x + arg_0.a.x), _wgslsmith_f_op_f32(1306f + arg_0.b.x)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(arg_0.a.x, arg_0.b.x))))), 1654f, func_1(!vec4<bool>(arg_0.c, true, var_0.x, false), func_1(vec4<bool>(var_0.x, true, var_2.x, true), func_1(vec4<bool>(true, arg_0.c, var_2.x, false), Struct_1(vec3<f32>(1488f, 1780f, 1000f), vec3<f32>(446f, arg_0.b.x, arg_0.a.x), arg_0.c, u_input.b), arg_0, arg_0.b.x), arg_0, _wgslsmith_f_op_f32(f32(-1f) * -1000f)), func_1(vec4<bool>(false, var_2.x, false, false), Struct_1(vec3<f32>(arg_0.b.x, arg_0.b.x, arg_0.b.x), vec3<f32>(213f, 239f, arg_0.a.x), var_2.x, u_input.b), arg_0, -1000f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1298f + -425f), _wgslsmith_f_op_f32(step(-1000f, arg_0.a.x)))).b.x), true, arg_0.d);
}

fn func_5(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: u32) -> i32 {
    var var_0 = Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(floor(-914f)), _wgslsmith_f_op_f32(min(arg_0.a.x, -579f)), -1464f), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a.x, 2039f, arg_0.a.x) - vec3<f32>(-1635f, arg_0.b.x, -492f)), _wgslsmith_f_op_vec3_f32(min(arg_0.b, vec3<f32>(arg_0.a.x, arg_0.b.x, arg_0.b.x))))))), _wgslsmith_div_vec3_f32(func_1(select(vec4<bool>(arg_0.c, arg_0.c, true, arg_0.c), vec4<bool>(false, false, true, false), vec4<bool>(true, arg_0.c, arg_0.c, false)), Struct_1(arg_0.b, vec3<f32>(arg_0.a.x, arg_0.a.x, arg_0.b.x), false, vec2<u32>(arg_2, 1u)), func_1(vec4<bool>(arg_0.c, false, true, arg_0.c), arg_0, Struct_1(arg_0.a, arg_0.a, true, vec2<u32>(67711u, 0u)), 807f), _wgslsmith_f_op_f32(step(arg_0.b.x, -145f))).a, arg_0.a)), _wgslsmith_f_op_vec3_f32(exp2(arg_0.b)), false, vec2<u32>(select(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.e.x, 109076u, 30681u), vec3<u32>(arg_2, 38258u, 12527u) << (vec3<u32>(arg_2, 28554u, arg_2) % vec3<u32>(32u))), abs(u_input.b.x), arg_0.c), ~u_input.b.x));
    var_0 = arg_0;
    global0 = 0u ^ _wgslsmith_mod_u32(func_2(Struct_1(_wgslsmith_div_vec3_f32(var_0.a, vec3<f32>(var_0.b.x, var_0.b.x, arg_0.a.x)), _wgslsmith_f_op_vec3_f32(var_0.b + var_0.b), arg_0.c, ~u_input.b), ~u_input.b.x).d.x, 24595u);
    var var_1 = 1258f;
    let var_2 = Struct_1(arg_0.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(var_0.a, var_0.b)))) * vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.x) + 1066f), -881f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(306f - var_0.b.x)))), !all(!vec4<bool>(false, arg_0.c, var_0.c, var_0.c)), arg_0.d);
    return arg_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = reverseBits(~u_input.d | _wgslsmith_mod_i32(_wgslsmith_mult_i32(1i, -47331i), ~min(-17045i, 27737i)));
    var var_1 = ~(-func_5(func_2(func_1(vec4<bool>(false, false, true, true), Struct_1(vec3<f32>(-354f, -971f, -2462f), vec3<f32>(1000f, 363f, -596f), true, u_input.e), Struct_1(vec3<f32>(-661f, -1007f, -1000f), vec3<f32>(172f, 784f, -1337f), true, vec2<u32>(u_input.b.x, 4294967295u)), -403f), ~u_input.b.x), vec2<i32>(u_input.d, u_input.d) >> (vec2<u32>(u_input.e.x, 1u) % vec2<u32>(32u)), _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.b.x, 61246u, u_input.e.x), vec3<u32>(93275u, 4294967295u, u_input.b.x)), vec3<u32>(1u, u_input.e.x, 1u))));
    var_1 = ~(~abs(40921i >> (u_input.e.x % 32u)));
    var var_2 = select(!vec4<bool>(any(vec3<bool>(false, false, false)), any(select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), true)), true, true), select(vec4<bool>(false, true, any(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true))), u_input.e.x >= u_input.e.x), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), true), !select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), true), func_2(func_2(Struct_1(vec3<f32>(-521f, 1149f, -1000f), vec3<f32>(-610f, 603f, 1114f), false, vec2<u32>(u_input.b.x, 4294967295u)), u_input.e.x), select(u_input.e.x, u_input.e.x, true)).c), select(select(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false)), vec4<bool>(true, true, true, true), func_2(Struct_1(vec3<f32>(112f, 1458f, 1089f), vec3<f32>(327f, -1784f, -1000f), true, u_input.b), 14467u).c), select(select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), false), select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true)), any(vec2<bool>(true, false))), vec4<bool>(true, true, true, true))), vec4<bool>(true, true, !any(vec2<bool>(true, true)), false));
    var_1 = u_input.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(-465f);
}

