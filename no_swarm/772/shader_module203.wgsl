struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: f32,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: vec2<i32>,
    d: Struct_2,
    e: vec2<u32>,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec3<u32>,
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

var<private> global0: Struct_2;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: u32, arg_1: vec4<f32>, arg_2: vec4<i32>) -> f32 {
    let var_0 = ~arg_2;
    let var_1 = ~(~select(vec4<u32>(~arg_0, 1u, u_input.c, select(77380u, 1u, false)), abs(_wgslsmith_add_vec4_u32(vec4<u32>(arg_0, u_input.a, arg_0, 0u), vec4<u32>(0u, arg_0, u_input.c, 21546u))), vec4<bool>(true, true, true, false)));
    global0 = Struct_2(firstLeadingBit(-30995i), ~global0.b, _wgslsmith_mult_i32(~min(global0.b.x, var_0.x), firstTrailingBit(var_0.x)) ^ ~(~arg_2.x), 464f);
    global0 = Struct_2(abs(_wgslsmith_add_i32(reverseBits(1i), 42447i)), vec2<i32>(var_0.x, _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(arg_2.x, global0.a, 10399i), var_0.ywy), ~vec3<i32>(arg_2.x, global0.a, arg_2.x) | min(var_0.xxy, arg_2.xzx))), -3162i, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_1.x))));
    var var_2 = _wgslsmith_f_op_vec3_f32(-arg_1.xwx);
    return arg_1.x;
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: vec2<bool>) -> f32 {
    var var_0 = Struct_3(u_input.d.x, Struct_2(countOneBits(2147483647i) << ((~u_input.c ^ 55849u) % 32u), vec2<i32>(-1i, -u_input.b) << (countOneBits(_wgslsmith_clamp_vec2_u32(u_input.d.xz, vec2<u32>(u_input.c, 1u), u_input.d.yx)) % vec2<u32>(32u)), arg_1.a, _wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(1194f, global0.d)), arg_0.x)))), ~_wgslsmith_add_vec2_i32(vec2<i32>(global0.a, u_input.b >> (1u % 32u)), global0.b), Struct_2(2147483647i, ~global0.b, ~arg_1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.d + arg_0.x) * _wgslsmith_f_op_f32(1056f + 497f)))), vec2<u32>(1u, ~max(countOneBits(77258u), _wgslsmith_div_u32(13601u, u_input.a))));
    var_0 = Struct_3(4294967295u, Struct_2(var_0.b.b.x, vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(global0.b.x, -2147483647i) ^ vec2<i32>(-38647i, global0.b.x), _wgslsmith_div_vec2_i32(vec2<i32>(u_input.b, -2147483647i), global0.b)), countOneBits(-69874i ^ u_input.b)), 12006i, arg_0.x), reverseBits(_wgslsmith_div_vec2_i32(vec2<i32>(~var_0.b.a, 4275i), (global0.b >> (vec2<u32>(14433u, u_input.d.x) % vec2<u32>(32u))) | _wgslsmith_div_vec2_i32(vec2<i32>(arg_1.a, arg_1.a), vec2<i32>(arg_1.a, arg_1.a)))), Struct_2(-arg_1.a, _wgslsmith_add_vec2_i32(vec2<i32>(global0.a, var_0.b.a & arg_1.a), var_0.b.b), (-var_0.c.x ^ u_input.b) << (1u % 32u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), u_input.d.yy);
    var_0 = Struct_3(abs(var_0.e.x) & _wgslsmith_div_u32(23075u, _wgslsmith_mod_u32(_wgslsmith_div_u32(47320u, u_input.a), select(1u, 1u, arg_2.x))), var_0.b, -min(var_0.d.b, -(var_0.b.b & var_0.b.b)), var_0.b, abs(vec2<u32>(var_0.a, var_0.a)));
    global0 = Struct_2(_wgslsmith_add_i32(1i | _wgslsmith_sub_i32(-global0.a, countOneBits(u_input.b)), _wgslsmith_add_i32(u_input.b, 19306i)), firstTrailingBit(firstLeadingBit(_wgslsmith_sub_vec2_i32(_wgslsmith_clamp_vec2_i32(global0.b, var_0.c, var_0.c), ~vec2<i32>(u_input.b, 1i)))), countOneBits(-2147483647i), global0.d);
    let var_1 = 18260u >> (countOneBits(~countOneBits(1u)) % 32u);
    return _wgslsmith_f_op_f32(-global0.d);
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(func_3(~6903u, vec4<f32>(-511f, -1286f, global0.d, global0.d), vec4<i32>(global0.c, global0.b.x, -35422i, global0.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.d * global0.d))))), Struct_1(_wgslsmith_clamp_i32(u_input.b, (global0.c >> (u_input.d.x % 32u)) | countOneBits(global0.a), _wgslsmith_div_i32(u_input.b, -1i))), !vec2<bool>(any(vec2<bool>(true, true)), true)));
    global0 = Struct_2(abs(_wgslsmith_mult_i32(~(0i >> (0u % 32u)), max(abs(7788i), max(14800i, u_input.b)))), _wgslsmith_div_vec2_i32(~global0.b & abs(countOneBits(global0.b)), _wgslsmith_sub_vec2_i32(vec2<i32>(-40143i, 38333i), global0.b & global0.b) | min(global0.b << (u_input.d.zz % vec2<u32>(32u)), -vec2<i32>(global0.b.x, 1i))), -33543i, _wgslsmith_f_op_f32(max(global0.d, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(u_input.a, vec4<f32>(global0.d, 201f, 1021f, global0.d), vec4<i32>(-79083i, global0.c, u_input.b, -10921i))), _wgslsmith_f_op_f32(max(global0.d, global0.d)))))));
    global0 = Struct_2((-64516i << (_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.d.x, u_input.a, 35446u), u_input.d), _wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 82190u, u_input.a), vec3<u32>(64646u, u_input.a, 4294967295u))) % 32u)) << ((~max(44555u, u_input.c) & ~u_input.c) % 32u), vec2<i32>(u_input.b, ~(-2147483647i)), _wgslsmith_mod_i32(_wgslsmith_mult_i32(38696i & global0.b.x, ~1i), global0.a) >> (countOneBits(firstTrailingBit(_wgslsmith_dot_vec2_u32(u_input.d.zz, vec2<u32>(u_input.c, u_input.d.x)))) % 32u), global0.d);
    var var_1 = Struct_4(_wgslsmith_f_op_f32(f32(-1f) * -367f), Struct_3(~1u, Struct_2(countOneBits(global0.a) << (~u_input.c % 32u), ~global0.b, abs(_wgslsmith_div_i32(-16411i, -28264i)), global0.d), vec2<i32>(~_wgslsmith_dot_vec3_i32(vec3<i32>(-6093i, 35208i, 25897i), vec3<i32>(u_input.b, global0.a, 2147483647i)), u_input.b ^ 1i), Struct_2(-7325i, select(global0.b, vec2<i32>(u_input.b, 77220i), true), u_input.b, global0.d), ~u_input.d.zy << (u_input.d.zy % vec2<u32>(32u))), vec4<bool>(true & select(true, true, true), !all(vec4<bool>(true, true, true, false)), _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(global0.b, global0.b), u_input.b) > u_input.b, true));
    let var_2 = ~global0.b.x;
    return Struct_1(abs(~abs(0i)));
}

