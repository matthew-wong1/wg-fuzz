struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: bool,
    d: vec4<f32>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec3<u32>,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    var var_0 = arg_0.d;
    var var_1 = var_0.x;
    return Struct_1(arg_0.c, ~arg_0.b, false, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-arg_0.d))), var_0.xy);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<i32>) -> Struct_2 {
    let var_0 = vec3<bool>(false, true, !arg_0.c);
    return Struct_2(select(vec2<i32>(_wgslsmith_add_i32(-768i, u_input.b.x) << (global0.x % 32u), ~24269i), firstLeadingBit(_wgslsmith_mult_vec2_i32(arg_2.xw, select(u_input.b.zx, vec2<i32>(u_input.b.x, -2147483647i), var_0.x))), arg_1.c), vec3<u32>(1u, _wgslsmith_add_u32(~arg_1.b.x, 0u), _wgslsmith_mod_u32(u_input.a, 18304u)), firstTrailingBit(-1i));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2) -> Struct_1 {
    global0 = vec4<u32>(~(~arg_0.b.x), 45968u, ~_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(arg_1.b.yy, vec2<u32>(19914u, 0u)), vec2<u32>(4294967295u, 16378u) << (global0.zw % vec2<u32>(32u))), _wgslsmith_sub_u32(min(13702u, 56226u), u_input.a)), arg_1.b.x);
    global0 = _wgslsmith_add_vec4_u32(func_2(Struct_1(all(vec3<bool>(true, true, true)), vec4<u32>(1139u, func_2(Struct_1(true, vec4<u32>(global0.x, u_input.a, global0.x, 1u), true, vec4<f32>(172f, -240f, 661f, -152f), vec2<f32>(-1000f, 1473f))).b.x, min(global0.x, global0.x), u_input.a), select(all(vec3<bool>(true, true, true)), true, arg_1.b.x == global0.x), _wgslsmith_div_vec4_f32(vec4<f32>(-717f, 987f, -341f, -490f), vec4<f32>(-405f, -1989f, 1000f, -1877f)), vec2<f32>(_wgslsmith_f_op_f32(sign(1000f)), _wgslsmith_f_op_f32(trunc(-1193f))))).b, min(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_1.b.x, 50577u, 4294967295u, arg_0.b.x), vec4<u32>(42298u, 8735u, 52748u, arg_0.b.x)), ~_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 53714u, 4294967295u, 0u), vec4<u32>(1u, u_input.a, arg_0.b.x, 4294967295u))) & firstLeadingBit(max(~vec4<u32>(1u, arg_1.b.x, 0u, u_input.a), ~vec4<u32>(u_input.a, arg_1.b.x, arg_1.b.x, 36631u))));
    var var_0 = func_2(Struct_1(global0.x >= 4294967295u, ~(~abs(vec4<u32>(16229u, 4294967295u, 58406u, global0.x))), true, vec4<f32>(225f, _wgslsmith_f_op_f32(f32(-1f) * -942f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(741f)), _wgslsmith_f_op_f32(abs(943f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(-667f, 196f, false)), _wgslsmith_f_op_f32(sign(-1819f))))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-2142f, -106f) - vec2<f32>(-971f, 721f)) + _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1865f, -318f), vec2<f32>(-469f, -341f))))))));
    global0 = var_0.b;
    var var_1 = Struct_1(var_0.c, _wgslsmith_div_vec4_u32(~(~var_0.b), func_2(Struct_1(var_0.c && false, var_0.b ^ vec4<u32>(31932u, arg_1.b.x, arg_1.b.x, 48416u), !var_0.c, vec4<f32>(var_0.d.x, var_0.e.x, -1204f, 1610f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.d.x, var_0.e.x)))).b), select(all(!(!vec2<bool>(var_0.a, var_0.a))), all(select(select(vec3<bool>(true, false, true), vec3<bool>(false, true, var_0.a), vec3<bool>(var_0.c, var_0.c, var_0.a)), vec3<bool>(false, true, var_0.c), select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(var_0.c, var_0.c, true)))), var_0.a), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1082f, 429f, var_0.e.x, var_0.d.x))), var_0.d)) - var_0.d), _wgslsmith_f_op_vec4_f32(-var_0.d))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(var_0.e.x, var_0.d.x)), _wgslsmith_f_op_f32(-var_0.e.x)) + var_0.e), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.e - vec2<f32>(576f, 1127f)))))));
    return Struct_1(all(!(!vec4<bool>(var_0.c, var_1.c, var_1.a, false))) || false, var_1.b >> (~_wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(var_1.b, vec4<u32>(31959u, var_1.b.x, u_input.a, var_0.b.x)), var_0.b) % vec4<u32>(32u)), true, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -108f), -166f, -923f, _wgslsmith_f_op_f32(f32(-1f) * -1230f)))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -110f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(2987f, -354f))), -1279f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.d.x, -1205f)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(var_1.e)))));
}

