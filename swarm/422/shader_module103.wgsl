struct Struct_1 {
    a: bool,
    b: f32,
    c: u32,
    d: vec3<u32>,
}

struct Struct_2 {
    a: i32,
    b: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: f32,
    d: f32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
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

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_3, arg_2: vec2<f32>) -> u32 {
    let var_0 = ~_wgslsmith_div_vec3_u32(arg_1.b.d << (_wgslsmith_mult_vec3_u32(arg_1.b.d, ~arg_1.b.d) % vec3<u32>(32u)), arg_1.b.d << (abs(~vec3<u32>(arg_1.b.d.x, arg_1.b.c, arg_1.b.c)) % vec3<u32>(32u)));
    let var_1 = arg_1.a;
    let var_2 = u_input.b;
    return min(0u ^ (arg_1.b.c << (_wgslsmith_dot_vec2_u32(var_0.zy, vec2<u32>(var_0.x, 59014u) >> (vec2<u32>(0u, arg_1.b.c) % vec2<u32>(32u))) % 32u)), select(41883u, 1u, true));
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: vec2<u32>, arg_3: Struct_2) -> f32 {
    var var_0 = Struct_2((i32(-1i) * -_wgslsmith_dot_vec4_i32(vec4<i32>(-30160i, 3292i, -2147483647i, -2147483647i), vec4<i32>(u_input.b, 2147483647i, arg_3.b, u_input.b))) & firstLeadingBit(-2147483647i), 1i);
    var_0 = arg_1;
    let var_1 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(step(-485f, 1249f)), 1f), vec2<f32>(1f, 1f)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(485f, -2318f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-342f, -503f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(973f, -682f) + vec2<f32>(798f, -2457f)))))));
    var var_2 = select(vec4<i32>(u_input.b, -_wgslsmith_div_i32(var_0.b, arg_1.b), arg_1.b, ~arg_1.b), countOneBits(~(-vec4<i32>(0i, -2147483647i, 1i, 54098i))), vec4<bool>(select(any(vec4<bool>(true, false, true, true)), !any(vec3<bool>(false, false, false)), true), true, true, any(vec3<bool>(u_input.b != var_0.a, false, true))));
    let var_3 = Struct_3(Struct_2(-_wgslsmith_sub_i32(firstLeadingBit(-1i), 30541i), arg_1.b), Struct_1((1i & u_input.c) > _wgslsmith_div_i32(_wgslsmith_mod_i32(var_2.x, var_2.x), 0i), -412f, _wgslsmith_dot_vec2_u32(arg_0, abs(~arg_2)), select(max(~vec3<u32>(arg_2.x, arg_0.x, arg_2.x), vec3<u32>(arg_2.x, arg_2.x, arg_0.x)), select(vec3<u32>(arg_0.x, 9073u, 0u), vec3<u32>(11707u, arg_0.x, 10247u), vec3<bool>(false, true, true)) >> (~vec3<u32>(0u, 4294967295u, arg_0.x) % vec3<u32>(32u)), vec3<bool>(any(vec2<bool>(false, true)), true, true))));
    return var_1.x;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_4, arg_2: bool, arg_3: Struct_1) -> Struct_4 {
    let var_0 = _wgslsmith_f_op_f32(func_4(_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, arg_3.c), arg_3.d.yx, vec2<u32>(countOneBits(arg_0.c), arg_3.d.x ^ arg_3.d.x) ^ vec2<u32>(~0u, func_3(vec2<f32>(arg_0.b, 398f), Struct_3(arg_1.a, arg_0), vec2<f32>(218f, arg_0.b)))), arg_1.a, firstTrailingBit(max(~vec2<u32>(33490u, 45091u) >> (~arg_0.d.yx % vec2<u32>(32u)), ~arg_0.d.xy)), Struct_2(~(-1i), ~arg_1.a.b)));
    let var_1 = Struct_4(Struct_2(firstLeadingBit(-29527i), _wgslsmith_sub_i32(u_input.c, _wgslsmith_sub_i32(arg_1.a.b >> (22899u % 32u), 0i))));
    let var_2 = ~_wgslsmith_mult_u32(max(arg_0.c, ~2757u), select(1u, arg_3.d.x, true)) == 63096u;
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0)) + arg_3.b), arg_0.b, arg_3.b, _wgslsmith_f_op_f32(max(-460f, _wgslsmith_f_op_f32(f32(-1f) * -698f)))))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2692f, var_0, -644f, arg_3.b)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_0.b, _wgslsmith_f_op_f32(-arg_0.b), _wgslsmith_f_op_f32(select(arg_0.b, var_0, true)), arg_0.b)))));
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(_wgslsmith_clamp_vec2_u32(arg_0.d.zz, ~arg_3.d.yy, vec2<u32>(32108u, arg_0.c)), var_1.a, ~reverseBits(vec2<u32>(0u, arg_3.c)), Struct_2(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, 1i, 2147483647i, u_input.b), _wgslsmith_mod_vec4_i32(vec4<i32>(-11122i, u_input.b, u_input.a.x, arg_1.a.b), vec4<i32>(u_input.c, var_1.a.b, 2290i, arg_1.a.a))), var_1.a.a))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(937f)))) * var_0));
    return Struct_4(arg_1.a);
}

