struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: vec3<u32>,
    d: vec3<u32>,
    e: i32,
}

struct Struct_2 {
    a: f32,
    b: vec3<i32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_1,
    c: Struct_1,
    d: vec4<bool>,
    e: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
    c: vec2<i32>,
    d: Struct_2,
    e: Struct_2,
}

struct Struct_5 {
    a: vec3<u32>,
    b: Struct_1,
    c: f32,
    d: Struct_1,
    e: Struct_3,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3() -> i32 {
    global0 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-global0.a.x), _wgslsmith_f_op_f32(step(global0.a.x, global0.a.x))), _wgslsmith_clamp_i32(abs(_wgslsmith_sub_i32(-global0.e, -64925i)), global0.e, 0i), ~_wgslsmith_add_vec3_u32(global0.d, ~firstLeadingBit(global0.d)), global0.c, 2147483647i);
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1000f, 1326f))))), min(_wgslsmith_div_i32(-2147483647i, select(4749i << (global0.c.x % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(global0.b, u_input.a), vec2<i32>(u_input.a, u_input.a)), true)), firstTrailingBit(12882i)), vec3<u32>(~global0.d.x, 18049u, global0.d.x), ~firstLeadingBit(global0.c), countOneBits(u_input.a));
    let var_1 = _wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(select(-vec3<i32>(var_0.e, -27849i, 0i), vec3<i32>(u_input.a, 64382i, global0.b), false), vec3<i32>(-7725i, var_0.e, 23709i)), vec3<i32>(-19991i, abs(34276i >> (var_0.d.x % 32u)), global0.e << (0u % 32u))), ~select(_wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(-30545i, var_0.e, 1i), vec3<i32>(global0.e, 0i, -22093i)), _wgslsmith_mult_vec3_i32(vec3<i32>(0i, global0.e, global0.e), vec3<i32>(-20856i, var_0.e, 30253i))), firstLeadingBit(countOneBits(vec3<i32>(2147483647i, -4197i, 1i))), true));
    global0 = var_0;
    var var_2 = var_0.a.x;
    return firstLeadingBit(50345i);
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_5, arg_2: vec2<i32>) -> Struct_2 {
    let var_0 = Struct_3(vec4<u32>(arg_1.d.d.x, (25639u << (~global0.c.x % 32u)) >> (4294967295u % 32u), ~global0.d.x, min((global0.d.x << (4294967295u % 32u)) & ~41705u, abs(_wgslsmith_dot_vec3_u32(vec3<u32>(42453u, 4294967295u, 43419u), vec3<u32>(79944u, global0.c.x, 0u))))), Struct_1(global0.a, -1i, arg_1.b.d, vec3<u32>(0u, global0.c.x, global0.c.x), -arg_2.x), Struct_1(global0.a, -35121i, (~vec3<u32>(arg_1.e.b.d.x, 15525u, arg_1.d.c.x) | abs(vec3<u32>(global0.d.x, 0u, global0.c.x))) | arg_1.b.d, firstTrailingBit(~vec3<u32>(arg_1.b.c.x, arg_1.e.c.c.x, arg_1.a.x)), u_input.a), vec4<bool>(true, true, true, any(arg_1.e.d.zww)), arg_1.e.b);
    var var_1 = Struct_2(arg_1.b.a.x, select(vec3<i32>(~_wgslsmith_div_i32(0i, 33664i), ~countOneBits(arg_2.x), _wgslsmith_sub_i32(_wgslsmith_add_i32(-31136i, -9812i), func_3())), ~(-vec3<i32>(arg_1.e.b.b, 1i, 37616i)) << (~(vec3<u32>(var_0.b.c.x, 22327u, arg_1.d.c.x) ^ var_0.b.c) % vec3<u32>(32u)), !(!vec3<bool>(false, false, var_0.d.x))), Struct_1(arg_0.xy, -_wgslsmith_add_i32(arg_2.x, 1i) >> ((~var_0.b.d.x & global0.d.x) % 32u), vec3<u32>(18219u, 0u, ~global0.c.x ^ (global0.c.x >> (global0.d.x % 32u))), arg_1.a, 1i), arg_1.e.e);
    var var_2 = vec3<i32>(max(arg_1.b.e, arg_1.b.b), _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(countOneBits(var_1.b), var_1.b), countOneBits(var_1.b) | (vec3<i32>(-17692i, -17893i, -26770i) >> (arg_1.a % vec3<u32>(32u)))) & ~(-16733i), _wgslsmith_dot_vec4_i32(vec4<i32>(~0i, -13700i, var_1.c.b, arg_2.x << (global0.d.x % 32u)), vec4<i32>(716i, 1i, -4328i, -2147483647i)) << (abs(1962u ^ _wgslsmith_div_u32(0u, var_0.a.x)) % 32u));
    global0 = var_0.e;
    global0 = Struct_1(arg_0.xy, -20306i, _wgslsmith_clamp_vec3_u32(~vec3<u32>(var_0.b.c.x, 1u, 0u), firstLeadingBit(vec3<u32>(var_1.c.d.x, arg_1.b.d.x, ~9406u)), vec3<u32>(15270u, _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(11562u, 823u, global0.c.x), vec3<u32>(global0.d.x, 4294967295u, arg_1.a.x)), arg_1.b.c.x), ~1u)), global0.c, func_3());
    return Struct_2(-149f, ~(-_wgslsmith_sub_vec3_i32(select(var_1.b, vec3<i32>(1i, -4243i, arg_1.d.b), var_0.d.xxz), var_1.b << (var_1.c.c % vec3<u32>(32u)))), var_1.c, var_1.c);
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_5, arg_2: vec4<f32>) -> vec2<i32> {
    global0 = Struct_1(vec2<f32>(arg_1.b.a.x, _wgslsmith_f_op_f32(-1576f - arg_2.x)), arg_0.x, ~arg_1.e.b.c, countOneBits(vec3<u32>(4294967295u, _wgslsmith_dot_vec4_u32(~arg_1.e.a, ~arg_1.e.a), ~_wgslsmith_sub_u32(arg_1.d.c.x, 21339u))), _wgslsmith_dot_vec4_i32(firstLeadingBit(select(~vec4<i32>(arg_1.e.b.b, -22234i, arg_1.b.b, arg_1.d.e), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, 2147483647i, arg_1.d.b, arg_1.d.e), vec4<i32>(u_input.a, arg_0.x, 2147483647i, global0.e)), !arg_1.e.d)), vec4<i32>(~1i, u_input.a << (~68065u % 32u), global0.e | arg_1.e.e.e, global0.e)));
    let var_0 = arg_1.e;
    var var_1 = var_0.e;
    var var_2 = func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global0.a.x), _wgslsmith_f_op_f32(var_1.a.x + 106f), global0.a.x)), Struct_5(firstTrailingBit(~max(arg_1.d.d, var_1.d)), arg_1.d, 2372f, Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, var_0.b.a.x)), ~(i32(-1i) * -24361i), (arg_1.d.c | vec3<u32>(30322u, arg_1.d.c.x, 43947u)) >> (reverseBits(global0.c) % vec3<u32>(32u)), ~_wgslsmith_div_vec3_u32(global0.d, arg_1.a), -2147483647i), var_0), countOneBits(vec2<i32>(arg_0.x, i32(-1i) * -1i)));
    global0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(global0.a.x, -274f), _wgslsmith_f_op_vec2_f32(-var_0.c.a)) * vec2<f32>(global0.a.x, var_1.a.x))), firstLeadingBit(arg_1.b.e), var_1.d, var_0.a.wwx, -(~_wgslsmith_mod_i32(var_2.c.b, _wgslsmith_sub_i32(var_2.c.e, arg_1.b.e))));
    return max(vec2<i32>(func_3() << (arg_1.d.d.x % 32u), 2308i | (1i << (var_2.d.d.x % 32u))), _wgslsmith_mod_vec2_i32(-var_2.b.yy, ~var_2.b.zz)) | vec2<i32>(var_2.d.e, 2147483647i);
}

