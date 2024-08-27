struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: vec3<u32>,
    d: vec4<u32>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<f32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(true, false, false);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_2) -> i32 {
    global0 = vec3<bool>(true & global0.x, all(select(!vec4<bool>(global0.x, true, true, true), select(vec4<bool>(true, global0.x, false, false), vec4<bool>(true, global0.x, global0.x, global0.x), select(true, global0.x, true)), vec4<bool>(global0.x, true, global0.x, u_input.a > 1u))), false);
    let var_0 = Struct_3(-2147483647i, arg_0, ~arg_0.c.d.zyy);
    global0 = !(!vec3<bool>(any(!vec3<bool>(true, global0.x, false)), global0.x, u_input.c != -1019i));
    global0 = vec3<bool>(global0.x, !(-582f >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-203f)))), !(!all(global0.yx)));
    let var_1 = vec4<bool>(true, any(vec3<bool>(1u < ~var_0.b.e.e, global0.x, global0.x)), select(true, false, false), any(select(select(vec3<bool>(global0.x, global0.x, true), vec3<bool>(global0.x, global0.x, global0.x), true), vec3<bool>(global0.x, global0.x, true), any(vec2<bool>(global0.x, false)))) || global0.x);
    return u_input.c;
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_3, arg_2: Struct_3, arg_3: Struct_2) -> vec3<bool> {
    let var_0 = Struct_1(arg_3.a.a | ~(-38084i), u_input.b, ~vec3<u32>(reverseBits(arg_2.b.e.c.x), firstLeadingBit(~arg_3.e.c.x), (88578u << (0u % 32u)) << (arg_3.b % 32u)), vec4<u32>(arg_3.c.e, 53161u, ~arg_2.b.a.c.x, arg_3.b), ~reverseBits(arg_2.b.e.e));
    var var_1 = Struct_3(~(0i & _wgslsmith_mod_i32(arg_3.e.a, var_0.a)) ^ 1i, Struct_2(arg_1.b.a, abs(_wgslsmith_add_u32(~u_input.a, arg_2.b.a.e)), Struct_1(1i, vec2<u32>(~0u, u_input.b.x), arg_3.d.d.wyx, vec4<u32>(0u, var_0.b.x, ~1118u, 1u), 4294967295u), arg_2.b.a, var_0), vec3<u32>(28455u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(63267u, arg_2.c.x), vec2<u32>(arg_2.b.c.c.x, arg_3.a.e)), ~(~0u)) | select(var_0.d.yxw, ~arg_3.d.c, all(select(vec4<bool>(global0.x, global0.x, global0.x, false), vec4<bool>(false, false, global0.x, global0.x), vec4<bool>(false, false, global0.x, true)))));
    let var_2 = ~firstLeadingBit(_wgslsmith_div_vec2_i32(~arg_0, -(~vec2<i32>(arg_2.a, 0i))));
    let var_3 = var_1.b;
    let var_4 = _wgslsmith_mult_u32(52495u, var_1.c.x);
    return !vec3<bool>(true, global0.x, true);
}

