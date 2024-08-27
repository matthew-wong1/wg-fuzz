struct Struct_1 {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec4<f32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec2<f32>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: vec3<i32>,
    d: Struct_1,
}

struct Struct_5 {
    a: Struct_3,
    b: u32,
    c: u32,
    d: Struct_4,
    e: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 32> = array<vec4<i32>, 32>(vec4<i32>(-38749i, -1i, 2147483647i, i32(-2147483648)), vec4<i32>(i32(-2147483648), 2147483647i, 39469i, -3567i), vec4<i32>(44916i, 2147483647i, -12790i, -1i), vec4<i32>(62855i, 2147483647i, 26036i, -9678i), vec4<i32>(-10859i, -12875i, -78428i, 27573i), vec4<i32>(0i, 29176i, -44230i, 50808i), vec4<i32>(2147483647i, 23829i, -1i, 18709i), vec4<i32>(-58481i, 32813i, 66356i, i32(-2147483648)), vec4<i32>(i32(-2147483648), 2147483647i, 1i, -19743i), vec4<i32>(-1i, 0i, 0i, 1i), vec4<i32>(6382i, i32(-2147483648), 33884i, -1i), vec4<i32>(26485i, 2147483647i, 0i, 0i), vec4<i32>(16020i, -1i, 0i, -13168i), vec4<i32>(-1i, 1i, -18202i, 44934i), vec4<i32>(i32(-2147483648), i32(-2147483648), -15711i, 0i), vec4<i32>(1i, 4487i, -1i, 5643i), vec4<i32>(2147483647i, -25320i, 1i, -9451i), vec4<i32>(-26565i, 1i, 27178i, 1i), vec4<i32>(2147483647i, -12208i, -17691i, -1i), vec4<i32>(12013i, 61992i, 11365i, -63158i), vec4<i32>(34576i, i32(-2147483648), -21141i, 24759i), vec4<i32>(-14849i, 2147483647i, 2147483647i, 17891i), vec4<i32>(i32(-2147483648), -37828i, -1i, 24279i), vec4<i32>(0i, 0i, -1i, -6329i), vec4<i32>(-51152i, -55802i, -1i, 17290i), vec4<i32>(-40237i, 804i, 2638i, -50066i), vec4<i32>(0i, 1i, i32(-2147483648), 27726i), vec4<i32>(-1i, 30422i, -2343i, 20017i), vec4<i32>(68688i, 14984i, 8679i, 1i), vec4<i32>(10479i, -3793i, i32(-2147483648), -38896i), vec4<i32>(-8509i, 73894i, 1i, i32(-2147483648)), vec4<i32>(45328i, -20216i, 14263i, 15311i));

var<private> global1: Struct_2;

var<private> global2: Struct_1;

var<private> global3: array<Struct_1, 30>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: f32, arg_3: Struct_3) -> vec3<u32> {
    let var_0 = select(vec3<bool>(!(!all(arg_0.yzw)), arg_0.x || true, true), select(vec3<bool>(reverseBits(0u) < _wgslsmith_dot_vec3_u32(arg_3.a, vec3<u32>(u_input.c.x, arg_3.a.x, 44757u)), !arg_0.x, !any(vec2<bool>(false, true))), select(!arg_0.zyy, vec3<bool>(true, arg_1.c.x >= global1.a, arg_0.x), vec3<bool>(arg_0.x, any(arg_0.zwx), true)), true), true);
    let var_1 = Struct_4(arg_3, arg_1.b, vec3<i32>(firstTrailingBit(global2.a.x), _wgslsmith_div_i32(~1i, _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 2147483647i) | arg_1.b.b.yx, global1.b.b.yx)), 0i), global3[_wgslsmith_index_u32(0u, 30u)]);
    let var_2 = ~(~min(select(~var_1.b.b.x, -20433i, true), -(~(-2147483647i))));
    var var_3 = arg_0.x;
    var var_4 = arg_0;
    return abs(global2.c);
}

