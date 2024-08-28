struct Struct_1 {
    a: vec4<bool>,
    b: vec2<i32>,
    c: bool,
    d: vec2<u32>,
    e: f32,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 4>;

var<private> global1: vec3<u32>;

var<private> global2: Struct_1 = Struct_1(vec4<bool>(false, true, false, true), vec2<i32>(44893i, 2147483647i), true, vec2<u32>(4294967295u, 4294967295u), 314f);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: bool, arg_2: Struct_1, arg_3: vec2<f32>) -> vec2<i32> {
    var var_0 = _wgslsmith_add_vec3_u32(firstLeadingBit(~(~(vec3<u32>(72323u, u_input.c.x, 48899u) << (vec3<u32>(arg_2.d.x, arg_2.d.x, arg_2.d.x) % vec3<u32>(32u))))), vec3<u32>(select(~(~0u), _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(global2.d.x, global2.d.x), global2.d), ~u_input.c), global2.a.x), countOneBits(~0u), 25034u));
    let var_1 = Struct_2(-((vec2<i32>(arg_2.b.x, arg_2.b.x) << (var_0.xx % vec2<u32>(32u))) ^ -(~global2.b)));
    var var_2 = any(select(!select(global2.a.zyz, !global2.a.wxx, true), global2.a.yxx, any(!(!arg_2.a.wyy))));
    let var_3 = var_1;
    global1 = ~(~_wgslsmith_sub_vec3_u32(~(~vec3<u32>(38991u, global2.d.x, 1u)), vec3<u32>(1u, _wgslsmith_mod_u32(arg_0, 19725u), 1u)));
    return ~arg_2.b;
}

fn func_2() -> vec3<u32> {
    global1 = _wgslsmith_add_vec3_u32(~(~(vec3<u32>(global1.x, global1.x, 24252u) >> ((vec3<u32>(global1.x, global2.d.x, 48996u) >> (vec3<u32>(27122u, global2.d.x, 72981u) % vec3<u32>(32u))) % vec3<u32>(32u)))), vec3<u32>(u_input.c.x, ~1u, 1u) >> (_wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(global2.d.x, global1.x, 53769u), _wgslsmith_clamp_vec3_u32(vec3<u32>(54167u, u_input.d, 23352u), vec3<u32>(global1.x, u_input.d, 52401u), vec3<u32>(u_input.d, 4294967295u, global1.x))), ~_wgslsmith_add_vec3_u32(vec3<u32>(41888u, 1u, u_input.c.x), vec3<u32>(15151u, global1.x, global1.x))) % vec3<u32>(32u)));
    let var_0 = Struct_1(global2.a, ~select(func_3(~1u, global2.c && global2.c, Struct_1(global2.a, vec2<i32>(u_input.a, global2.b.x), global2.a.x, global2.d, -526f), vec2<f32>(global2.e, global2.e)), vec2<i32>(~u_input.a, ~u_input.b.x), select(global2.a.zy, !vec2<bool>(false, global2.a.x), vec2<bool>(false, global2.a.x))), false, u_input.c | ~global2.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.e * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1000f + -1000f))))));
    var var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.e, -1000f, 776f, 1723f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(2473f, 2038f, global2.e, -583f) * vec4<f32>(911f, 1788f, 283f, -297f)))))), vec4<f32>(_wgslsmith_div_f32(global2.e, var_0.e), _wgslsmith_f_op_f32(min(global2.e, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.e, -440f) + 712f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global2.e, global2.e)) - 2066f))), -1359f));
    let var_2 = any(var_0.a);
    let var_3 = _wgslsmith_div_vec3_i32((-(~vec3<i32>(global2.b.x, -15458i, u_input.b.x)) >> (abs(vec3<u32>(u_input.d, 4294967295u, global1.x) ^ vec3<u32>(0u, 3825u, var_0.d.x)) % vec3<u32>(32u))) << (vec3<u32>((global1.x ^ 5193u) | _wgslsmith_dot_vec2_u32(vec2<u32>(68843u, 34769u), u_input.c), global1.x, 4294967295u) % vec3<u32>(32u)), ~_wgslsmith_add_vec3_i32(vec3<i32>(u_input.b.x, -2147483647i, ~2147483647i), u_input.b.xzx));
    return ~(~(~max(vec3<u32>(global1.x, 61908u, 29524u) >> (vec3<u32>(global1.x, 61230u, 18523u) % vec3<u32>(32u)), reverseBits(vec3<u32>(u_input.d, 46502u, 4294967295u)))));
}

