struct Struct_1 {
    a: i32,
    b: bool,
    c: vec2<bool>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec3<f32>,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_2,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec2<f32>,
    d: f32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3() -> f32 {
    var var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(788f, 298f, -1250f, -465f) * _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-481f, 1000f, 1223f, -556f), vec4<f32>(-574f, -441f, -296f, 329f))))), vec4<f32>(_wgslsmith_f_op_f32(trunc(-646f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -743f) + _wgslsmith_f_op_f32(141f + -463f)), 1000f, 1f))), vec4<f32>(_wgslsmith_div_f32(-1233f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1857f * 1559f)))), -715f, _wgslsmith_f_op_f32(f32(-1f) * -134f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(1011f, 507f)))) - _wgslsmith_f_op_f32(floor(724f)))));
    let var_1 = Struct_1(firstLeadingBit(abs(_wgslsmith_sub_i32(min(-4720i, 0i), ~45651i))), select(true, false, all(vec4<bool>(true, true, true, true))), vec2<bool>((any(vec4<bool>(true, false, true, false)) || (var_0.x < var_0.x)) | all(vec2<bool>(true, true)), true), countOneBits(~(~vec4<i32>(-21717i, -2147483647i, 3923i, -1i))));
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-457f, -725f, -978f, var_0.x))), vec4<f32>(var_0.x, var_0.x, -1000f, var_0.x)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1181f, var_0.x, 589f, var_0.x))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, 942f, var_0.x, var_0.x) + vec4<f32>(var_0.x, 868f, var_0.x, -218f))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, 215f, var_0.x, var_0.x) + vec4<f32>(1000f, var_0.x, -501f, -1000f)) + _wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, var_0.x, var_0.x, 1588f), vec4<f32>(var_0.x, var_0.x, 390f, -463f))))));
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1603f), var_0.x, var_0.x, _wgslsmith_f_op_f32(-var_0.x));
    return var_0.x;
}

fn func_2(arg_0: vec4<i32>, arg_1: vec2<i32>, arg_2: i32) -> vec4<bool> {
    global0 = ~(~(~abs(u_input.b.x))) ^ u_input.a.x;
    global0 = 0u;
    let var_0 = _wgslsmith_add_u32(firstLeadingBit(~u_input.c.x), u_input.b.x);
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(488f + _wgslsmith_f_op_f32(func_3())) + -798f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1000f - -467f))), _wgslsmith_f_op_f32(f32(-1f) * -1855f), -372f);
    let var_2 = Struct_4(vec3<u32>(4294967295u, firstTrailingBit(0u), 26914u), Struct_2(_wgslsmith_mod_u32(u_input.c.x << (var_0 % 32u), 33662u) | var_0, Struct_1(-arg_0.x, false, vec2<bool>(true, true), vec4<i32>(-8251i, 0i, arg_0.x, -2850i | arg_1.x))), Struct_2(reverseBits(1u), Struct_1(28931i, false, select(vec2<bool>(true, false), vec2<bool>(true, true), all(vec3<bool>(true, false, true))), _wgslsmith_mod_vec4_i32(select(vec4<i32>(arg_0.x, arg_2, -4894i, arg_2), vec4<i32>(arg_1.x, arg_1.x, 2147483647i, -815i), true), arg_0))));
    return select(vec4<bool>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(var_1.x, 162f)))) > _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(var_1.x)))), !(any(vec2<bool>(false, false)) && all(var_2.c.b.c)), false, any(!select(vec2<bool>(true, var_2.c.b.c.x), var_2.b.b.c, var_2.c.b.c))), vec4<bool>(var_2.b.b.b, !(!any(vec4<bool>(true, var_2.b.b.b, true, var_2.c.b.c.x))), !(arg_1.x != arg_1.x) || true, select(var_2.c.b.b, true, var_2.b.b.b)), var_2.b.b.c.x);
}

fn func_4(arg_0: vec2<f32>, arg_1: vec4<bool>, arg_2: vec3<f32>, arg_3: f32) -> Struct_4 {
    global0 = _wgslsmith_div_u32(~(~_wgslsmith_mult_u32(68764u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 11576u, 0u, u_input.a.x), vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, 74462u)))), 15374u >> (_wgslsmith_dot_vec2_u32(u_input.b.xz, select(vec2<u32>(56432u, 1u) & vec2<u32>(u_input.c.x, u_input.a.x), firstLeadingBit(vec2<u32>(u_input.a.x, 4294967295u)), false)) % 32u));
    let var_0 = firstTrailingBit(38210u);
    let var_1 = vec4<bool>(arg_1.x, (_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(790f * arg_0.x))) == _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_3 * arg_0.x)))) || true, _wgslsmith_f_op_f32(f32(-1f) * -698f) >= _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.x, -1275f)))), arg_1.x);
    global0 = var_0;
    let var_2 = ~u_input.c.x;
    return Struct_4(_wgslsmith_mult_vec3_u32(~_wgslsmith_sub_vec3_u32(vec3<u32>(66770u, 4294967295u, 42187u), ~u_input.b), firstTrailingBit(vec3<u32>(~1u, u_input.c.x, u_input.a.x | 15801u))), Struct_2(var_0, Struct_1(_wgslsmith_mult_i32(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(8712i, 681i, 2147483647i, 0i), vec4<i32>(-11235i, -39629i, -2147483647i, 17565i))), true, select(var_1.xy, vec2<bool>(true, false), true), abs(vec4<i32>(1i, 1i, 1i, 1i)))), Struct_2(firstTrailingBit(14422u) & var_2, Struct_1(~_wgslsmith_sub_i32(-1i, -1943i), true, func_2(~vec4<i32>(1i, -2147483647i, 0i, 2147483647i), ~vec2<i32>(0i, -58891i), -2147483647i).wz, vec4<i32>(-60633i, abs(1i), _wgslsmith_sub_i32(0i, 2147483647i), i32(-1i) * -54622i))));
}

