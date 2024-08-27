struct Struct_1 {
    a: bool,
    b: vec2<i32>,
    c: u32,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: u32,
    d: bool,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: i32,
    d: Struct_2,
}

struct Struct_4 {
    a: vec2<u32>,
    b: Struct_1,
    c: vec4<f32>,
    d: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 22>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_3, arg_1: vec3<u32>, arg_2: Struct_3) -> vec3<bool> {
    var var_0 = Struct_4(vec2<u32>(reverseBits(1u), ~min(~1u, arg_2.d.c)), Struct_1(all(select(vec4<bool>(arg_2.a, arg_0.d.a.d, false, false), vec4<bool>(arg_2.a, arg_2.a, arg_2.a, false), arg_2.a)), ~u_input.a.yx, _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_div_u32(309u, arg_1.x), arg_0.d.c, min(arg_0.d.c, 664u), ~arg_2.d.a.c), _wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(arg_1.x, arg_2.d.c, arg_2.d.c, arg_2.d.a.c), vec4<u32>(38734u, arg_2.d.a.c, arg_1.x, 10153u)), vec4<u32>(arg_2.d.c, arg_2.d.c, arg_1.x, 96228u) | vec4<u32>(22616u, arg_1.x, arg_1.x, arg_2.d.a.c))), arg_0.d.d), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_2.d.b.x, arg_0.d.b.x, global0[_wgslsmith_index_u32(arg_1.x, 22u)], -196f), vec4<f32>(985f, arg_0.d.b.x, global0[_wgslsmith_index_u32(arg_1.x, 22u)], arg_0.d.b.x))) - vec4<f32>(arg_0.d.b.x, -1129f, arg_0.d.b.x, arg_0.d.b.x)))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-562f, global0[_wgslsmith_index_u32(4294967295u, 22u)], 118f, 1509f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.d.b.x, arg_2.d.b.x, 1445f, 577f)))))), _wgslsmith_dot_vec4_i32(vec4<i32>(-73945i, i32(-1i) * -2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, arg_2.b, 30620i, arg_2.b), vec4<i32>(arg_0.d.a.b.x, -2147483647i, arg_2.c, arg_0.c)), arg_2.d.a.b.x), -vec4<i32>(arg_0.d.a.b.x, u_input.a.x, -3878i, u_input.a.x)) >> (~73369u % 32u));
    let var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1538f)));
    var var_2 = Struct_1(arg_2.b < 1i, ~(-(~var_0.b.b)), ~(~(~(~26687u))), !(true & (-1000f <= _wgslsmith_f_op_f32(arg_0.d.b.x * -252f))));
    var var_3 = ~abs(min(_wgslsmith_add_vec2_u32(arg_1.zz, vec2<u32>(47977u, arg_1.x)), min(vec2<u32>(var_0.b.c, arg_2.d.c), vec2<u32>(var_2.c, 6895u)))) ^ vec2<u32>(var_0.a.x | countOneBits(~1u), _wgslsmith_div_u32(~(~arg_0.d.a.c), ~reverseBits(84763u)));
    var_2 = Struct_1(true, ~_wgslsmith_add_vec2_i32(abs(abs(var_0.b.b)), -vec2<i32>(2147483647i, -14293i) ^ vec2<i32>(arg_2.d.a.b.x, u_input.a.x)), abs(~var_3.x & ~62008u) << (~abs(60843u) % 32u), arg_2.d.d);
    return vec3<bool>(false, all(vec4<bool>(true, true, var_2.a, 397f > _wgslsmith_f_op_f32(sign(-864f)))), arg_0.a);
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_4, arg_2: bool) -> u32 {
    let var_0 = reverseBits(vec2<i32>(max(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, arg_1.d), vec2<i32>(u_input.a.x, -8775i)), arg_1.b.b.x), abs(~(-25954i))) & -_wgslsmith_clamp_vec2_i32(select(arg_1.b.b, vec2<i32>(u_input.a.x, arg_1.d), false), u_input.a.yz, vec2<i32>(40095i, arg_1.b.b.x)));
    var var_1 = Struct_4(vec2<u32>(~0u, ~arg_1.a.x), arg_1.b, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(arg_1.a.x, 22u)])))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1168f * -1319f))), -402f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_1.c.x))), _wgslsmith_div_f32(580f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.c.x, -419f)))), -u_input.a.x);
    var var_2 = select(1u > firstTrailingBit(arg_1.b.c), any(!select(vec4<bool>(true, arg_1.b.d, var_1.b.d, false), !vec4<bool>(arg_2, arg_2, arg_2, false), true)), true);
    let var_3 = global0[_wgslsmith_index_u32(91227u, 22u)] < arg_1.c.x;
    var_2 = var_3 | (_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(arg_1.c.x)))) < _wgslsmith_div_f32(1593f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.c.x) * -818f)));
    return ~var_1.a.x;
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: i32) -> bool {
    var var_0 = arg_1.a.b.x;
    var var_1 = func_4(select(func_3(Struct_3(!arg_1.d, -u_input.a.x, arg_2, Struct_2(arg_1.a, vec2<f32>(-656f, arg_1.b.x), 1u, arg_1.d)), firstTrailingBit(~vec3<u32>(0u, arg_0.x, arg_1.a.c)), Struct_3(true, arg_1.a.b.x, -arg_1.a.b.x, arg_1)), vec3<bool>(false, arg_1.a.d, true), any(vec2<bool>(any(vec3<bool>(arg_1.a.d, false, false)), true))), Struct_4(vec2<u32>(~4294967295u, arg_1.a.c << (~65839u % 32u)), arg_1.a, vec4<f32>(_wgslsmith_f_op_f32(641f + _wgslsmith_f_op_f32(arg_1.b.x * arg_1.b.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_1.b.x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(-474f, 1260f)), _wgslsmith_f_op_f32(arg_1.b.x + global0[_wgslsmith_index_u32(39532u, 22u)]))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1412f, global0[_wgslsmith_index_u32(46745u, 22u)]) - global0[_wgslsmith_index_u32(~arg_1.a.c, 22u)])), _wgslsmith_mult_i32(max(-u_input.a.x, abs(arg_1.a.b.x)), arg_2)), true);
    global0 = array<f32, 22>();
    var var_2 = Struct_1(all(!func_3(Struct_3(true, arg_1.a.b.x, -45919i, arg_1), ~vec3<u32>(arg_1.a.c, arg_1.c, arg_1.a.c), Struct_3(true, arg_1.a.b.x, u_input.a.x, arg_1))), -(vec2<i32>(-1i) * -_wgslsmith_add_vec2_i32(u_input.a.yz, arg_1.a.b)), 1u >> (_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, arg_0.x, arg_0.x) & vec3<u32>(18689u, arg_0.x, 4294967295u), vec3<u32>(arg_0.x, arg_1.a.c, arg_0.x)), arg_0.x ^ abs(arg_1.c)) % 32u), all(vec2<bool>(any(!vec4<bool>(arg_1.a.a, arg_1.d, arg_1.d, arg_1.d)), false)));
    var var_3 = Struct_2(arg_1.a, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_1.b - _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.b.x, -256f)))))), 1u, false);
    return var_3.d;
}