fn func_5(arg_0: Struct_1, arg_1: bool) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(-193f, global0.d, -535f), vec3<f32>(global0.d, global0.d, -357f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(582f, global0.d, global0.d)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.d, 1180f, global0.d) - vec3<f32>(global0.d, global0.d, -214f))), false))) * vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global0.d * _wgslsmith_f_op_f32(-global0.d)))), 689f, _wgslsmith_f_op_f32(select(-1684f, global0.d, arg_1))));
    var var_1 = vec4<i32>(-2147483647i, ~firstTrailingBit(reverseBits(_wgslsmith_sub_i32(arg_0.a, global0.b.x))), select(global0.b.x, 0i, (_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.a, 46220i, -2147483647i, u_input.b), vec4<i32>(arg_0.a, -23592i, global0.a, -2147483647i)) >= firstTrailingBit(-30076i)) || true), global0.a);
    return Struct_3(56416u, Struct_2(~(-var_1.x), global0.b, -1i, _wgslsmith_f_op_f32(func_3(u_input.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.d, 1000f, global0.d, -1139f))), -abs(vec4<i32>(u_input.b, arg_0.a, 29298i, u_input.b))))), _wgslsmith_div_vec2_i32(min(vec2<i32>(1i, 1i) << (vec2<u32>(38659u, u_input.a) % vec2<u32>(32u)), min(~global0.b, vec2<i32>(global0.c, 31868i))), abs(countOneBits(vec2<i32>(global0.c, global0.c))) << (vec2<u32>(~u_input.d.x, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d.x, 0u), vec2<u32>(u_input.a, u_input.c))) % vec2<u32>(32u))), Struct_2(u_input.b, vec2<i32>(38115i, firstTrailingBit(~global0.b.x)), ~select(~(-1i), 58502i, false), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global0.d - var_0.x)))), vec2<u32>(u_input.c, 60790u));
}