fn func_5(arg_0: vec3<bool>, arg_1: Struct_4, arg_2: Struct_4) -> Struct_3 {
    let var_0 = (_wgslsmith_clamp_i32(0i, firstLeadingBit(arg_1.a.a), 51362i) & ~_wgslsmith_dot_vec2_i32(vec2<i32>(30764i, -1i), vec2<i32>(16954i, 55030i) >> (vec2<u32>(0u, 1u) % vec2<u32>(32u)))) | ~1i;
    let var_1 = 106f;
    var var_2 = func_2(Struct_1(select(any(select(vec3<bool>(true, false, true), arg_0, arg_0)), arg_0.x, true), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(201f, 377f, arg_0.x)))), 12536u, vec3<u32>(_wgslsmith_add_u32(36275u, 51666u >> (1u % 32u)), 65931u, 4294967295u)), arg_1, false, Struct_1(!(4294967295u < _wgslsmith_dot_vec2_u32(vec2<u32>(7733u, 29272u), vec2<u32>(67186u, 78725u))), var_1, 74236u, vec3<u32>(~(~1u), 1u, _wgslsmith_div_u32(1u, 4294967295u))));
    var_2 = Struct_4(func_2(Struct_1(_wgslsmith_add_i32(-1i, 1i) > select(-19593i, 1i, arg_0.x), var_1, 0u, _wgslsmith_mod_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 29150u, 41002u))), func_2(Struct_1(arg_0.x && arg_0.x, _wgslsmith_f_op_f32(sign(-1010f)), ~62874u, ~vec3<u32>(1u, 5787u, 56639u)), Struct_4(func_2(Struct_1(false, 1000f, 11712u, vec3<u32>(54839u, 4294967295u, 57842u)), arg_1, true, Struct_1(arg_0.x, var_1, 8073u, vec3<u32>(0u, 0u, 18139u))).a), select(false, !arg_0.x, arg_0.x), Struct_1(all(vec3<bool>(false, arg_0.x, arg_0.x)), -800f, ~4294967295u, vec3<u32>(4294967295u, 22425u, 36759u))), true, Struct_1(false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + 317f) * _wgslsmith_f_op_f32(max(248f, 2027f))), _wgslsmith_dot_vec2_u32(select(vec2<u32>(1u, 1u), vec2<u32>(87676u, 41368u), vec2<bool>(true, arg_0.x)), vec2<u32>(1u, 1u)), ~vec3<u32>(4294967295u, 4294967295u, 0u))).a);
    var_2 = func_2(Struct_1(true, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -443f) + -1330f))), _wgslsmith_dot_vec4_u32(~vec4<u32>(20819u, 1u, 14819u, 1u), _wgslsmith_mult_vec4_u32(vec4<u32>(0u, 59215u, 1u, 0u), vec4<u32>(1053u, 68628u, 68642u, 4294967295u))) & ~6898u, abs(~vec3<u32>(1u, 1u, 1u))), Struct_4(func_2(Struct_1(true, _wgslsmith_f_op_f32(-462f * var_1), 0u, vec3<u32>(0u, 12431u, 7871u)), func_2(Struct_1(false, 125f, 1u, vec3<u32>(0u, 0u, 11366u)), arg_2, arg_0.x, Struct_1(false, var_1, 76789u, vec3<u32>(76366u, 51758u, 0u))), 1044f >= _wgslsmith_f_op_f32(max(var_1, -390f)), Struct_1(true, var_1, _wgslsmith_add_u32(56379u, 5713u), vec3<u32>(1u, 72307u, 4843u))).a), select(select(arg_0.x | true, true, all(vec3<bool>(arg_0.x, false, arg_0.x))), true, !all(vec4<bool>(false, arg_0.x, arg_0.x, arg_0.x))), Struct_1(true, var_1, 4294967295u, vec3<u32>(~_wgslsmith_sub_u32(49308u, 2526u), 7322u, ~(~30265u))));
    return Struct_3(func_2(Struct_1(true | (arg_0.x | false), var_1, ~1u, vec3<u32>(1u, 61607u, 1u)), arg_2, true, Struct_1((var_2.a.b <= arg_1.a.a) | arg_0.x, var_1, ~4294967295u, vec3<u32>(firstLeadingBit(32902u), 22696u, ~33825u))).a, Struct_1(any(!arg_0.xx) && true, _wgslsmith_f_op_f32(select(-305f, 1f, arg_0.x)), ~_wgslsmith_clamp_u32(~54247u, 4294967295u, ~0u), vec3<u32>(_wgslsmith_clamp_u32(0u, 1u, 69906u), 1u, ~4294967295u) ^ ~max(vec3<u32>(8543u, 5422u, 51548u), vec3<u32>(5641u, 19454u, 32642u))));
}

