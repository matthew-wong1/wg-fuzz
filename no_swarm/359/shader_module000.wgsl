struct Struct_1 {
    a: vec3<u32>,
    b: u32,
}

struct Struct_2 {
    a: u32,
    b: vec4<f32>,
}

struct Struct_3 {
    a: f32,
    b: f32,
    c: vec4<f32>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_2,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<Struct_3, 21>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: u32) -> vec3<u32> {
    global1 = array<Struct_3, 21>();
    global1 = array<Struct_3, 21>();
    global0 = Struct_3(1514f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global0.a)))) * global0.b), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-854f, global0.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-563f, global0.c.x, true)), _wgslsmith_f_op_f32(-415f - global0.a)), _wgslsmith_f_op_f32(min(-1337f, global0.b))))));
    var var_0 = Struct_3(1902f, global0.b, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(global0.c.x, _wgslsmith_f_op_f32(step(global0.a, global0.a)))), -524f, _wgslsmith_f_op_f32(global0.c.x + _wgslsmith_f_op_f32(1366f * -482f)), _wgslsmith_div_f32(-735f, 1098f)) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-global0.c), global0.c, false))));
    let var_1 = Struct_2(abs(62500u), _wgslsmith_f_op_vec4_f32(round(var_0.c)));
    return abs(~min(_wgslsmith_div_vec3_u32(vec3<u32>(1u, 53038u, 4294967295u), vec3<u32>(u_input.a.x, var_1.a, arg_0)), ~vec3<u32>(arg_0, u_input.a.x, u_input.a.x)));
}

fn func_2(arg_0: vec2<u32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(global0.c - vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -194f), _wgslsmith_f_op_f32(global0.b + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.c.x - 1087f) - -1000f)), global0.a, global0.c.x));
    var var_1 = Struct_4(~select(vec3<u32>(33208u, arg_0.x, arg_0.x), min(vec3<u32>(arg_0.x, u_input.a.x, 25683u), vec3<u32>(u_input.a.x, u_input.a.x, 10864u)) | (vec3<u32>(u_input.a.x, 4294967295u, arg_0.x) ^ vec3<u32>(u_input.a.x, arg_0.x, 9200u)), !any(vec3<bool>(false, false, false))), Struct_2(113452u | ~(~u_input.a.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(global0.c - vec4<f32>(global0.b, -446f, -790f, global0.c.x)), vec4<f32>(global0.c.x, var_0.x, 1000f, global0.a))) - global0.c)), Struct_1(vec3<u32>(_wgslsmith_mod_u32(u_input.a.x, 0u), reverseBits(17314u), ~u_input.a.x) & _wgslsmith_mod_vec3_u32(func_3(4294967295u), vec3<u32>(u_input.a.x, 1u, 80708u)), ~u_input.a.x), Struct_1(vec3<u32>(61871u, countOneBits(82987u | u_input.a.x), 1u), ~(u_input.a.x << (29991u % 32u))));
    var var_2 = select(!select(!select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true)), !select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), false), true), vec3<bool>(true, all(vec4<bool>(true, true, true, true)), true), 82542u < (30618u >> (var_1.a.x % 32u)));
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(731f)))), 625f);
    let var_4 = Struct_2(u_input.a.x, vec4<f32>(global0.b, 1244f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(1000f, _wgslsmith_f_op_f32(select(var_3.x, -1393f, var_2.x)), true)))), -976f));
    return var_1.d;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_4, arg_2: Struct_2, arg_3: vec3<u32>) -> vec2<bool> {
    let var_0 = vec4<u32>(~60555u, ~abs(4294967295u), u_input.a.x, arg_1.d.a.x >> (func_2(vec2<u32>(arg_0.a.x, ~0u)).a.x % 32u));
    var var_1 = _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b, _wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.b, u_input.b), min(vec2<i32>(-2147483647i, u_input.b) & vec2<i32>(u_input.b, u_input.b), ~vec2<i32>(u_input.b, u_input.b)))), ~firstLeadingBit(vec2<i32>(abs(6062i), abs(u_input.b))));
    global1 = array<Struct_3, 21>();
    var var_2 = (u_input.b & (-16529i ^ firstTrailingBit(var_1.x))) >> (firstLeadingBit(abs(1u)) % 32u);
    var var_3 = ~min(u_input.a, firstTrailingBit(select(~var_0.zw, _wgslsmith_mod_vec2_u32(vec2<u32>(17551u, 0u), vec2<u32>(4294967295u, arg_3.x)), true)));
    return select(select(vec2<bool>(true, true), vec2<bool>(false, true), select(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true)), vec2<bool>(true, all(vec3<bool>(false, false, false))), select(vec2<bool>(true, true), vec2<bool>(true, true), true))), !select(vec2<bool>(true, true), vec2<bool>(true, 4294967295u <= var_3.x), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false)), any(vec2<bool>(true, false)))), !select(vec2<bool>(true, true), select(vec2<bool>(false, true), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(true, true)), vec2<bool>(all(vec2<bool>(true, true)), var_3.x > 1u)));
}

