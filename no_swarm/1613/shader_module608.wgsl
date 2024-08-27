struct Struct_1 {
    a: vec3<i32>,
    b: vec4<bool>,
    c: f32,
    d: vec4<bool>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec3<bool>,
    c: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: bool, arg_1: Struct_3) -> f32 {
    global0 = -((vec4<i32>(-1i) * -(vec4<i32>(-33099i, u_input.a, arg_1.b.x, arg_1.b.x) ^ vec4<i32>(global0.x, u_input.a, u_input.a, arg_1.b.x))) >> (reverseBits(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 60245u, 9779u, 4294967295u), select(vec4<u32>(1u, 4294967295u, 40312u, 0u), vec4<u32>(1u, 19389u, 1u, 21703u), true))) % vec4<u32>(32u)));
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a.a.x - arg_1.a.a.x)) - arg_1.a.a.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_1.a.a.x)) * _wgslsmith_f_op_f32(arg_1.a.a.x - -2041f)))))), arg_1.a.a.x);
    let var_1 = vec3<u32>(abs(1u), abs(37366u), _wgslsmith_clamp_u32(~reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(15993u, 1u, 31205u), vec3<u32>(4294967295u, 0u, 18674u))), ~0u, max(4294967295u, _wgslsmith_div_u32(10675u, firstLeadingBit(0u)))));
    global0 = abs(~_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_1.b.x, global0.x, firstTrailingBit(21599i), arg_1.b.x), vec4<i32>(_wgslsmith_dot_vec3_i32(global0.xww, global0.xwz), select(arg_1.b.x, 59768i, true), global0.x, arg_1.b.x), _wgslsmith_div_vec4_i32(select(vec4<i32>(1i, u_input.a, 10721i, 0i), vec4<i32>(global0.x, -25788i, global0.x, 28139i), vec4<bool>(true, false, false, true)), vec4<i32>(66896i, 1i, 13923i, arg_1.b.x))));
    let var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(1000f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0))), -838f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_1.a.a.x)) + var_0))), arg_1.a.b, arg_0);
    return var_2.a.x;
}

fn func_2(arg_0: Struct_2) -> i32 {
    global0 = abs(vec4<i32>(_wgslsmith_div_i32(u_input.a, u_input.a | select(u_input.a, global0.x, arg_0.c)), ~(-2147483647i), firstLeadingBit(_wgslsmith_clamp_i32(_wgslsmith_div_i32(u_input.a, global0.x), u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(38541i, global0.x, global0.x, -16710i), vec4<i32>(global0.x, 36885i, 1i, u_input.a)))), ~(-340i)));
    var var_0 = arg_0;
    var var_1 = Struct_3(Struct_2(vec4<f32>(-456f, _wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_f_op_f32(func_3(true, Struct_3(arg_0, vec2<i32>(2147483647i, global0.x)))), -1470f), !(!select(vec3<bool>(arg_0.b.x, arg_0.c, false), var_0.b, false)), any(select(vec4<bool>(true, true, true, true), !vec4<bool>(arg_0.c, true, arg_0.c, false), any(vec4<bool>(var_0.c, arg_0.c, var_0.c, false))))), vec2<i32>(abs(~(-2062i)), ~(u_input.a & ~u_input.a)));
    var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(-var_0.a), !(!(!(!arg_0.b))), var_1.a.b.x);
    var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, var_0.a.x, var_0.a.x, 422f) - vec4<f32>(1034f, -229f, arg_0.a.x, -1913f))) - var_0.a))), select(vec3<bool>(all(!vec4<bool>(arg_0.b.x, arg_0.b.x, var_1.a.c, false)), var_0.b.x, !arg_0.c), vec3<bool>(true, true, true), arg_0.b), !all(vec4<bool>(arg_0.a.x <= var_0.a.x, any(vec2<bool>(true, var_1.a.b.x)), true, true)));
    return global0.x;
}

