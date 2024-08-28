struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: i32,
    d: i32,
    e: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
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

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3() -> f32 {
    let var_0 = i32(-1i) * -1i;
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1000f - -1267f), _wgslsmith_f_op_f32(select(-1367f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-292f)), _wgslsmith_f_op_f32(498f + _wgslsmith_f_op_f32(max(-739f, 818f)))), true))));
}

fn func_2(arg_0: vec2<bool>) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1137f) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -627f), 1000f))));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1741f - -1166f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-369f + 422f) + _wgslsmith_f_op_f32(f32(-1f) * -195f))) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(383f - 1899f) * _wgslsmith_f_op_f32(f32(-1f) * -133f))))));
    var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    var var_1 = 0i;
    let var_2 = select(vec2<i32>(-1i, firstTrailingBit(u_input.a)), vec2<i32>(_wgslsmith_dot_vec2_i32(countOneBits(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(-2147483647i, u_input.a))), abs(-vec2<i32>(u_input.a, u_input.a))), u_input.a), vec2<bool>(true, true));
    return 2147483647i;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_2) -> Struct_2 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(arg_0.b.x - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.a.b.x), _wgslsmith_div_f32(arg_0.b.x, -803f)))), arg_1.a.b.x, _wgslsmith_f_op_f32(-arg_0.b.x));
    var_0 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(arg_2.a.b.x)), -765f, arg_0.b.x))));
    var_0 = _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * -824f)))), 1377f, _wgslsmith_f_op_f32(-var_0.x))));
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_0.b.x, 296f, 261f)))))) * _wgslsmith_f_op_vec3_f32(min(vec3<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.a.b.x * arg_0.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -126f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1000f, arg_1.a.b.x, -969f))))))));
    var_0 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), var_0.x, arg_1.a.b.x), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1380f, -347f, arg_1.a.b.x), vec3<f32>(arg_1.a.b.x, arg_1.a.b.x, arg_0.b.x)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.a.b.x, 748f, arg_1.a.b.x) * vec3<f32>(arg_0.b.x, arg_2.a.b.x, 1362f)) * vec3<f32>(2018f, 604f, arg_1.a.b.x))))));
    return Struct_2(Struct_1(select(~(u_input.a ^ 0i), _wgslsmith_sub_i32(abs(-25759i), i32(-1i) * -46922i), true), var_0.yz, arg_2.a.d, -func_2(vec2<bool>(true, true)), vec4<i32>(arg_2.a.e.x, _wgslsmith_clamp_i32(-2147483647i, countOneBits(arg_0.e.x), ~8460i), _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(arg_2.a.e.xz, arg_1.a.e.xy), _wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, -2147483647i), arg_1.a.e.zw)), arg_2.a.d)), min(vec4<u32>(38949u, ~(~0u), 1917u, _wgslsmith_sub_u32(~0u, select(0u, 1u, false))), ~arg_1.b));
}

fn func_5(arg_0: i32, arg_1: i32, arg_2: Struct_2) -> Struct_1 {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_2.a.b.x - 923f))) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_2.a.b.x)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a.b.x)));
    var_0 = _wgslsmith_div_f32(1117f, _wgslsmith_f_op_f32(arg_2.a.b.x * arg_2.a.b.x));
    var var_1 = func_4(func_4(Struct_1(-2131i, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_2.a.b) * vec2<f32>(arg_2.a.b.x, -1000f)), -arg_0, 0i, arg_2.a.e), arg_2, Struct_2(arg_2.a, select(vec4<u32>(arg_2.b.x, 4294967295u, arg_2.b.x, arg_2.b.x) | vec4<u32>(arg_2.b.x, 15127u, arg_2.b.x, arg_2.b.x), arg_2.b << (vec4<u32>(29513u, 1u, 4294967295u, arg_2.b.x) % vec4<u32>(32u)), vec4<bool>(true, true, true, true)))).a, arg_2, arg_2).a;
    let var_2 = arg_2.a;
    let var_3 = true;
    return arg_2.a;
}