fn func_5(arg_0: vec3<i32>, arg_1: vec2<bool>, arg_2: vec3<i32>, arg_3: vec2<i32>) -> Struct_3 {
    let var_0 = Struct_4(vec3<u32>(~u_input.a.x, _wgslsmith_add_u32(~firstLeadingBit(7314u), _wgslsmith_div_u32(u_input.a.x, u_input.a.x >> (u_input.a.x % 32u))), u_input.a.x), Struct_2(_wgslsmith_div_u32(~(~0u), firstTrailingBit(u_input.a.x)), vec4<f32>(_wgslsmith_f_op_f32(min(global0.a, 573f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -407f))), _wgslsmith_f_op_f32(-1000f * global0.b), global0.c.x)), Struct_1(firstTrailingBit(vec3<u32>(firstTrailingBit(4294967295u), ~0u, ~4294967295u)), max(u_input.a.x, countOneBits(~u_input.a.x))), Struct_1(abs(~vec3<u32>(u_input.a.x, 4294967295u, 57486u)), u_input.a.x));
    return global1[_wgslsmith_index_u32(11914u, 21u)];
}

fn func_6(arg_0: Struct_3, arg_1: vec4<f32>, arg_2: Struct_4) -> Struct_1 {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(-arg_1.x), 389f, _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1172f, _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-global0.a)), 964f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-784f * arg_0.a) + -315f)))));
    var var_1 = Struct_1(func_2(vec2<u32>(72392u, ~(~arg_2.b.a))).a, u_input.a.x);
    global0 = func_5(vec3<i32>(u_input.b, abs(u_input.b), countOneBits((u_input.b << (6149u % 32u)) >> (arg_2.b.a % 32u))), vec2<bool>((u_input.b | _wgslsmith_mod_i32(u_input.b, 80282i)) <= min(min(u_input.b, u_input.b), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, u_input.b, u_input.b, 35115i), vec4<i32>(-24676i, u_input.b, u_input.b, u_input.b))), ~_wgslsmith_add_u32(arg_2.b.a, arg_2.c.b) < 8569u), ~(~_wgslsmith_clamp_vec3_i32(vec3<i32>(9461i, u_input.b, u_input.b), vec3<i32>(u_input.b, u_input.b, u_input.b) << (vec3<u32>(31048u, 4294967295u, var_1.b) % vec3<u32>(32u)), vec3<i32>(u_input.b, 0i, -2998i) ^ vec3<i32>(u_input.b, u_input.b, u_input.b))), vec2<i32>(_wgslsmith_add_i32(_wgslsmith_sub_i32(abs(63941i), ~u_input.b), ~u_input.b), 1i));
    var var_2 = reverseBits(firstLeadingBit(_wgslsmith_mod_vec3_i32(select(vec3<i32>(u_input.b, u_input.b, 29117i), select(vec3<i32>(-36239i, u_input.b, 34145i), vec3<i32>(2147483647i, u_input.b, -2147483647i), true), vec3<bool>(true, true, true)), vec3<i32>(~u_input.b, _wgslsmith_sub_i32(u_input.b, -2147483647i), u_input.b))));
    let var_3 = Struct_4(vec3<u32>(_wgslsmith_add_u32(_wgslsmith_sub_u32(arg_2.d.a.x, ~4294967295u), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 11822u, var_1.b, u_input.a.x), vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, 40464u)) | _wgslsmith_dot_vec3_u32(vec3<u32>(25491u, 58298u, 76456u), vec3<u32>(var_1.a.x, 30988u, 4294967295u))), firstTrailingBit(var_1.a.x & var_1.a.x), ~(~var_1.b >> (~var_1.a.x % 32u))), Struct_2(_wgslsmith_sub_u32(firstTrailingBit(func_2(vec2<u32>(100604u, arg_2.a.x)).a.x), 4294967295u), arg_2.b.b), Struct_1(var_1.a, ~4294967295u), func_2(~_wgslsmith_sub_vec2_u32(vec2<u32>(28630u, var_1.a.x) << (arg_2.d.a.zx % vec2<u32>(32u)), var_1.a.xy)));
    return var_3.d;
}