fn func_2(arg_0: vec3<f32>) -> i32 {
    var var_0 = u_input.b;
    var var_1 = global1.b.b.x;
    let var_2 = min(33072u, u_input.d << (reverseBits(_wgslsmith_div_u32(min(10304u, global2.c.x), ~global1.b.c.x)) % 32u));
    let var_3 = 15899u;
    var_0 = abs(min(_wgslsmith_dot_vec3_u32(func_3(vec4<bool>(true, false, false, true), Struct_2(-1800f, global3[_wgslsmith_index_u32(var_3, 30u)], vec4<f32>(114f, arg_0.x, global1.c.x, -499f)), global1.c.x, Struct_3(u_input.c, arg_0.yy)) | vec3<u32>(0u, u_input.a.x, 0u), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c.x, 1u, u_input.b), func_3(vec4<bool>(true, true, true, true), Struct_2(849f, Struct_1(global1.b.a, global2.a.yzy, u_input.c), vec4<f32>(-418f, -816f, global1.a, -1176f)), global1.c.x, Struct_3(vec3<u32>(6659u, 53708u, global2.c.x), arg_0.yz)))), var_3));
    return 4651i;
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: Struct_2, arg_3: vec3<i32>) -> Struct_4 {
    global1 = arg_0;
    var var_0 = Struct_5(Struct_3(_wgslsmith_add_vec3_u32(~arg_2.b.c, arg_2.b.c) >> (max(u_input.a, _wgslsmith_div_vec3_u32(arg_0.b.c, u_input.a)) % vec3<u32>(32u)), vec2<f32>(127f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0.a))))), 23883u, u_input.c.x, Struct_4(Struct_3(~vec3<u32>(106085u, 19756u, arg_0.b.c.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(global1.c.ww, arg_0.c.yz))), Struct_1(-arg_2.b.a, -(~vec3<i32>(global1.b.b.x, global2.b.x, 6713i)), ~min(arg_0.b.c, u_input.c)), arg_2.b.b >> (min(~vec3<u32>(u_input.b, global2.c.x, 4294967295u), vec3<u32>(global1.b.c.x, u_input.a.x, global2.c.x)) % vec3<u32>(32u)), Struct_1(_wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(0i, arg_3.x, -2147483647i, global2.b.x), vec4<i32>(global1.b.a.x, -86677i, 2147483647i, 10076i)), vec4<i32>(global1.b.a.x, 73697i, arg_0.b.b.x, 1i)), vec3<i32>(~0i, ~27814i, _wgslsmith_clamp_i32(arg_2.b.b.x, global2.a.x, global2.a.x)), ~(~vec3<u32>(global2.c.x, arg_0.b.c.x, arg_0.b.c.x)))), firstLeadingBit(arg_2.b.c.x));
    global1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.c.x))), Struct_1(-vec4<i32>(arg_0.b.b.x, i32(-1i) * -30798i, 2147483647i, -arg_3.x), vec3<i32>(-(arg_3.x & 0i), max(arg_3.x, firstTrailingBit(1i)), 1i), firstLeadingBit(_wgslsmith_mod_vec3_u32(vec3<u32>(var_0.d.a.a.x, global1.b.c.x, arg_2.b.c.x), vec3<u32>(var_0.c, 0u, arg_0.b.c.x))) << (max(abs(vec3<u32>(4294967295u, arg_2.b.c.x, var_0.c)), ~var_0.a.a) % vec3<u32>(32u))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(1294f, _wgslsmith_f_op_f32(-959f - _wgslsmith_f_op_f32(step(-195f, -1000f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.c.x), 603f), _wgslsmith_f_op_f32(-1523f * _wgslsmith_f_op_f32(global1.a + arg_2.c.x))), vec4<f32>(_wgslsmith_f_op_f32(round(2625f)), _wgslsmith_div_f32(-343f, _wgslsmith_div_f32(-1209f, arg_2.a)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1801f + arg_0.c.x), _wgslsmith_div_f32(-760f, global1.c.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global1.a, -1101f)) * _wgslsmith_f_op_f32(floor(-607f)))))));
    return var_0.d;
}