fn func_6(arg_0: Struct_1) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(arg_0.b.x - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_0.b.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_0.b.x)) * _wgslsmith_div_f32(1337f, arg_0.b.x))))));
    let var_1 = func_5(func_2(vec2<bool>(any(vec2<bool>(true, true)), _wgslsmith_f_op_f32(round(1127f)) < -270f)), -10943i, Struct_2(arg_0, select(vec4<u32>(4294967295u, 4294967295u, 44571u, 37933u), vec4<u32>(0u, 1u, 83140u, 5986u), vec4<bool>(false, false, false, true)) >> (~vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u))));
    var var_2 = ~(vec4<u32>(8964u, abs(countOneBits(0u)), select(4294967295u, 4294967295u, false) << (1u % 32u), ~_wgslsmith_mod_u32(56713u, 1u)) ^ vec4<u32>(countOneBits(_wgslsmith_div_u32(233u, 12349u)), _wgslsmith_div_u32(abs(115234u), 1u), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), firstTrailingBit(vec2<u32>(31383u, 29660u))), ~0u));
    var_2 = ~vec4<u32>(max(max(var_2.x, 39452u) >> (~var_2.x % 32u), var_2.x), countOneBits(_wgslsmith_mod_u32(75415u, ~var_2.x)), 0u, _wgslsmith_mult_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(var_2.x, var_2.x, var_2.x), vec3<u32>(var_2.x, 4294967295u, 0u)), _wgslsmith_add_u32(58710u, var_2.x) ^ 4294967295u));
    var_2 = _wgslsmith_clamp_vec4_u32(min(~(~vec4<u32>(var_2.x, 1u, 14474u, 1u)), countOneBits(_wgslsmith_add_vec4_u32(select(vec4<u32>(0u, var_2.x, 0u, 4294967295u), vec4<u32>(var_2.x, var_2.x, 1702u, 4294967295u), true), func_4(arg_0, Struct_2(arg_0, vec4<u32>(26023u, var_2.x, 0u, 1u)), Struct_2(arg_0, vec4<u32>(0u, var_2.x, 4190u, var_2.x))).b))), ~(~_wgslsmith_sub_vec4_u32(min(vec4<u32>(0u, 59224u, var_2.x, 43785u), vec4<u32>(4294967295u, var_2.x, 0u, 4678u)), ~vec4<u32>(4294967295u, 4781u, var_2.x, var_2.x))), (~(~vec4<u32>(var_2.x, var_2.x, var_2.x, 0u)) & _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 1u, var_2.x, 57470u) << (vec4<u32>(2110u, var_2.x, var_2.x, 1u) % vec4<u32>(32u)), vec4<u32>(var_2.x, 0u, var_2.x, 34230u))) >> ((~_wgslsmith_sub_vec4_u32(vec4<u32>(var_2.x, var_2.x, var_2.x, var_2.x), vec4<u32>(var_2.x, var_2.x, var_2.x, 1u)) & vec4<u32>(var_2.x | 7434u, _wgslsmith_add_u32(var_2.x, var_2.x), 4086u, ~66218u)) % vec4<u32>(32u)));
    return Struct_2(func_5(countOneBits(u_input.a), ~(-1i), Struct_2(var_1, abs(func_4(Struct_1(arg_0.e.x, var_1.b, u_input.a, u_input.a, var_1.e), Struct_2(var_1, vec4<u32>(1u, var_2.x, var_2.x, 1u)), Struct_2(var_1, vec4<u32>(var_2.x, 27885u, 0u, 67628u))).b))), vec4<u32>(func_4(func_5(_wgslsmith_dot_vec2_i32(arg_0.e.yw, vec2<i32>(-12586i, var_1.d)), _wgslsmith_sub_i32(-25776i, arg_0.a), func_4(var_1, Struct_2(Struct_1(arg_0.c, arg_0.b, var_1.e.x, u_input.a, vec4<i32>(-2147483647i, 0i, -1836i, -1i)), vec4<u32>(6048u, var_2.x, var_2.x, var_2.x)), Struct_2(var_1, vec4<u32>(var_2.x, var_2.x, var_2.x, var_2.x)))), func_4(Struct_1(var_1.e.x, var_1.b, -2147483647i, u_input.a, arg_0.e), func_4(Struct_1(1i, arg_0.b, -1i, var_1.a, vec4<i32>(59254i, 0i, 4727i, arg_0.c)), Struct_2(var_1, vec4<u32>(var_2.x, 34781u, var_2.x, 30083u)), Struct_2(Struct_1(var_1.e.x, vec2<f32>(-629f, 737f), var_1.e.x, u_input.a, arg_0.e), vec4<u32>(1u, 1u, 4294967295u, 4294967295u))), Struct_2(Struct_1(0i, vec2<f32>(-744f, 3010f), -21683i, var_1.a, vec4<i32>(1i, var_1.a, 5371i, arg_0.a)), vec4<u32>(var_2.x, var_2.x, var_2.x, 0u))), Struct_2(Struct_1(u_input.a, vec2<f32>(var_0, arg_0.b.x), 22323i, 1i, vec4<i32>(-2147483647i, var_1.d, -55886i, var_1.e.x)), firstTrailingBit(vec4<u32>(var_2.x, 1u, var_2.x, var_2.x)))).b.x, ~_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(var_2.ywy, vec3<u32>(var_2.x, 4294967295u, 0u)), select(var_2.yzy, var_2.zww, vec3<bool>(true, true, true))), var_2.x, ~_wgslsmith_dot_vec2_u32(var_2.zw, ~var_2.yy)));
}