fn func_5(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: Struct_4) -> u32 {
    let var_0 = arg_2.c.zx;
    var var_1 = arg_2;
    var var_2 = ~_wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(var_1.d, arg_0.b.x, var_1.b.b.x, arg_1.x), vec4<i32>(u_input.a.x, -55502i, 0i, 15051i)), _wgslsmith_mult_vec4_i32(vec4<i32>(arg_1.x, 30242i, arg_2.d, arg_2.b.b.x), vec4<i32>(0i, var_1.d, -36427i, arg_0.b.x))), -reverseBits(vec4<i32>(arg_1.x, arg_2.d, 1i, u_input.a.x))) << (vec4<u32>(_wgslsmith_mod_u32(~arg_0.c, _wgslsmith_mult_u32(arg_2.a.x, var_1.a.x)) & 1u, _wgslsmith_div_u32(16485u, arg_0.c), 25979u, 4294967295u) % vec4<u32>(32u));
    var var_3 = abs(vec4<u32>(_wgslsmith_div_u32(var_1.a.x, ~4294967295u), abs(_wgslsmith_dot_vec2_u32(vec2<u32>(10920u, var_1.a.x), vec2<u32>(8784u, 85451u))), max(~4110u, var_1.a.x), reverseBits(min(var_1.b.c, arg_0.c)))) >> (abs(vec4<u32>(~(~var_1.b.c), arg_0.c, select(8586u << (arg_0.c % 32u), arg_0.c, var_1.d >= 0i), var_1.b.c)) % vec4<u32>(32u));
    var_2 = -abs(vec4<i32>(_wgslsmith_dot_vec3_i32(-u_input.a, vec3<i32>(var_1.d, var_1.d, u_input.a.x)), _wgslsmith_mod_i32(0i, -arg_1.x), abs(arg_1.x), arg_0.b.x));
    return 0u;
}

