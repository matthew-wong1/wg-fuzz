struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: u32,
    c: vec3<f32>,
    d: vec4<bool>,
}

struct Struct_4 {
    a: bool,
    b: bool,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<u32>(80451u, 4294967295u, 27780u, 0u));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: bool) -> u32 {
    let var_0 = vec4<u32>(global0.a.x, abs(reverseBits(abs(reverseBits(global0.a.x)))), ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(global0.a.x, global0.a.x, 44945u) << (global0.a.wwx % vec3<u32>(32u)), global0.a.xzy)), global0.a.x);
    let var_1 = ~_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(0u, ~0u, 24610u)), vec3<u32>(_wgslsmith_mult_u32(34944u, _wgslsmith_add_u32(global0.a.x, 0u)), _wgslsmith_div_u32(~53328u, global0.a.x), min(var_0.x, firstLeadingBit(21726u))));
    global0 = Struct_1(vec4<u32>(~(~2251u), var_0.x, ~var_0.x, global0.a.x) & global0.a);
    let var_2 = Struct_2(i32(-1i) * -_wgslsmith_sub_i32(~u_input.c.x, max(13899i, u_input.b)), Struct_1(firstTrailingBit(_wgslsmith_mod_vec4_u32(var_0, vec4<u32>(var_0.x, 4294967295u, var_0.x, global0.a.x)))), Struct_1(~abs(global0.a)), Struct_1(~var_0));
    global0 = var_2.d;
    return ~(~(~min(_wgslsmith_dot_vec4_u32(var_2.c.a, vec4<u32>(4294967295u, 1u, 20266u, var_0.x)), 1u)));
}

fn func_4(arg_0: vec2<u32>, arg_1: bool) -> vec4<u32> {
    global0 = Struct_1(vec4<u32>(_wgslsmith_div_u32(arg_0.x, 42070u), arg_0.x, _wgslsmith_div_u32(1u, ~(~arg_0.x)), abs(~global0.a.x)));
    let var_0 = false;
    let var_1 = -26035i;
    global0 = Struct_1(abs(global0.a));
    global0 = Struct_1(select(~_wgslsmith_mult_vec4_u32(~vec4<u32>(arg_0.x, 1u, 0u, 4294967295u), firstTrailingBit(vec4<u32>(global0.a.x, global0.a.x, 66112u, arg_0.x))), select(global0.a, abs(global0.a), select(select(vec4<bool>(var_0, false, var_0, true), vec4<bool>(arg_1, false, var_0, false), false), select(vec4<bool>(false, false, arg_1, false), vec4<bool>(arg_1, arg_1, false, true), var_0), !vec4<bool>(true, arg_1, var_0, false))), true));
    return reverseBits(vec4<u32>(0u, ~arg_0.x, global0.a.x, min(~global0.a.x, arg_0.x))) ^ ~(vec4<u32>(~global0.a.x, 1u, 1u, ~4294967295u) & _wgslsmith_add_vec4_u32(global0.a, _wgslsmith_clamp_vec4_u32(global0.a, global0.a, global0.a)));
}

