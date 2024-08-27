struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: f32,
    d: vec4<i32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec4<u32>, arg_1: f32) -> bool {
    let var_0 = Struct_1(u_input.c);
    let var_1 = Struct_2(var_0, Struct_1(i32(-1i) * -_wgslsmith_mult_i32(global0.a, 1i)), u_input.b.x);
    return !(!(!any(vec2<bool>(true, true))));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2, arg_2: bool, arg_3: vec3<f32>) -> Struct_1 {
    global0 = arg_1.b;
    var var_0 = arg_0;
    var var_1 = -134f;
    let var_2 = select(_wgslsmith_mod_vec3_u32(~(~vec3<u32>(1u, arg_1.c, arg_1.c)) ^ (vec3<u32>(1u, 0u, 4294967295u) ^ vec3<u32>(1u, var_0.c, 12636u)), firstTrailingBit(vec3<u32>(abs(arg_0.c), arg_0.c, u_input.b.x >> (1u % 32u)))), ~(vec3<u32>(u_input.b.x, ~arg_0.c, 1u) ^ _wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(22112u, 4294967295u, arg_1.c), vec3<u32>(60866u, 1u, 24068u)), vec3<u32>(0u, 4294967295u, 124090u))), all(vec4<bool>(true, arg_2, !(arg_2 | false), func_3(~vec4<u32>(var_0.c, arg_0.c, arg_0.c, 47720u), -113f))));
    let var_3 = Struct_1(~(-66411i));
    return arg_0.b;
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: bool, arg_3: vec2<u32>) -> u32 {
    global0 = Struct_1(-2147483647i);
    global0 = func_2(Struct_2(func_2(Struct_2(Struct_1(u_input.a), func_2(Struct_2(arg_0, Struct_1(global0.a), u_input.b.x), Struct_2(Struct_1(-9751i), Struct_1(arg_0.a), 13012u), true, vec3<f32>(-1536f, -614f, 269f)), arg_3.x), Struct_2(Struct_1(u_input.c), arg_0, arg_3.x), (arg_0.a & -31691i) <= ~u_input.c, _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1f, 1f, 1f)))), Struct_1(-_wgslsmith_clamp_i32(2147483647i, arg_0.a, arg_1)), firstLeadingBit(countOneBits(arg_3.x))), Struct_2(func_2(Struct_2(arg_0, arg_0, u_input.b.x << (27523u % 32u)), Struct_2(arg_0, func_2(Struct_2(Struct_1(1i), Struct_1(2147483647i), 43829u), Struct_2(arg_0, Struct_1(u_input.a), u_input.b.x), arg_2, vec3<f32>(-983f, -575f, -2288f)), _wgslsmith_mod_u32(u_input.b.x, 11147u)), true, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1023f, -1065f, -160f)) + vec3<f32>(1091f, 1616f, 145f))), arg_0, select(29977u, 14034u, !any(vec4<bool>(false, false, arg_2, true)))), !(!(!arg_2)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-630f, 1185f, 625f) * vec3<f32>(287f, 199f, -559f)), vec3<f32>(1000f, 415f, -328f))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -692f), _wgslsmith_f_op_f32(sign(1432f)), _wgslsmith_f_op_f32(f32(-1f) * -437f)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-945f, 798f, -472f))))))));
    let var_0 = reverseBits(-1065i);
    var var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(min(-1000f, -2085f)), -889f, _wgslsmith_f_op_f32(abs(-643f))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(448f, -1935f, -234f), vec3<f32>(1f, 1f, 1f), arg_2)))) + _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1229f, -1000f, 416f), vec3<f32>(529f, -737f, -2078f))))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-303f, 323f, -305f) + vec3<f32>(-544f, 1282f, 1225f))) + vec3<f32>(_wgslsmith_div_f32(-1310f, -704f), 1000f, -137f))));
    global0 = func_2(Struct_2(func_2(Struct_2(arg_0, arg_0, 5103u), Struct_2(Struct_1(arg_0.a), Struct_1(var_0), _wgslsmith_div_u32(arg_3.x, arg_3.x)), select(true, any(vec2<bool>(false, true)), func_3(vec4<u32>(0u, u_input.b.x, u_input.b.x, 16606u), -402f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, -719f, -1116f)) - vec3<f32>(1530f, var_1.x, 1156f))), func_2(Struct_2(arg_0, func_2(Struct_2(Struct_1(u_input.c), arg_0, 4294967295u), Struct_2(Struct_1(arg_0.a), arg_0, 0u), arg_2, vec3<f32>(var_1.x, -279f, var_1.x)), u_input.b.x), Struct_2(func_2(Struct_2(arg_0, arg_0, 0u), Struct_2(arg_0, arg_0, 38917u), false, vec3<f32>(var_1.x, -952f, -921f)), func_2(Struct_2(Struct_1(arg_0.a), arg_0, arg_3.x), Struct_2(arg_0, arg_0, 1u), arg_2, vec3<f32>(var_1.x, 883f, var_1.x)), abs(72541u)), arg_2, _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-480f, var_1.x, var_1.x)))), _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b.x, 1u, arg_3.x), vec3<u32>(3502u, 41048u, arg_3.x), vec3<u32>(4294967295u, 43031u, arg_3.x)) >> (min(vec3<u32>(1u, 73740u, 4294967295u), vec3<u32>(arg_3.x, u_input.b.x, u_input.b.x)) % vec3<u32>(32u)), firstLeadingBit(vec3<u32>(arg_3.x, 7145u, u_input.b.x)))), Struct_2(func_2(Struct_2(func_2(Struct_2(arg_0, Struct_1(u_input.a), 1u), Struct_2(Struct_1(1i), Struct_1(arg_1), 0u), arg_2, vec3<f32>(var_1.x, var_1.x, var_1.x)), arg_0, 0u), Struct_2(func_2(Struct_2(Struct_1(248i), arg_0, u_input.b.x), Struct_2(Struct_1(global0.a), arg_0, u_input.b.x), false, vec3<f32>(var_1.x, var_1.x, -670f)), arg_0, u_input.b.x), !arg_2, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, var_1.x, var_1.x)) * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(2397f, var_1.x, 1161f))))), Struct_1(max(~(-2147483647i), u_input.c)), _wgslsmith_mult_u32(_wgslsmith_mult_u32(1u, select(u_input.b.x, 4294967295u, true)), firstTrailingBit(~1u))), true, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(896f, var_1.x, var_1.x))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, 411f, var_1.x)) * _wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_1.x, 732f, var_1.x))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(373f, var_1.x, var_1.x), vec3<f32>(var_1.x, -1000f, var_1.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(820f, 1807f, -1464f))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-110f, var_1.x, 909f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -404f, -737f))))));
    return ~(~firstLeadingBit(abs(1u)));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_2, arg_2: i32) -> vec2<i32> {
    var var_0 = _wgslsmith_mod_u32(4294967295u, ~54030u) >> ((~func_4(func_2(Struct_2(Struct_1(u_input.a), Struct_1(arg_0.a.a), arg_0.c), Struct_2(arg_0.b, arg_1.a, 473u), true, vec3<f32>(-511f, 215f, -616f)), arg_0.a.a, true, u_input.b) | func_4(arg_1.a, 1i, true, _wgslsmith_add_vec2_u32(firstTrailingBit(u_input.b), u_input.b ^ vec2<u32>(27293u, 21681u)))) % 32u);
    let var_1 = Struct_2(arg_1.a, Struct_1(-global0.a ^ arg_2), arg_1.c);
    let var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -463f)));
    var var_3 = vec4<i32>(-_wgslsmith_dot_vec3_i32(-(~vec3<i32>(u_input.a, 2147483647i, arg_1.a.a)), select(vec3<i32>(19136i, u_input.c, 47655i) | vec3<i32>(0i, global0.a, arg_2), _wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, -25401i, 18787i), vec3<i32>(47406i, -2147483647i, u_input.c)), false)), _wgslsmith_sub_i32(-63343i, _wgslsmith_clamp_i32(-2147483647i, _wgslsmith_mod_i32(-arg_0.b.a, arg_1.a.a), -24804i)), _wgslsmith_dot_vec4_i32(-(~vec4<i32>(var_1.a.a, -31308i, 1i, 1i)), max(vec4<i32>(-14290i, var_1.b.a, 3742i, 0i), _wgslsmith_add_vec4_i32(vec4<i32>(arg_0.b.a, arg_1.b.a, arg_2, 0i), vec4<i32>(6524i, global0.a, 2147483647i, arg_2)))) | u_input.c, ~(~var_1.a.a));
    let var_4 = -487f;
    return var_3.ww;
}