fn func_1() -> Struct_2 {
    var var_0 = _wgslsmith_mod_u32(abs(~select(25735u, 68670u, true)) | 1u, func_5(Struct_1(!func_2(vec2<u32>(9607u, 4294967295u), Struct_2(Struct_1(true, u_input.a.yz, 4294967295u, false), vec2<f32>(-145f, -660f), 0u, true), -1i), u_input.a.xz, ~4294967295u, true), reverseBits(u_input.a & _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a.x, -12022i, u_input.a.x), u_input.a, u_input.a)), Struct_4(~max(vec2<u32>(4294967295u, 1u), vec2<u32>(0u, 0u)), Struct_1(true, vec2<i32>(6783i, -1i), 27680u, true), vec4<f32>(-1618f, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 22u)] - 232f), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(58826u, 22u)]), _wgslsmith_div_f32(338f, global0[_wgslsmith_index_u32(0u, 22u)])), 1i)));
    global0 = array<f32, 22>();
    var_0 = _wgslsmith_mod_u32(firstTrailingBit(~1u), 4294967295u) & 29329u;
    var_0 = 4294967295u;
    var var_1 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(638f)), 708f, -645f) + vec3<f32>(global0[_wgslsmith_index_u32(~56830u, 22u)], _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 22u)]), _wgslsmith_div_f32(global0[_wgslsmith_index_u32(0u, 22u)], -453f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(67286u, 22u)], global0[_wgslsmith_index_u32(4294967295u, 22u)]), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 22u)]), -837f) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(67920u, 22u)], global0[_wgslsmith_index_u32(24312u, 22u)], -737f) - vec3<f32>(global0[_wgslsmith_index_u32(52909u, 22u)], 839f, -336f)) - vec3<f32>(1577f, global0[_wgslsmith_index_u32(60997u, 22u)], -943f))) * vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1524f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 22u)]), 1000f)), _wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(abs(0u), 22u)]))))));
    return Struct_2(Struct_1((_wgslsmith_f_op_f32(-533f * var_1.x) == -1000f) || false, vec2<i32>(u_input.a.x, _wgslsmith_clamp_i32(-14490i, 0i, ~u_input.a.x)), _wgslsmith_clamp_u32(1u, 1u, ~109895u), func_3(Struct_3(false, u_input.a.x, 1i, Struct_2(Struct_1(true, vec2<i32>(u_input.a.x, 0i), 1u, true), vec2<f32>(var_1.x, -391f), 10314u, true)), ~vec3<u32>(1u, 20840u, 11715u), Struct_3(false, u_input.a.x, -2993i, Struct_2(Struct_1(false, vec2<i32>(-1i, -27177i), 0u, false), var_1.zy, 0u, false))).x && (-413f != _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(64850u, 22u)] * var_1.x))), _wgslsmith_f_op_vec2_f32(var_1.zx + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, var_1.x) + var_1.yx), _wgslsmith_f_op_vec2_f32(-var_1.yz), false)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(var_1.yz - vec2<f32>(-890f, 2062f)), _wgslsmith_f_op_vec2_f32(-var_1.zx), select(vec2<bool>(false, false), vec2<bool>(true, false), true))))), firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(60384u, 14336u, 26431u)) | ~(~1u)), func_2(abs(vec2<u32>(max(15785u, 4294967295u), ~104721u)), Struct_2(Struct_1(true, vec2<i32>(u_input.a.x, u_input.a.x), func_5(Struct_1(true, vec2<i32>(u_input.a.x, -30029i), 16017u, false), vec3<i32>(1i, u_input.a.x, u_input.a.x), Struct_4(vec2<u32>(0u, 1u), Struct_1(true, vec2<i32>(-36140i, u_input.a.x), 34525u, false), vec4<f32>(var_1.x, -1300f, global0[_wgslsmith_index_u32(141250u, 22u)], 374f), u_input.a.x)), all(vec4<bool>(false, true, false, true))), var_1.xz, _wgslsmith_mult_u32(select(4294967295u, 4204u, false), 1u), true), -15611i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -148f;
    let var_1 = func_1();
    var var_2 = !var_1.d;
    var var_3 = _wgslsmith_f_op_f32(var_1.b.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_div_f32(-1000f, var_0), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(37854u, 22u)] - -1075f))))));
    var_2 = func_2(~(~abs(~vec2<u32>(63969u, 1u))), func_1(), -var_1.a.b.x);
    var_3 = _wgslsmith_f_op_f32(f32(-1f) * -456f);
    let var_4 = _wgslsmith_clamp_i32(reverseBits(u_input.a.x), var_1.a.b.x, (_wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(u_input.a.x, var_1.a.b.x, u_input.a.x, var_1.a.b.x)), vec4<i32>(9016i, u_input.a.x, -2147483647i, u_input.a.x) | vec4<i32>(var_1.a.b.x, var_1.a.b.x, -12602i, u_input.a.x)) << (_wgslsmith_add_u32(firstTrailingBit(var_1.c), ~var_1.c) % 32u)) << (_wgslsmith_mult_u32(var_1.c, ~_wgslsmith_sub_u32(4294967295u, var_1.c)) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(global0[_wgslsmith_index_u32(~firstLeadingBit(var_1.c) & ~_wgslsmith_sub_u32(var_1.c, var_1.c), 22u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(6827u, 22u)]))))));
}