fn func_6(arg_0: vec3<u32>, arg_1: vec2<bool>, arg_2: Struct_4, arg_3: bool) -> Struct_2 {
    global0 = Struct_2(u_input.b, -firstLeadingBit(vec2<i32>(1i, global0.b.x ^ arg_2.b.b.c)), -2147483647i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(1u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1072f, -410f, -758f, arg_2.b.d.d))), ~vec4<i32>(-2808i, -36902i, -23070i, 28850i)))));
    var var_0 = ~(_wgslsmith_sub_i32(-11063i, countOneBits(u_input.b)) ^ -22547i);
    let var_1 = global0.b;
    let var_2 = _wgslsmith_add_vec4_u32(~vec4<u32>(1u, u_input.a, _wgslsmith_dot_vec3_u32(arg_0, u_input.d) ^ (arg_0.x & 0u), u_input.a), ~_wgslsmith_mult_vec4_u32(~(vec4<u32>(1u, u_input.a, arg_0.x, arg_0.x) & vec4<u32>(u_input.d.x, arg_2.b.e.x, arg_0.x, 4294967295u)), ~reverseBits(vec4<u32>(arg_0.x, 0u, 0u, u_input.a))));
    let var_3 = func_2();
    return arg_2.b.b;
}

fn func_1(arg_0: Struct_1) -> vec4<bool> {
    global0 = Struct_2(arg_0.a, firstTrailingBit(_wgslsmith_sub_vec2_i32(global0.b, _wgslsmith_mult_vec2_i32(~global0.b, ~vec2<i32>(arg_0.a, global0.c)))), u_input.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global0.d)) - _wgslsmith_f_op_f32(global0.d - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global0.d, 1000f))))));
    var var_0 = 1u;
    var var_1 = Struct_3(46862u, func_6(_wgslsmith_mult_vec3_u32(min(countOneBits(u_input.d), select(vec3<u32>(u_input.c, u_input.c, 60815u), u_input.d, true)), _wgslsmith_add_vec3_u32(~u_input.d, u_input.d)), vec2<bool>(any(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true))), true), Struct_4(-1069f, func_5(func_2(), true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true)), true)), any(!select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false)))), global0.b, func_5(func_2(), any(vec3<bool>(any(vec3<bool>(true, false, true)), true, true))).b, ~vec2<u32>(~1u, _wgslsmith_mult_u32(u_input.a, u_input.a)) << (firstLeadingBit(func_5(func_2(), any(vec3<bool>(false, true, false))).e) % vec2<u32>(32u)));
    let var_2 = Struct_1(global0.a);
    let var_3 = 0u;
    return select(!(!(!select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true), true))), !(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), true)), select(!vec4<bool>(u_input.a < 1u, true, all(vec2<bool>(true, false)), true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_2(global0.c, ~firstTrailingBit(~vec2<i32>(-11056i, u_input.b) ^ global0.b), -68290i, _wgslsmith_f_op_f32(-global0.d));
    let var_0 = vec2<bool>(select(abs(u_input.b) > -1i, all(func_1(Struct_1(16158i))), false) || (u_input.d.x == u_input.c), false);
    let var_1 = Struct_2(select(u_input.b, -2147483647i, global0.d > _wgslsmith_f_op_f32(round(-205f))), vec2<i32>(global0.a, abs(global0.b.x)), ~(-15972i), global0.d);
    var var_2 = func_5(Struct_1(~(~u_input.b)), var_0.x != var_0.x).d;
    var var_3 = -1640f;
    global0 = var_1;
    var var_4 = _wgslsmith_f_op_f32(ceil(-1703f));
    let var_5 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(-635f);
}