fn func_1(arg_0: i32, arg_1: Struct_1) -> Struct_2 {
    global0 = -abs(-vec4<i32>(func_2(Struct_2(vec4<f32>(-738f, 731f, 1052f, 809f), vec3<bool>(true, arg_1.d.x, arg_1.b.x), true)), max(u_input.a, u_input.a), ~(-13906i), -u_input.a));
    let var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1.c, arg_1.c, arg_1.c, -983f), vec4<f32>(arg_1.c, arg_1.c, 965f, -1010f), arg_1.d)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.c, arg_1.c, 1359f, arg_1.c)), false))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.c, -262f, arg_1.c, -826f))))), !vec3<bool>(all(select(arg_1.d.yzw, vec3<bool>(arg_1.d.x, false, true), false)), false, any(arg_1.d.wzy)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.c)) > _wgslsmith_f_op_f32(-364f + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(2223f))))));
    var var_1 = arg_1;
    var var_2 = vec2<bool>(var_1.d.x, ((_wgslsmith_div_f32(arg_1.c, arg_1.c) != 127f) || any(vec3<bool>(false, var_1.d.x, false))) && !arg_1.d.x);
    let var_3 = false;
    return Struct_2(_wgslsmith_f_op_vec4_f32(abs(var_0.a)), !vec3<bool>(true, _wgslsmith_mod_i32(-8036i, var_1.a.x) == 2147483647i, any(!var_1.b)), var_3 | !any(!arg_1.b));
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: vec3<bool>, arg_3: i32) -> Struct_2 {
    global0 = abs(-vec4<i32>(2147483647i, u_input.a, u_input.a | 0i, u_input.a ^ 1i));
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.a.x, -353f, _wgslsmith_div_f32(-1168f, _wgslsmith_f_op_f32(func_3(false, Struct_3(Struct_2(arg_0.a, vec3<bool>(false, false, arg_0.c), arg_2.x), global0.yx)))), _wgslsmith_f_op_f32(floor(-1268f))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(-1961f + arg_1), _wgslsmith_f_op_f32(-arg_0.a.x), arg_1, -878f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(699f, arg_0.a.x, 1751f, -1605f))))), true)));
    let var_1 = Struct_1(vec3<i32>(_wgslsmith_add_i32(firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(34282i, -69214i, arg_3, -8967i), vec4<i32>(0i, 2147483647i, 2147483647i, 12170i))), max(-2147483647i, arg_3)), _wgslsmith_dot_vec3_i32(vec3<i32>(-9593i, -75475i, arg_3) >> (vec3<u32>(23900u, 4294967295u, 4294967295u) % vec3<u32>(32u)), countOneBits(vec3<i32>(1i, global0.x, arg_3))) & -(u_input.a >> (0u % 32u)), arg_3), vec4<bool>(all(vec4<bool>(true, true, true, true)), any(select(vec2<bool>(true, false), arg_0.b.xz, arg_2.x)), any(select(!vec4<bool>(false, false, arg_2.x, true), select(vec4<bool>(arg_2.x, true, arg_0.c, arg_2.x), vec4<bool>(arg_0.b.x, arg_0.b.x, arg_2.x, arg_0.b.x), vec4<bool>(arg_2.x, arg_2.x, false, true)), arg_0.b.x)), any(select(vec2<bool>(false, arg_0.b.x), vec2<bool>(arg_2.x, false), arg_0.b.yz)) && !(!arg_2.x)), _wgslsmith_f_op_f32(-770f + _wgslsmith_f_op_f32(f32(-1f) * -176f)), !select(vec4<bool>(any(vec4<bool>(false, arg_0.c, true, false)), false || arg_2.x, arg_3 >= -13432i, true), select(vec4<bool>(arg_2.x, arg_2.x, arg_2.x, true), !vec4<bool>(false, arg_2.x, true, true), !vec4<bool>(arg_0.b.x, true, true, false)), !select(vec4<bool>(false, arg_2.x, true, true), vec4<bool>(arg_2.x, true, arg_0.c, arg_0.c), arg_2.x)));
    var var_2 = Struct_3(func_1(-(~(-u_input.a)), Struct_1(countOneBits(global0.xxy | vec3<i32>(0i, 0i, -10476i)), !var_1.b, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0.a.x))), !vec4<bool>(false, false, true, arg_2.x))), _wgslsmith_mod_vec2_i32(select(var_1.a.xz, global0.wy >> (vec2<u32>(0u, 1u) % vec2<u32>(32u)), arg_2.x & arg_0.c) << (~abs(vec2<u32>(0u, 0u)) % vec2<u32>(32u)), vec2<i32>(reverseBits(-u_input.a), global0.x)));
    let var_3 = vec4<i32>(~(~arg_3), (40713i << (abs(1u) % 32u)) ^ var_1.a.x, var_2.b.x, -var_2.b.x);
    return Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_2.a.a) + arg_0.a), var_1.d.ywz, var_1.c > var_0.x);
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(step(arg_1.a.x, _wgslsmith_f_op_f32(max(449f, arg_1.a.x))));
    global0 = _wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(select(~(vec4<i32>(global0.x, global0.x, global0.x, u_input.a) ^ vec4<i32>(-39619i, -1i, global0.x, -1i)), reverseBits(_wgslsmith_div_vec4_i32(vec4<i32>(global0.x, global0.x, u_input.a, 0i), vec4<i32>(global0.x, -2147483647i, -1i, u_input.a))), select(!vec4<bool>(arg_1.c, arg_0.c, arg_1.b.x, arg_0.b.x), vec4<bool>(true, false, arg_1.b.x, arg_1.b.x), all(vec4<bool>(false, false, true, false)))), reverseBits(vec4<i32>(min(u_input.a, 2147483647i), global0.x, _wgslsmith_dot_vec4_i32(vec4<i32>(25826i, -20399i, 0i, 25732i), vec4<i32>(1i, 2147483647i, 23672i, 25027i)), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, u_input.a), global0.wz)))), reverseBits(~_wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(33976i, global0.x, u_input.a, 0i), vec4<i32>(0i, 0i, 2147483647i, 1i), vec4<i32>(-1i, global0.x, global0.x, 1i)), vec4<i32>(u_input.a, global0.x, global0.x, -42014i))));
    var var_1 = firstTrailingBit(global0.ww);
    var var_2 = ~select(~_wgslsmith_mod_i32(11912i, 9295i), _wgslsmith_dot_vec2_i32(select(vec2<i32>(u_input.a, 1i), global0.zz, vec2<bool>(false, arg_0.b.x)), firstTrailingBit(vec2<i32>(var_1.x, global0.x))), true) != _wgslsmith_mult_i32(min(~(-2147483647i), var_1.x), 0i);
    var var_3 = 42949u;
    return func_1(_wgslsmith_dot_vec3_i32(-(~global0.wyz) << (select(max(vec3<u32>(1u, 4294967295u, 0u), vec3<u32>(20655u, 0u, 10880u)), ~vec3<u32>(45477u, 81307u, 22645u), arg_0.b) % vec3<u32>(32u)), global0.zzz), Struct_1(vec3<i32>(abs(-1879i), min(~(-2147483647i), max(27906i, 46625i)), u_input.a >> (12362u % 32u)), !select(vec4<bool>(arg_0.b.x, false, arg_1.b.x, false), !vec4<bool>(true, arg_0.c, true, false), global0.x != 2147483647i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_1.a.x))) - _wgslsmith_div_f32(631f, _wgslsmith_div_f32(402f, arg_1.a.x))), vec4<bool>((false == arg_0.b.x) || arg_0.b.x, false, true, !(u_input.a == -12322i))));
}