fn func_2(arg_0: bool, arg_1: vec2<u32>) -> Struct_2 {
    global0 = Struct_1(func_4(vec2<u32>(_wgslsmith_div_u32(70246u, 1u), arg_1.x) ^ vec2<u32>(_wgslsmith_clamp_u32(global0.a.x, global0.a.x, arg_1.x), func_3(arg_0)), any(select(select(vec2<bool>(true, true), vec2<bool>(arg_0, arg_0), arg_0), vec2<bool>(false, arg_0), vec2<bool>(true, true)))));
    global0 = Struct_1(_wgslsmith_div_vec4_u32(global0.a, vec4<u32>(~_wgslsmith_mod_u32(global0.a.x, arg_1.x), global0.a.x, arg_1.x, arg_1.x)));
    global0 = Struct_1(vec4<u32>(abs(~_wgslsmith_clamp_u32(49739u, 0u, 1u)), abs(~global0.a.x >> (~1u % 32u)), func_3(true), 4294967295u));
    var var_0 = 1119f;
    var var_1 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(-752f - -1035f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(151f - 905f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1000f * -1368f), -1218f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-1177f, 1229f), -537f, !arg_0)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-412f, 852f)) - _wgslsmith_f_op_f32(357f + -1000f))), -315f)));
    return Struct_2(_wgslsmith_dot_vec3_i32(-u_input.c.zzx, vec3<i32>(1i, _wgslsmith_mult_i32(-u_input.a, i32(-1i) * -6131i), _wgslsmith_clamp_i32(-8627i, u_input.a, -2978i))), Struct_1(_wgslsmith_add_vec4_u32(~min(vec4<u32>(5428u, 2756u, 38121u, arg_1.x), vec4<u32>(arg_1.x, 55924u, arg_1.x, arg_1.x)), ~(~vec4<u32>(4294967295u, arg_1.x, 9990u, arg_1.x)))), Struct_1(vec4<u32>(28884u, 4294967295u, arg_1.x, 93997u)), Struct_1(global0.a));
}

fn func_5(arg_0: vec4<i32>, arg_1: bool, arg_2: Struct_2) -> Struct_1 {
    global0 = arg_2.d;
    var var_0 = arg_2;
    let var_1 = Struct_1(~vec4<u32>(func_4(~arg_2.c.a.zw, true).x, 4294967295u, 44567u, global0.a.x));
    var var_2 = var_1;
    var var_3 = Struct_4(arg_1, (!arg_1 & arg_1) & true, Struct_2(1i, Struct_1(vec4<u32>(select(4294967295u, var_0.b.a.x, true), ~44754u, max(var_2.a.x, var_1.a.x), ~var_1.a.x)), var_1, var_0.d));
    return var_0.b;
}

fn func_6(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: bool, arg_3: i32) -> Struct_1 {
    let var_0 = Struct_4(!(!(!arg_1.x)), select(!all(arg_1.zx) | true, !arg_2, true), Struct_2(u_input.a, func_5(reverseBits(firstLeadingBit(u_input.c)), false, Struct_2(u_input.c.x, Struct_1(vec4<u32>(arg_0.a.x, 0u, arg_0.a.x, 30015u)), arg_0, arg_0)), func_5(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b, u_input.c.x, u_input.c.x, -1i), ~u_input.c), true, func_2(all(vec3<bool>(false, arg_2, arg_1.x)), ~vec2<u32>(arg_0.a.x, arg_0.a.x))), arg_0));
    let var_1 = arg_1.x;
    global0 = var_0.c.d;
    var var_2 = true;
    let var_3 = func_2(true || var_1, arg_0.a.yx);
    return Struct_1(~(~var_3.b.a));
}

