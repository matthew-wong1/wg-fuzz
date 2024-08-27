struct Struct_1 {
    a: f32,
    b: bool,
    c: i32,
    d: bool,
    e: vec4<bool>,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: Struct_1,
    d: Struct_1,
    e: vec4<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<u32>,
    c: u32,
    d: Struct_1,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec2<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: vec3<f32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 435f;

var<private> global1: Struct_2 = Struct_2(false, -6571i, Struct_1(1195f, true, -5827i, false, vec4<bool>(true, false, true, false)), Struct_1(1117f, true, 1i, false, vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, false));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3() -> u32 {
    global0 = 2735f;
    let var_0 = Struct_3(Struct_2(true, -574i, global1.c, global1.d, vec4<bool>(global1.d.d, all(vec4<bool>(global1.e.x, global1.a, false, true)), global1.a, true)), vec3<u32>(~u_input.e.x ^ 104186u, ~(~u_input.d.x) >> (((u_input.d.x >> (47974u % 32u)) ^ ~129491u) % 32u), _wgslsmith_div_u32(_wgslsmith_clamp_u32(29788u, _wgslsmith_add_u32(1u, 1u), ~1u), ~14577u)), 31313u, Struct_1(-613f, select(global1.c.c >= 2147483647i, !global1.a, true) == !(55532u != u_input.d.x), global1.c.c, all(vec3<bool>(global1.c.e.x && true, false, !global1.d.e.x)), select(!(!vec4<bool>(false, global1.a, global1.d.b, false)), select(global1.d.e, vec4<bool>(global1.e.x, global1.d.b, true, global1.c.b), vec4<bool>(false, false, global1.d.b, true)), select(select(vec4<bool>(false, global1.d.b, false, global1.d.b), vec4<bool>(global1.a, false, false, global1.c.b), true), select(global1.d.e, vec4<bool>(true, global1.a, global1.a, true), vec4<bool>(false, global1.c.d, global1.e.x, global1.d.b)), global1.c.e))), countOneBits(u_input.c));
    let var_1 = var_0.a;
    var var_2 = global1.d;
    let var_3 = _wgslsmith_f_op_f32(var_0.d.a - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(global1.d.a)))))));
    return ~(~_wgslsmith_dot_vec2_u32(~var_0.b.xy, u_input.e.zy));
}

fn func_2(arg_0: vec4<bool>, arg_1: u32, arg_2: vec2<bool>) -> Struct_1 {
    let var_0 = _wgslsmith_add_u32(~(~_wgslsmith_div_u32(1u, func_3())), 0u);
    global1 = Struct_2(all(vec4<bool>(true, !(!arg_2.x), true, any(select(vec3<bool>(true, arg_0.x, arg_2.x), vec3<bool>(false, arg_2.x, false), vec3<bool>(arg_0.x, true, arg_2.x))))), -global1.d.c, Struct_1(437f, true, 0i, !global1.a, arg_0), Struct_1(global1.d.a, true, 39888i, arg_2.x, vec4<bool>(arg_2.x, global1.e.x, false, global1.d.b)), vec4<bool>(arg_2.x, false, all(vec4<bool>(false, false, true, arg_0.x)) && false, true));
    global1 = Struct_2(true, reverseBits(_wgslsmith_mult_i32(_wgslsmith_mod_i32(u_input.b, 96543i), -7925i) | -25933i), global1.d, global1.d, select(!select(vec4<bool>(arg_2.x, true, false, false), select(vec4<bool>(false, true, true, global1.a), global1.d.e, false), 1003f <= global1.c.a), arg_0, vec4<bool>(!(arg_0.x | false), global1.c.b, arg_0.x, false)));
    global1 = Struct_2(any(!select(!global1.c.e.zy, select(arg_2, vec2<bool>(global1.a, false), arg_2), select(vec2<bool>(arg_2.x, true), vec2<bool>(global1.a, true), arg_0.x))), abs(u_input.c << (0u % 32u)), Struct_1(global1.d.a, any(!(!arg_2)), global1.c.c, _wgslsmith_f_op_f32(-204f + global1.d.a) >= global1.d.a, global1.c.e), Struct_1(-548f, arg_0.x, _wgslsmith_sub_i32(u_input.c, 30847i), false && (false | (arg_0.x & arg_2.x)), vec4<bool>(any(vec4<bool>(global1.d.d, true, true, false)), arg_2.x, true, !(1u <= var_0))), !global1.e);
    let var_1 = Struct_3(Struct_2(true, reverseBits(-22864i), global1.c, global1.d, select(vec4<bool>(true, false, true & arg_2.x, any(vec2<bool>(global1.a, arg_0.x))), select(select(vec4<bool>(true, true, arg_2.x, true), arg_0, arg_0.x), select(vec4<bool>(global1.e.x, false, arg_2.x, false), vec4<bool>(arg_0.x, arg_0.x, true, global1.d.b), global1.d.b), !global1.d.e), _wgslsmith_clamp_u32(arg_1, arg_1, var_0) > _wgslsmith_mult_u32(arg_1, 82332u))), max(firstTrailingBit(max(vec3<u32>(u_input.e.x, 1u, 0u), vec3<u32>(26993u, var_0, u_input.d.x) << (u_input.e.zwy % vec3<u32>(32u)))), _wgslsmith_add_vec3_u32(~_wgslsmith_mod_vec3_u32(u_input.e.zxz, vec3<u32>(24120u, u_input.e.x, var_0)), vec3<u32>(_wgslsmith_div_u32(arg_1, arg_1), arg_1, 1u))), ~max(arg_1, arg_1), global1.c, ~12870i | _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(-24987i, -1i, -39775i), vec3<i32>(1i, -23906i, u_input.c)), abs(vec3<i32>(-2147483647i, 2147483647i, 0i))), -abs(vec3<i32>(-21815i, 1i, -1i))));
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(803f)))))), any(!(!select(vec3<bool>(true, true, false), vec3<bool>(arg_0.x, arg_0.x, true), false))), i32(-1i) * -(i32(-1i) * -1i), any(!vec4<bool>(arg_0.x, false, false, true)) && (1336f != global1.d.a), vec4<bool>(global1.d.b, any(vec4<bool>(!var_1.a.c.b, arg_0.x, global1.d.e.x, all(arg_0.xxx))), all(vec2<bool>(4294967295u == u_input.e.x, !arg_2.x)), abs(firstLeadingBit(global1.d.c)) < -37378i));
}