fn func_2(arg_0: bool) -> vec3<bool> {
    global0 = func_4(vec2<i32>(max(u_input.c & u_input.c, u_input.c), u_input.c) ^ -(~abs(vec2<i32>(u_input.c, u_input.c))), Struct_3(u_input.c, Struct_2(Struct_1(~u_input.c, vec2<u32>(u_input.b.x, u_input.b.x), ~vec3<u32>(u_input.a, 0u, u_input.a), select(vec4<u32>(u_input.b.x, u_input.b.x, 4294967295u, u_input.a), vec4<u32>(u_input.a, 0u, u_input.b.x, 0u), global0.x), ~u_input.a), firstLeadingBit(~u_input.a), Struct_1(24106i, ~u_input.b, vec3<u32>(u_input.b.x, 3576u, 4294967295u), countOneBits(vec4<u32>(u_input.a, u_input.b.x, u_input.b.x, 23148u)), ~u_input.b.x), Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, u_input.c, 6823i, u_input.c), vec4<i32>(u_input.c, 15079i, 34477i, u_input.c)), u_input.b | u_input.b, vec3<u32>(u_input.b.x, u_input.b.x, 1u) ^ vec3<u32>(33676u, 50394u, u_input.a), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, 23358u, u_input.a, u_input.b.x), vec4<u32>(u_input.a, u_input.a, 15428u, u_input.b.x)), u_input.a ^ u_input.a), Struct_1(func_3(Struct_2(Struct_1(u_input.c, vec2<u32>(u_input.b.x, 32067u), vec3<u32>(u_input.a, u_input.a, u_input.a), vec4<u32>(0u, u_input.a, 0u, u_input.a), u_input.b.x), u_input.a, Struct_1(4677i, u_input.b, vec3<u32>(0u, u_input.a, 0u), vec4<u32>(22874u, u_input.a, 38240u, 66605u), u_input.b.x), Struct_1(u_input.c, vec2<u32>(38617u, 0u), vec3<u32>(u_input.b.x, 1u, 0u), vec4<u32>(u_input.a, u_input.a, u_input.b.x, u_input.a), 25412u), Struct_1(-16987i, u_input.b, vec3<u32>(6960u, 0u, u_input.a), vec4<u32>(46309u, u_input.a, 7013u, u_input.a), 27212u))), vec2<u32>(0u, 19765u), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, 4294967295u, u_input.b.x), vec3<u32>(u_input.a, 4294967295u, 56620u)), _wgslsmith_sub_vec4_u32(vec4<u32>(4024u, u_input.b.x, 24932u, 16827u), vec4<u32>(u_input.b.x, u_input.a, u_input.b.x, 1u)), u_input.a)), ~vec3<u32>(u_input.a, 113877u, u_input.a) >> (~firstTrailingBit(vec3<u32>(88663u, 4294967295u, u_input.a)) % vec3<u32>(32u))), Struct_3(func_3(Struct_2(Struct_1(u_input.c, u_input.b, vec3<u32>(0u, u_input.b.x, u_input.a), vec4<u32>(28229u, 60184u, u_input.b.x, u_input.b.x), u_input.b.x), ~u_input.b.x, Struct_1(-7763i, u_input.b, vec3<u32>(79561u, 21583u, u_input.a), vec4<u32>(33779u, 0u, 1u, 4294967295u), 0u), Struct_1(u_input.c, u_input.b, vec3<u32>(u_input.a, 4294967295u, u_input.b.x), vec4<u32>(u_input.a, u_input.b.x, 0u, u_input.a), 63220u), Struct_1(u_input.c, vec2<u32>(4962u, 1u), vec3<u32>(46442u, u_input.b.x, u_input.b.x), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.a), u_input.a))), Struct_2(Struct_1(53441i, vec2<u32>(u_input.b.x, u_input.b.x), ~vec3<u32>(u_input.b.x, u_input.a, u_input.a), ~vec4<u32>(0u, u_input.b.x, 21011u, 1u), u_input.a), 15978u, Struct_1(reverseBits(24519i), u_input.b, select(vec3<u32>(27091u, u_input.a, 1u), vec3<u32>(u_input.a, u_input.b.x, 26681u), global0.x), vec4<u32>(102996u, u_input.a, 57025u, u_input.b.x) << (vec4<u32>(22267u, 33095u, u_input.b.x, u_input.a) % vec4<u32>(32u)), 1u), Struct_1(u_input.c, firstLeadingBit(u_input.b), ~vec3<u32>(u_input.a, u_input.b.x, 33089u), select(vec4<u32>(1u, u_input.b.x, u_input.b.x, 59190u), vec4<u32>(37116u, u_input.b.x, u_input.b.x, 0u), false), 0u), Struct_1(u_input.c, abs(vec2<u32>(31898u, 56547u)), ~vec3<u32>(3402u, 38252u, 98065u), select(vec4<u32>(59051u, u_input.b.x, 17055u, 17584u), vec4<u32>(u_input.b.x, u_input.a, u_input.b.x, u_input.a), vec4<bool>(arg_0, arg_0, arg_0, true)), ~39049u)), _wgslsmith_add_vec3_u32(~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.b.x, 0u, u_input.b.x), vec3<u32>(1u, u_input.b.x, u_input.b.x)), max(_wgslsmith_sub_vec3_u32(vec3<u32>(0u, 1u, u_input.a), vec3<u32>(u_input.a, u_input.a, 5385u)), ~vec3<u32>(1u, u_input.b.x, u_input.a)))), Struct_2(Struct_1(~(-8205i), vec2<u32>(1u, ~1u), ~(~vec3<u32>(11873u, 23778u, u_input.b.x)), _wgslsmith_div_vec4_u32(~vec4<u32>(u_input.b.x, u_input.a, u_input.b.x, u_input.a), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 23220u) << (vec4<u32>(u_input.b.x, u_input.b.x, 0u, u_input.b.x) % vec4<u32>(32u))), max(1u, u_input.b.x) >> (4294967295u % 32u)), 4294967295u & (u_input.a & _wgslsmith_dot_vec2_u32(u_input.b, u_input.b)), Struct_1(-27107i, ~(vec2<u32>(1u, u_input.a) ^ u_input.b), ~vec3<u32>(u_input.b.x, 3231u, u_input.a), ~_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 4294967295u, u_input.a, u_input.a), vec4<u32>(94632u, 0u, 19660u, u_input.a)), 55347u), Struct_1(_wgslsmith_mod_i32(_wgslsmith_div_i32(u_input.c, u_input.c), 1i), u_input.b, countOneBits(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, u_input.a, 2218u), vec3<u32>(u_input.b.x, u_input.a, u_input.b.x))), ~vec4<u32>(u_input.a, 59143u, u_input.a, u_input.a) >> (_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b.x, 1u, 4294967295u, 17935u), vec4<u32>(u_input.b.x, u_input.b.x, 1u, 0u)) % vec4<u32>(32u)), 11394u), Struct_1(21556i, vec2<u32>(u_input.a, firstTrailingBit(1u)), vec3<u32>(u_input.b.x, ~u_input.a, 1u), vec4<u32>(4294967295u, ~21596u, 0u, u_input.b.x), reverseBits(u_input.b.x >> (u_input.a % 32u)))));
    let var_0 = Struct_3(1i, Struct_2(Struct_1(abs(-2147483647i), _wgslsmith_div_vec2_u32(u_input.b, _wgslsmith_mult_vec2_u32(u_input.b, u_input.b)), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 16588u, 36481u, 32754u), vec4<u32>(u_input.b.x, u_input.b.x, u_input.a, u_input.a)), 4142u ^ u_input.b.x, 56242u), vec4<u32>(~60456u, u_input.b.x, u_input.a, max(u_input.b.x, 4294967295u)), _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(u_input.b, u_input.b), u_input.b.x)), ~(~(1u >> (u_input.b.x % 32u))), Struct_1(2147483647i, vec2<u32>(~u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(58517u, 0u, u_input.a, u_input.b.x), vec4<u32>(u_input.a, u_input.b.x, 37779u, u_input.a))), ~vec3<u32>(u_input.a, u_input.b.x, 50496u), ~(~vec4<u32>(u_input.b.x, 2719u, 1u, 19602u)), u_input.b.x), Struct_1(_wgslsmith_add_i32(~2147483647i, 2147483647i), ~_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(33847u, u_input.b.x)), countOneBits(~vec3<u32>(19070u, u_input.a, 4294967295u)), select(vec4<u32>(u_input.a, u_input.b.x, 43266u, 15252u), vec4<u32>(4294967295u, 1u, 4294967295u, u_input.b.x), vec4<bool>(false, arg_0, global0.x, global0.x)) | vec4<u32>(1u, 776u, 27763u, u_input.a), 1u), Struct_1(_wgslsmith_clamp_i32(_wgslsmith_add_i32(u_input.c, u_input.c), 1i, u_input.c), ~vec2<u32>(u_input.a, 46285u), vec3<u32>(u_input.b.x, ~46182u, 0u), ~(~vec4<u32>(u_input.a, u_input.b.x, u_input.b.x, u_input.a)), _wgslsmith_mult_u32(u_input.b.x, u_input.b.x) ^ 1u)), ~((~vec3<u32>(u_input.a, u_input.b.x, u_input.b.x) << (vec3<u32>(u_input.b.x, 56478u, 4294967295u) % vec3<u32>(32u))) ^ ~vec3<u32>(u_input.b.x, 1u, u_input.b.x)));
    let var_1 = var_0.b.d.b.x;
    let var_2 = var_0.c;
    let var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1005f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -265f))));
    return select(select(select(select(vec3<bool>(global0.x, false, global0.x), func_4(vec2<i32>(-1i, -1i), Struct_3(var_0.b.a.a, var_0.b, vec3<u32>(var_1, var_2.x, 103458u)), var_0, Struct_2(Struct_1(-2147483647i, var_0.c.xz, var_2, vec4<u32>(var_2.x, 18800u, var_2.x, 1u), var_1), u_input.a, Struct_1(u_input.c, u_input.b, var_0.c, var_0.b.a.d, 17458u), var_0.b.d, Struct_1(var_0.b.a.a, var_0.c.yz, var_0.c, var_0.b.e.d, var_0.b.b))), !vec3<bool>(global0.x, global0.x, true)), func_4(-vec2<i32>(13379i, 34558i), Struct_3(-50074i, Struct_2(var_0.b.c, 0u, var_0.b.e, var_0.b.c, var_0.b.e), vec3<u32>(0u, 4294967295u, 0u)), var_0, var_0.b), false), select(!func_4(vec2<i32>(u_input.c, var_0.a), Struct_3(u_input.c, Struct_2(Struct_1(u_input.c, var_0.b.c.b, var_0.b.e.d.wwx, var_0.b.d.d, 4294967295u), 47968u, var_0.b.c, Struct_1(var_0.a, vec2<u32>(var_2.x, 19318u), var_0.c, vec4<u32>(var_0.b.b, 4294967295u, u_input.a, var_2.x), 0u), var_0.b.e), var_0.c), var_0, Struct_2(var_0.b.d, 9255u, Struct_1(u_input.c, var_0.b.c.c.zx, var_2, vec4<u32>(27742u, u_input.a, var_2.x, var_2.x), u_input.b.x), var_0.b.e, var_0.b.d)), !select(vec3<bool>(arg_0, false, global0.x), vec3<bool>(arg_0, global0.x, arg_0), false), !arg_0 & true), select(!(!vec3<bool>(true, arg_0, true)), !vec3<bool>(global0.x, true, global0.x), vec3<bool>(true, false, !global0.x))), select(vec3<bool>(true, true, true), vec3<bool>(_wgslsmith_f_op_f32(min(-1873f, -359f)) < _wgslsmith_f_op_f32(-var_3.x), all(select(vec3<bool>(true, true, false), vec3<bool>(global0.x, global0.x, false), vec3<bool>(true, true, true))), global0.x), true && (func_4(vec2<i32>(-2147483647i, 86532i), Struct_3(-22437i, Struct_2(Struct_1(0i, vec2<u32>(var_0.b.d.b.x, u_input.a), vec3<u32>(var_1, var_1, var_0.c.x), var_0.b.e.d, 6225u), var_2.x, var_0.b.d, var_0.b.c, Struct_1(2147483647i, var_2.yy, vec3<u32>(21782u, var_0.b.b, 49957u), var_0.b.c.d, 6548u)), var_2), var_0, var_0.b).x || any(vec2<bool>(global0.x, true)))), false);
}