fn func_1(arg_0: vec3<f32>) -> Struct_4 {
    var var_0 = true;
    let var_1 = Struct_3(~u_input.a, vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -895f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(2001f, -536f)) - _wgslsmith_f_op_f32(-1459f - _wgslsmith_f_op_f32(878f - global1.c.x)))));
    let var_2 = arg_0.x;
    let var_3 = Struct_2(874f, Struct_1(vec4<i32>(global2.a.x, countOneBits(_wgslsmith_sub_i32(global2.b.x, global1.b.a.x)), global1.b.b.x, _wgslsmith_mult_i32(1i, 1i)), global1.b.b, vec3<u32>(~u_input.b, 11513u, ~0u) & u_input.a), _wgslsmith_div_vec4_f32(vec4<f32>(861f, -1492f, 352f, _wgslsmith_f_op_f32(f32(-1f) * -493f)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1569f + 1280f) - -1189f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), true)), _wgslsmith_f_op_f32(-global1.c.x), _wgslsmith_f_op_f32(f32(-1f) * -175f))));
    global2 = var_3.b;
    return func_4(var_3, ~func_2(vec3<f32>(var_2, var_3.c.x, global1.c.x)), var_3, abs(_wgslsmith_add_vec3_i32(global2.a.wxw, global1.b.b)));
}

fn func_5(arg_0: Struct_4, arg_1: vec2<bool>, arg_2: Struct_2) -> vec4<u32> {
    global2 = arg_2.b;
    global3 = array<Struct_1, 30>();
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(124f - _wgslsmith_f_op_f32(arg_2.c.x - arg_0.a.b.x))) + -301f), -417f, global1.a);
    var var_1 = 911f;
    global1 = Struct_2(global1.c.x, Struct_1(_wgslsmith_div_vec4_i32(global0[_wgslsmith_index_u32(0u, 32u)], -arg_2.b.a), vec3<i32>(_wgslsmith_clamp_i32(_wgslsmith_mult_i32(arg_2.b.b.x, global2.a.x), 1i, -arg_0.d.b.x), _wgslsmith_mult_i32(arg_2.b.a.x, _wgslsmith_div_i32(52764i, global2.b.x)), 0i), select(vec3<u32>(_wgslsmith_add_u32(u_input.a.x, global2.c.x), 4294967295u, arg_0.a.a.x), vec3<u32>(global1.b.c.x ^ 0u, 102490u, arg_2.b.c.x), vec3<bool>(all(vec2<bool>(arg_1.x, arg_1.x)), true, arg_1.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(min(arg_2.c, vec4<f32>(global1.a, 114f, var_0.x, -926f))))))));
    return _wgslsmith_sub_vec4_u32(abs(vec4<u32>(0u, reverseBits(0u), ~1434u, 17940u)) ^ vec4<u32>(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(37447u, global2.c.x), vec2<u32>(8579u, arg_2.b.c.x)), u_input.a.x), countOneBits(27330u) >> (0u % 32u), ~firstTrailingBit(4294967295u), 1u), abs(_wgslsmith_mod_vec4_u32(~vec4<u32>(global1.b.c.x, arg_2.b.c.x, 52686u, 4294967295u) << (vec4<u32>(0u, arg_0.a.a.x, 31378u, arg_2.b.c.x) % vec4<u32>(32u)), _wgslsmith_mod_vec4_u32(~vec4<u32>(45132u, 35943u, global2.c.x, u_input.c.x), min(vec4<u32>(global1.b.c.x, 1u, 4294967295u, arg_0.b.c.x), vec4<u32>(4735u, u_input.c.x, u_input.c.x, global2.c.x))))));
}