fn func_1(arg_0: Struct_1) -> bool {
    var var_0 = func_4(vec2<f32>(-592f, 164f), select(func_2(firstLeadingBit(~vec4<i32>(-2147483647i, 1i, -4223i, 55466i)), abs(arg_0.d.zx), arg_0.d.x ^ arg_0.d.x), vec4<bool>(arg_0.b, !(!arg_0.b), arg_0.b, arg_0.c.x), any(arg_0.c)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-548f, 1652f, 184f)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(1249f, 593f, 1314f), vec3<f32>(507f, 399f, 656f)))))), vec3<f32>(-140f, -1229f, -1163f), vec3<bool>(arg_0.b | any(vec3<bool>(true, arg_0.b, false)), -43673i != _wgslsmith_dot_vec4_i32(arg_0.d, arg_0.d), true))), _wgslsmith_div_f32(-1259f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-791f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1331f)))));
    var_0 = Struct_4(vec3<u32>(u_input.b.x << (countOneBits(~12293u) % 32u), ~_wgslsmith_mod_u32(var_0.a.x ^ 1u, ~20036u), _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 61789u, u_input.c.x), vec3<u32>(u_input.b.x, 4294967295u, 1u)) << (_wgslsmith_mult_u32(1u, u_input.a.x) % 32u), ~var_0.a.x)), func_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(242f, 1111f))))) - _wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(vec2<f32>(-969f, -1913f), vec2<f32>(1109f, -890f)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(202f, -1025f)))))), !vec4<bool>(all(var_0.b.b.c), true, true, any(vec4<bool>(var_0.c.b.c.x, false, true, true))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(-502f, 2015f)), _wgslsmith_f_op_f32(f32(-1f) * -461f), _wgslsmith_f_op_f32(step(310f, 586f)))), -1420f).c, var_0.c);
    global0 = _wgslsmith_dot_vec3_u32(u_input.b, select(~var_0.a, vec3<u32>(func_4(vec2<f32>(-1000f, 700f), vec4<bool>(false, var_0.b.b.c.x, true, false), vec3<f32>(1540f, -591f, 1136f), 361f).b.a | u_input.b.x, _wgslsmith_div_u32(4294967295u, ~40416u), var_0.b.a), true & !var_0.b.b.b));
    return any(!vec2<bool>(true, all(vec4<bool>(false, var_0.b.b.c.x, true, false)))) && ((~select(36025u, 4460u, var_0.c.b.b) >= _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a.x, 1u, 1u, u_input.b.x), vec4<u32>(37813u, 4294967295u, 25144u, u_input.c.x) >> (vec4<u32>(u_input.c.x, var_0.b.a, var_0.a.x, 17531u) % vec4<u32>(32u)))) != !func_4(_wgslsmith_div_vec2_f32(vec2<f32>(362f, 1341f), vec2<f32>(493f, -431f)), vec4<bool>(true, arg_0.c.x, arg_0.c.x, true), _wgslsmith_f_op_vec3_f32(vec3<f32>(715f, -174f, -561f) * vec3<f32>(-1025f, -112f, -1018f)), _wgslsmith_f_op_f32(floor(-812f))).b.b.c.x);
}