fn func_1(arg_0: f32, arg_1: vec4<f32>, arg_2: i32) -> Struct_1 {
    var var_0 = u_input.c;
    global0 = !select(vec3<bool>(select(!global0.x, false, !global0.x), true, _wgslsmith_f_op_f32(-1927f - arg_0) > arg_0), !(!(!vec3<bool>(false, global0.x, global0.x))), select(!vec3<bool>(global0.x, true, global0.x), !select(vec3<bool>(global0.x, true, true), vec3<bool>(global0.x, global0.x, false), global0.x), func_2(all(vec2<bool>(global0.x, false)))));
    var_0 = arg_2;
    let var_1 = abs(_wgslsmith_mult_vec4_i32(-firstLeadingBit(-vec4<i32>(arg_2, arg_2, 1i, 13763i)), firstLeadingBit(select(vec4<i32>(arg_2, arg_2, -76343i, -1i), -vec4<i32>(arg_2, u_input.c, arg_2, u_input.c), true))));
    var var_2 = u_input.b.x;
    return Struct_1(~19993i >> (max(~reverseBits(4422u), _wgslsmith_mult_u32(u_input.a, ~u_input.a)) % 32u), abs(~_wgslsmith_mult_vec2_u32(~vec2<u32>(105223u, u_input.a), vec2<u32>(u_input.b.x, 4294967295u))), ~(vec3<u32>(countOneBits(15689u), u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.a, u_input.b.x, u_input.b.x), vec4<u32>(16760u, 1u, 0u, u_input.a))) << ((vec3<u32>(0u, 4294967295u, 1u) >> ((vec3<u32>(178u, u_input.a, u_input.b.x) | vec3<u32>(u_input.b.x, 0u, u_input.a)) % vec3<u32>(32u))) % vec3<u32>(32u))), _wgslsmith_mult_vec4_u32(countOneBits(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 8384u, 0u, 42036u), ~vec4<u32>(u_input.a, u_input.b.x, u_input.b.x, u_input.a))), vec4<u32>(countOneBits(~25050u), _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 11512u), u_input.b), abs(83481u)), _wgslsmith_div_u32(~u_input.b.x, u_input.a), 13926u)), ~(~_wgslsmith_mult_u32(abs(u_input.b.x), _wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(87108u, u_input.a)))));
}