fn func_5(arg_0: vec2<f32>, arg_1: f32, arg_2: f32, arg_3: Struct_1) -> vec3<bool> {
    global0 = arg_3.b;
    let var_0 = vec3<i32>(~u_input.b.x, u_input.b.x, abs(-2147483647i));
    global0 = _wgslsmith_add_vec4_u32(arg_3.b, arg_3.b);
    let var_1 = select(!vec4<bool>(true, any(!vec3<bool>(true, arg_3.a, arg_3.c)), all(!vec3<bool>(false, arg_3.c, arg_3.c)), !arg_3.c), !vec4<bool>(_wgslsmith_mod_u32(4294967295u, 22302u) <= ~u_input.a, true | (101210u >= arg_3.b.x), any(vec2<bool>(false, arg_3.a)), true), select(!vec4<bool>(true, true, arg_3.a, false), vec4<bool>(arg_3.c, false, !(u_input.b.x == var_0.x), 2147483647i != _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x, u_input.b.x, -4271i), var_0)), all(!(!vec2<bool>(arg_3.a, true)))));
    global0 = ~vec4<u32>(firstTrailingBit(0u) & u_input.a, _wgslsmith_add_u32(_wgslsmith_mult_u32(32126u, global0.x), u_input.a | 40325u), global0.x, u_input.a) ^ arg_3.b;
    return var_1.xwz;
}

