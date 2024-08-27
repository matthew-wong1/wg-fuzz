struct Struct_1 {
    a: vec3<u32>,
    b: vec2<f32>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: vec3<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<i32>,
    c: vec4<i32>,
}

struct Struct_4 {
    a: vec2<i32>,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_4, arg_1: vec3<i32>, arg_2: vec2<i32>) -> vec3<u32> {
    var var_0 = !vec3<bool>(global0.x == reverseBits(global0.x >> (73004u % 32u)), all(!vec2<bool>(false, arg_0.b.x)) | true, true);
    var_0 = vec3<bool>(true, true, all(arg_0.b));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(799f))) + 1463f);
    let var_2 = Struct_2(Struct_1(vec3<u32>(6266u, ~reverseBits(global0.x), global0.x), vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(408f)), -165f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(var_1, var_1)))), _wgslsmith_clamp_vec4_u32(vec4<u32>(reverseBits(79772u), 1u, _wgslsmith_sub_u32(global0.x, 0u), 1u), _wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(global0.x, 0u, 4294967295u, 52062u), vec4<u32>(global0.x, 4294967295u, global0.x, global0.x)), _wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, global0.x, global0.x, 4294967295u), vec4<u32>(global0.x, 15328u, global0.x, global0.x), vec4<u32>(global0.x, global0.x, 5517u, 47146u)), _wgslsmith_mult_vec4_u32(vec4<u32>(0u, global0.x, global0.x, global0.x), vec4<u32>(global0.x, 0u, global0.x, global0.x))), ~vec4<u32>(global0.x, global0.x, 0u, 40420u))), abs(~(global0.x >> (global0.x % 32u)) << (min(~0u, 1u) % 32u)), Struct_1(abs((vec3<u32>(global0.x, 37712u, global0.x) & vec3<u32>(global0.x, 69796u, 40595u)) << (max(vec3<u32>(4294967295u, global0.x, global0.x), vec3<u32>(global0.x, 73864u, global0.x)) % vec3<u32>(32u))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, 948f)), firstLeadingBit(_wgslsmith_add_vec4_u32(vec4<u32>(global0.x, 100737u, 68993u, 45778u) << (vec4<u32>(4294967295u, 4294967295u, global0.x, global0.x) % vec4<u32>(32u)), vec4<u32>(global0.x, 78766u, global0.x, 0u)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1025f, _wgslsmith_f_op_f32(round(var_1)), -765f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(202f)), 792f, -592f))));
    var var_3 = Struct_4(~u_input.a.yy, vec3<bool>(select(var_0.x, true, true), _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(var_2.c.a.x, 10193u, 0u, var_2.c.c.x), vec4<u32>(4294967295u, 101721u, var_2.b, global0.x)), ~var_2.c.c) < ~_wgslsmith_mult_u32(var_2.a.c.x, 13880u), arg_0.b.x));
    return vec3<u32>(global0.x, select(firstTrailingBit(_wgslsmith_div_u32(1u, 35039u)), firstTrailingBit(~abs(global0.x)), var_3.b.x || true), 0u);
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_1(func_3(Struct_4(u_input.a.zy & firstTrailingBit(vec2<i32>(u_input.c, 1i)), select(vec3<bool>(true, false, false), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), false), vec3<bool>(true, true, true))), vec3<i32>(-1i, u_input.c, u_input.c ^ -765i), ~vec2<i32>(~u_input.b, min(u_input.c, u_input.b))), vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(357f)), _wgslsmith_f_op_f32(-255f * -152f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1284f - -1386f)))), vec4<u32>(countOneBits(_wgslsmith_dot_vec4_u32(~vec4<u32>(15419u, global0.x, 4294967295u, 1u), reverseBits(vec4<u32>(1u, 61512u, 0u, global0.x)))), global0.x, _wgslsmith_mult_u32(29691u, max(3094u, select(46617u, global0.x, true))), firstTrailingBit(firstTrailingBit(countOneBits(global0.x)))));
    global0 = vec2<u32>(4294967295u, 1u);
    let var_1 = Struct_4(vec2<i32>(firstLeadingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, u_input.b, -64813i), u_input.a) << (global0.x % 32u)), -u_input.c), select(select(vec3<bool>(true, true, var_0.b.x == 605f), !select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true)), all(vec2<bool>(true, true))), select(vec3<bool>(true, select(true, false, true), true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), any(vec2<bool>(true, true))), any(vec4<bool>(true, true, true, true))));
    global0 = vec2<u32>(reverseBits(_wgslsmith_mod_u32(_wgslsmith_sub_u32(1u ^ global0.x, var_0.c.x), var_0.c.x)), ((var_0.a.x >> (1u % 32u)) >> (_wgslsmith_sub_u32(func_3(Struct_4(var_1.a, var_1.b), vec3<i32>(-1i, -1i, -16391i), var_1.a).x, var_0.a.x) % 32u)) | var_0.c.x);
    var var_2 = _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(~(~var_0.c), ~countOneBits(vec4<u32>(22203u, global0.x, 25961u, var_0.a.x))) & ~_wgslsmith_mod_u32(0u, var_0.c.x | global0.x), global0.x);
    return Struct_2(Struct_1(var_0.c.zxy, _wgslsmith_f_op_vec2_f32(-var_0.b), vec4<u32>(var_0.a.x, max(var_0.a.x, var_0.c.x ^ var_0.a.x), var_0.a.x | 43633u, reverseBits(~global0.x))), 4294967295u, Struct_1(_wgslsmith_sub_vec3_u32(var_0.c.zwx, min(~vec3<u32>(var_0.a.x, var_0.c.x, global0.x), var_0.c.yzx)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(exp2(var_0.b)))) * vec2<f32>(-767f, var_0.b.x)), firstLeadingBit(vec4<u32>(~0u, var_0.a.x, 42594u, ~global0.x))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -163f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -378f), 192f)))));
}