fn func_6(arg_0: Struct_5) -> Struct_2 {
    var var_0 = func_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.b.x)), global1.c.x, _wgslsmith_f_op_f32(2372f - func_1(global1.c.zzx).a.b.x)) - global1.c.wwy)).a;
    return Struct_2(_wgslsmith_f_op_f32(arg_0.d.a.b.x + global1.a), arg_0.d.d, vec4<f32>(-456f, _wgslsmith_f_op_f32(step(func_4(Struct_2(-648f, Struct_1(vec4<i32>(global1.b.a.x, global2.b.x, global2.b.x, -53015i), global1.b.a.xyz, vec3<u32>(arg_0.d.d.c.x, global1.b.c.x, global2.c.x)), vec4<f32>(arg_0.d.a.b.x, -808f, -1329f, 1532f)), global2.b.x, Struct_2(-807f, Struct_1(vec4<i32>(11383i, 0i, 1i, global1.b.b.x), vec3<i32>(2236i, global2.a.x, arg_0.d.d.b.x), global2.c), vec4<f32>(436f, -890f, -870f, var_0.b.x)), vec3<i32>(-41670i, global2.a.x, global2.b.x)).a.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-204f))))), _wgslsmith_f_op_f32(-334f - _wgslsmith_f_op_f32(-global1.a)), 167f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1.b.c.x;
    var var_1 = global1.b.c;
    let var_2 = func_6(Struct_5(Struct_3(~global2.c, vec2<f32>(_wgslsmith_f_op_f32(227f + global1.c.x), global1.a)), _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(~vec4<u32>(4294967295u, 10936u, var_1.x, var_1.x), vec4<u32>(u_input.c.x, global2.c.x, global1.b.c.x, 96266u)), func_5(func_1(global1.c.ywy), vec2<bool>(true, false), Struct_2(global1.a, global1.b, vec4<f32>(global1.a, global1.c.x, global1.c.x, global1.a)))), countOneBits(_wgslsmith_sub_u32(global1.b.c.x ^ var_1.x, 1u)), Struct_4(Struct_3(vec3<u32>(1u, global1.b.c.x, u_input.a.x) ^ vec3<u32>(75879u, 1u, global1.b.c.x), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(global1.c.x, global1.c.x), vec2<f32>(219f, -162f)))), Struct_1(global2.a, _wgslsmith_clamp_vec3_i32(global1.b.b, global1.b.a.zwz, global2.a.yzz), vec3<u32>(14953u, global1.b.c.x, global2.c.x) ^ vec3<u32>(47293u, 9829u, var_1.x)), countOneBits(_wgslsmith_clamp_vec3_i32(vec3<i32>(global2.b.x, global2.b.x, 1i), global2.b, vec3<i32>(0i, global1.b.b.x, -23384i))), func_4(Struct_2(global1.c.x, Struct_1(vec4<i32>(0i, 1i, -68116i, global2.b.x), vec3<i32>(16536i, -2147483647i, 1i), vec3<u32>(72026u, 53867u, 4294967295u)), global1.c), -1i, Struct_2(global1.c.x, Struct_1(vec4<i32>(global1.b.a.x, -1i, 2147483647i, 25773i), global2.a.wxw, vec3<u32>(50064u, u_input.b, 49553u)), vec4<f32>(global1.c.x, 135f, global1.c.x, global1.c.x)), firstLeadingBit(global2.b)).b), 4294967295u & global2.c.x));
    global3 = array<Struct_1, 30>();
    global3 = array<Struct_1, 30>();
    var var_3 = _wgslsmith_f_op_vec3_f32(select(global1.c.yzw, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_2.c.x), -322f, 1465f)), vec3<f32>(-1277f, 563f, -1000f), firstTrailingBit(0i) < -24280i)), false));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(_wgslsmith_add_i32(func_1(var_2.c.wxz).c.x, ~global1.b.b.x), countOneBits(-1228i)) & var_2.b.b.yx, -2147483647i, func_1(vec3<f32>(1000f, _wgslsmith_f_op_f32(f32(-1f) * -303f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_2.a * -275f))))).c.x);
}

