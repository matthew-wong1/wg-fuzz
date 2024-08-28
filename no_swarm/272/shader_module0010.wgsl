struct Struct_1 {
    a: vec4<bool>,
    b: vec2<i32>,
    c: vec4<u32>,
    d: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: i32,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(3057u, 22211u, 57684u, 1u);

var<private> global1: array<Struct_1, 3>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec3<u32>) -> u32 {
    return 18079u;
}

fn func_2(arg_0: vec3<bool>, arg_1: u32) -> Struct_1 {
    global0 = reverseBits(vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(29434u, u_input.e, 54682u), ~vec3<u32>(48611u, 47131u, 11963u)), ~(~u_input.e)), ~reverseBits(u_input.e), ~func_3(select(vec4<bool>(true, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(true, false, true, arg_0.x), arg_0.x), _wgslsmith_add_vec3_u32(global0.zxx, vec3<u32>(6766u, global0.x, arg_1))), 0u));
    global1 = array<Struct_1, 3>();
    global0 = ~vec4<u32>(min(arg_1, ~global0.x), u_input.a.x, select(_wgslsmith_mod_u32(0u, arg_1), abs(1u), !arg_0.x), u_input.a.x) >> (~u_input.d % vec4<u32>(32u));
    let var_0 = Struct_1(vec4<bool>(!all(!vec4<bool>(true, false, arg_0.x, false)), true, arg_0.x, any(vec4<bool>(true, u_input.c > -1i, true, true))), ~vec2<i32>(0i, u_input.b.x), ~u_input.d, u_input.c);
    var var_1 = var_0;
    return Struct_1(select(var_1.a, vec4<bool>(var_0.c.x > var_0.c.x, !(!arg_0.x), false, true), var_0.a.x), _wgslsmith_clamp_vec2_i32(var_0.b << (reverseBits(~vec2<u32>(707u, var_0.c.x)) % vec2<u32>(32u)), firstLeadingBit(vec2<i32>(_wgslsmith_sub_i32(1i, var_1.d), 1i)), (vec2<i32>(u_input.b.x, var_1.d) >> ((vec2<u32>(var_1.c.x, 0u) << (vec2<u32>(45761u, 13191u) % vec2<u32>(32u))) % vec2<u32>(32u))) | (countOneBits(vec2<i32>(u_input.b.x, var_0.d)) | -vec2<i32>(-2147483647i, -25631i))), vec4<u32>(~_wgslsmith_clamp_u32(~u_input.a.x, u_input.e, ~1u), var_0.c.x, global0.x, 4294967295u), var_0.d);
}

fn func_4(arg_0: i32, arg_1: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(vec4<bool>(true, true, true, true), _wgslsmith_mod_vec2_i32(vec2<i32>(-u_input.c, arg_1.d), -vec2<i32>(-1i, _wgslsmith_mult_i32(-2064i, arg_1.d))), _wgslsmith_mult_vec4_u32(arg_1.c, ~(~(~arg_1.c))), _wgslsmith_div_i32(arg_1.b.x, -(u_input.b.x | -2101i) | -countOneBits(arg_1.b.x)));
    global1 = array<Struct_1, 3>();
    var var_1 = select(_wgslsmith_mult_vec4_i32(~_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.c, 2147483647i, 0i, u_input.b.x), vec4<i32>(-11967i, -2147483647i, u_input.b.x, 0i), vec4<i32>(u_input.c, -2147483647i, u_input.c, var_0.b.x)), max(-vec4<i32>(0i, 18531i, u_input.c, 88484i), -vec4<i32>(arg_1.b.x, -2147483647i, -11298i, arg_0))) & vec4<i32>(-_wgslsmith_clamp_i32(-23164i, u_input.c, var_0.b.x), max(-2147483647i, arg_1.b.x), -2147483647i, arg_1.b.x), vec4<i32>(min(-42037i, arg_1.b.x), ~(~16262i), _wgslsmith_mult_i32(2147483647i, min(-arg_1.b.x, -6890i)), -70739i), vec4<bool>(~var_0.c.x <= ~17111u, 7737i < u_input.b.x, true, true));
    let var_2 = firstTrailingBit(_wgslsmith_mult_vec4_u32(~u_input.d, ~vec4<u32>(13449u, u_input.e, ~4294967295u, 0u)));
    let var_3 = global1[_wgslsmith_index_u32(20541u, 3u)];
    return global1[_wgslsmith_index_u32(u_input.d.x, 3u)];
}