fn func_4(arg_0: Struct_3, arg_1: vec3<u32>, arg_2: vec3<i32>, arg_3: Struct_4) -> Struct_4 {
    global0 = vec2<u32>(abs(~49952u), global0.x);
    global0 = arg_1.yy << (vec2<u32>(_wgslsmith_mod_u32(30631u, 4294967295u), ~func_3(arg_3, vec3<i32>(1i, 2147483647i, arg_3.a.x) | arg_2, _wgslsmith_add_vec2_i32(vec2<i32>(-1i, -3157i), vec2<i32>(arg_0.b.x, arg_3.a.x))).x) % vec2<u32>(32u));
    let var_0 = Struct_1(firstLeadingBit(arg_1), arg_0.a.d.xy, arg_0.a.a.c);
    var var_1 = Struct_1(vec3<u32>(~arg_1.x, ~0u, global0.x), vec2<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.x * 1206f) + -1515f))), max(~_wgslsmith_clamp_vec4_u32(var_0.c, vec4<u32>(3585u, 0u, 7241u, arg_1.x), vec4<u32>(arg_0.a.b, var_0.a.x, 5931u, global0.x)), select(vec4<u32>(arg_1.x, arg_0.a.c.c.x, 1u, arg_1.x) << (arg_0.a.a.c % vec4<u32>(32u)), firstLeadingBit(arg_0.a.a.c), arg_3.b.x && false)) ^ var_0.c);
    global0 = abs(~func_3(arg_3, select(abs(vec3<i32>(arg_2.x, -2147483647i, u_input.b)), min(vec3<i32>(1i, arg_2.x, 0i), arg_0.c.zwx), arg_3.b), _wgslsmith_clamp_vec2_i32(vec2<i32>(0i, 51208i), vec2<i32>(arg_0.c.x, u_input.b), vec2<i32>(0i, u_input.b))).yz);
    return arg_3;
}