fn func_1(arg_0: vec2<i32>) -> f32 {
    var var_0 = vec3<bool>((abs(u_input.a) < global0.x) || true, true, any(vec3<bool>(true, true, true)));
    var_0 = vec3<bool>(all(!vec4<bool>(true, var_0.x, var_0.x, var_0.x)), var_0.x, all(var_0.yz) || (true | all(!vec4<bool>(false, true, var_0.x, true))));
    var_0 = !func_5(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 649f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1023f, -1059f))), 196f, -264f, func_4(func_3(func_2(Struct_1(true, vec4<u32>(1u, u_input.a, u_input.a, global0.x), true, vec4<f32>(-1197f, -129f, -834f, 397f), vec2<f32>(-356f, -910f))), func_2(Struct_1(var_0.x, vec4<u32>(u_input.a, global0.x, 2318u, 52484u), var_0.x, vec4<f32>(-470f, -276f, 1000f, -686f), vec2<f32>(1731f, -1719f))), -vec4<i32>(-2147483647i, 1i, 33811i, u_input.b.x)), Struct_2(-vec2<i32>(-13536i, 0i), abs(vec3<u32>(19886u, 38884u, 1u)), abs(arg_0.x))));
    let var_1 = var_0.x;
    var var_2 = select(u_input.b.yz, u_input.b.xy, func_5(vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(251f, -1459f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-336f + -1763f))), 1211f, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1087f + 146f), -363f), _wgslsmith_f_op_f32(round(645f)))), Struct_1(func_5(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-669f, -452f)), _wgslsmith_f_op_f32(f32(-1f) * -399f), 1f, func_2(Struct_1(var_0.x, vec4<u32>(global0.x, 4294967295u, u_input.a, u_input.a), true, vec4<f32>(-1266f, -752f, -356f, -111f), vec2<f32>(-906f, -1000f)))).x, firstLeadingBit(vec4<u32>(4294967295u, 41680u, global0.x, u_input.a)), ~4294967295u > _wgslsmith_div_u32(u_input.a, 1u), vec4<f32>(-2000f, _wgslsmith_f_op_f32(-715f + -108f), -593f, -1000f), func_4(func_3(Struct_1(false, vec4<u32>(41028u, 43417u, 0u, u_input.a), var_0.x, vec4<f32>(1094f, -1053f, -161f, 1104f), vec2<f32>(289f, -437f)), Struct_1(var_0.x, vec4<u32>(12339u, 62661u, 0u, u_input.a), true, vec4<f32>(963f, -462f, 1889f, 2087f), vec2<f32>(265f, -1283f)), vec4<i32>(u_input.b.x, u_input.b.x, -2147483647i, u_input.b.x)), func_3(Struct_1(var_0.x, vec4<u32>(54008u, u_input.a, 0u, 61509u), false, vec4<f32>(1506f, -1317f, 525f, 1032f), vec2<f32>(-582f, -280f)), Struct_1(false, vec4<u32>(global0.x, 4294967295u, global0.x, u_input.a), var_0.x, vec4<f32>(1054f, 260f, 461f, -791f), vec2<f32>(-1075f, 248f)), vec4<i32>(-1i, arg_0.x, 2147483647i, u_input.b.x))).e)).yx);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1662f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -715f) + _wgslsmith_f_op_f32(f32(-1f) * -204f)), _wgslsmith_f_op_f32(floor(-1164f)), all(vec4<bool>(var_0.x, false, var_0.x, var_0.x)))), !(-1i >= firstLeadingBit(arg_0.x)))) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1567f + -1502f) - -1047f))))));
}