fn func_6(arg_0: vec2<i32>, arg_1: i32, arg_2: Struct_3, arg_3: bool) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(-1640f * arg_2.b.b);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(vec3<bool>(true, true, any(vec2<bool>(arg_3, true))), Struct_4(Struct_2(-68386i, -2147483647i)), Struct_4(func_2(arg_2.b, Struct_4(Struct_2(1i, arg_0.x)), true, arg_2.b).a)).b.b + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1700f))));
    let var_2 = Struct_2(-2147483647i, arg_2.a.a);
    var var_3 = func_2(Struct_1(arg_2.b.a, 365f, (select(1u, arg_2.b.d.x, arg_2.b.a) >> (_wgslsmith_mod_u32(6131u, arg_2.b.c) % 32u)) | (1u >> (arg_2.b.c % 32u)), arg_2.b.d), Struct_4(var_2), arg_3, func_5(vec3<bool>(any(vec2<bool>(arg_2.b.a, false)) || all(vec3<bool>(true, true, false)), arg_2.b.a, any(select(vec2<bool>(arg_2.b.a, arg_3), vec2<bool>(true, false), arg_2.b.a))), func_2(arg_2.b, func_2(Struct_1(true, arg_2.b.b, 4294967295u, arg_2.b.d), func_2(arg_2.b, Struct_4(Struct_2(48090i, -1i)), false, arg_2.b), false & arg_2.b.a, arg_2.b), !any(vec3<bool>(arg_2.b.a, arg_2.b.a, true)), arg_2.b), Struct_4(func_5(!vec3<bool>(arg_3, arg_2.b.a, arg_2.b.a), Struct_4(arg_2.a), Struct_4(Struct_2(13862i, var_2.a))).a)).b);
    let var_4 = func_5(!(!select(!vec3<bool>(arg_3, false, true), select(vec3<bool>(false, true, false), vec3<bool>(true, arg_3, arg_3), vec3<bool>(false, arg_3, false)), arg_3)), Struct_4(var_3.a), func_2(arg_2.b, func_2(func_5(vec3<bool>(true, true, true), func_2(Struct_1(false, var_1, 0u, vec3<u32>(1u, 49192u, arg_2.b.d.x)), Struct_4(Struct_2(27537i, arg_1)), arg_3, arg_2.b), Struct_4(arg_2.a)).b, func_2(arg_2.b, func_2(Struct_1(arg_2.b.a, -455f, 11611u, vec3<u32>(0u, 51058u, 1u)), Struct_4(Struct_2(arg_1, var_2.a)), false, arg_2.b), false, Struct_1(arg_2.b.a, 1769f, arg_2.b.d.x, vec3<u32>(4294967295u, arg_2.b.d.x, arg_2.b.c))), arg_2.b.a, arg_2.b), func_5(!vec3<bool>(arg_2.b.a, false, arg_2.b.a), func_2(arg_2.b, Struct_4(arg_2.a), arg_3, Struct_1(true, 1001f, arg_2.b.c, arg_2.b.d)), func_2(arg_2.b, func_2(Struct_1(arg_2.b.a, -1000f, arg_2.b.d.x, arg_2.b.d), Struct_4(Struct_2(-1i, -2147483647i)), arg_2.b.a, arg_2.b), false, Struct_1(arg_2.b.a, var_1, arg_2.b.c, arg_2.b.d))).b.a, Struct_1(true, 2230f, _wgslsmith_div_u32(arg_2.b.c, arg_2.b.d.x << (arg_2.b.c % 32u)), vec3<u32>(arg_2.b.d.x, _wgslsmith_div_u32(0u, 88731u), arg_2.b.d.x)))).b;
    return func_5(!(!vec3<bool>(any(vec3<bool>(true, arg_2.b.a, var_4.a)), !var_4.a, false & var_4.a)), func_2(arg_2.b, Struct_4(func_2(Struct_1(false, var_0, 0u, vec3<u32>(arg_2.b.d.x, 4294967295u, arg_2.b.d.x)), func_2(Struct_1(false, 800f, 49102u, var_4.d), Struct_4(arg_2.a), false, Struct_1(true, 1000f, 36452u, var_4.d)), !var_4.a, var_4).a), !(!func_5(vec3<bool>(true, arg_2.b.a, arg_2.b.a), Struct_4(var_3.a), Struct_4(var_2)).b.a), arg_2.b), func_2(Struct_1(any(select(vec3<bool>(true, arg_3, arg_3), vec3<bool>(true, false, true), vec3<bool>(arg_3, arg_2.b.a, true))), var_1, 63663u, ~vec3<u32>(11352u, var_4.d.x, 0u) >> (~var_4.d % vec3<u32>(32u))), Struct_4(var_3.a), arg_3 & var_4.a, var_4)).a;
}