fn func_1(arg_0: vec2<f32>, arg_1: vec4<f32>) -> Struct_3 {
    var var_0 = func_4(Struct_3(func_2(), ~(u_input.a >> (vec3<u32>(83065u, global0.x, global0.x) % vec3<u32>(32u))) << (~countOneBits(vec3<u32>(global0.x, 48398u, 0u)) % vec3<u32>(32u)), firstTrailingBit(_wgslsmith_mod_vec4_i32(-vec4<i32>(26218i, 1i, 15652i, -1i), select(vec4<i32>(u_input.a.x, u_input.b, -15932i, 8277i), vec4<i32>(-2147483647i, -1i, u_input.a.x, u_input.b), vec4<bool>(false, false, true, false))))), select(vec3<u32>(global0.x, _wgslsmith_clamp_u32(global0.x, 0u, ~63665u), global0.x), vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(global0.x, global0.x), vec2<u32>(global0.x, global0.x)), firstTrailingBit(global0.x), global0.x), !(abs(u_input.c) == 2147483647i)), -_wgslsmith_mod_vec3_i32(min(vec3<i32>(2907i, u_input.c, -1i), vec3<i32>(-4514i, 1i, u_input.b)), vec3<i32>(-2147483647i, -36212i, -23975i)) | vec3<i32>(u_input.a.x, -1846i, -53627i), Struct_4(-(~(-vec2<i32>(u_input.c, u_input.c))), !vec3<bool>(false, any(vec4<bool>(false, true, false, false)), true)));
    var var_1 = ~(~vec4<u32>(15441u, _wgslsmith_mod_u32(global0.x, 30586u) & (global0.x >> (global0.x % 32u)), ~(~0u), global0.x));
    var var_2 = _wgslsmith_sub_i32(_wgslsmith_sub_i32(firstLeadingBit(_wgslsmith_sub_i32(u_input.b, 2147483647i)) << (_wgslsmith_add_u32(~var_1.x, var_1.x) % 32u), u_input.b << ((~var_1.x << (var_1.x % 32u)) % 32u)), (i32(-1i) * -5984i) ^ _wgslsmith_add_i32(abs(firstTrailingBit(u_input.b)), firstLeadingBit(u_input.b)));
    let var_3 = Struct_3(func_2(), -countOneBits(~_wgslsmith_div_vec3_i32(u_input.a, u_input.a)), ~select(vec4<i32>(u_input.b, var_0.a.x, -1i, -u_input.b), reverseBits(firstTrailingBit(vec4<i32>(u_input.a.x, 0i, -6908i, -27107i))), !select(vec4<bool>(false, false, true, var_0.b.x), vec4<bool>(var_0.b.x, var_0.b.x, var_0.b.x, var_0.b.x), vec4<bool>(false, var_0.b.x, false, var_0.b.x))));
    let var_4 = var_3.c.yyx;
    return Struct_3(var_3.a, var_4, var_3.c);
}