fn func_1(arg_0: i32, arg_1: bool) -> Struct_2 {
    global1 = _wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(reverseBits(_wgslsmith_mod_vec3_u32(vec3<u32>(global1.x, u_input.d, 4294967295u), vec3<u32>(global1.x, 0u, 15903u))), ~vec3<u32>(global2.d.x, global1.x, 0u)) & vec3<u32>(select(~0u, ~u_input.d, arg_1), ~(~45224u), _wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, global1.x, 73057u, global2.d.x), ~global0[_wgslsmith_index_u32(global2.d.x, 4u)])), func_2());
    var var_0 = u_input.c;
    var var_1 = vec2<i32>(-1i, 36929i >> (global2.d.x % 32u));
    var var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.e, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1816f)) - _wgslsmith_f_op_f32(-global2.e)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.e), _wgslsmith_f_op_f32(abs(global2.e))), _wgslsmith_f_op_f32(exp2(global2.e))) + vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(-571f, global2.e)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global2.e), 1085f)))), 672f, _wgslsmith_f_op_f32(-3686f + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(-1912f)), _wgslsmith_f_op_f32(select(global2.e, -253f, false))))), global2.e));
    global2 = Struct_1(select(!(!select(global2.a, global2.a, vec4<bool>(false, false, global2.a.x, true))), vec4<bool>(global2.a.x, global2.c, true, true), true), ~(min(u_input.b.xy, select(global2.b, global2.b, false)) ^ _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b.x, u_input.b.x), vec2<i32>(var_1.x, arg_0))), true, u_input.c, -817f);
    return Struct_2(vec2<i32>(-min(13200i, select(-2147483647i, -2147483647i, false)), _wgslsmith_clamp_i32(_wgslsmith_add_i32(_wgslsmith_div_i32(var_1.x, -49767i), u_input.a), max(1i, var_1.x), var_1.x)));
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: vec4<u32>, arg_3: vec3<f32>) -> vec2<i32> {
    global0 = array<vec4<u32>, 4>();
    var var_0 = select(!select(!select(global2.a, global2.a, global2.a), !global2.a, all(select(global2.a.yx, vec2<bool>(global2.c, global2.a.x), false))), vec4<bool>(global2.a.x, true, false, global2.a.x), true);
    global2 = Struct_1(select(vec4<bool>(all(!vec3<bool>(global2.c, true, true)), var_0.x, !var_0.x | false, global2.a.x | any(global2.a)), vec4<bool>(any(vec2<bool>(false, true)), true, true, global2.e < _wgslsmith_f_op_f32(arg_3.x * arg_3.x)), select(vec4<bool>(var_0.x, all(vec4<bool>(true, false, true, true)), !global2.c, all(global2.a.ww)), global2.a, select(!vec4<bool>(global2.a.x, false, false, false), global2.a, !global2.c))), vec2<i32>(-1i) * -_wgslsmith_add_vec2_i32(vec2<i32>(47920i, u_input.b.x), global2.b), var_0.x, firstTrailingBit(_wgslsmith_add_vec2_u32(~u_input.c, ~(vec2<u32>(u_input.c.x, 4294967295u) & vec2<u32>(global2.d.x, global2.d.x)))), 1446f);
    var_0 = vec4<bool>(true | var_0.x, !all(var_0.yxw) | all(global2.a.zx), var_0.x, all(vec2<bool>(!var_0.x && (global2.e <= 332f), false)));
    let var_1 = vec3<bool>((global2.c && global2.c) || all(vec2<bool>(var_0.x, !var_0.x)), true, var_0.x);
    return select(u_input.b.xw, vec2<i32>(~51364i, -_wgslsmith_clamp_i32(_wgslsmith_add_i32(-7320i, 43860i), _wgslsmith_mult_i32(global2.b.x, -2147483647i), -51888i)), select(vec2<bool>(true, all(!vec4<bool>(true, var_1.x, false, global2.a.x))), select(select(var_1.xz, !var_1.yx, var_0.x), select(vec2<bool>(var_0.x, global2.a.x), vec2<bool>(var_1.x, false), false), !(var_1.x & true)), true));
}

