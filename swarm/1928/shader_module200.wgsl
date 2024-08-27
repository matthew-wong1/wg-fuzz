struct Struct_1 {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec2<u32>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec3<u32>,
    d: vec3<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(true, false);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: f32, arg_1: vec2<u32>, arg_2: vec4<i32>, arg_3: vec3<u32>) -> vec2<bool> {
    var var_0 = select(select(!select(!vec4<bool>(true, global0.x, true, true), vec4<bool>(global0.x, global0.x, global0.x, true), arg_0 == arg_0), select(vec4<bool>(true, arg_0 <= 321f, true, global0.x), select(!vec4<bool>(global0.x, true, global0.x, true), select(vec4<bool>(true, global0.x, false, global0.x), vec4<bool>(true, global0.x, true, global0.x), vec4<bool>(false, true, global0.x, false)), true), vec4<bool>(global0.x, true, any(vec2<bool>(true, false)), !global0.x)), min(~8773u, u_input.a | u_input.a) == arg_3.x), select(!select(vec4<bool>(global0.x, global0.x, global0.x, global0.x), vec4<bool>(global0.x, global0.x, global0.x, global0.x), !global0.x), select(!(!vec4<bool>(false, global0.x, true, false)), vec4<bool>(all(vec2<bool>(global0.x, global0.x)), all(vec3<bool>(global0.x, global0.x, global0.x)), true, true), arg_2.x > 0i), !(!select(vec4<bool>(global0.x, global0.x, global0.x, global0.x), vec4<bool>(global0.x, global0.x, true, global0.x), global0.x))), global0.x);
    let var_1 = true & (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -451f) + 186f)) < _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(721f - arg_0), 174f)));
    var var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(-1540f)), arg_0, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(-1152f, arg_0))))));
    var var_3 = vec3<i32>(~firstTrailingBit((arg_2.x ^ arg_2.x) ^ arg_2.x), arg_2.x, _wgslsmith_dot_vec4_i32(arg_2, -(~_wgslsmith_add_vec4_i32(vec4<i32>(-3113i, arg_2.x, 45333i, arg_2.x), vec4<i32>(358i, -5191i, arg_2.x, 1i)))));
    var var_4 = Struct_2(Struct_1(min(-firstLeadingBit(arg_2), vec4<i32>(_wgslsmith_clamp_i32(-1i, arg_2.x, arg_2.x), arg_2.x, -21512i, -1i)), arg_3.yz, arg_3.zy, max(abs(firstLeadingBit(u_input.a)), ~arg_1.x)), Struct_1(_wgslsmith_mod_vec4_i32(firstLeadingBit(arg_2), arg_2), ~arg_1, arg_3.xy, arg_1.x));
    return var_0.xw;
}

fn func_2(arg_0: u32, arg_1: i32, arg_2: Struct_2) -> Struct_4 {
    global0 = select(!select(vec2<bool>(true, arg_2.a.a.x > arg_1), vec2<bool>(global0.x, true), vec2<bool>(global0.x, true)), !select(!func_3(463f, vec2<u32>(0u, arg_2.a.b.x), vec4<i32>(arg_2.a.a.x, arg_1, arg_2.b.a.x, 2147483647i), vec3<u32>(arg_0, arg_0, 1u)), vec2<bool>(true, true), func_3(_wgslsmith_f_op_f32(max(510f, -1000f)), vec2<u32>(arg_2.a.b.x, arg_0), firstLeadingBit(vec4<i32>(-1i, arg_1, -17040i, 36069i)), vec3<u32>(u_input.a, u_input.a, u_input.a)).x), global0.x);
    global0 = func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-780f, _wgslsmith_f_op_f32(f32(-1f) * -975f)))), ~vec2<u32>(~countOneBits(arg_0), firstTrailingBit(min(arg_0, 52466u))), countOneBits(arg_2.a.a), firstTrailingBit(firstTrailingBit(~(~vec3<u32>(1u, 1u, u_input.a)))));
    let var_0 = false;
    global0 = !(!vec2<bool>(~arg_2.b.a.x != -51284i, false));
    global0 = vec2<bool>(!(!(_wgslsmith_f_op_f32(ceil(-1617f)) < _wgslsmith_f_op_f32(f32(-1f) * -591f))), true);
    return Struct_4(Struct_2(arg_2.b, Struct_1(vec4<i32>(~arg_2.a.a.x, arg_1, arg_1, ~12172i), vec2<u32>(countOneBits(arg_0), arg_0), vec2<u32>(arg_0, 1u), abs(min(4294967295u, 25801u)))), true);
}