fn func_5(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1, arg_3: vec3<i32>) -> vec2<f32> {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-178f, _wgslsmith_f_op_f32(floor(-1728f)))) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2573f * -888f))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(767f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -101f) - _wgslsmith_f_op_f32(595f + 116f))), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(426f)), _wgslsmith_f_op_f32(sign(571f))))), func_2(vec3<bool>(arg_2.a.x, arg_2.a.x, true), reverseBits(arg_0.c.x)).a.x)));
    let var_1 = vec2<i32>(-1i) * -(~_wgslsmith_mod_vec2_i32(arg_3.zz | vec2<i32>(u_input.b.x, 30259i), vec2<i32>(0i, 0i)));
    let var_2 = arg_0;
    var var_3 = -(~_wgslsmith_div_i32(arg_2.b.x, _wgslsmith_add_i32(1i, var_2.b.x))) ^ 65995i;
    let var_4 = ~(_wgslsmith_dot_vec4_i32(select(vec4<i32>(u_input.b.x, arg_0.b.x, arg_2.b.x, arg_2.d) | vec4<i32>(47964i, u_input.c, u_input.b.x, var_1.x), vec4<i32>(-68498i, 8673i, -2147483647i, u_input.c), false), vec4<i32>(var_2.d, -12023i, 20756i, 29915i) | _wgslsmith_div_vec4_i32(vec4<i32>(1i, arg_0.b.x, var_2.d, u_input.b.x), vec4<i32>(1i, var_2.d, var_1.x, var_2.b.x))) >> ((41878u << (select(arg_2.c.x, func_2(vec3<bool>(true, arg_0.a.x, var_2.a.x), 139233u).c.x, true) % 32u)) % 32u));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-190f, -987f) + vec2<f32>(-725f, -634f))), !vec2<bool>(arg_0.a.x, arg_1))), vec2<f32>(_wgslsmith_f_op_f32(max(171f, 124f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(123f + 418f) + 1700f)))));
}

fn func_1(arg_0: i32) -> Struct_1 {
    let var_0 = Struct_1(vec4<bool>(true, true, true, true), ~u_input.b.yz, u_input.d, 32721i);
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_5(func_4(-2147483647i, func_2(var_0.a.xyx, 4294967295u)), var_0.a.x | any(vec3<bool>(true, true, true)), global1[_wgslsmith_index_u32(0u, 3u)], u_input.b ^ max(u_input.b, u_input.b))) + vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1829f), _wgslsmith_f_op_f32(round(542f))), _wgslsmith_f_op_f32(sign(-1067f)))));
    let var_2 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_1.x)) * -3099f), var_1.x, _wgslsmith_f_op_f32(trunc(-656f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-368f + var_1.x), 1304f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_1.x, var_1.x, 859f, 343f)))))));
    var var_3 = _wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(u_input.b.yy, u_input.b.zx), vec2<i32>(-2147483647i, abs(i32(-1i) * -29845i)));
    var var_4 = vec3<bool>(true, true, true);
    return Struct_1(func_2(func_4(_wgslsmith_dot_vec3_i32(vec3<i32>(var_3.x, -2147483647i, -2147483647i), vec3<i32>(-46266i, var_3.x, 2147483647i)) & 1i, var_0).a.zxy, func_2(!vec3<bool>(true, var_4.x, var_4.x), 20460u).c.x).a, -_wgslsmith_div_vec2_i32(vec2<i32>(u_input.c, var_3.x), vec2<i32>(var_3.x, 0i)) << (~_wgslsmith_add_vec2_u32(vec2<u32>(2686u, global0.x), ~var_0.c.ww) % vec2<u32>(32u)), _wgslsmith_mult_vec4_u32(vec4<u32>(~var_0.c.x, 45801u, var_0.c.x, func_3(vec4<bool>(var_0.a.x, var_4.x, false, true), max(var_0.c.zyw, var_0.c.ywy))), max(~(~u_input.d), vec4<u32>(~var_0.c.x, 5114u, 28970u, 1u))), ~(-24659i ^ min(~var_0.b.x, var_3.x)));
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: vec2<u32>) -> bool {
    global0 = ~(~vec4<u32>(~max(arg_3.x, global0.x), _wgslsmith_div_u32(79317u, func_4(arg_1.b.x, arg_0).c.x), ~26043u, 17940u));
    global1 = array<Struct_1, 3>();
    global1 = array<Struct_1, 3>();
    global0 = select(vec4<u32>(~arg_0.c.x, arg_3.x, func_4(abs(-33346i), arg_1).c.x, u_input.e | ~arg_1.c.x) >> (~select(arg_1.c ^ arg_1.c, arg_1.c, arg_0.a) % vec4<u32>(32u)), vec4<u32>(0u, arg_3.x, 25415u, ~countOneBits(u_input.a.x)), vec4<bool>(false, func_2(func_2(arg_0.a.wwy, func_3(arg_1.a, vec3<u32>(0u, arg_1.c.x, 4294967295u))).a.yyz, 65594u).a.x, !(_wgslsmith_f_op_f32(arg_2.x - -2403f) <= _wgslsmith_f_op_f32(arg_2.x - arg_2.x)), !all(select(vec2<bool>(false, false), vec2<bool>(arg_0.a.x, arg_1.a.x), arg_0.a.x))));
    let var_0 = Struct_1(arg_0.a, arg_0.b, ~select(~vec4<u32>(1u, 0u, 0u, 4294967295u), vec4<u32>(func_2(vec3<bool>(true, arg_1.a.x, false), 49103u).c.x, _wgslsmith_add_u32(1u, 2486u), firstLeadingBit(4294967295u), 0u), func_1(_wgslsmith_add_i32(arg_0.d, 2612i)).a), 14338i);
    return true;
}