fn func_1() -> Struct_2 {
    var var_0 = vec4<f32>(247f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -512f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -476f), _wgslsmith_f_op_f32(269f + _wgslsmith_f_op_f32(119f * _wgslsmith_f_op_f32(-768f * global1.d.a)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(-224f)))))));
    var_0 = vec4<f32>(1421f, 242f, global1.d.a, -976f);
    var var_1 = func_2(!global1.c.e, countOneBits(u_input.d.x), !select(global1.d.e.yz, vec2<bool>(!global1.e.x, global1.e.x), global1.d.e.zw));
    global0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(139f, var_1.a))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.d.a + _wgslsmith_f_op_f32(f32(-1f) * -1213f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -102f) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(var_1.a)), _wgslsmith_f_op_f32(min(var_1.a, 1889f)))))), var_1.b));
    let var_2 = Struct_3(Struct_2(true, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 2147483647i, ~global1.c.c, ~global1.d.c), firstTrailingBit(vec4<i32>(-1i, var_1.c, u_input.c, 0i))), func_2(select(var_1.e, !vec4<bool>(true, false, false, var_1.d), all(vec2<bool>(false, true))), ~u_input.e.x, vec2<bool>(!var_1.b, true)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.d.a * var_1.a) - 1f), false, global1.c.c, !global1.e.x, !var_1.e), vec4<bool>(any(vec4<bool>(global1.e.x, true, true, var_1.b)), all(!var_1.e.xxy), var_1.e.x, global1.d.e.x)), ~(select(_wgslsmith_sub_vec3_u32(vec3<u32>(1u, 44921u, u_input.d.x), vec3<u32>(4294967295u, 46266u, 1u)), ~u_input.e.wxx, select(global1.c.b, true, false)) ^ ~(~vec3<u32>(4294967295u, u_input.e.x, 3556u))), ~u_input.e.x, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.a - global1.d.a), var_1.a)), var_1.b, u_input.a, true, !(!global1.d.e)), ~(~(12456i << (_wgslsmith_dot_vec4_u32(u_input.e, vec4<u32>(u_input.d.x, 1u, u_input.d.x, u_input.d.x)) % 32u))));
    return var_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global1 = func_1();
    global1 = var_0;
    let var_1 = u_input.e.x;
    global1 = var_0;
    let var_2 = Struct_3(var_0, ~(~(~(~vec3<u32>(1u, u_input.e.x, u_input.e.x)))), _wgslsmith_add_u32(u_input.e.x, ~(~var_1 ^ 33628u)), var_0.c, var_0.d.c);
    global1 = Struct_2(false, i32(-1i) * -2147483647i, func_2(!select(global1.c.e, vec4<bool>(var_0.c.e.x, global1.c.d, true, true), false), 4294967295u, func_2(var_2.d.e, ~var_2.c, !(!vec2<bool>(global1.c.e.x, false))).e.xz), Struct_1(_wgslsmith_div_f32(func_2(vec4<bool>(var_0.d.d, false, false, global1.d.d), ~var_2.c, !global1.d.e.zy).a, 595f), any(global1.c.e) == true, ~firstTrailingBit(firstTrailingBit(1i)), all(!select(global1.e, vec4<bool>(true, false, true, true), var_2.a.c.e)), vec4<bool>(true, true, true, true)), func_2(func_2(select(select(vec4<bool>(true, var_2.a.d.b, var_2.a.a, global1.a), var_0.e, var_0.d.e), !vec4<bool>(global1.a, var_2.a.a, var_0.d.d, var_2.d.d), !var_2.d.d), abs(4294967295u | var_2.c), var_0.e.yx).e, var_2.c, select(!var_2.d.e.xw, var_0.e.ww, var_2.a.e.xw)).e);
    let var_3 = var_2.b;
    var var_4 = vec2<f32>(264f, global1.c.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_4.x * 701f) * _wgslsmith_f_op_f32(global1.d.a - var_4.x)), vec2<u32>(~var_1, ~(1u << (var_1 % 32u))), _wgslsmith_f_op_vec3_f32(vec3<f32>(func_1().d.a, global1.c.a, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.d.a), 1152f, !global1.a))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(996f, var_0.c.a, var_2.d.a)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-396f, var_2.d.a, var_0.d.a) + vec3<f32>(-1155f, var_4.x, 1000f)), select(global1.d.e.wwx, vec3<bool>(false, true, false), global1.d.e.wwx))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_4.x, var_0.c.a, 1070f) * vec3<f32>(var_0.c.a, -1409f, var_0.c.a))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1997f, global1.c.a, var_2.a.c.a, var_4.x), vec4<f32>(var_0.d.a, 903f, var_2.d.a, global1.d.a)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -124f, 447f, -826f))) - vec4<f32>(var_0.c.a, _wgslsmith_f_op_f32(min(var_0.c.a, global1.c.a)), _wgslsmith_f_op_f32(1055f + 1332f), _wgslsmith_f_op_f32(round(-1014f))))));
}

