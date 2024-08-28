struct Struct_1 {
    a: f32,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: Struct_1,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec2<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(-1000f, -1235i), vec2<u32>(10113u, 4294967295u), Struct_1(641f, 2147483647i), vec2<f32>(-174f, -1234f));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: vec2<i32>) -> f32 {
    let var_0 = Struct_2(global0.c, vec2<u32>(u_input.e, global0.b.x), Struct_1(_wgslsmith_f_op_f32(min(global0.a.a, _wgslsmith_f_op_f32(arg_1.a - _wgslsmith_f_op_f32(-184f * 1261f)))), -31394i), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(global0.d))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(global0.d))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.d.x, -1943f) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0.d.x, -1008f), global0.d, vec2<bool>(true, true)))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 2355f) + _wgslsmith_f_op_vec2_f32(exp2(global0.d))))));
    var var_1 = true;
    var var_2 = var_0.a.a;
    var var_3 = var_0;
    var var_4 = ~4294967295u;
    return var_3.d.x;
}

fn func_2(arg_0: vec3<i32>, arg_1: vec4<u32>, arg_2: bool) -> Struct_1 {
    let var_0 = arg_0.yx;
    var var_1 = Struct_1(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(func_3(vec4<i32>(max(global0.c.b, u_input.b.x), -var_0.x, -14434i, ~(-34608i)), global0.a, u_input.b.yw))), -2147483647i ^ -_wgslsmith_div_i32(2147483647i, _wgslsmith_sub_i32(32114i, global0.c.b)));
    global0 = Struct_2(global0.a, vec2<u32>(4294967295u, _wgslsmith_sub_u32(arg_1.x, 1u)), Struct_1(986f, 1i), global0.d);
    var var_2 = global0.a;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-550f - 1299f), -178f));
    return global0.c;
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: bool) -> Struct_1 {
    var var_0 = select(vec4<bool>(!(!(!arg_2)), arg_2, arg_2, all(select(!vec3<bool>(arg_2, true, arg_2), !vec3<bool>(false, arg_2, arg_2), arg_2))), vec4<bool>(all(select(!vec3<bool>(false, arg_2, arg_2), select(vec3<bool>(false, arg_2, arg_2), vec3<bool>(true, true, arg_2), arg_2), select(vec3<bool>(arg_2, arg_2, true), vec3<bool>(false, arg_2, arg_2), true))), all(vec4<bool>(true, arg_2, arg_2, u_input.a.x == u_input.a.x)), any(!vec4<bool>(true, true, arg_2, arg_2)), any(select(vec3<bool>(true, arg_2, true), !vec3<bool>(true, arg_2, false), !arg_2))), vec4<bool>(false, firstLeadingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, arg_0.a.b, u_input.b.x, u_input.b.x), vec4<i32>(arg_1, arg_0.c.b, 0i, -32812i))) > arg_0.c.b, true, true));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.d) - _wgslsmith_f_op_vec2_f32(-arg_0.d)));
    var var_2 = vec3<bool>(any(vec3<bool>(!select(var_0.x, false, false), arg_2, var_0.x | !var_0.x)), arg_2, _wgslsmith_f_op_f32(-1501f * var_1.x) == _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    var_0 = select(vec4<bool>(true, true, true, true), !select(vec4<bool>(arg_2, false, true, true), vec4<bool>(0i <= global0.c.b, !var_0.x, !arg_2, true), all(!vec4<bool>(true, var_0.x, true, true))), !(!(!select(vec4<bool>(false, false, true, true), vec4<bool>(arg_2, var_2.x, true, true), vec4<bool>(arg_2, false, var_2.x, arg_2)))));
    var_0 = !(!vec4<bool>(all(vec3<bool>(var_0.x, var_0.x, var_2.x)), any(!vec4<bool>(false, var_0.x, false, true)), !(!arg_2), var_0.x));
    return func_2(u_input.a, vec4<u32>(firstTrailingBit(firstTrailingBit(firstLeadingBit(u_input.d))), 1u, 9303u, ~_wgslsmith_dot_vec2_u32(u_input.c, vec2<u32>(global0.b.x, global0.b.x)) ^ ~countOneBits(19646u)), !var_2.x);
}