fn func_5(arg_0: vec4<bool>, arg_1: u32, arg_2: Struct_4, arg_3: vec2<i32>) -> Struct_1 {
    global0 = reverseBits(~arg_2.b.a >> (min(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(arg_2.c.a, 4294967295u, arg_1, arg_2.a.x)), _wgslsmith_mult_u32(min(71872u, arg_1), arg_2.b.a)) % 32u));
    var var_0 = Struct_3(~abs(_wgslsmith_mod_u32(4294967295u, arg_1) >> (_wgslsmith_mod_u32(0u, arg_1) % 32u)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(250f, 356f, 932f)))), vec3<f32>(_wgslsmith_f_op_f32(abs(-1300f)), _wgslsmith_f_op_f32(-844f - -247f), 822f)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -739f), _wgslsmith_div_f32(2118f, -568f), 534f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(922f, 685f, 117f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(772f, -162f, -655f) + vec3<f32>(-1519f, 242f, -1000f))))))), func_4(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -819f)), _wgslsmith_f_op_f32(f32(-1f) * -173f)), arg_0, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1050f, 1087f, -933f), vec3<f32>(220f, 853f, -260f)))), 2302f).b.b, arg_2.c.b, arg_2.c.b);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(184f))) - var_0.b.x) * _wgslsmith_f_op_f32(f32(-1f) * -585f));
    var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())))) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -837f))))));
    let var_2 = Struct_1(var_0.c.d.x, true, vec2<bool>(true, false), ~select(func_4(var_0.b.yz, !arg_0, vec3<f32>(608f, -295f, var_0.b.x), _wgslsmith_f_op_f32(trunc(var_0.b.x))).b.b.d, _wgslsmith_mult_vec4_i32(reverseBits(var_0.d.d), vec4<i32>(0i, 1i, var_0.d.d.x, 0i) >> (vec4<u32>(arg_2.b.a, 54065u, arg_1, arg_2.a.x) % vec4<u32>(32u))), arg_0));
    return func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.b.yz)), var_0.b.xx)), arg_0, var_0.b, _wgslsmith_f_op_f32(-var_0.b.x)).b.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b.zx;
    var var_1 = firstTrailingBit(_wgslsmith_mult_vec3_i32(~(-firstLeadingBit(vec3<i32>(2147483647i, -1i, -1i))), ~(-firstLeadingBit(vec3<i32>(-22560i, -1i, 1i)))));
    let var_2 = func_5(select(vec4<bool>(select(true, false, false) & true, false, false, !func_1(Struct_1(-18423i, true, vec2<bool>(true, false), vec4<i32>(var_1.x, -20096i, var_1.x, 2147483647i)))), select(vec4<bool>(any(vec2<bool>(true, true)), true, true, true), func_2(vec4<i32>(1i, 19904i, 8764i, -1i), vec2<i32>(40862i, var_1.x), func_4(vec2<f32>(-251f, 564f), vec4<bool>(false, false, false, false), vec3<f32>(1200f, 1128f, 532f), 1000f).c.b.a), true), select(vec4<bool>(true, true, true, true), !select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), true), -196i != _wgslsmith_mult_i32(var_1.x, var_1.x))), 0u, Struct_4(~_wgslsmith_sub_vec3_u32(~vec3<u32>(u_input.a.x, u_input.c.x, var_0.x), countOneBits(u_input.b)), Struct_2(_wgslsmith_add_u32(abs(28001u), u_input.b.x), Struct_1(-2147483647i, any(vec2<bool>(false, true)), vec2<bool>(false, true), abs(vec4<i32>(var_1.x, 2147483647i, var_1.x, var_1.x)))), func_4(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -978f), _wgslsmith_f_op_f32(677f + -1624f)), vec4<bool>(true, true, 3105i >= var_1.x, func_1(Struct_1(46000i, true, vec2<bool>(true, false), vec4<i32>(-2147483647i, -1i, var_1.x, -1i)))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1494f, -839f, -1412f), vec3<f32>(146f, -1371f, -641f))), vec3<f32>(1245f, -2702f, -747f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(398f - -849f) - _wgslsmith_f_op_f32(func_3()))).b), ~var_1.yx);
    var var_3 = func_4(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(1f, 1f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1160f, 1587f)))))), !(!func_2(vec4<i32>(2147483647i, var_2.d.x, -2147483647i, -4293i), abs(var_1.yx), var_2.d.x | 2147483647i)), vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1257f))))), 196f, _wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -522f), -177f, false))))).b;
    let var_4 = func_5(vec4<bool>(true, var_3.b.c.x, var_2.c.x, var_3.b.c.x), 1u, func_4(vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-671f * 693f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(340f)))), select(!select(vec4<bool>(var_3.b.c.x, var_3.b.c.x, false, var_2.c.x), vec4<bool>(var_2.b, false, var_3.b.c.x, var_3.b.b), false), !vec4<bool>(var_2.b, var_2.b, true, var_3.b.c.x), func_2(max(vec4<i32>(-23513i, -46606i, -26244i, 12454i), vec4<i32>(17885i, 6878i, var_1.x, -35233i)), var_2.d.wx, firstLeadingBit(var_2.d.x))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-227f, 706f, -1216f)))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(1240f, -942f, true))))), var_2.d.zx);
    let x = u_input.a;
    s_output = StorageBuffer(abs(reverseBits(~vec4<u32>(var_3.a, var_3.a, var_0.x, 4294967295u)) & vec4<u32>(~var_0.x, 1707u, 1u, _wgslsmith_div_u32(u_input.b.x, var_0.x))), vec4<u32>(var_3.a | ~firstLeadingBit(11289u), u_input.b.x, ~u_input.c.x, 0u), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1530f) - _wgslsmith_div_f32(-271f, 489f)), 1135f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1675f), _wgslsmith_f_op_f32(func_3())))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(775f, 227f, 1000f, 2013f) - vec4<f32>(1106f, 575f, 1133f, -154f))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(126f, -1986f, 677f, -112f))), var_2.b)) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 303f, -2534f, 1330f)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(503f, 208f, 432f, -1121f), vec4<f32>(870f, -342f, -1466f, -112f))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-110f, 1211f, 1232f, -1390f) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(581f, 260f, -347f, -563f))))))));
}

