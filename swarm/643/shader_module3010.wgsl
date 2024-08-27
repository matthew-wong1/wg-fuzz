struct Struct_1 {
    a: i32,
    b: vec3<f32>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: Struct_2,
    d: vec2<u32>,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 5>;

var<private> global1: i32 = -5861i;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> i32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1226f, -1496f) - vec2<f32>(1000f, 330f)) + vec2<f32>(1952f, 139f))) * vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -426f) * _wgslsmith_f_op_f32(-649f - 1336f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-1966f, -223f, false)), _wgslsmith_f_op_f32(sign(1000f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1390f, -2888f)))), vec2<bool>(all(vec4<bool>(true, false, true, false)) | all(select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false))), false)));
    let var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(var_0.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.x)))));
    let var_2 = Struct_2(-(_wgslsmith_mod_vec4_i32(-vec4<i32>(12003i, u_input.b, 18788i, -44932i), vec4<i32>(35728i, 26952i, -1i, u_input.b) << (u_input.c % vec4<u32>(32u))) >> (_wgslsmith_mod_vec4_u32(~u_input.c, u_input.c << (u_input.c % vec4<u32>(32u))) % vec4<u32>(32u))));
    global0 = array<vec3<u32>, 5>();
    global1 = u_input.b;
    return 1626i;
}

fn func_2(arg_0: i32) -> Struct_2 {
    var var_0 = Struct_3(~u_input.a, Struct_1(func_3(), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1172f, -530f, 1664f), vec3<f32>(804f, -1789f, 1194f), false)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(506f, 825f, -1083f)))), vec3<u32>(~_wgslsmith_clamp_u32(u_input.a, 0u, u_input.c.x), u_input.c.x, _wgslsmith_dot_vec3_u32(vec3<u32>(3935u, 5038u, 4294967295u), ~global0[_wgslsmith_index_u32(71459u, 5u)]))), Struct_2(_wgslsmith_mod_vec4_i32(vec4<i32>(~arg_0, abs(-22517i), u_input.b, arg_0 & u_input.b), firstTrailingBit(vec4<i32>(0i, arg_0, u_input.b, arg_0)))), u_input.c.xw, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -540f) + _wgslsmith_f_op_f32(f32(-1f) * -1191f)) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(497f, -1071f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(720f, 307f)))))));
    var var_1 = select(select(vec4<bool>(true && all(vec4<bool>(true, false, false, false)), true, true, true), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true)), ~(~4294967295u) > (0u >> (var_0.b.c.x % 32u))), vec4<bool>(any(select(select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true)), vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), true))), _wgslsmith_f_op_f32(abs(-321f)) > var_0.e, true, all(vec3<bool>(select(false, true, true), all(vec2<bool>(false, false)), any(vec3<bool>(true, true, false))))), false);
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(abs(1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1128f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.e * var_0.b.b.x))), _wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(select(var_0.e, _wgslsmith_f_op_f32(881f * -770f), true))))), var_0.b.b.x);
    var_1 = select(vec4<bool>(true, false, var_1.x, var_1.x), select(vec4<bool>(_wgslsmith_f_op_f32(ceil(var_2.x)) >= var_2.x, 0u != ~var_0.b.c.x, true, false), select(!vec4<bool>(var_1.x, true, var_1.x, false), vec4<bool>(true, false | var_1.x, !var_1.x, true), var_1.x && true), vec4<bool>(var_1.x, any(vec4<bool>(false, var_1.x, var_1.x, var_1.x)) & all(var_1.wxy), true != select(true, false, var_1.x), var_1.x)), false);
    let var_3 = var_0.c.a;
    return Struct_2(vec4<i32>(27916i, arg_0, i32(-1i) * -u_input.b, -(~var_0.c.a.x)));
}