fn func_1(arg_0: Struct_4, arg_1: bool, arg_2: bool) -> Struct_1 {
    let var_0 = 0u;
    var var_1 = Struct_4(arg_0.d.a, arg_0.b, func_6(func_5(abs(vec3<i32>(0i, u_input.b, u_input.b)) & _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<i32>(2147483647i, u_input.b, -55296i)), func_4(func_2(arg_0.d.a.xy), arg_0, Struct_2(4294967295u, arg_0.b.b), select(vec3<u32>(0u, arg_0.d.a.x, 4294967295u), arg_0.d.a, true)), firstTrailingBit(vec3<i32>(-9829i, u_input.b, -2147483647i)), vec2<i32>(u_input.b, ~2147483647i)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(996f, 636f, 252f, arg_0.b.b.x))), arg_0), Struct_1(arg_0.c.a, arg_0.a.x));
    var var_2 = global1[_wgslsmith_index_u32(1u, 21u)];
    var var_3 = func_5(_wgslsmith_mult_vec3_i32(select(vec3<i32>(u_input.b, u_input.b, u_input.b) >> (~vec3<u32>(u_input.a.x, 4294967295u, 16151u) % vec3<u32>(32u)), abs(vec3<i32>(u_input.b, -18965i, 8558i)), select(vec3<bool>(false, true, false), select(vec3<bool>(arg_1, arg_2, arg_1), vec3<bool>(true, false, arg_2), vec3<bool>(false, false, arg_1)), select(vec3<bool>(arg_1, arg_1, true), vec3<bool>(arg_2, arg_2, false), vec3<bool>(true, arg_2, true)))), firstLeadingBit(max(select(vec3<i32>(u_input.b, 1i, -1i), vec3<i32>(u_input.b, u_input.b, u_input.b), arg_1), vec3<i32>(-1i, u_input.b, 8987i)))), !(!vec2<bool>(1903f == arg_0.b.b.x, arg_2 & arg_2)), abs(-_wgslsmith_mod_vec3_i32(vec3<i32>(-1i, 0i, 2147483647i), firstTrailingBit(vec3<i32>(u_input.b, u_input.b, u_input.b)))), -vec2<i32>(max(u_input.b, ~u_input.b), u_input.b));
    var var_4 = _wgslsmith_f_op_f32(sign(arg_0.b.b.x));
    return var_1.c;
}