fn func_5(arg_0: bool, arg_1: Struct_2, arg_2: u32) -> Struct_1 {
    global0 = arg_1;
    var var_0 = Struct_2(func_4(Struct_2(func_2(vec3<i32>(1i, -1i, u_input.a.x), ~vec4<u32>(1u, u_input.d, 1u, 1u), arg_0), vec2<u32>(_wgslsmith_div_u32(99980u, arg_2), ~global0.b.x), global0.c, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(abs(global0.d))))), select(_wgslsmith_mod_i32(i32(-1i) * -2147483647i, 2147483647i), reverseBits(-43346i) >> (global0.b.x % 32u), arg_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c.a)) < arg_1.a.a), vec2<u32>(~(~1u), _wgslsmith_dot_vec4_u32(abs(vec4<u32>(78364u, 0u, 0u, 0u)), firstTrailingBit(reverseBits(vec4<u32>(1u, global0.b.x, 28672u, arg_1.b.x))))), arg_1.a, _wgslsmith_div_vec2_f32(arg_1.d, arg_1.d));
    var var_1 = arg_1.d;
    let var_2 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -637f), -u_input.a.x);
    var_1 = arg_1.d;
    return func_2(_wgslsmith_mult_vec3_i32((abs(vec3<i32>(1842i, global0.c.b, u_input.b.x)) >> (vec3<u32>(arg_2, 26256u, 4294967295u) % vec3<u32>(32u))) << (_wgslsmith_div_vec3_u32(vec3<u32>(0u, 35777u, 36807u), vec3<u32>(arg_2, u_input.d, 0u)) % vec3<u32>(32u)), u_input.b.yxw), ~vec4<u32>(_wgslsmith_mod_u32(arg_1.b.x, 0u), 0u, 1u, var_0.b.x) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(var_0.b.x, 0u, 19630u, 1u) >> (vec4<u32>(var_0.b.x, 4294967295u, 4294967295u, arg_1.b.x) % vec4<u32>(32u)), _wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(global0.b.x, 59949u, arg_2, arg_2), vec4<u32>(1u, 4294967295u, 0u, u_input.d)), vec4<u32>(31699u, 1u, arg_2, var_0.b.x) | vec4<u32>(38392u, arg_1.b.x, global0.b.x, global0.b.x))) % vec4<u32>(32u)), !any(vec3<bool>(all(vec4<bool>(arg_0, false, false, arg_0)), any(vec2<bool>(arg_0, arg_0)), arg_0 != arg_0)));
}