fn func_5(arg_0: Struct_2, arg_1: u32, arg_2: Struct_1, arg_3: f32) -> Struct_1 {
    global2 = Struct_1(arg_2.a, vec2<i32>(select(u_input.a, _wgslsmith_add_i32(13262i, 3240i), arg_2.c), -75262i), global2.a.x, global1.zy, _wgslsmith_f_op_f32(global2.e + _wgslsmith_f_op_f32(-arg_3)));
    global1 = countOneBits(_wgslsmith_mod_vec3_u32(reverseBits(~vec3<u32>(arg_2.d.x, arg_2.d.x, u_input.c.x)), ~(_wgslsmith_add_vec3_u32(vec3<u32>(1u, arg_2.d.x, u_input.c.x), vec3<u32>(64934u, arg_1, arg_1)) & ~vec3<u32>(arg_1, arg_1, arg_1))));
    let var_0 = arg_2.a.zxy;
    var var_1 = abs(-vec3<i32>(12216i >> (_wgslsmith_clamp_u32(4496u, 0u, global1.x) % 32u), func_4(Struct_2(arg_2.b), ~u_input.b.x, _wgslsmith_mod_vec4_u32(vec4<u32>(global2.d.x, 0u, arg_1, arg_1), vec4<u32>(arg_1, 1u, global1.x, global1.x)), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(2623f, global2.e, arg_2.e)))).x, select(61087i, u_input.a | -2147483647i, global2.c)));
    var var_2 = _wgslsmith_f_op_f32(-arg_2.e);
    return Struct_1(global2.a, abs(vec2<i32>(firstLeadingBit(-u_input.b.x), -2147483647i & u_input.b.x)), !(!(!(false || arg_2.c))), reverseBits(~(~u_input.c) & (~u_input.c >> (~u_input.c % vec2<u32>(32u)))), _wgslsmith_f_op_f32(arg_2.e * _wgslsmith_f_op_f32(-global2.e)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<u32>, 4>();
    var var_0 = ~(~global2.b.x) << (u_input.d % 32u);
    var var_1 = 84587u;
    var var_2 = _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1091f), 789f)), -317f, global2.e), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(min(1000f, 1123f)), -865f, _wgslsmith_f_op_f32(f32(-1f) * -1347f)), vec3<f32>(-1958f, _wgslsmith_f_op_f32(-global2.e), 1128f), global2.a.wwz)))));
    var var_3 = global2.a.x || global2.a.x;
    var_0 = _wgslsmith_dot_vec2_i32(~countOneBits(vec2<i32>(u_input.b.x, u_input.b.x) | firstLeadingBit(vec2<i32>(global2.b.x, -21670i))), ~abs(-u_input.b.yz & vec2<i32>(global2.b.x, -2147483647i)));
    var var_4 = Struct_2(_wgslsmith_sub_vec2_i32(global2.b, _wgslsmith_clamp_vec2_i32(-vec2<i32>(45809i, u_input.b.x), vec2<i32>(-50377i, -2147483647i), vec2<i32>(global2.b.x, u_input.b.x))));
    global2 = func_5(Struct_2(func_4(func_1(_wgslsmith_mod_i32(var_4.a.x, u_input.b.x), u_input.c.x < global1.x), _wgslsmith_add_i32(1i, var_4.a.x) << (_wgslsmith_clamp_u32(35303u, 18788u, 46457u) % 32u), vec4<u32>(_wgslsmith_sub_u32(global2.d.x, 98174u), 1u, _wgslsmith_div_u32(31850u, global2.d.x), u_input.d), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-597f, -1235f, global2.e)))))), _wgslsmith_sub_u32(41832u, _wgslsmith_mod_u32(global1.x, 1u)), Struct_1(!(!select(global2.a, vec4<bool>(true, true, false, false), true)), vec2<i32>(global2.b.x, select(1i, 11989i, true)), true, _wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.c.x, 0u), ~u_input.c), vec2<u32>(58037u, ~global2.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-170f)))), var_2.x);
    let var_5 = vec4<i32>(0i, func_4(func_1(min(global2.b.x, -2147483647i) << (26492u % 32u), true), _wgslsmith_div_i32(23485i, global2.b.x), ~global0[_wgslsmith_index_u32(~18694u, 4u)], _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.e, 513f, global2.e)), vec3<f32>(var_2.x, 1081f, var_2.x)))).x, _wgslsmith_div_i32(u_input.a, ~(~(~2147483647i))), ~(~max(var_4.a.x, var_4.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.x, vec4<u32>(_wgslsmith_div_u32(~min(0u, global2.d.x), ~global2.d.x | min(4294967295u, 0u)), _wgslsmith_sub_u32(abs(global2.d.x) | global1.x, select(_wgslsmith_clamp_u32(1u, global1.x, 4294967295u), max(4294967295u, 4294967295u), true)), 19418u, ~37893u), _wgslsmith_f_op_f32(global2.e + _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(var_2.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f), global2.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.e)))));
}