fn func_7(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_4, arg_3: Struct_4) -> bool {
    var var_0 = select(vec4<bool>(any(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true))) | false, any(vec2<bool>(true, all(vec2<bool>(true, false)))), select(true, true, true), false), vec4<bool>(false, true, !(_wgslsmith_f_op_f32(-global0.c.x) > _wgslsmith_f_op_f32(exp2(arg_3.b.b.x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(arg_2.b.b.x)), _wgslsmith_f_op_f32(-arg_2.b.b.x))) != _wgslsmith_f_op_f32(f32(-1f) * -658f)), !select(vec4<bool>(true, true, true, true), !select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false)), select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true)), select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true)), select(false, false, true))));
    var var_1 = var_0.x;
    let var_2 = u_input.a;
    let var_3 = func_6(global1[_wgslsmith_index_u32(4294967295u, 21u)], global0.c, Struct_4(vec3<u32>(arg_3.c.b, _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, arg_1.a.x, 1u, arg_0.a.x), vec4<u32>(arg_0.b, u_input.a.x, 0u, arg_2.b.a)), 112378u), 22078u), Struct_2(_wgslsmith_sub_u32(4294967295u, u_input.a.x), arg_2.b.b), Struct_1(~arg_0.a, ~(~arg_1.b)), Struct_1(vec3<u32>(59478u, 52266u, var_2.x) ^ arg_1.a, ~(~4294967295u))));
    let var_4 = vec4<u32>(func_2(_wgslsmith_clamp_vec2_u32(~arg_2.c.a.xx << (~vec2<u32>(79455u, 54412u) % vec2<u32>(32u)), vec2<u32>(4294967295u ^ arg_2.b.a, 7449u), u_input.a)).a.x, 8195u, abs(arg_0.a.x) >> (arg_3.c.a.x % 32u), 5394u);
    return var_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!vec4<bool>(true, func_7(Struct_1(vec3<u32>(0u, 130963u, u_input.a.x), u_input.a.x), func_1(Struct_4(vec3<u32>(14545u, u_input.a.x, u_input.a.x), Struct_2(u_input.a.x, global0.c), Struct_1(vec3<u32>(u_input.a.x, 72803u, u_input.a.x), u_input.a.x), Struct_1(vec3<u32>(36896u, u_input.a.x, u_input.a.x), 47996u)), true, true), Struct_4(vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x), Struct_2(4294967295u, global0.c), Struct_1(vec3<u32>(u_input.a.x, 4294967295u, 50060u), 16389u), Struct_1(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), 57513u)), Struct_4(vec3<u32>(u_input.a.x, 18546u, u_input.a.x), Struct_2(7860u, global0.c), Struct_1(vec3<u32>(86770u, 0u, 22111u), 1u), Struct_1(vec3<u32>(u_input.a.x, u_input.a.x, 0u), u_input.a.x))), select(false, true, false), true));
    var var_1 = _wgslsmith_div_vec4_u32(firstTrailingBit(firstTrailingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, 92627u, 4801u, 0u), vec4<u32>(4294967295u, u_input.a.x, 4294967295u, u_input.a.x), vec4<u32>(4294967295u, 5414u, 4294967295u, 1u))) >> (vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.a.x, 18017u, u_input.a.x), vec4<u32>(1u, 46504u, u_input.a.x, u_input.a.x)), _wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(22796u, u_input.a.x)), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, 5284u, 73425u), vec4<u32>(14775u, u_input.a.x, 4294967295u, u_input.a.x)), ~0u) % vec4<u32>(32u))), select(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, 3849u, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)) | select(vec4<u32>(u_input.a.x, 79426u, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, 0u, u_input.a.x, 47527u), false), _wgslsmith_mult_vec4_u32(firstTrailingBit(vec4<u32>(4294967295u, u_input.a.x, 0u, 45257u)), vec4<u32>(0u, 1u, 4294967295u, u_input.a.x)), true) ^ _wgslsmith_mod_vec4_u32(vec4<u32>(36395u, u_input.a.x, u_input.a.x, _wgslsmith_sub_u32(1u, 0u)), _wgslsmith_mod_vec4_u32(countOneBits(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), min(vec4<u32>(95786u, u_input.a.x, u_input.a.x, 12328u), vec4<u32>(49382u, 1u, u_input.a.x, u_input.a.x)))));
    global0 = Struct_3(-324f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1319f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0.b))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.c)));
    var_0 = select(!(!vec4<bool>(any(var_0.yx), any(vec4<bool>(true, var_0.x, var_0.x, false)), false, false & var_0.x)), vec4<bool>(var_0.x, any(var_0.xwx), any(var_0.xwz) && var_0.x, var_0.x), var_0.x);
    var var_2 = vec4<i32>(_wgslsmith_add_i32(732i, _wgslsmith_sub_i32(-_wgslsmith_mod_i32(1i, u_input.b), ~17344i)), 2147483647i, ~(~_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(57785i, -2147483647i, u_input.b, u_input.b), vec4<i32>(-1367i, u_input.b, -1i, -9383i)), -vec4<i32>(u_input.b, -75725i, u_input.b, u_input.b))), u_input.b);
    global1 = array<Struct_3, 21>();
    let var_3 = var_0.x || true;
    var var_4 = func_6(func_5(vec3<i32>(1i, u_input.b, var_2.x), !func_4(func_2(u_input.a), Struct_4(vec3<u32>(56596u, var_1.x, var_1.x), Struct_2(1u, global0.c), Struct_1(vec3<u32>(var_1.x, u_input.a.x, 114205u), u_input.a.x), Struct_1(var_1.wwx, 1u)), Struct_2(var_1.x, vec4<f32>(1278f, -473f, -1494f, global0.b)), ~vec3<u32>(63000u, u_input.a.x, var_1.x)), select(var_2.wyw, ~vec3<i32>(var_2.x, var_2.x, -2147483647i), select(!var_0.zyw, vec3<bool>(var_3, var_3, var_0.x), !var_0.zzw)), vec2<i32>(1i, 1i)), global0.c, Struct_4(_wgslsmith_clamp_vec3_u32(var_1.zwy, ~var_1.xxz, vec3<u32>(u_input.a.x, var_1.x, u_input.a.x)) >> (var_1.yyx % vec3<u32>(32u)), Struct_2(1u, global0.c), Struct_1(~(~vec3<u32>(var_1.x, 1u, 27203u)), ~var_1.x), Struct_1(vec3<u32>(u_input.a.x, 4294967295u, 39169u ^ u_input.a.x), var_1.x)));
    let var_5 = _wgslsmith_div_vec3_f32(global0.c.zzw, global0.c.wwy);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(min(vec4<i32>(var_2.x, -2147483647i, -54857i, u_input.b), vec4<i32>(var_2.x, u_input.b, u_input.b, var_2.x)), vec4<i32>(~var_2.x, 2147483647i, u_input.b, 0i)), -abs(min(vec4<i32>(-1i, 3763i, u_input.b, 53545i), vec4<i32>(12747i, -2147483647i, var_2.x, -15719i)))), _wgslsmith_add_vec2_i32(var_2.xz, abs(var_2.xw)), var_2.x);
}