fn func_5(arg_0: Struct_3, arg_1: Struct_1, arg_2: bool) -> Struct_1 {
    let var_0 = countOneBits(func_4(Struct_3(func_1(vec2<f32>(arg_0.a.d.x, -318f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.a.b.x, 1168f, 382f, arg_1.b.x))).a, ~vec3<i32>(27097i, 0i, arg_0.b.x) << (arg_0.a.c.c.wyy % vec3<u32>(32u)), _wgslsmith_mult_vec4_i32(arg_0.c, ~arg_0.c)), select(vec3<u32>(arg_1.c.x, ~global0.x, firstLeadingBit(20750u)), ~func_1(arg_1.b, vec4<f32>(arg_0.a.d.x, arg_0.a.d.x, -403f, arg_1.b.x)).a.a.a, any(!vec4<bool>(true, arg_2, arg_2, arg_2))), ~arg_0.c.yzz, Struct_4(vec2<i32>(abs(arg_0.b.x), arg_0.c.x >> (arg_1.c.x % 32u)), vec3<bool>(arg_2, true, true))).a.x);
    let var_1 = Struct_1(~(~(~_wgslsmith_div_vec3_u32(vec3<u32>(1u, arg_1.c.x, 4294967295u), arg_0.a.a.a))), arg_0.a.d.yz, ~(~(~(~vec4<u32>(global0.x, 25914u, arg_1.a.x, arg_1.a.x)))));
    global0 = vec2<u32>(~9283u, arg_1.c.x);
    let var_2 = arg_0;
    global0 = vec2<u32>(~(~var_1.a.x), var_1.c.x);
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~vec2<u32>(~1u, 1u);
    var var_0 = Struct_2(func_5(func_1(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-802f, 1910f)))), vec4<f32>(1f, 1f, 1f, 1f)), func_2().a, all(select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), false)) || true), 1u, func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -1986f) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(235f, -577f), vec2<f32>(-213f, 421f), true)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-418f, 1355f, 213f, 575f))), vec4<f32>(_wgslsmith_f_op_f32(110f + -613f), 551f, _wgslsmith_f_op_f32(round(-485f)), _wgslsmith_f_op_f32(max(-162f, -413f))), all(vec2<bool>(false, false)) == true))).a.c, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(116f, -1000f, 478f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-344f, 594f, -913f) + vec3<f32>(355f, -226f, -242f)))) * _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2285f, -1000f, 1000f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1817f, -907f, 1049f) * vec3<f32>(902f, 816f, 1586f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-636f, -1048f, -173f)))))));
    let var_1 = Struct_3(func_2(), ~min(~u_input.a, ~u_input.a), ~(~vec4<i32>(max(0i, u_input.c), u_input.c, u_input.b, u_input.b << (1672u % 32u))));
    let var_2 = Struct_4(~(_wgslsmith_sub_vec2_i32(func_4(var_1, vec3<u32>(0u, 0u, 11216u), u_input.a, Struct_4(vec2<i32>(var_1.b.x, var_1.c.x), vec3<bool>(true, false, false))).a, var_1.c.xx) ^ _wgslsmith_clamp_vec2_i32(-var_1.c.yy, vec2<i32>(var_1.c.x, u_input.c), abs(vec2<i32>(0i, 0i)))), vec3<bool>(all(vec4<bool>(false, var_0.c.b.x > -2175f, true, true)), _wgslsmith_sub_u32(var_0.a.a.x, countOneBits(global0.x)) < var_0.c.c.x, false & all(vec3<bool>(true, true, true))));
    let var_3 = func_4(Struct_3(var_1.a, u_input.a, vec4<i32>(1i, _wgslsmith_dot_vec4_i32(abs(var_1.c), var_1.c), var_2.a.x | var_1.c.x, select(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, var_1.c.x, u_input.c, -25472i), var_1.c), -var_1.c.x, any(vec4<bool>(var_2.b.x, var_2.b.x, var_2.b.x, var_2.b.x))))), ~(~vec3<u32>(min(global0.x, 52866u), _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.a.c.x, var_1.a.c.c.x), vec2<u32>(24716u, var_1.a.a.a.x)), _wgslsmith_mod_u32(1u, var_0.a.c.x))), -vec3<i32>(abs(0i) << (1u % 32u), _wgslsmith_mult_i32(_wgslsmith_add_i32(var_1.b.x, -2789i), reverseBits(var_1.b.x)), 2147483647i), func_4(Struct_3(Struct_2(Struct_1(vec3<u32>(120906u, 33485u, 26513u), vec2<f32>(var_1.a.a.b.x, -521f), vec4<u32>(4294967295u, 4294967295u, var_1.a.c.c.x, 4294967295u)), 1u, func_5(Struct_3(var_1.a, vec3<i32>(1i, var_2.a.x, -1i), vec4<i32>(u_input.c, var_1.b.x, 14291i, var_2.a.x)), Struct_1(var_1.a.c.c.xxz, vec2<f32>(var_1.a.d.x, 1000f), var_0.a.c), true), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a.a.b.x, 580f, var_1.a.c.b.x))), -vec3<i32>(var_1.c.x, -1i, 944i) ^ ~vec3<i32>(var_1.c.x, 0i, 7607i), var_1.c << (abs(var_0.a.c) % vec4<u32>(32u))), var_0.a.c.wxx, abs(vec3<i32>(-92396i, _wgslsmith_mult_i32(-3756i, u_input.a.x), 1i)), var_2)).b.x;
    let var_4 = ~vec4<u32>(var_1.a.c.c.x, 0u, ~func_3(var_2, u_input.a, vec2<i32>(-1i, u_input.c) & vec2<i32>(0i, u_input.a.x)).x, 1u);
    let var_5 = Struct_2(func_1(func_5(func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a.a.b.x, var_0.a.b.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.b.x, var_1.a.d.x, 258f, -855f))), Struct_1(abs(var_1.a.c.a), _wgslsmith_f_op_vec2_f32(ceil(var_0.d.xx)), abs(var_0.c.c)), func_4(var_1, vec3<u32>(var_4.x, 10578u, var_4.x), var_1.b, func_4(var_1, vec3<u32>(var_1.a.b, global0.x, var_0.c.a.x), var_1.b, var_2)).b.x).b, vec4<f32>(_wgslsmith_f_op_f32(round(var_1.a.a.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.a.b.x)), var_1.a.c.b.x, func_1(vec2<f32>(1269f, 1788f), _wgslsmith_f_op_vec4_f32(vec4<f32>(1520f, 1027f, -476f, 818f) - vec4<f32>(var_1.a.c.b.x, 1000f, var_0.d.x, -158f))).a.c.b.x)).a.c, global0.x, Struct_1(_wgslsmith_add_vec3_u32(vec3<u32>(72869u, firstLeadingBit(4294967295u), firstTrailingBit(var_1.a.b)), _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 0u, var_0.b) << (vec3<u32>(var_0.c.c.x, var_0.c.a.x, var_1.a.b) % vec3<u32>(32u)), ~var_4.xxw, vec3<u32>(85775u, 1u, global0.x))), var_1.a.d.zz, ~var_1.a.a.c), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.a.d) + vec3<f32>(307f, -258f, 1000f))), func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(var_1.a.d.zy))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.c.b.x, var_1.a.a.b.x, 1071f, 2261f))) * vec4<f32>(var_0.d.x, var_0.d.x, 550f, 1000f))).a.d));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a.b);
}