fn func_7(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: i32) -> i32 {
    let var_0 = -u_input.b;
    let var_1 = func_1(_wgslsmith_mod_i32(_wgslsmith_mult_i32(1i, ~arg_2 & var_0.x), _wgslsmith_sub_i32(~20134i >> (_wgslsmith_mult_u32(0u, global0.x) % 32u), _wgslsmith_mod_i32(-u_input.b.x, ~(-15673i))))).c.x;
    var var_2 = Struct_1(arg_1.a, _wgslsmith_sub_vec2_i32(-vec2<i32>(reverseBits(-65010i), _wgslsmith_sub_i32(54613i, arg_1.d)), ~_wgslsmith_mod_vec2_i32(~vec2<i32>(arg_1.b.x, arg_2), vec2<i32>(arg_2, var_0.x) >> (u_input.d.yy % vec2<u32>(32u)))), func_4(_wgslsmith_div_i32(-2965i, u_input.c), func_4(var_0.x, Struct_1(arg_1.a, func_2(arg_1.a.zyw, arg_1.c.x).b, reverseBits(vec4<u32>(1u, 36825u, 0u, global0.x)), arg_2))).c, _wgslsmith_mod_i32(max(~(-arg_1.b.x), max(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, var_0.x, u_input.c), vec3<i32>(-2147483647i, -56351i, arg_1.b.x)), ~arg_2)), -var_0.x));
    let var_3 = 0i;
    global1 = array<Struct_1, 3>();
    return countOneBits(-60641i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_7(vec2<bool>(func_6(func_1(4525i), Struct_1(vec4<bool>(true, true, true, true), vec2<i32>(-64031i, -37739i), u_input.d ^ u_input.d, 83630i), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1309f, 2310f, -464f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-1199f, -169f, -512f) + vec3<f32>(-696f, 1454f, -1719f))), vec2<u32>(1u, 4294967295u)), all(vec4<bool>(all(vec4<bool>(true, false, true, true)), func_1(u_input.b.x).a.x, true, false))), func_4(select(_wgslsmith_add_i32(~2147483647i, 1i), _wgslsmith_sub_i32(-83352i, 17256i) | u_input.b.x, false), Struct_1(select(func_2(vec3<bool>(true, true, false), u_input.d.x).a, func_1(u_input.b.x).a, vec4<bool>(false, false, false, false)), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b.x, 25330i), vec2<i32>(u_input.b.x, 19140i)), ~vec4<u32>(global0.x, global0.x, u_input.e, 24233u), -8866i)), 1i);
    let var_1 = func_1(~_wgslsmith_sub_i32(~1i, func_1(1i >> (u_input.a.x % 32u)).d));
    global1 = array<Struct_1, 3>();
    let var_2 = _wgslsmith_sub_vec2_u32(func_2(!vec3<bool>(var_1.a.x, all(var_1.a.xyz), true), u_input.d.x).c.zx, u_input.d.xy);
    let var_3 = var_1.a.x;
    var var_4 = select(var_3, any(var_1.a.wx), !(~u_input.b.x >= -(~(-2147483647i))));
    let x = u_input.a;
    s_output = StorageBuffer(-(1i ^ func_4(~2147483647i, var_1).d), abs(-2147483647i), var_2.x, var_1.c);
}