fn func_1(arg_0: i32, arg_1: vec3<i32>) -> Struct_2 {
    global0 = func_6(func_5(_wgslsmith_add_vec4_i32(vec4<i32>(-22623i, _wgslsmith_mult_i32(-32667i, 42529i), -2147483647i >> (global0.a.x % 32u), 0i), _wgslsmith_add_vec4_i32(vec4<i32>(18507i, 36003i, arg_0, -1i), vec4<i32>(-1i, -25469i, arg_0, 0i))), !any(vec3<bool>(false, true, true)), func_2(!(global0.a.x < global0.a.x), vec2<u32>(global0.a.x, ~global0.a.x))), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), any(vec4<bool>(false, false, true, false))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false)), true)), true, arg_0);
    global0 = Struct_1(_wgslsmith_div_vec4_u32(~func_4(global0.a.xw ^ vec2<u32>(24191u, 5754u), true), abs(global0.a)));
    global0 = Struct_1(vec4<u32>(func_3(true), ~global0.a.x, 5141u, 1u));
    let var_0 = vec2<u32>(firstTrailingBit(_wgslsmith_mult_u32(30032u, global0.a.x)), func_4(vec2<u32>(global0.a.x, global0.a.x), false).x);
    let var_1 = Struct_4(((global0.a.x | select(0u, 4294967295u, false)) >= (~global0.a.x | ~1u)) | all(vec2<bool>(true, true)), false, func_2(true, var_0));
    return Struct_2(u_input.c.x, var_1.c.d, func_5(vec4<i32>(firstTrailingBit(arg_0), max(-2147483647i, 0i), var_1.c.a, arg_1.x) ^ vec4<i32>(47667i, 1i ^ u_input.c.x, ~var_1.c.a, countOneBits(-21018i)), true, Struct_2(select(arg_0, var_1.c.a, var_1.b) >> (0u % 32u), Struct_1(vec4<u32>(global0.a.x, global0.a.x, 28944u, var_0.x) & global0.a), func_6(Struct_1(global0.a), vec4<bool>(true, var_1.a, false, var_1.a), any(vec3<bool>(var_1.a, var_1.b, true)), 23901i >> (var_1.c.d.a.x % 32u)), var_1.c.b)), func_6(var_1.c.c, vec4<bool>(!all(vec3<bool>(var_1.a, var_1.b, var_1.b)), true, select(var_1.b, var_1.a, false) && var_1.a, !any(vec4<bool>(false, true, var_1.a, var_1.b))), -_wgslsmith_div_i32(arg_0, u_input.a) > abs(~var_1.c.a), -(~0i)));
}

fn func_7(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_2) -> Struct_2 {
    var var_0 = u_input.c.x;
    global0 = Struct_1(_wgslsmith_sub_vec4_u32(~(~firstLeadingBit(global0.a)), ~((vec4<u32>(global0.a.x, arg_0.a.x, 4294967295u, arg_0.a.x) & global0.a) >> (vec4<u32>(arg_0.a.x, 4294967295u, arg_2.d.a.x, 4294967295u) % vec4<u32>(32u)))));
    let var_1 = Struct_4(all(vec4<bool>(true, true, true, true)) || false, (u_input.a >> (4294967295u % 32u)) > u_input.b, arg_2);
    let var_2 = Struct_3(vec3<i32>(u_input.b, -select(~(-1i), 1i, false || var_1.a), 11170i), firstLeadingBit(0u), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-489f, -259f, 909f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(394f, -587f, -458f))))))), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(var_1.a, true, var_1.a, var_1.b), !vec4<bool>(var_1.b, true, var_1.b, false), !vec4<bool>(false, var_1.b, false, true)), any(select(vec3<bool>(true, true, true), vec3<bool>(var_1.a, var_1.a, var_1.a), vec3<bool>(false, true, true)))));
    var_0 = i32(-1i) * -34433i;
    return Struct_2(select(var_1.c.a, reverseBits(_wgslsmith_mult_i32(-1i, -u_input.b)), true), Struct_1(vec4<u32>(_wgslsmith_mult_u32(arg_1.a.x, 402u), 1u, var_2.b, _wgslsmith_dot_vec4_u32(vec4<u32>(18491u, 4294967295u, 1u, global0.a.x), global0.a))), arg_1, func_5(-u_input.c, all(vec4<bool>(true, arg_0.a.x <= var_1.c.b.a.x, 2147483647i <= var_1.c.a, false)), var_1.c));
}