fn func_1(arg_0: vec2<i32>, arg_1: i32, arg_2: i32, arg_3: Struct_1) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_3.a))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0.d.x, _wgslsmith_f_op_f32(sign(100f)))))))));
    let var_1 = func_5(!(u_input.d >= u_input.c.x), Struct_2(func_4(Struct_2(func_2(vec3<i32>(arg_2, -2147483647i, 0i), vec4<u32>(u_input.c.x, 26067u, global0.b.x, global0.b.x), true), ~vec2<u32>(global0.b.x, global0.b.x), arg_3, _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.d.x, 533f) + global0.d)), arg_2, !any(vec2<bool>(true, true))), vec2<u32>(26467u, 54227u), arg_3, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0.c.a, 364f), vec2<f32>(1137f, global0.d.x), vec2<bool>(false, true)))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-636f, -1828f)))), ~(~countOneBits(1u)));
    global0 = Struct_2(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_3.a), _wgslsmith_f_op_f32(abs(func_4(Struct_2(Struct_1(694f, global0.c.b), u_input.c, Struct_1(var_0, 0i), vec2<f32>(1857f, 1176f)), 2147483647i, false).a))), ~_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(16540i, var_1.b, global0.c.b), vec3<i32>(-32394i, arg_3.b, u_input.b.x)), -1i >> (u_input.d % 32u))), ~vec2<u32>(global0.b.x, 1u), func_2(vec3<i32>(_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.x, 1548i, 2147483647i, -24990i), vec4<i32>(arg_0.x, arg_0.x, global0.a.b, u_input.b.x)), -1i), _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, arg_2, u_input.b.x, arg_3.b), vec4<i32>(4476i, arg_2, arg_1, arg_3.b)), _wgslsmith_dot_vec4_i32(u_input.b, u_input.b)), _wgslsmith_dot_vec4_i32(-vec4<i32>(1i, 30187i, -20544i, -1i), -vec4<i32>(-21408i, -62695i, 2147483647i, 15489i))), ~min(abs(vec4<u32>(4294967295u, u_input.c.x, 4294967295u, 36267u)), ~vec4<u32>(4294967295u, u_input.d, 4294967295u, 15664u)), !(countOneBits(arg_2) != (i32(-1i) * -1i))), global0.d);
    var var_2 = !vec3<bool>(any(vec2<bool>(true, true)) & !all(vec4<bool>(false, false, false, true)), all(select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false))) | !all(vec3<bool>(false, true, false)), true);
    var var_3 = Struct_2(var_1, global0.b, Struct_1(_wgslsmith_f_op_f32(func_3(u_input.b, global0.c, u_input.a.yy)), 16446i | func_2(vec3<i32>(arg_3.b, var_1.b, -1i) >> (vec3<u32>(global0.b.x, 0u, u_input.d) % vec3<u32>(32u)), select(vec4<u32>(0u, 22858u, 12564u, u_input.d), vec4<u32>(global0.b.x, 9551u, 4294967295u, global0.b.x), false), !var_2.x).b), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(round(global0.d.x)), -825f))))));
    return Struct_2(global0.c, vec2<u32>(abs((global0.b.x | 1u) | 1u), var_3.b.x), Struct_1(-576f, 2147483647i), _wgslsmith_div_vec2_f32(global0.d, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(3069f, arg_3.a) * var_3.d))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-190f, var_0)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_i32(u_input.b.x, ~u_input.a.x);
    var var_1 = func_1(max(_wgslsmith_add_vec2_i32(reverseBits(u_input.b.yx), vec2<i32>(global0.a.b, 2147483647i)) >> (_wgslsmith_add_vec2_u32(~global0.b, vec2<u32>(global0.b.x, global0.b.x)) % vec2<u32>(32u)), vec2<i32>(_wgslsmith_mod_i32(-2147483647i, reverseBits(-2147483647i)), global0.c.b)), 1i, -_wgslsmith_mod_i32(u_input.a.x, countOneBits(25141i)), global0.c);
    var_0 = ~_wgslsmith_mult_i32(10511i, var_1.c.b);
    let var_2 = func_1(u_input.a.yx, 656i, global0.c.b, Struct_1(-288f, u_input.a.x));
    let var_3 = true;
    var var_4 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -420f), var_1.c.b);
    var_0 = ~(-1i) << ((var_2.b.x & ~_wgslsmith_clamp_u32(var_1.b.x, var_1.b.x, ~0u)) % 32u);
    let var_5 = _wgslsmith_mult_vec2_u32(~vec2<u32>(u_input.c.x, 6772u), ~reverseBits(reverseBits(global0.b << (vec2<u32>(global0.b.x, global0.b.x) % vec2<u32>(32u)))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, select(firstLeadingBit(_wgslsmith_dot_vec2_i32(countOneBits(u_input.a.yy), u_input.b.wx)), firstLeadingBit(firstTrailingBit(-1i)), true), _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(countOneBits(vec3<i32>(0i, 4599i, 488i)), max(~vec3<i32>(global0.a.b, var_2.a.b, 0i), u_input.a)), ~u_input.b.xww));
}