fn func_1(arg_0: vec2<i32>, arg_1: bool) -> Struct_1 {
    let var_0 = Struct_3(~7151u, Struct_1(-2926i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(248f, 2476f, -862f) * vec3<f32>(1439f, 692f, -503f)))), u_input.c.yxz), func_2(arg_0.x), vec2<u32>(0u, 32548u), -2444f);
    let var_1 = 59264u;
    let var_2 = Struct_2(vec4<i32>(var_0.b.a, arg_0.x << (var_1 % 32u), firstLeadingBit(_wgslsmith_mult_i32(-1i, arg_0.x)), 0i) ^ var_0.c.a);
    global0 = array<vec3<u32>, 5>();
    let var_3 = var_0.b;
    return var_3;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: vec4<f32>, arg_3: Struct_2) -> Struct_2 {
    let var_0 = Struct_2(firstTrailingBit(vec4<i32>(33189i >> (u_input.a % 32u), ~30629i, ~(-21586i) & (1i ^ arg_0.a), -_wgslsmith_mult_i32(arg_3.a.x, 14586i))));
    let var_1 = min(_wgslsmith_add_vec4_i32(var_0.a, vec4<i32>(i32(-1i) * -14706i, arg_3.a.x & 0i, 11674i, -arg_3.a.x) | vec4<i32>(u_input.b, u_input.b, -1523i, i32(-1i) * -2147483647i)), _wgslsmith_div_vec4_i32(abs(~(-arg_3.a)), vec4<i32>((4418i >> (arg_0.c.x % 32u)) | 1i, select(_wgslsmith_mult_i32(0i, -2147483647i), 16412i, all(vec3<bool>(true, true, true))), -1i, 1832i)));
    var var_2 = !select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false)), select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true), false), select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true)), true)), false);
    var_2 = !select(!vec4<bool>(all(vec3<bool>(var_2.x, false, true)), true, all(vec3<bool>(var_2.x, true, var_2.x)), true), select(!vec4<bool>(var_2.x, var_2.x, false, false), vec4<bool>(all(vec3<bool>(true, var_2.x, var_2.x)), select(true, var_2.x, var_2.x), true, u_input.a > 4294967295u), !vec4<bool>(true, var_2.x, true, false)), arg_0.c.x > max(u_input.c.x, ~0u));
    global0 = array<vec3<u32>, 5>();
    return Struct_2(firstTrailingBit(var_0.a));
}

fn func_5(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: vec2<f32>) -> Struct_3 {
    var var_0 = Struct_3(28454u, Struct_1(arg_1.a.x, _wgslsmith_div_vec3_f32(vec3<f32>(-1543f, _wgslsmith_div_f32(-1000f, arg_2.x), _wgslsmith_f_op_f32(sign(arg_2.x))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-910f, -738f, 235f)))))), global0[_wgslsmith_index_u32(func_1(_wgslsmith_clamp_vec2_i32(vec2<i32>(-2147483647i, 2147483647i), vec2<i32>(u_input.b, 3942i), vec2<i32>(1i, 15206i)) & vec2<i32>(arg_1.a.x, arg_1.a.x), arg_0.x).c.x, 5u)]), arg_1, ~(_wgslsmith_mod_vec2_u32(u_input.c.yw, vec2<u32>(u_input.c.x, u_input.c.x)) ^ vec2<u32>(~u_input.c.x, 1u)), _wgslsmith_f_op_f32(floor(arg_2.x)));
    global0 = array<vec3<u32>, 5>();
    var_0 = Struct_3(u_input.c.x, Struct_1(12959i ^ firstTrailingBit(func_4(Struct_1(-56890i, vec3<f32>(-682f, -143f, arg_2.x), vec3<u32>(var_0.a, 16848u, var_0.d.x)), vec4<f32>(2732f, 903f, 581f, 247f), vec4<f32>(210f, -385f, arg_2.x, var_0.b.b.x), Struct_2(arg_1.a)).a.x), _wgslsmith_f_op_vec3_f32(ceil(func_1(func_2(-2147483647i).a.xy, !arg_0.x).b)), func_1(_wgslsmith_mult_vec2_i32(var_0.c.a.zz, ~arg_1.a.wx), (var_0.d.x == u_input.c.x) & true).c), Struct_2(vec4<i32>(~_wgslsmith_mult_i32(-2147483647i, 0i), -1i, countOneBits(-1575i), -27770i)), ~(select(u_input.c.xx & vec2<u32>(1u, u_input.c.x), countOneBits(vec2<u32>(4294967295u, 43298u)), true) & (select(vec2<u32>(var_0.b.c.x, var_0.d.x), vec2<u32>(4294967295u, 71953u), vec2<bool>(true, arg_0.x)) >> (~vec2<u32>(1u, u_input.a) % vec2<u32>(32u)))), arg_2.x);
    var_0 = Struct_3(var_0.b.c.x, Struct_1(u_input.b, _wgslsmith_f_op_vec3_f32(floor(var_0.b.b)), min(vec3<u32>(0u, ~var_0.b.c.x, u_input.a ^ 1u), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.c.x, var_0.b.c.x, var_0.d.x), u_input.c.wxz, func_1(vec2<i32>(-7860i, var_0.b.a), arg_0.x).c))), func_4(Struct_1(-5776i, _wgslsmith_div_vec3_f32(var_0.b.b, _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.e, var_0.b.b.x, arg_2.x))), ~global0[_wgslsmith_index_u32(~u_input.a, 5u)]), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(565f, var_0.b.b.x, arg_2.x, -246f))))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1141f, 257f, arg_2.x, -944f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1058f, -2529f, arg_2.x, var_0.e), vec4<f32>(-1028f, var_0.b.b.x, var_0.e, 1481f), arg_0.x)))))), Struct_2(vec4<i32>(-arg_1.a.x, u_input.b, -1i, var_0.c.a.x))), ~(var_0.d ^ vec2<u32>(~46823u, 1u)), _wgslsmith_f_op_f32(arg_2.x - _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.e * 2055f), func_1(_wgslsmith_mod_vec2_i32(arg_1.a.wz, vec2<i32>(0i, 2147483647i)), !arg_0.x).b.x)));
    let var_1 = 1467f;
    return Struct_3(max(~(0u ^ ~u_input.a), _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(1u, 4294967295u, var_0.d.x), u_input.c.yzy), select(vec3<u32>(u_input.a, 7541u, 38512u), vec3<u32>(17622u, u_input.c.x, u_input.a), arg_0)) | var_0.d.x), func_1(vec2<i32>(_wgslsmith_sub_i32(var_0.c.a.x, func_1(arg_1.a.zy, arg_0.x).a), -12348i), all(select(select(vec3<bool>(true, arg_0.x, false), vec3<bool>(false, true, arg_0.x), false), select(vec3<bool>(false, arg_0.x, true), vec3<bool>(false, true, arg_0.x), true), !vec3<bool>(true, false, arg_0.x)))), Struct_2(var_0.c.a), var_0.d ^ select(_wgslsmith_div_vec2_u32(vec2<u32>(20008u, 1u), vec2<u32>(69138u, u_input.c.x)), _wgslsmith_mult_vec2_u32(var_0.b.c.xz, vec2<u32>(u_input.a, var_0.b.c.x)) ^ firstTrailingBit(u_input.c.zy), arg_0.zz), _wgslsmith_f_op_f32(step(523f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(444f + arg_2.x))))));
}