fn func_8(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_2) -> f32 {
    let var_0 = vec4<i32>(_wgslsmith_mult_i32(~58550i, func_1((-12510i << (arg_0.d.a.x % 32u)) ^ _wgslsmith_div_i32(arg_0.a, arg_0.a), firstTrailingBit(select(u_input.c.zzx, u_input.c.zyz, vec3<bool>(true, false, true)))).a), _wgslsmith_sub_i32(arg_2.a, _wgslsmith_mult_i32(~_wgslsmith_div_i32(9188i, 2147483647i), arg_0.a >> (4294967295u % 32u))), countOneBits(arg_2.a), -2147483647i);
    global0 = arg_2.b;
    let var_1 = arg_2.d.a.x;
    global0 = func_2(true, func_6(arg_2.b, !vec4<bool>(true, true, true, 2147483647i > arg_2.a), any(vec4<bool>(true, arg_0.a >= 0i, arg_2.a != 2147483647i, any(vec2<bool>(false, false)))), -(~(-16614i))).a.wy).d;
    var var_2 = arg_0.b;
    return _wgslsmith_f_op_f32(select(-665f, _wgslsmith_f_op_f32(f32(-1f) * -662f), any(vec4<bool>(true, true, true, true)) | false));
}

fn func_9(arg_0: bool, arg_1: f32) -> Struct_1 {
    global0 = Struct_1(func_4(firstLeadingBit(vec2<u32>(58901u, 27419u)), all(!vec2<bool>(true, arg_0))));
    var var_0 = 2147483647i;
    let var_1 = _wgslsmith_add_i32(u_input.b, -_wgslsmith_add_i32(6698i, -26891i & u_input.b) | ~func_1(func_1(u_input.b, u_input.c.zyx).a, _wgslsmith_mult_vec3_i32(vec3<i32>(23524i, 33008i, -2773i), u_input.c.wzw)).a);
    global0 = func_2(all(select(vec2<bool>(any(vec2<bool>(false, arg_0)), false), vec2<bool>(-306f > arg_1, all(vec4<bool>(true, false, arg_0, arg_0))), arg_0)), ~(global0.a.zx << (_wgslsmith_sub_vec2_u32(global0.a.wz, vec2<u32>(global0.a.x, global0.a.x)) % vec2<u32>(32u))) & func_2(-21615i <= _wgslsmith_sub_i32(1i, var_1), select(vec2<u32>(global0.a.x, global0.a.x), global0.a.wx, vec2<bool>(arg_0, true)) | func_5(u_input.c, arg_0, Struct_2(u_input.a, Struct_1(global0.a), Struct_1(global0.a), Struct_1(global0.a))).a.yz).d.a.yw).d;
    let var_2 = ~(-(~1i));
    return Struct_1(~vec4<u32>(_wgslsmith_mult_u32(1u, 15838u), global0.a.x, 39469u, 24051u) & ~_wgslsmith_div_vec4_u32(global0.a << (vec4<u32>(global0.a.x, global0.a.x, global0.a.x, 1u) % vec4<u32>(32u)), firstLeadingBit(global0.a)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_9(true, _wgslsmith_f_op_f32(func_8(func_7(Struct_1(~global0.a), Struct_1(reverseBits(global0.a)), func_1(u_input.a, vec3<i32>(u_input.c.x, u_input.a, 0i))), Struct_1(global0.a), Struct_2(u_input.a, func_6(func_1(-2147483647i, u_input.c.wyx).c, vec4<bool>(false, false, true, true), true, u_input.a), func_2(u_input.b >= -24798i, vec2<u32>(global0.a.x, 1u)).d, func_6(Struct_1(global0.a), vec4<bool>(false, true, true, true), global0.a.x == 1u, select(u_input.b, u_input.c.x, false))))));
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(min(-576f, _wgslsmith_f_op_f32(-818f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -667f) + _wgslsmith_f_op_f32(round(905f)))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1628f + 1000f) * 321f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(443f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1043f * 696f)))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -998f))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-var_0.zyx), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-903f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * _wgslsmith_f_op_f32(-var_0.x)))), vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_0.x, var_0.x), _wgslsmith_f_op_f32(max(-1000f, var_0.x)))), _wgslsmith_f_op_f32(f32(-1f) * -780f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.x * var_0.x)))), -138f));
}