fn func_1() -> f32 {
    let var_0 = func_6(func_5(0i, 42336i, func_4(Struct_1(func_2(vec2<bool>(true, false)), vec2<f32>(-571f, -306f), ~u_input.a, firstLeadingBit(u_input.a), countOneBits(vec4<i32>(u_input.a, -34073i, u_input.a, 1985i))), Struct_2(Struct_1(-49141i, vec2<f32>(638f, -965f), -19287i, u_input.a, vec4<i32>(0i, u_input.a, 2147483647i, u_input.a)), vec4<u32>(1u, 1u, 1u, 1u)), Struct_2(Struct_1(u_input.a, vec2<f32>(-230f, 1000f), 11142i, u_input.a, vec4<i32>(-2147483647i, u_input.a, u_input.a, 1i)), vec4<u32>(111042u, 11610u, 0u, 82968u)))));
    var var_1 = var_0.a;
    let var_2 = vec3<u32>(firstTrailingBit(var_0.b.x), _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.b.x, var_0.b.x, abs(var_0.b.x) | reverseBits(var_0.b.x)), firstLeadingBit(func_4(Struct_1(u_input.a, vec2<f32>(var_0.a.b.x, var_0.a.b.x), -2147483647i, 0i, var_1.e), func_4(Struct_1(var_0.a.e.x, var_1.b, var_0.a.d, 0i, var_0.a.e), Struct_2(Struct_1(40644i, vec2<f32>(var_1.b.x, 2210f), var_0.a.d, var_1.d, vec4<i32>(var_1.d, -5889i, -12970i, var_1.a)), var_0.b), var_0), Struct_2(var_0.a, var_0.b)).b.yzx)), 42160u | reverseBits(0u ^ _wgslsmith_sub_u32(1u, var_0.b.x)));
    let var_3 = Struct_2(func_4(var_0.a, func_6(func_5(-u_input.a, 2147483647i, func_4(var_0.a, Struct_2(Struct_1(-2147483647i, var_0.a.b, 47504i, u_input.a, var_0.a.e), var_0.b), var_0))), var_0).a, ~(~(~vec4<u32>(16579u, var_0.b.x, var_0.b.x, var_0.b.x))));
    var var_4 = true;
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-321f - var_1.b.x), _wgslsmith_f_op_f32(f32(-1f) * -315f))), _wgslsmith_f_op_f32(-1077f - _wgslsmith_f_op_f32(-func_4(var_0.a, var_0, func_4(Struct_1(var_1.e.x, var_0.a.b, u_input.a, 1i, vec4<i32>(var_1.d, 104513i, u_input.a, var_0.a.e.x)), Struct_2(Struct_1(-4751i, vec2<f32>(var_3.a.b.x, var_1.b.x), var_3.a.a, u_input.a, vec4<i32>(var_1.e.x, var_0.a.d, var_1.a, 2147483647i)), vec4<u32>(4294967295u, 1u, 0u, 24097u)), Struct_2(var_0.a, vec4<u32>(43170u, 5880u, 27229u, 1u)))).a.b.x)), all(!select(select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), false), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), false), true))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a;
    let var_1 = vec3<u32>(30945u, 40680u, 1u);
    var_0 = 1i;
    var_0 = -firstTrailingBit(u_input.a);
    var var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(-784f + 1014f), -1459f, _wgslsmith_f_op_f32(func_1()), -969f))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-148f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1301f, 2523f)), 1f, _wgslsmith_f_op_f32(782f - -492f))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(1021f, _wgslsmith_f_op_f32(ceil(-2040f)), 2427f, func_6(Struct_1(u_input.a, vec2<f32>(258f, 1113f), 10104i, -8476i, vec4<i32>(68231i, 0i, u_input.a, u_input.a))).a.b.x) - _wgslsmith_div_vec4_f32(vec4<f32>(-1339f, -701f, -1000f, 2284f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1116f, -703f, 1249f, 997f) - vec4<f32>(-791f, 1000f, 1403f, 248f)))))));
    var_0 = 23884i;
    var_0 = max(0i, -5089i);
    var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1649f, var_2.x, -1987f, var_2.x)) - vec4<f32>(-1000f, 1170f, -1053f, 154f)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_2.x, -699f, var_2.x, var_2.x), vec4<f32>(var_2.x, var_2.x, var_2.x, -340f), false)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-211f, -897f, var_2.x, 1077f) * vec4<f32>(1209f, var_2.x, var_2.x, var_2.x))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.x, 2523f) * var_2.x) + _wgslsmith_f_op_f32(ceil(var_2.x))), var_2.x, func_5(-(~u_input.a), 1i, func_6(func_6(Struct_1(1i, var_2.zy, u_input.a, 37607i, vec4<i32>(-3229i, -2147483647i, 23312i, 1i))).a)).b.x, -376f));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.x, _wgslsmith_sub_u32(~(~var_1.x), ~_wgslsmith_dot_vec4_u32(abs(vec4<u32>(30709u, var_1.x, var_1.x, var_1.x)), vec4<u32>(1u, var_1.x, 0u, var_1.x) & vec4<u32>(var_1.x, 41857u, var_1.x, 1u))));
}