fn func_4(arg_0: u32, arg_1: f32, arg_2: vec2<i32>, arg_3: Struct_3) -> u32 {
    global0 = Struct_1(arg_3.b.a, _wgslsmith_clamp_i32(u_input.a, global0.e, global0.b), ~(~vec3<u32>(min(global0.c.x, arg_3.c.d.x), 8838u, _wgslsmith_mod_u32(arg_0, arg_0))), vec3<u32>(reverseBits(62266u), 38548u, _wgslsmith_mod_u32(arg_0, arg_0)), i32(-1i) * -(~_wgslsmith_mult_i32(-1i, arg_2.x)));
    let var_0 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-global0.a)));
    let var_1 = vec4<u32>(0u, min(countOneBits(~(~0u)), select(1u, arg_0, arg_3.d.x)), arg_3.a.x, _wgslsmith_dot_vec3_u32(arg_3.c.d, countOneBits(min(vec3<u32>(1u, global0.d.x, 1u), vec3<u32>(arg_0, 10042u, arg_0))) << (arg_3.c.c % vec3<u32>(32u))));
    let var_2 = vec3<bool>(false, all(arg_3.d), any(select(arg_3.d, select(!arg_3.d, arg_3.d, all(vec4<bool>(true, false, arg_3.d.x, true))), arg_3.d)));
    var var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(arg_3.b.a * _wgslsmith_f_op_vec2_f32(var_0 - arg_3.e.a)), ~u_input.a, abs(vec3<u32>(4931u, arg_0, arg_0)), ~vec3<u32>(_wgslsmith_sub_u32(~1u, var_1.x), ~arg_0, var_1.x), i32(-1i) * -1i);
    return ~4294967295u | _wgslsmith_dot_vec2_u32(vec2<u32>(var_3.c.x, 0u), vec2<u32>(~_wgslsmith_mod_u32(69013u, 4294967295u), _wgslsmith_div_u32(arg_3.b.d.x, ~4294967295u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(global0.a, abs(-82201i), _wgslsmith_sub_vec3_u32(global0.d, vec3<u32>(func_4(global0.c.x, _wgslsmith_f_op_f32(-global0.a.x), func_1(vec3<i32>(global0.e, 0i, u_input.a), Struct_5(global0.c, Struct_1(global0.a, global0.e, vec3<u32>(1u, 4294967295u, 4294967295u), vec3<u32>(39612u, global0.d.x, global0.d.x), -7622i), -678f, Struct_1(global0.a, u_input.a, global0.c, vec3<u32>(4294967295u, global0.c.x, 21248u), 1i), Struct_3(vec4<u32>(1u, global0.d.x, 69372u, global0.d.x), Struct_1(vec2<f32>(global0.a.x, 626f), global0.b, global0.c, global0.d, 1i), Struct_1(vec2<f32>(-147f, -333f), global0.e, global0.c, global0.c, 2147483647i), vec4<bool>(false, true, false, true), Struct_1(vec2<f32>(global0.a.x, global0.a.x), 1i, global0.c, global0.c, -70487i))), vec4<f32>(global0.a.x, 1326f, 985f, global0.a.x)), Struct_3(vec4<u32>(15044u, 4294967295u, 19130u, 1u), Struct_1(global0.a, u_input.a, vec3<u32>(global0.d.x, 54199u, global0.c.x), global0.c, 2147483647i), Struct_1(global0.a, -2147483647i, global0.c, vec3<u32>(global0.d.x, 0u, global0.d.x), u_input.a), vec4<bool>(false, false, true, false), Struct_1(vec2<f32>(200f, -1273f), u_input.a, vec3<u32>(1u, 0u, global0.d.x), vec3<u32>(4294967295u, 0u, 25240u), global0.e))), 1u, _wgslsmith_mult_u32(~global0.d.x, firstLeadingBit(0u)))), ((max(vec3<u32>(global0.d.x, 1u, 26472u), vec3<u32>(8781u, 5761u, 21352u)) << (global0.c % vec3<u32>(32u))) | vec3<u32>(func_2(vec3<f32>(global0.a.x, -261f, global0.a.x), Struct_5(vec3<u32>(global0.d.x, 0u, global0.d.x), Struct_1(global0.a, global0.e, vec3<u32>(0u, global0.c.x, 36049u), vec3<u32>(43530u, global0.d.x, global0.d.x), 0i), global0.a.x, Struct_1(global0.a, u_input.a, global0.c, vec3<u32>(global0.d.x, global0.c.x, 1u), u_input.a), Struct_3(vec4<u32>(10021u, 2016u, 39915u, 66769u), Struct_1(vec2<f32>(-1776f, global0.a.x), -18060i, global0.c, global0.c, 2147483647i), Struct_1(vec2<f32>(global0.a.x, global0.a.x), u_input.a, global0.c, vec3<u32>(1u, 0u, global0.d.x), 2147483647i), vec4<bool>(true, true, true, false), Struct_1(vec2<f32>(2501f, 2224f), 1i, vec3<u32>(37260u, 4294967295u, global0.c.x), vec3<u32>(1u, global0.d.x, 71679u), -30032i))), vec2<i32>(0i, global0.e)).d.d.x, global0.d.x, reverseBits(57471u))) | (global0.c << (~vec3<u32>(global0.c.x, global0.d.x, global0.d.x) % vec3<u32>(32u))), _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32((vec4<i32>(-2147483647i, -11289i, global0.b, global0.b) >> (vec4<u32>(global0.c.x, 23536u, global0.d.x, 3587u) % vec4<u32>(32u))) & vec4<i32>(u_input.a, 34493i, u_input.a, global0.b), vec4<i32>(i32(-1i) * -15563i, -u_input.a, 5202i, 0i)), vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(91412i, u_input.a, global0.b), max(vec3<i32>(u_input.a, u_input.a, -2147483647i), vec3<i32>(19694i, 0i, -2147483647i))), _wgslsmith_sub_i32(~1i, u_input.a >> (1u % 32u)), -22130i, -(i32(-1i) * -16120i))));
    let var_1 = vec4<i32>(-1i) * -vec4<i32>(func_1(countOneBits(vec3<i32>(-16883i, global0.b, 26008i)), Struct_5(var_0.d, Struct_1(global0.a, 8577i, global0.d, vec3<u32>(1u, 14031u, global0.c.x), -41911i), var_0.a.x, Struct_1(var_0.a, 43816i, var_0.d, vec3<u32>(4294967295u, 62490u, 11028u), var_0.e), Struct_3(vec4<u32>(global0.d.x, global0.d.x, var_0.d.x, var_0.d.x), Struct_1(global0.a, u_input.a, global0.d, global0.c, -1i), Struct_1(vec2<f32>(1000f, var_0.a.x), u_input.a, global0.d, vec3<u32>(4294967295u, 0u, global0.c.x), global0.e), vec4<bool>(true, false, false, true), Struct_1(vec2<f32>(149f, 342f), 12267i, vec3<u32>(global0.d.x, 1u, global0.d.x), vec3<u32>(35039u, 0u, 33868u), global0.b))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.x, global0.a.x, 463f, 1326f))).x, ~global0.b, _wgslsmith_add_i32(abs(u_input.a), 2147483647i), i32(-1i) * -2147483647i);
    var_0 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(floor(954f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1408f)))))), i32(-1i) * -reverseBits(var_0.e), min(global0.d, var_0.c), firstLeadingBit(vec3<u32>(~1u, _wgslsmith_dot_vec3_u32(var_0.d, select(vec3<u32>(2960u, var_0.d.x, var_0.d.x), vec3<u32>(0u, 0u, var_0.c.x), true)), firstLeadingBit(var_0.d.x))), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 27042i, -1179i) | ~_wgslsmith_add_vec3_i32(vec3<i32>(global0.e, u_input.a, 0i), vec3<i32>(global0.b, global0.b, 6075i)), var_1.yyz));
    global0 = func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(2118f, -338f, global0.a.x))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(298f, 1757f, -2235f))))), Struct_5(abs(_wgslsmith_sub_vec3_u32(select(var_0.d, vec3<u32>(var_0.c.x, 26108u, var_0.d.x), vec3<bool>(true, true, false)), vec3<u32>(2994u, 1u, global0.d.x))), Struct_1(global0.a, global0.e, global0.c, _wgslsmith_add_vec3_u32(vec3<u32>(global0.d.x, global0.d.x, global0.c.x), _wgslsmith_add_vec3_u32(vec3<u32>(var_0.d.x, global0.c.x, global0.c.x), var_0.d)), ~(~var_0.e)), _wgslsmith_f_op_f32(f32(-1f) * -1339f), func_2(vec3<f32>(1f, _wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(-global0.a.x)), Struct_5(global0.d ^ vec3<u32>(var_0.c.x, var_0.d.x, 40640u), func_2(vec3<f32>(397f, -198f, 1000f), Struct_5(vec3<u32>(global0.c.x, global0.d.x, var_0.d.x), Struct_1(global0.a, u_input.a, vec3<u32>(global0.c.x, 0u, 71539u), global0.c, 0i), 1000f, Struct_1(vec2<f32>(var_0.a.x, var_0.a.x), 0i, vec3<u32>(9440u, 0u, var_0.c.x), global0.c, u_input.a), Struct_3(vec4<u32>(4294967295u, 20076u, global0.d.x, 39651u), Struct_1(vec2<f32>(var_0.a.x, 285f), u_input.a, vec3<u32>(var_0.c.x, var_0.c.x, 78234u), vec3<u32>(1158u, var_0.c.x, 1u), 2147483647i), Struct_1(vec2<f32>(1445f, -859f), u_input.a, vec3<u32>(var_0.d.x, 1u, var_0.d.x), global0.d, u_input.a), vec4<bool>(true, false, true, true), Struct_1(vec2<f32>(1099f, -1797f), var_1.x, vec3<u32>(var_0.c.x, global0.d.x, 69054u), vec3<u32>(global0.c.x, var_0.c.x, 4294967295u), -1i))), vec2<i32>(var_1.x, 2147483647i)).c, _wgslsmith_f_op_f32(f32(-1f) * -197f), func_2(vec3<f32>(var_0.a.x, var_0.a.x, 1821f), Struct_5(vec3<u32>(1u, var_0.c.x, 207u), Struct_1(global0.a, -23569i, var_0.d, var_0.d, global0.e), global0.a.x, Struct_1(vec2<f32>(var_0.a.x, -783f), -2147483647i, vec3<u32>(7274u, global0.d.x, 17973u), var_0.c, var_1.x), Struct_3(vec4<u32>(0u, 1u, 39760u, var_0.d.x), Struct_1(global0.a, var_1.x, vec3<u32>(var_0.c.x, var_0.d.x, global0.c.x), vec3<u32>(14691u, 0u, 1u), 0i), Struct_1(vec2<f32>(var_0.a.x, var_0.a.x), u_input.a, vec3<u32>(39779u, 1502u, 18291u), vec3<u32>(global0.c.x, var_0.c.x, global0.c.x), global0.b), vec4<bool>(true, true, false, false), Struct_1(global0.a, 3580i, var_0.d, vec3<u32>(16842u, 26719u, var_0.d.x), var_0.b))), vec2<i32>(-51837i, u_input.a)).d, Struct_3(vec4<u32>(4294967295u, 4294967295u, 4294967295u, 4294967295u), Struct_1(vec2<f32>(var_0.a.x, global0.a.x), var_0.e, var_0.d, vec3<u32>(33790u, global0.c.x, 1u), u_input.a), Struct_1(vec2<f32>(110f, var_0.a.x), -40228i, vec3<u32>(global0.c.x, 1u, global0.d.x), global0.c, var_1.x), vec4<bool>(true, true, true, false), Struct_1(vec2<f32>(var_0.a.x, global0.a.x), -2147483647i, vec3<u32>(25974u, 4294967295u, var_0.d.x), vec3<u32>(25944u, global0.d.x, var_0.d.x), var_0.e))), ~vec2<i32>(-3343i, 16472i) | var_1.zz).c, Struct_3(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.d.x, var_0.c.x, 4294967295u, 4294967295u), vec4<u32>(var_0.c.x, global0.d.x, 0u, var_0.c.x)), 1u, _wgslsmith_dot_vec3_u32(vec3<u32>(4276u, 1u, 1u), vec3<u32>(6093u, 4294967295u, var_0.d.x)), 4294967295u & global0.d.x), func_2(vec3<f32>(-111f, global0.a.x, 333f), Struct_5(vec3<u32>(global0.d.x, 35431u, 10798u), Struct_1(global0.a, 2147483647i, vec3<u32>(global0.d.x, global0.c.x, global0.d.x), vec3<u32>(0u, 92777u, 39036u), 0i), -261f, Struct_1(vec2<f32>(var_0.a.x, -122f), var_0.e, vec3<u32>(4294967295u, 71733u, 1u), vec3<u32>(0u, 40309u, 69139u), -2147483647i), Struct_3(vec4<u32>(global0.d.x, global0.c.x, global0.d.x, global0.d.x), Struct_1(vec2<f32>(-965f, var_0.a.x), u_input.a, var_0.c, vec3<u32>(4294967295u, 0u, 58268u), u_input.a), Struct_1(global0.a, 16796i, vec3<u32>(12502u, 0u, var_0.d.x), vec3<u32>(global0.c.x, 30574u, global0.d.x), u_input.a), vec4<bool>(false, true, true, true), Struct_1(global0.a, var_1.x, var_0.c, vec3<u32>(global0.d.x, var_0.d.x, var_0.c.x), 0i))), abs(var_1.wx)).c, Struct_1(var_0.a, u_input.a, vec3<u32>(global0.c.x, 0u, global0.d.x), ~vec3<u32>(var_0.c.x, 15437u, 0u), ~var_0.b), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true)), false), Struct_1(_wgslsmith_f_op_vec2_f32(-var_0.a), _wgslsmith_mult_i32(0i, -1i), _wgslsmith_clamp_vec3_u32(var_0.c, vec3<u32>(global0.c.x, global0.d.x, global0.d.x), global0.d), min(global0.c, var_0.d), ~4623i))), _wgslsmith_mult_vec2_i32(var_1.wz, vec2<i32>(_wgslsmith_mod_i32(~2147483647i, u_input.a), 14335i))).c;
    global0 = func_2(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0.a.x))), 108f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(var_0.a.x)))))), Struct_5(~var_0.c, func_2(vec3<f32>(-1002f, -1124f, var_0.a.x), Struct_5(countOneBits(vec3<u32>(global0.c.x, var_0.c.x, 69287u)), func_2(vec3<f32>(var_0.a.x, var_0.a.x, var_0.a.x), Struct_5(vec3<u32>(var_0.d.x, var_0.d.x, 16233u), Struct_1(vec2<f32>(global0.a.x, 1099f), u_input.a, var_0.d, var_0.c, u_input.a), global0.a.x, Struct_1(vec2<f32>(-794f, global0.a.x), -60647i, global0.c, vec3<u32>(global0.d.x, global0.c.x, global0.d.x), var_1.x), Struct_3(vec4<u32>(global0.c.x, var_0.c.x, 4294967295u, 0u), Struct_1(global0.a, var_0.b, var_0.d, global0.d, global0.e), Struct_1(var_0.a, 1i, vec3<u32>(9714u, var_0.c.x, var_0.d.x), var_0.d, var_1.x), vec4<bool>(true, true, false, false), Struct_1(vec2<f32>(286f, var_0.a.x), var_0.b, global0.d, vec3<u32>(global0.d.x, 4294967295u, global0.c.x), 0i))), var_1.xz).c, _wgslsmith_div_f32(-1346f, var_0.a.x), Struct_1(vec2<f32>(517f, 1132f), u_input.a, vec3<u32>(var_0.c.x, var_0.c.x, global0.c.x), vec3<u32>(41754u, var_0.d.x, 12981u), 58983i), Struct_3(vec4<u32>(global0.d.x, 0u, var_0.c.x, 13140u), Struct_1(var_0.a, 2147483647i, vec3<u32>(global0.d.x, 1u, 0u), global0.d, var_1.x), Struct_1(vec2<f32>(global0.a.x, var_0.a.x), var_1.x, vec3<u32>(0u, 0u, var_0.d.x), vec3<u32>(1u, 1u, 9013u), global0.e), vec4<bool>(false, false, false, false), Struct_1(global0.a, var_1.x, global0.d, vec3<u32>(4294967295u, var_0.d.x, global0.c.x), 11777i))), abs(var_1.zx & vec2<i32>(3276i, u_input.a))).c, -1000f, func_2(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.a.x, global0.a.x, 2373f), vec3<f32>(-340f, 1391f, global0.a.x)))), Struct_5(reverseBits(var_0.c), Struct_1(vec2<f32>(global0.a.x, -1000f), 2147483647i, vec3<u32>(47621u, global0.c.x, 74061u), vec3<u32>(44195u, global0.d.x, 33117u), 9099i), 450f, Struct_1(vec2<f32>(var_0.a.x, var_0.a.x), -1i, vec3<u32>(global0.d.x, 4294967295u, 67708u), vec3<u32>(5920u, 61280u, 99876u), var_1.x), Struct_3(vec4<u32>(var_0.d.x, 60800u, 50002u, global0.d.x), Struct_1(vec2<f32>(-240f, var_0.a.x), -591i, var_0.c, vec3<u32>(var_0.c.x, 4294967295u, var_0.c.x), -2147483647i), Struct_1(var_0.a, 85447i, global0.d, global0.c, -1i), vec4<bool>(true, true, false, false), Struct_1(global0.a, var_1.x, var_0.c, vec3<u32>(var_0.d.x, var_0.c.x, 40375u), -836i))), vec2<i32>(-2147483647i, var_1.x)).c, Struct_3(_wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 63612u, 40799u, 42868u), vec4<u32>(54440u, 679u, 63067u, 70338u), vec4<u32>(global0.c.x, 12103u, 0u, global0.c.x)), _wgslsmith_div_vec4_u32(vec4<u32>(var_0.d.x, 7147u, 41194u, 11207u), vec4<u32>(1u, 68171u, global0.c.x, var_0.c.x)), firstLeadingBit(vec4<u32>(16307u, 0u, global0.c.x, var_0.c.x))), Struct_1(_wgslsmith_f_op_vec2_f32(-global0.a), 2147483647i, _wgslsmith_mod_vec3_u32(vec3<u32>(var_0.c.x, global0.d.x, var_0.c.x), global0.d), ~vec3<u32>(global0.d.x, var_0.d.x, 11588u), ~var_1.x), func_2(vec3<f32>(var_0.a.x, 2007f, var_0.a.x), Struct_5(var_0.d, Struct_1(global0.a, var_0.e, var_0.c, vec3<u32>(var_0.d.x, var_0.d.x, global0.c.x), 2147483647i), -711f, Struct_1(vec2<f32>(-560f, -149f), var_1.x, var_0.d, var_0.c, global0.e), Struct_3(vec4<u32>(1u, 4294967295u, 14529u, global0.c.x), Struct_1(vec2<f32>(global0.a.x, 460f), global0.e, var_0.c, vec3<u32>(1u, 73509u, var_0.c.x), 23099i), Struct_1(vec2<f32>(global0.a.x, 1314f), var_1.x, var_0.d, global0.d, global0.b), vec4<bool>(true, false, true, true), Struct_1(vec2<f32>(-591f, global0.a.x), u_input.a, vec3<u32>(global0.c.x, 4294967295u, global0.c.x), vec3<u32>(2808u, var_0.c.x, 37826u), u_input.a))), vec2<i32>(global0.e, global0.e)).c, vec4<bool>(true, true, true, true), func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.x, -975f, global0.a.x) * vec3<f32>(-380f, 1000f, global0.a.x)), Struct_5(var_0.c, Struct_1(vec2<f32>(var_0.a.x, -379f), var_0.e, vec3<u32>(1u, 65441u, global0.c.x), var_0.d, 25334i), -632f, Struct_1(var_0.a, 57787i, vec3<u32>(20590u, var_0.c.x, 27372u), global0.d, 0i), Struct_3(vec4<u32>(0u, 47542u, var_0.d.x, 7467u), Struct_1(var_0.a, global0.e, var_0.d, vec3<u32>(64874u, var_0.d.x, var_0.c.x), 0i), Struct_1(var_0.a, u_input.a, var_0.d, vec3<u32>(var_0.c.x, 1u, global0.c.x), 60096i), vec4<bool>(false, false, true, true), Struct_1(vec2<f32>(-1000f, var_0.a.x), -27228i, var_0.c, global0.c, u_input.a))), var_1.zy).d)), ~(~(~vec2<i32>(-10936i, global0.e)) | _wgslsmith_mult_vec2_i32(reverseBits(var_1.zz), var_1.zw))).c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global0.a.x, -434f, var_0.a.x), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1000f, var_0.a.x, var_0.a.x), vec3<f32>(global0.a.x, -169f, var_0.a.x), true)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1080f, global0.a.x, global0.a.x), vec3<f32>(-1139f, global0.a.x, var_0.a.x))) - _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0.a.x, -791f, -1957f)))))), vec4<f32>(_wgslsmith_f_op_f32(-143f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -206f))), global0.a.x, var_0.a.x, _wgslsmith_f_op_f32(abs(1063f))), _wgslsmith_mult_i32(firstLeadingBit(~0i), max(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(var_1.yy, vec2<i32>(-1i, global0.b)), var_1.xw), u_input.a)));
}