fn func_4(arg_0: Struct_4, arg_1: Struct_1) -> Struct_4 {
    var var_0 = select(select(!select(select(vec4<bool>(false, arg_0.b, arg_0.b, arg_0.b), vec4<bool>(global0.x, false, arg_0.b, arg_0.b), vec4<bool>(arg_0.b, true, global0.x, arg_0.b)), select(vec4<bool>(true, true, true, global0.x), vec4<bool>(global0.x, false, global0.x, false), arg_0.b), select(vec4<bool>(arg_0.b, true, global0.x, global0.x), vec4<bool>(false, false, false, true), false)), select(select(vec4<bool>(arg_0.b, false, global0.x, false), vec4<bool>(arg_0.b, false, arg_0.b, arg_0.b), vec4<bool>(false, global0.x, false, true)), select(select(vec4<bool>(global0.x, arg_0.b, false, arg_0.b), vec4<bool>(false, true, false, arg_0.b), true), select(vec4<bool>(true, global0.x, true, false), vec4<bool>(global0.x, arg_0.b, arg_0.b, arg_0.b), global0.x), !vec4<bool>(true, false, global0.x, global0.x)), all(!vec2<bool>(true, global0.x))), !(!vec4<bool>(arg_0.b, true, false, arg_0.b))), vec4<bool>(all(vec4<bool>(true, arg_0.b, false, true)), true, true, !(all(vec3<bool>(arg_0.b, arg_0.b, global0.x)) | true)), vec4<bool>(!global0.x, true != global0.x, true, func_3(1f, ~vec2<u32>(0u, u_input.a), vec4<i32>(abs(arg_1.a.x), arg_1.a.x, ~arg_1.a.x, _wgslsmith_mult_i32(-1i, 2147483647i)), vec3<u32>(0u, 4294967295u ^ arg_1.d, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.b.x, 1u, 4294967295u, arg_0.a.a.c.x), vec4<u32>(52609u, u_input.a, arg_0.a.b.d, 4294967295u)))).x));
    global0 = vec2<bool>(var_0.x, !global0.x);
    var var_1 = func_2(arg_1.b.x, reverseBits(~min(~40659i, firstTrailingBit(arg_0.a.b.a.x))), Struct_2(func_2(~arg_0.a.b.c.x, 1i, Struct_2(arg_1, Struct_1(arg_1.a, arg_1.b, vec2<u32>(49288u, 20092u), u_input.a))).a.b, arg_0.a.b)).a.b;
    global0 = select(vec2<bool>(false, any(vec4<bool>(!global0.x, var_0.x, true, arg_0.a.a.a.x >= -37233i))), vec2<bool>(u_input.a >= var_1.b.x, true), select(!vec2<bool>(var_0.x, true), vec2<bool>(true, true), var_0.zw));
    global0 = select(select(var_0.wy, vec2<bool>(true, global0.x), !select(!var_0.yy, !var_0.wz, vec2<bool>(true, false))), func_3(_wgslsmith_f_op_f32(trunc(-327f)), arg_0.a.a.b, firstLeadingBit(-reverseBits(arg_1.a)), vec3<u32>(~4294967295u, 4294967295u, ~(1u >> (u_input.a % 32u)))), true);
    return func_2(arg_1.c.x, 0i, Struct_2(arg_1, Struct_1(vec4<i32>(-1i, -7545i << (1u % 32u), -2147483647i, ~(-2147483647i)), arg_1.b, abs(select(vec2<u32>(4294967295u, 4319u), arg_0.a.b.b, true)), arg_0.a.a.d)));
}

fn func_5(arg_0: vec4<i32>, arg_1: Struct_4, arg_2: Struct_1, arg_3: Struct_3) -> f32 {
    var var_0 = !(!any(select(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(global0.x, false)), !vec2<bool>(false, arg_1.b), !vec2<bool>(arg_1.b, true))));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2119f, -997f)))) * vec2<f32>(_wgslsmith_f_op_f32(-1669f * 633f), _wgslsmith_f_op_f32(324f + -1699f))) + vec2<f32>(1f, 1f)) + vec2<f32>(-554f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-976f)) + _wgslsmith_f_op_f32(select(-1019f, 1287f, true))))));
    let var_2 = ~1u;
    var var_3 = vec3<bool>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_1.x))))) <= _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.x), var_1.x)), 864f >= var_1.x, true);
    let var_4 = ~(~max(~vec3<u32>(var_2, arg_2.b.x, 1u) << (vec3<u32>(u_input.a, u_input.a, 0u) % vec3<u32>(32u)), ~vec3<u32>(arg_3.a.b.c.x, 0u, 6591u) ^ select(vec3<u32>(0u, var_2, var_2), vec3<u32>(47570u, 0u, 0u), false)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(447f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1.x)))) * _wgslsmith_f_op_f32(f32(-1f) * -1298f));
}