fn func_6(arg_0: Struct_3) -> Struct_3 {
    global1 = _wgslsmith_mod_i32(abs(~_wgslsmith_clamp_i32(_wgslsmith_mult_i32(2147483647i, u_input.b), arg_0.c.a.x, 20404i)), arg_0.c.a.x ^ u_input.b);
    let var_0 = 862f;
    return func_5(select(select(select(select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), true), vec3<bool>(true, true, true), vec3<bool>(true, false, true)), select(vec3<bool>(false, false, true), select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false)), true), !select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true))), select(select(select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), false), vec3<bool>(true, true, true), true), vec3<bool>(true, all(vec3<bool>(false, true, false)), true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), false), Struct_2(_wgslsmith_mod_vec4_i32(~(~vec4<i32>(2147483647i, 6414i, u_input.b, u_input.b)), arg_0.c.a)), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 - arg_0.e) - arg_0.e), 1272f), var_0));
}

fn func_7(arg_0: i32, arg_1: Struct_3, arg_2: vec4<i32>, arg_3: vec3<i32>) -> Struct_1 {
    global0 = array<vec3<u32>, 5>();
    var var_0 = 32261i << (func_5(select(vec3<bool>(select(true, false, true), true, u_input.a > 1u), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false)), !select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), false)), func_2(-2147483647i), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_1.b.b.x, arg_1.b.b.x))) + _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_1.e, arg_1.e))))))).a % 32u);
    let var_1 = vec4<f32>(-1122f, _wgslsmith_f_op_f32(abs(-481f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -371f)))), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(494f)) - 1185f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1828f + arg_1.e)))), 250f));
    global0 = array<vec3<u32>, 5>();
    var_0 = ~abs(_wgslsmith_add_i32(func_6(arg_1).c.a.x, -7869i));
    return Struct_1(func_6(func_5(vec3<bool>(any(vec4<bool>(false, true, true, true)), true, any(vec3<bool>(false, false, true))), arg_1.c, vec2<f32>(548f, _wgslsmith_f_op_f32(max(613f, arg_1.b.b.x))))).c.a.x, vec3<f32>(-1254f, -845f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.e)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-385f)) * var_1.x)))), vec3<u32>(44116u, ~countOneBits(12756u), u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_7(max(countOneBits(~u_input.b), ~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b), vec4<i32>(u_input.b, u_input.b, 18066i, u_input.b))) ^ -9627i, func_6(func_5(vec3<bool>(false, all(vec2<bool>(true, false)), any(vec3<bool>(true, false, false))), func_4(func_1(vec2<i32>(u_input.b, u_input.b), false), _wgslsmith_f_op_vec4_f32(-vec4<f32>(243f, -1006f, -1856f, 603f)), vec4<f32>(1f, 1f, 1f, 1f), func_2(u_input.b)), vec2<f32>(721f, _wgslsmith_f_op_f32(min(458f, 1413f))))), vec4<i32>(_wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(u_input.b, u_input.b, u_input.b) << (vec3<u32>(u_input.c.x, u_input.a, 4294967295u) % vec3<u32>(32u))), -vec3<i32>(-1i, u_input.b, 2147483647i)), max(u_input.b, func_4(func_6(Struct_3(u_input.c.x, Struct_1(u_input.b, vec3<f32>(430f, 1000f, -700f), u_input.c.yzz), Struct_2(vec4<i32>(-1i, u_input.b, 4092i, u_input.b)), u_input.c.yw, -349f)).b, _wgslsmith_f_op_vec4_f32(vec4<f32>(-385f, 416f, -688f, 676f) - vec4<f32>(-1291f, -1537f, 1000f, -641f)), vec4<f32>(1f, 1f, 1f, 1f), func_2(-2147483647i)).a.x), abs(u_input.b), _wgslsmith_clamp_i32(-u_input.b, _wgslsmith_add_i32(u_input.b, ~u_input.b), func_6(Struct_3(4294967295u, Struct_1(u_input.b, vec3<f32>(521f, -1000f, 1000f), global0[_wgslsmith_index_u32(134740u, 5u)]), Struct_2(vec4<i32>(u_input.b, u_input.b, -4403i, u_input.b)), u_input.c.zw, 1711f)).b.a ^ u_input.b)), select(vec3<i32>(u_input.b | 1i, _wgslsmith_div_i32(u_input.b, u_input.b) << ((u_input.a << (56472u % 32u)) % 32u), func_2(_wgslsmith_mult_i32(-1i, 1i)).a.x), firstLeadingBit(vec3<i32>(u_input.b, abs(u_input.b), u_input.b)), all(vec3<bool>(all(vec2<bool>(true, true)), any(vec4<bool>(false, true, false, false)), true))));
    var var_1 = func_5(vec3<bool>(true, _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -56i, -2147483647i), vec3<i32>(var_0.a, -2147483647i, var_0.a)), ~var_0.a) < u_input.b, true), Struct_2(~vec4<i32>(u_input.b, -2147483647i, u_input.b, func_4(Struct_1(1i, var_0.b, vec3<u32>(4294967295u, var_0.c.x, var_0.c.x)), vec4<f32>(var_0.b.x, var_0.b.x, var_0.b.x, 1139f), vec4<f32>(var_0.b.x, var_0.b.x, var_0.b.x, 646f), Struct_2(vec4<i32>(2147483647i, var_0.a, u_input.b, var_0.a))).a.x)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-627f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.x + 336f)))))).c;
    var var_2 = func_5(select(vec3<bool>(false, false, true), vec3<bool>(true, any(vec2<bool>(true, true)), true), !vec3<bool>(all(vec3<bool>(false, false, true)), all(vec4<bool>(true, true, true, false)), all(vec2<bool>(true, true)))), func_2(_wgslsmith_dot_vec4_i32(vec4<i32>(~0i, -2147483647i, _wgslsmith_mod_i32(1i, -2147483647i), -8907i), _wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(var_0.a, var_0.a, 16584i, u_input.b), vec4<i32>(var_0.a, u_input.b, var_1.a.x, var_0.a)), countOneBits(vec4<i32>(-2147483647i, 16579i, u_input.b, 19092i))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-var_0.b.yx)))));
    var_2 = Struct_3(0u, func_5(select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), any(vec3<bool>(true, true, true))), vec3<bool>(var_0.b.x == var_2.e, all(vec4<bool>(true, true, true, false)), all(vec4<bool>(true, false, true, false))), (26984u <= var_2.b.c.x) | true), var_2.c, _wgslsmith_f_op_vec2_f32(-var_0.b.yy)).b, var_2.c, var_0.c.xz << (~var_2.d % vec2<u32>(32u)), _wgslsmith_f_op_f32(var_0.b.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -866f))));
    var_1 = var_2.c;
    let var_3 = var_2.c;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-(~9015i), select(-63977i, 2147483647i, !any(vec3<bool>(false, true, false))), abs(_wgslsmith_clamp_i32(var_2.c.a.x | var_1.a.x, var_0.a ^ var_0.a, var_3.a.x))), max(abs(abs(var_1.a.x) | var_1.a.x), _wgslsmith_add_i32(-func_3(), 44376i)), _wgslsmith_clamp_i32(u_input.b, _wgslsmith_sub_i32(1i, func_3()), ~func_2(-var_3.a.x).a.x));
}