fn func_6(arg_0: Struct_3, arg_1: vec4<f32>, arg_2: vec4<i32>) -> Struct_2 {
    var var_0 = countOneBits(arg_2.wwx);
    let var_1 = _wgslsmith_div_i32(1i, -1i) << (~(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(6788u, 4294967295u, 0u, 26452u)) >> (1u % 32u)) % 32u);
    var_0 = _wgslsmith_div_vec3_i32(abs(vec3<i32>(_wgslsmith_add_i32(max(-1i, 33803i), 53613i), _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(arg_2, vec4<i32>(var_1, var_1, var_0.x, 0i)), select(arg_2, vec4<i32>(arg_0.b.x, global0.x, -21598i, 1528i), arg_0.a.b.x)), 14332i)), -countOneBits(vec3<i32>(abs(880i), 1i, select(0i, u_input.a, false))));
    var_0 = ~(-_wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(countOneBits(vec3<i32>(-894i, var_0.x, arg_2.x)), _wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647i, u_input.a, global0.x), vec3<i32>(30926i, var_1, var_1), arg_2.wxy)), -(~vec3<i32>(2147483647i, 2147483647i, -113i))));
    let var_2 = Struct_3(func_1(arg_0.b.x, Struct_1(~_wgslsmith_sub_vec3_i32(global0.wzx, vec3<i32>(var_0.x, -1i, var_1)), !vec4<bool>(true, true, arg_0.a.b.x, arg_0.a.c), func_5(Struct_2(vec4<f32>(arg_1.x, arg_0.a.a.x, arg_0.a.a.x, arg_1.x), arg_0.a.b, false), Struct_2(vec4<f32>(-302f, -687f, 597f, arg_1.x), vec3<bool>(arg_0.a.c, arg_0.a.c, true), arg_0.a.c)).a.x, select(select(vec4<bool>(true, arg_0.a.c, arg_0.a.c, arg_0.a.c), vec4<bool>(false, true, false, arg_0.a.c), true), vec4<bool>(true, true, false, false), !arg_0.a.c))), vec2<i32>(_wgslsmith_mult_i32(arg_2.x >> (~76621u % 32u), u_input.a), var_1 ^ 58869i));
    return Struct_2(arg_1, !select(vec3<bool>(!var_2.a.b.x, arg_0.a.c && var_2.a.b.x, true), arg_0.a.b, false), var_2.a.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(Struct_3(func_5(func_4(func_1(-44149i, Struct_1(global0.wyy, vec4<bool>(true, false, false, false), -487f, vec4<bool>(true, false, false, false))), func_1(global0.x, Struct_1(vec3<i32>(global0.x, u_input.a, u_input.a), vec4<bool>(true, true, true, false), 448f, vec4<bool>(false, false, true, true))).a.x, vec3<bool>(false, true, false), u_input.a), Struct_2(vec4<f32>(-811f, -1000f, 1000f, -871f), vec3<bool>(true, false, true), any(vec3<bool>(true, true, false)))), -_wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(global0.x, 30206i), global0.yz), select(vec2<i32>(u_input.a, -143i), vec2<i32>(-1i, global0.x), true))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-166f, _wgslsmith_f_op_f32(max(-1018f, -789f)), _wgslsmith_f_op_f32(-700f * -740f), _wgslsmith_div_f32(-982f, 407f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -611f, 523f, -602f) + vec4<f32>(-924f, -1427f, 919f, -1129f))) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-591f, 778f, -1000f, -277f), vec4<f32>(-1370f, -356f, -695f, 1546f), true)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-200f, -443f, -360f, 1000f))), vec4<f32>(1f, 1f, 1f, 1f)))), select(-(-vec4<i32>(global0.x, 2147483647i, 2147483647i, global0.x) & countOneBits(vec4<i32>(global0.x, u_input.a, u_input.a, u_input.a))), firstLeadingBit(-max(vec4<i32>(-2147483647i, global0.x, -17315i, global0.x), vec4<i32>(-3282i, u_input.a, -1i, u_input.a))), !select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false)), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true), true))));
    global0 = ~(-vec4<i32>(_wgslsmith_dot_vec3_i32(global0.yxw, _wgslsmith_mod_vec3_i32(global0.wzz, global0.xxw)), _wgslsmith_add_i32(min(u_input.a, global0.x), ~global0.x), -2147483647i, global0.x));
    var var_1 = 1i;
    let var_2 = Struct_3(Struct_2(var_0.a, var_0.b, var_0.b.x), vec2<i32>(_wgslsmith_sub_i32(~u_input.a, firstTrailingBit(1i)) >> (~abs(0u) % 32u), func_2(Struct_2(vec4<f32>(1458f, var_0.a.x, var_0.a.x, var_0.a.x), vec3<bool>(var_0.c, var_0.c, var_0.b.x), true | var_0.b.x))));
    var var_3 = var_2.a.a.x;
    var_3 = -1335f;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(u_input.a, ~min(var_2.b.x, -33147i), u_input.a, firstTrailingBit(global0.x)) << (~vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u)), firstLeadingBit(i32(-1i) * -60423i));
}