fn func_1(arg_0: vec2<f32>) -> vec3<u32> {
    var var_0 = Struct_4(func_6(vec2<i32>(u_input.c, ~53369i), -54564i, func_5(!select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false)), func_2(Struct_1(false, arg_0.x, 65131u, vec3<u32>(4294967295u, 83874u, 1u)), Struct_4(Struct_2(0i, u_input.b)), true, Struct_1(true, arg_0.x, 4294967295u, vec3<u32>(60112u, 4294967295u, 5116u))), Struct_4(func_2(Struct_1(false, arg_0.x, 0u, vec3<u32>(23115u, 4294967295u, 83892u)), Struct_4(Struct_2(u_input.b, -1i)), true, Struct_1(false, -135f, 4294967295u, vec3<u32>(50108u, 14603u, 27530u))).a)), true));
    let var_1 = Struct_4(var_0.a);
    var var_2 = Struct_2(23858i, func_6(u_input.a, var_0.a.a, func_5(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true)), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true))), var_1, Struct_4(var_0.a)), false).a);
    let var_3 = Struct_1(!any(select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), false), select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), false), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.x))), ~19001u, _wgslsmith_mod_vec3_u32(vec3<u32>(abs(~30770u), 1u, _wgslsmith_mod_u32(1u, ~0u)), vec3<u32>(36083u, abs(func_3(vec2<f32>(arg_0.x, arg_0.x), Struct_3(var_1.a, Struct_1(true, 235f, 33934u, vec3<u32>(1u, 54878u, 1u))), arg_0)), 1u)));
    var_2 = Struct_2(23065i, -2147483647i);
    return select(vec3<u32>(var_3.c, var_3.c, 36073u), abs(~firstTrailingBit(~vec3<u32>(70800u, 21410u, var_3.c))), select(!(!vec3<bool>(var_3.a, var_3.a, var_3.a)), vec3<bool>(var_3.a, true, var_3.a), vec3<bool>(true, any(select(vec4<bool>(true, true, var_3.a, true), vec4<bool>(false, var_3.a, false, var_3.a), vec4<bool>(true, false, true, var_3.a))), var_3.a)));
}

fn func_7(arg_0: Struct_1, arg_1: Struct_4) -> Struct_4 {
    let var_0 = u_input.a;
    let var_1 = ~select(~(~13366u) ^ (arg_0.c | ~31934u), ~4294967295u, true);
    let var_2 = arg_1;
    var var_3 = u_input.a.x >> (_wgslsmith_sub_u32(var_1, 3232u) % 32u);
    let var_4 = vec4<u32>(arg_0.c, var_1, _wgslsmith_mult_u32(~_wgslsmith_dot_vec2_u32(abs(arg_0.d.zy), arg_0.d.yy), countOneBits(0u)), 52269u);
    return func_2(arg_0, func_2(arg_0, Struct_4(Struct_2(-1i, ~arg_1.a.a)), true, func_5(select(select(vec3<bool>(false, arg_0.a, arg_0.a), vec3<bool>(true, arg_0.a, arg_0.a), vec3<bool>(arg_0.a, false, arg_0.a)), select(vec3<bool>(true, arg_0.a, true), vec3<bool>(true, true, arg_0.a), vec3<bool>(false, arg_0.a, arg_0.a)), select(vec3<bool>(arg_0.a, true, false), vec3<bool>(arg_0.a, arg_0.a, arg_0.a), vec3<bool>(arg_0.a, arg_0.a, arg_0.a))), var_2, Struct_4(arg_1.a)).b), true, Struct_1(true, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b - -222f)))), var_4.x, _wgslsmith_mod_vec3_u32(vec3<u32>(var_4.x, firstTrailingBit(var_1), ~56592u), vec3<u32>(var_1, var_1, var_1))));
}