fn func_6(arg_0: vec3<f32>, arg_1: vec2<u32>) -> f32 {
    var var_0 = func_3(Struct_1(false, select(~(vec4<u32>(u_input.a, 35217u, 37120u, global0.x) & vec4<u32>(u_input.a, 4294967295u, 4294967295u, global0.x)), vec4<u32>(~0u, ~global0.x, ~49262u, arg_1.x), vec4<bool>(true, true, true, true)), func_4(func_3(func_2(Struct_1(true, vec4<u32>(1u, 718u, 30989u, 0u), true, vec4<f32>(arg_0.x, 328f, arg_0.x, arg_0.x), arg_0.zz)), Struct_1(true, vec4<u32>(arg_1.x, 27739u, 48054u, global0.x), true, vec4<f32>(627f, arg_0.x, 476f, arg_0.x), vec2<f32>(arg_0.x, arg_0.x)), firstTrailingBit(vec4<i32>(u_input.b.x, 2147483647i, 2147483647i, u_input.b.x))), func_3(func_2(Struct_1(true, vec4<u32>(25679u, 24549u, arg_1.x, 1u), false, vec4<f32>(-930f, -1000f, 678f, arg_0.x), arg_0.zy)), Struct_1(false, vec4<u32>(81794u, global0.x, 5641u, arg_1.x), false, vec4<f32>(-377f, -1989f, -535f, -584f), vec2<f32>(856f, 369f)), firstLeadingBit(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x)))).c, vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(arg_0.x)), 937f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_0.x - -126f), arg_0.x, func_4(Struct_2(vec2<i32>(2147483647i, u_input.b.x), global0.wyz, 19775i), Struct_2(vec2<i32>(u_input.b.x, -2147483647i), vec3<u32>(41695u, 93616u, arg_1.x), u_input.b.x)).c)), 1129f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(u_input.b.zz)))), vec2<f32>(1000f, _wgslsmith_f_op_f32(-arg_0.x))), Struct_1(func_5(func_4(func_3(Struct_1(true, vec4<u32>(4294967295u, global0.x, u_input.a, 32012u), true, vec4<f32>(661f, -2216f, arg_0.x, 692f), arg_0.xx), Struct_1(false, vec4<u32>(1u, arg_1.x, arg_1.x, 21996u), true, vec4<f32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), vec2<f32>(-604f, arg_0.x)), vec4<i32>(u_input.b.x, -13086i, 1i, -46751i)), func_3(Struct_1(false, vec4<u32>(global0.x, u_input.a, arg_1.x, 0u), true, vec4<f32>(-755f, arg_0.x, arg_0.x, arg_0.x), arg_0.zx), Struct_1(true, vec4<u32>(0u, 4294967295u, 50846u, 1u), false, vec4<f32>(777f, 2172f, arg_0.x, arg_0.x), vec2<f32>(-800f, 550f)), vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, 0i))).e, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(-1187f)))), 1834f, Struct_1(true, vec4<u32>(global0.x, arg_1.x, global0.x, 52755u), true, _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-418f, -1000f, 629f, arg_0.x))), _wgslsmith_f_op_vec2_f32(-arg_0.xz))).x, select(~(vec4<u32>(39876u, 54431u, u_input.a, 1u) & vec4<u32>(u_input.a, 35624u, arg_1.x, global0.x)), ~vec4<u32>(arg_1.x, global0.x, global0.x, 0u), false), func_4(Struct_2(~u_input.b.zz, vec3<u32>(36236u, u_input.a, global0.x), u_input.b.x), func_3(Struct_1(false, vec4<u32>(79319u, u_input.a, u_input.a, u_input.a), true, vec4<f32>(arg_0.x, 210f, arg_0.x, -182f), vec2<f32>(1454f, arg_0.x)), func_4(Struct_2(vec2<i32>(2147483647i, u_input.b.x), vec3<u32>(1u, arg_1.x, 1u), u_input.b.x), Struct_2(u_input.b.zx, vec3<u32>(14096u, 4294967295u, 4294967295u), -12113i)), vec4<i32>(u_input.b.x, -17446i, u_input.b.x, -1i))).c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, -1590f, -1381f, 2353f)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(func_1(vec2<i32>(u_input.b.x, -2147483647i)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(arg_0.xx)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(553f, arg_0.x))))), vec4<i32>(-1i) * -reverseBits(-vec4<i32>(u_input.b.x, u_input.b.x, 2147483647i, -47105i)));
    let var_1 = func_3(Struct_1(func_2(func_2(Struct_1(true, vec4<u32>(u_input.a, 53573u, 0u, var_0.b.x), true, vec4<f32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), arg_0.yy))).a, ~vec4<u32>(~global0.x, func_3(Struct_1(false, vec4<u32>(43011u, arg_1.x, 41157u, 0u), false, vec4<f32>(-1757f, arg_0.x, arg_0.x, arg_0.x), vec2<f32>(arg_0.x, arg_0.x)), Struct_1(false, vec4<u32>(arg_1.x, u_input.a, var_0.b.x, 21789u), true, vec4<f32>(arg_0.x, arg_0.x, 2539f, arg_0.x), vec2<f32>(-768f, arg_0.x)), vec4<i32>(13433i, var_0.c, var_0.c, -61043i)).b.x, ~arg_1.x, 0u), all(vec2<bool>(true, true)), vec4<f32>(_wgslsmith_f_op_f32(-arg_0.x), arg_0.x, arg_0.x, arg_0.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-507f, arg_0.x) * vec2<f32>(arg_0.x, arg_0.x))) + arg_0.yz)), func_2(func_4(func_3(func_4(Struct_2(vec2<i32>(u_input.b.x, -2147483647i), var_0.b, 5780i), Struct_2(var_0.a, vec3<u32>(arg_1.x, arg_1.x, 0u), var_0.a.x)), Struct_1(false, vec4<u32>(var_0.b.x, 0u, arg_1.x, 20616u), true, vec4<f32>(-725f, 239f, -107f, arg_0.x), arg_0.yy), -vec4<i32>(u_input.b.x, -18926i, var_0.c, var_0.a.x)), Struct_2(vec2<i32>(var_0.c, u_input.b.x), ~global0.yxx, ~1i))), vec4<i32>(abs(u_input.b.x), _wgslsmith_mult_i32(_wgslsmith_mult_i32(min(-9805i, 17819i), 0i >> (var_0.b.x % 32u)), ~firstLeadingBit(-46658i)), u_input.b.x, -41166i));
    global0 = select(func_4(var_1, func_3(Struct_1(true, ~vec4<u32>(106198u, var_1.b.x, global0.x, 4294967295u), func_5(arg_0.yz, -497f, arg_0.x, Struct_1(false, vec4<u32>(0u, var_0.b.x, u_input.a, u_input.a), false, vec4<f32>(-680f, arg_0.x, -844f, arg_0.x), vec2<f32>(arg_0.x, arg_0.x))).x, func_2(Struct_1(false, vec4<u32>(17269u, var_1.b.x, global0.x, 64773u), false, vec4<f32>(1000f, -171f, arg_0.x, arg_0.x), vec2<f32>(-290f, arg_0.x))).d, _wgslsmith_f_op_vec2_f32(arg_0.yx + arg_0.zz)), func_2(Struct_1(false, vec4<u32>(48959u, arg_1.x, 68029u, 1u), true, vec4<f32>(arg_0.x, 653f, 122f, arg_0.x), arg_0.zx)), abs(_wgslsmith_mult_vec4_i32(vec4<i32>(var_1.c, -2147483647i, var_1.a.x, u_input.b.x), vec4<i32>(2147483647i, u_input.b.x, -40615i, -22872i))))).b, min(_wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, arg_1.x, 1u, 4294967295u), vec4<u32>(var_0.b.x, var_1.b.x, global0.x, 4294967295u), vec4<u32>(u_input.a, var_1.b.x, var_1.b.x, var_0.b.x)) & vec4<u32>(31571u, 4294967295u, 1u, u_input.a), vec4<u32>(~4294967295u, _wgslsmith_mod_u32(68239u, var_1.b.x), min(0u, 2460u), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.x, 1u), vec2<u32>(1u, 4294967295u))), ~vec4<u32>(u_input.a, global0.x, 1u, var_0.b.x)), ~vec4<u32>(global0.x, firstLeadingBit(var_1.b.x), u_input.a, u_input.a)), func_2(Struct_1(true, _wgslsmith_sub_vec4_u32(vec4<u32>(0u, 0u, 54146u, global0.x), vec4<u32>(18506u, var_1.b.x, var_0.b.x, u_input.a)) & vec4<u32>(var_1.b.x, 11442u, arg_1.x, 67119u), true & func_4(var_1, Struct_2(u_input.b.zy, vec3<u32>(1u, arg_1.x, u_input.a), 1i)).c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(514f, 987f, 1000f, arg_0.x))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-454f, arg_0.x))))).a);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1525f - -834f));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~vec4<u32>(1u, global0.x, 4294967295u, countOneBits(~u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<u32>(4294967295u, _wgslsmith_add_u32(~u_input.a, _wgslsmith_clamp_u32(0u, 0u, u_input.a))), _wgslsmith_f_op_f32(func_6(vec3<f32>(-335f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1159f, 162f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(988f)) - _wgslsmith_f_op_f32(func_1(vec2<i32>(u_input.b.x, -1i))))), ~(vec2<u32>(global0.x, global0.x) << (vec2<u32>(4294967295u, u_input.a) % vec2<u32>(32u))))), global0.yzw);
}