fn func_1() -> vec4<bool> {
    global0 = vec2<bool>(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1236f)) > _wgslsmith_f_op_f32(func_5(_wgslsmith_clamp_vec4_i32(-vec4<i32>(59050i, -105599i, 58618i, -18006i), firstLeadingBit(vec4<i32>(-1i, 2147483647i, 20447i, -20883i)), ~vec4<i32>(8017i, -2372i, 33296i, -1i)), func_4(func_2(u_input.a, 1169i, Struct_2(Struct_1(vec4<i32>(0i, 2147483647i, 6876i, 2147483647i), vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, u_input.a), 4294967295u), Struct_1(vec4<i32>(27710i, -2147483647i, -9493i, 20959i), vec2<u32>(u_input.a, 6241u), vec2<u32>(4294967295u, u_input.a), 8616u))), func_2(u_input.a, -12961i, Struct_2(Struct_1(vec4<i32>(33530i, -2147483647i, -6999i, 4455i), vec2<u32>(u_input.a, 80508u), vec2<u32>(0u, 31555u), u_input.a), Struct_1(vec4<i32>(2147483647i, 32224i, 20491i, 1i), vec2<u32>(52849u, 4294967295u), vec2<u32>(u_input.a, u_input.a), u_input.a))).a.a), Struct_1(countOneBits(vec4<i32>(11187i, 1i, -29764i, 29265i)), ~vec2<u32>(u_input.a, 36717u), abs(vec2<u32>(u_input.a, u_input.a)), 12506u), Struct_3(func_4(Struct_4(Struct_2(Struct_1(vec4<i32>(-1i, -50270i, 2224i, 41094i), vec2<u32>(u_input.a, 64010u), vec2<u32>(u_input.a, 110346u), 72079u), Struct_1(vec4<i32>(-1i, 10576i, -32953i, -6780i), vec2<u32>(18667u, u_input.a), vec2<u32>(4294967295u, u_input.a), u_input.a)), global0.x), Struct_1(vec4<i32>(46766i, -14251i, -2147483647i, -4615i), vec2<u32>(38730u, u_input.a), vec2<u32>(99588u, 121683u), u_input.a)).a))));
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1079f, -448f)))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -968f), _wgslsmith_f_op_f32(step(538f, 3008f))) * 721f), 427f));
    let var_1 = func_4(Struct_4(func_4(Struct_4(Struct_2(Struct_1(vec4<i32>(-14066i, 1i, -4549i, 2074i), vec2<u32>(u_input.a, 1u), vec2<u32>(u_input.a, u_input.a), u_input.a), Struct_1(vec4<i32>(2147483647i, -2147483647i, -37186i, -2147483647i), vec2<u32>(u_input.a, 4294967295u), vec2<u32>(109177u, u_input.a), 1u)), global0.x), Struct_1(-vec4<i32>(-26378i, -12625i, -2147483647i, 0i), func_4(Struct_4(Struct_2(Struct_1(vec4<i32>(-1i, -39893i, 43923i, -65876i), vec2<u32>(u_input.a, 0u), vec2<u32>(1u, 0u), 61918u), Struct_1(vec4<i32>(-368i, 2147483647i, 1i, -1i), vec2<u32>(4294967295u, 72075u), vec2<u32>(1u, u_input.a), 1u)), global0.x), Struct_1(vec4<i32>(4326i, -24094i, -1721i, -2147483647i), vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, 1u), u_input.a)).a.b.b, _wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, 4294967295u)), u_input.a)).a, !global0.x), Struct_1(-(vec4<i32>(1i, 1i, 1i, 1i) << (select(vec4<u32>(u_input.a, 27156u, u_input.a, u_input.a), vec4<u32>(96595u, 0u, u_input.a, u_input.a), vec4<bool>(global0.x, false, false, global0.x)) % vec4<u32>(32u))), vec2<u32>(u_input.a << (~45428u % 32u), _wgslsmith_mod_u32(76500u, u_input.a)), firstTrailingBit(~_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, 0u), vec2<u32>(u_input.a, u_input.a))), u_input.a)).a.b;
    var var_2 = -min(vec3<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(var_1.a.x, -2147483647i, -27814i, 19442i), var_1.a), -vec4<i32>(var_1.a.x, var_1.a.x, -13439i, var_1.a.x)), _wgslsmith_mod_i32(-var_1.a.x, var_1.a.x & -10176i), max(-17308i, var_1.a.x) << (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, var_1.d), var_1.c) % 32u)), var_1.a.zzx);
    global0 = select(vec2<bool>(!(_wgslsmith_f_op_f32(-var_0) > _wgslsmith_f_op_f32(-var_0)), select(!(!global0.x), true, global0.x == true)), select(select(select(select(vec2<bool>(false, true), vec2<bool>(global0.x, false), vec2<bool>(true, global0.x)), select(vec2<bool>(global0.x, true), vec2<bool>(false, false), vec2<bool>(false, false)), false), !vec2<bool>(global0.x, false), !func_3(var_0, var_1.b, vec4<i32>(0i, -1i, -1i, var_1.a.x), vec3<u32>(var_1.c.x, var_1.c.x, var_1.c.x))), vec2<bool>(-2147483647i >= (var_2.x >> (var_1.d % 32u)), global0.x), vec2<bool>(global0.x && any(vec4<bool>(global0.x, global0.x, global0.x, false)), true)), !global0.x);
    return vec4<bool>(true, any(!(!select(vec4<bool>(false, global0.x, global0.x, false), vec4<bool>(false, global0.x, false, global0.x), global0.x))), global0.x || !(!all(vec4<bool>(false, true, global0.x, global0.x))), false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_div_vec3_u32(firstTrailingBit(_wgslsmith_div_vec3_u32(vec3<u32>(1u, 6520u, u_input.a) << (vec3<u32>(u_input.a, u_input.a, 66441u) % vec3<u32>(32u)), vec3<u32>(31554u, u_input.a, u_input.a) & vec3<u32>(1u, u_input.a, u_input.a))), ~(~vec3<u32>(0u, u_input.a, u_input.a)));
    global0 = vec2<bool>(global0.x, all(select(func_1(), !(!vec4<bool>(true, global0.x, global0.x, global0.x)), !select(vec4<bool>(false, global0.x, true, global0.x), vec4<bool>(true, global0.x, true, global0.x), false))));
    var var_1 = _wgslsmith_sub_vec2_u32(~((vec2<u32>(4294967295u, u_input.a) | firstTrailingBit(var_0.yz)) | (func_4(Struct_4(Struct_2(Struct_1(vec4<i32>(1480i, -1i, 24819i, 21268i), vec2<u32>(8493u, 7431u), var_0.xx, 14972u), Struct_1(vec4<i32>(52289i, 0i, 63843i, 1i), var_0.zz, vec2<u32>(4294967295u, u_input.a), u_input.a)), global0.x), Struct_1(vec4<i32>(2147483647i, -1i, 1i, -2147483647i), var_0.zx, var_0.yy, 12699u)).a.b.b | ~vec2<u32>(var_0.x, var_0.x))), countOneBits(_wgslsmith_clamp_vec2_u32(var_0.xx, var_0.zz, func_2(4294967295u, 14548i, Struct_2(Struct_1(vec4<i32>(-1i, 13364i, 1i, 0i), var_0.yx, vec2<u32>(u_input.a, u_input.a), var_0.x), Struct_1(vec4<i32>(0i, -22798i, -1854i, 1i), var_0.yy, vec2<u32>(u_input.a, 52163u), 4294967295u))).a.b.c) | var_0.yz));
    var var_2 = any(vec2<bool>(true, global0.x));
    var_0 = ~countOneBits(_wgslsmith_add_vec3_u32(vec3<u32>(var_1.x, _wgslsmith_clamp_u32(18915u, 4294967295u, var_1.x), ~var_0.x), ~select(vec3<u32>(u_input.a, 4294967295u, var_0.x), vec3<u32>(u_input.a, 55619u, var_0.x), vec3<bool>(true, global0.x, true))));
    let var_3 = Struct_3(Struct_2(Struct_1(~(-vec4<i32>(0i, -1i, 0i, -58814i)), ~(vec2<u32>(4294967295u, var_1.x) ^ vec2<u32>(u_input.a, var_0.x)), vec2<u32>(_wgslsmith_sub_u32(var_0.x, 1u), max(var_1.x, var_0.x)), ~(~var_1.x)), Struct_1(vec4<i32>(1i, 1i, 1i, 1i), _wgslsmith_add_vec2_u32(vec2<u32>(var_1.x, 19973u), vec2<u32>(var_1.x, u_input.a)) << ((var_0.zy | var_0.yy) % vec2<u32>(32u)), select(vec2<u32>(var_0.x, 65896u), var_0.yx, vec2<bool>(true, true)), min(1u, u_input.a))));
    var_2 = func_3(_wgslsmith_f_op_f32(floor(-131f)), firstTrailingBit(abs(var_3.a.b.c)), var_3.a.a.a, ~(~_wgslsmith_div_vec3_u32(~vec3<u32>(var_3.a.a.b.x, 1u, var_3.a.a.b.x), ~vec3<u32>(21300u, 49989u, var_1.x)))).x;
    global0 = select(vec2<bool>(global0.x, true), select(vec2<bool>(!global0.x, !(global0.x && global0.x)), !select(vec2<bool>(true, false), vec2<bool>(global0.x, false), !vec2<bool>(global0.x, global0.x)), vec2<bool>(false, global0.x)), !(!func_1().wy));
    var_0 = _wgslsmith_mod_vec3_u32(countOneBits(~(~vec3<u32>(var_0.x, 4294967295u, var_0.x))) & (abs(_wgslsmith_clamp_vec3_u32(vec3<u32>(var_0.x, 4294967295u, u_input.a), vec3<u32>(93012u, 13802u, u_input.a), vec3<u32>(u_input.a, 9728u, 4294967295u))) >> (abs(countOneBits(vec3<u32>(u_input.a, u_input.a, 1u))) % vec3<u32>(32u))), min(~vec3<u32>(var_1.x, ~u_input.a, _wgslsmith_add_u32(var_3.a.b.c.x, var_1.x)), min(vec3<u32>(64735u, ~var_3.a.a.b.x, 0u), max(max(vec3<u32>(var_0.x, 7812u, 4294967295u), vec3<u32>(0u, 23398u, var_3.a.a.b.x)), abs(vec3<u32>(var_0.x, 0u, var_3.a.b.d))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec3_u32(vec3<u32>(0u, _wgslsmith_mod_u32(func_4(Struct_4(Struct_2(Struct_1(vec4<i32>(var_3.a.a.a.x, -59599i, 0i, var_3.a.a.a.x), vec2<u32>(91754u, u_input.a), vec2<u32>(var_1.x, 0u), var_1.x), var_3.a.a), global0.x), Struct_1(vec4<i32>(-2147483647i, var_3.a.a.a.x, 1i, 1i), vec2<u32>(0u, 63001u), vec2<u32>(var_0.x, var_1.x), var_1.x)).a.a.b.x, _wgslsmith_clamp_u32(32853u, 0u, u_input.a)), var_1.x), vec3<u32>(var_1.x, _wgslsmith_sub_u32(4030u, var_3.a.b.d), reverseBits(u_input.a)) | vec3<u32>(var_0.x, var_0.x, ~u_input.a)), -firstTrailingBit(firstTrailingBit(_wgslsmith_sub_vec3_i32(vec3<i32>(1177i, -39729i, -39755i), var_3.a.a.a.yzy))), ~(firstLeadingBit(~vec3<u32>(u_input.a, 33065u, 36814u)) << (_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, var_3.a.b.c.x, u_input.a) & vec3<u32>(4294967295u, var_1.x, var_0.x), firstLeadingBit(vec3<u32>(15230u, var_3.a.b.c.x, var_3.a.b.d))) % vec3<u32>(32u))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(437f, -439f, 1676f))) - _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1280f, 897f, -321f) + vec3<f32>(1783f, 1417f, 545f))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(193f, -1777f, 1211f)), vec3<f32>(_wgslsmith_f_op_f32(trunc(121f)), _wgslsmith_f_op_f32(trunc(-1070f)), _wgslsmith_f_op_f32(f32(-1f) * -737f)), true)), select(vec3<bool>(true, global0.x || global0.x, true), vec3<bool>(false, true, !global0.x), true))), 88747u);
}