fn func_8(arg_0: bool, arg_1: Struct_4) -> Struct_3 {
    let var_0 = Struct_3(func_5(!(!vec3<bool>(arg_0, arg_0, arg_0)), func_7(Struct_1(true, -1726f, _wgslsmith_div_u32(30386u, 1u), ~vec3<u32>(4294967295u, 4717u, 17393u)), arg_1), Struct_4(arg_1.a)).a, Struct_1(any(!(!vec3<bool>(arg_0, arg_0, false))), _wgslsmith_f_op_f32(round(-1072f)), 0u, ~vec3<u32>(1u, 1u, 1u)));
    let var_1 = 0i;
    let var_2 = 41845i;
    var var_3 = countOneBits(_wgslsmith_mod_vec4_u32(select(_wgslsmith_mult_vec4_u32(vec4<u32>(var_0.b.c, 4294967295u, 4294967295u, 1u) | vec4<u32>(60002u, 63470u, 181u, 33577u), firstLeadingBit(vec4<u32>(var_0.b.d.x, var_0.b.c, 50628u, 0u))), ~vec4<u32>(4294967295u, 0u, var_0.b.c, 27035u) & (vec4<u32>(1730u, 1892u, var_0.b.c, 1u) | vec4<u32>(var_0.b.d.x, var_0.b.d.x, var_0.b.c, 4294967295u)), false), _wgslsmith_mod_vec4_u32(~vec4<u32>(0u, var_0.b.d.x, var_0.b.d.x, var_0.b.c), _wgslsmith_div_vec4_u32(vec4<u32>(var_0.b.c, var_0.b.d.x, 32386u, var_0.b.d.x), ~vec4<u32>(var_0.b.c, 0u, var_0.b.d.x, 1u)))));
    let var_4 = ~vec2<u32>(func_5(vec3<bool>(var_0.b.a, all(vec2<bool>(false, true)), true), Struct_4(Struct_2(-1i, var_0.a.b)), arg_1).b.c, 1u);
    return func_5(vec3<bool>(var_0.b.b < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1033f * var_0.b.b)), true, false), func_2(var_0.b, arg_1, false, func_5(vec3<bool>(true, arg_0, arg_0), func_2(Struct_1(true, var_0.b.b, var_3.x, vec3<u32>(0u, var_3.x, var_4.x)), arg_1, arg_0, var_0.b), Struct_4(Struct_2(u_input.b, -1i))).b), arg_1);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~vec2<i32>(_wgslsmith_sub_i32(u_input.c ^ u_input.c, u_input.c), 0i));
    var var_1 = ~min(firstTrailingBit(4294967295u), _wgslsmith_mod_u32(1u, ~71045u));
    var_0 = u_input.a;
    var var_2 = 6684i;
    let var_3 = func_8(true, func_7(Struct_1(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(372f * 383f) - -1648f), 1u, func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(419f, 409f)))), Struct_4(Struct_2(~(-41432i), -u_input.a.x))));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.b.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(vec3<bool>(var_3.b.a, var_3.b.a, false), Struct_4(var_3.a), func_7(Struct_1(var_3.b.a, -260f, var_3.b.d.x, var_3.b.d), Struct_4(var_3.a))).b.b * _wgslsmith_f_op_f32(-var_3.b.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.b.b) + _wgslsmith_f_op_f32(f32(-1f) * -404f)), _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -440f)), firstLeadingBit(max(vec2<u32>(var_3.b.c, 0u), ~vec2<u32>(var_3.b.d.x, 86004u))) << (~vec2<u32>(var_3.b.d.x, var_3.b.c ^ var_3.b.d.x) % vec2<u32>(32u)));
}