fn func_5(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: bool, arg_3: Struct_1) -> vec4<f32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(arg_0))));
    global0 = vec3<bool>(!any(!(!vec3<bool>(arg_2, arg_2, global0.x))), false, !func_2(false).x);
    var var_1 = arg_3.c;
    var_1 = vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.b, 135401u, 67080u, (arg_3.c.x ^ u_input.a) ^ arg_3.c.x), _wgslsmith_sub_vec4_u32(reverseBits(abs(arg_1.d.d)), vec4<u32>(27550u, _wgslsmith_dot_vec3_u32(arg_3.d.yyx, arg_3.c), 25891u << (arg_1.d.c.x % 32u), arg_1.b))), ~66095u, ~45742u);
    let var_2 = vec3<u32>(var_1.x, select(~var_1.x, func_1(arg_0.x, vec4<f32>(_wgslsmith_f_op_f32(floor(-1172f)), _wgslsmith_f_op_f32(round(var_0.x)), _wgslsmith_f_op_f32(var_0.x * arg_0.x), arg_0.x), -10899i).d.x, global0.x), _wgslsmith_mult_u32(u_input.b.x, func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - -1820f)), vec4<f32>(1346f, -1583f, 1013f, 1f), ~(-1i)).e));
    return vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * var_0.x) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + 1118f)) * arg_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(144f))), arg_0.x, -1474f);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = !select(vec3<bool>(false, all(vec2<bool>(global0.x, true)), ~u_input.b.x < ~u_input.b.x), vec3<bool>(!global0.x, global0.x, false), vec3<bool>(!(u_input.a != 50674u), true, !(global0.x && global0.x)));
    global0 = vec3<bool>(false, true && !any(vec2<bool>(global0.x, global0.x)), true);
    let var_0 = _wgslsmith_f_op_vec4_f32(func_5(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-739f, 982f))) - vec2<f32>(-657f, -1001f)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1794f, 347f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-990f, 1065f) * vec2<f32>(-364f, 2012f)))))) - _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -183f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(472f, 1775f)))))), Struct_2(Struct_1(-1i, (vec2<u32>(u_input.a, u_input.a) | vec2<u32>(1u, u_input.b.x)) << (vec2<u32>(u_input.a, 4294967295u) % vec2<u32>(32u)), vec3<u32>(~41959u, u_input.b.x, u_input.a), _wgslsmith_mult_vec4_u32(abs(vec4<u32>(44558u, 4294967295u, 16035u, u_input.b.x)), vec4<u32>(29311u, u_input.b.x, u_input.b.x, 0u)), _wgslsmith_mod_u32(~2950u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.b.x, 43990u), vec3<u32>(u_input.a, 6597u, u_input.a)))), firstLeadingBit(u_input.b.x), Struct_1(u_input.c, u_input.b | u_input.b, vec3<u32>(u_input.a, _wgslsmith_div_u32(u_input.b.x, u_input.a), u_input.a << (u_input.b.x % 32u)), min(vec4<u32>(28650u, u_input.b.x, 0u, u_input.a) ^ vec4<u32>(1u, 28332u, 9825u, 1u), vec4<u32>(u_input.a, u_input.b.x, 4294967295u, u_input.b.x)), ~(1u << (u_input.a % 32u))), Struct_1(_wgslsmith_div_i32(_wgslsmith_add_i32(u_input.c, u_input.c), countOneBits(-43388i)), ~select(vec2<u32>(u_input.b.x, 1u), u_input.b, true), vec3<u32>(4294967295u << (u_input.b.x % 32u), ~71903u, u_input.a), _wgslsmith_clamp_vec4_u32(reverseBits(vec4<u32>(0u, 1u, u_input.b.x, 1u)), ~vec4<u32>(42300u, 21540u, u_input.a, 1u), vec4<u32>(u_input.b.x, u_input.b.x, 81836u, 34409u)), _wgslsmith_sub_u32(u_input.a, _wgslsmith_add_u32(u_input.b.x, 0u))), func_1(-949f, vec4<f32>(_wgslsmith_f_op_f32(sign(-1000f)), -186f, _wgslsmith_f_op_f32(-596f * -606f), _wgslsmith_f_op_f32(-426f * -809f)), firstTrailingBit(-u_input.c))), global0.x, func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1000f + 993f)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -1000f, 553f, -1716f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1049f, 1000f, -1209f, -1000f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1568f, 1596f, -924f, -566f) + vec4<f32>(147f, 1952f, -329f, -1688f))), global0.x)), -(_wgslsmith_sub_i32(u_input.c, 1i) >> ((u_input.b.x >> (u_input.b.x % 32u)) % 32u)))));
    var var_1 = u_input.b << (vec2<u32>(~(30224u << (_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 17961u, u_input.a, u_input.b.x), vec4<u32>(44812u, u_input.a, 4294967295u, 0u)) % 32u)), ~u_input.a) % vec2<u32>(32u));
    let var_2 = func_1(_wgslsmith_f_op_f32(f32(-1f) * -1307f), vec4<f32>(-859f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), var_0.x, true)), _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.x)) + _wgslsmith_f_op_vec4_f32(func_5(vec2<f32>(var_0.x, 1996f), Struct_2(Struct_1(0i, vec2<u32>(4294967295u, 0u), vec3<u32>(u_input.a, 1369u, var_1.x), vec4<u32>(27544u, u_input.b.x, var_1.x, var_1.x), u_input.a), 4294967295u, Struct_1(-11296i, u_input.b, vec3<u32>(12350u, var_1.x, u_input.a), vec4<u32>(u_input.b.x, 91747u, u_input.b.x, var_1.x), u_input.a), Struct_1(u_input.c, vec2<u32>(0u, var_1.x), vec3<u32>(4294967295u, u_input.a, 0u), vec4<u32>(u_input.a, 124182u, 19654u, var_1.x), 482u), Struct_1(-32853i, u_input.b, vec3<u32>(14704u, var_1.x, 3149u), vec4<u32>(7465u, 17613u, 17962u, var_1.x), var_1.x)), global0.x, Struct_1(u_input.c, vec2<u32>(4294967295u, 8519u), vec3<u32>(var_1.x, u_input.b.x, 4294967295u), vec4<u32>(71206u, u_input.b.x, 0u, u_input.b.x), 1u))).x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-341f * var_0.x) * _wgslsmith_f_op_f32(662f * var_0.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.x, var_0.x, global0.x))))), 1i);
    var var_3 = var_0.x;
    var_1 = ~(~vec2<u32>(var_1.x, u_input.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(-(~(-u_input.c)), select(1u, 80332u, all(!(!vec3<bool>(false, global0.x, false)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.x)))), _wgslsmith_f_op_f32(f32(-1f) * -2475f), var_0.x, var_0.x), var_0.xy);
}