fn func_5(arg_0: vec2<i32>, arg_1: bool) -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_f32(-2158f * 1f);
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1105f, -1926f)))), _wgslsmith_f_op_f32(1787f * -129f), _wgslsmith_f_op_f32(1114f + _wgslsmith_f_op_f32(select(620f, 2012f, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1000f, -465f)) * -2089f))));
    var var_2 = -(~_wgslsmith_dot_vec2_i32(-_wgslsmith_mod_vec2_i32(arg_0, arg_0), vec2<i32>(abs(u_input.c), _wgslsmith_mult_i32(14441i, 0i))));
    var var_3 = Struct_1(_wgslsmith_sub_i32(arg_0.x, -6156i));
    var var_4 = _wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(reverseBits(select(vec4<u32>(64441u, 4294967295u, u_input.b.x, u_input.b.x), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 37707u), arg_1)), ~vec4<u32>(u_input.b.x, 0u, u_input.b.x, 0u) | vec4<u32>(0u, u_input.b.x, u_input.b.x, 4294967295u)), vec4<u32>(u_input.b.x, ~select(u_input.b.x, 0u, arg_1), ~firstLeadingBit(23181u), func_4(Struct_1(u_input.a), ~u_input.a, arg_1 | arg_1, u_input.b))) ^ select(_wgslsmith_div_vec4_u32(~(~vec4<u32>(1u, u_input.b.x, u_input.b.x, u_input.b.x)), _wgslsmith_add_vec4_u32(vec4<u32>(1u, 10383u, 49132u, u_input.b.x), vec4<u32>(u_input.b.x, 1u, 4294967295u, 1u)) & vec4<u32>(u_input.b.x, 787u, u_input.b.x, 4294967295u)), vec4<u32>(4294967295u, ~u_input.b.x, u_input.b.x, reverseBits(~u_input.b.x)), vec4<bool>(arg_1 || any(vec2<bool>(false, true)), arg_1, true, false));
    return firstTrailingBit(select(-vec4<i32>(-arg_0.x, 84546i, ~var_3.a, arg_0.x), ~(-vec4<i32>(global0.a, u_input.c, 0i, var_3.a)) & vec4<i32>(reverseBits(global0.a), _wgslsmith_add_i32(global0.a, 16374i), -global0.a, min(2147483647i, u_input.a)), false));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    var var_1 = var_0;
    let var_2 = !select(select(select(vec2<bool>(var_0, var_0), !vec2<bool>(var_0, var_0), !var_0), select(vec2<bool>(true, false), vec2<bool>(true, true), var_0 & var_0), vec2<bool>(var_0, false)), select(select(select(vec2<bool>(var_0, false), vec2<bool>(true, var_0), vec2<bool>(var_0, true)), select(vec2<bool>(var_0, false), vec2<bool>(var_0, var_0), vec2<bool>(true, var_0)), all(vec2<bool>(var_0, false))), vec2<bool>(var_0, all(vec3<bool>(var_0, false, true))), any(!vec3<bool>(var_0, var_0, var_0))), vec2<bool>(var_0 && all(vec2<bool>(true, var_0)), !any(vec2<bool>(true, var_0))));
    var_1 = false;
    var_1 = any(var_2);
    let x = u_input.a;
    s_output = StorageBuffer(526f, _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-298f, -961f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1000f, -2185f))), 1f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-606f + 108f))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1565f - -1041f) * _wgslsmith_f_op_f32(f32(-1f) * -1000f))))), func_5(_wgslsmith_mult_vec2_i32(_wgslsmith_add_vec2_i32(~vec2<i32>(u_input.c, global0.a), vec2<i32>(global0.a, global0.a)), ~func_1(Struct_2(Struct_1(global0.a), Struct_1(0i), 1u), Struct_2(Struct_1(-7223i), Struct_1(-2147483647i), u_input.b.x), 57234i)), ((0i << (u_input.b.x % 32u)) >> (~29613u % 32u)) > 28771i), -func_5(vec2<i32>(904i, 1i), false).xxz);
}

