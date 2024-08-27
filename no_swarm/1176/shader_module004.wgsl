struct Struct_1 {
    a: u32,
    b: vec3<i32>,
    c: bool,
    d: vec2<f32>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 25>;

var<private> global1: u32;

var<private> global2: u32;

var<private> global3: array<vec4<i32>, 29>;

var<private> global4: f32;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> i32 {
    let var_0 = !(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -257f))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-241f))));
    global4 = 182f;
    let var_1 = _wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(global3[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(55277u, u_input.a, 1u, 36618u), abs(vec4<u32>(32167u, 23586u, 0u, u_input.a))), 29u)], global3[_wgslsmith_index_u32(reverseBits(1u), 29u)]), ~u_input.c >> (vec4<u32>(7258u, u_input.d, 0u, u_input.d << (u_input.d % 32u)) % vec4<u32>(32u)));
    global0 = array<Struct_2, 25>();
    var var_2 = Struct_1(u_input.d ^ _wgslsmith_dot_vec2_u32(~(vec2<u32>(0u, u_input.d) & vec2<u32>(22890u, u_input.a)), firstLeadingBit(~vec2<u32>(2837u, u_input.a))), ~_wgslsmith_clamp_vec3_i32(max(var_1.zzz, vec3<i32>(var_1.x, 0i, u_input.c.x) >> (vec3<u32>(54934u, u_input.a, 24486u) % vec3<u32>(32u))), select(var_1.wxw, vec3<i32>(1556i, u_input.c.x, -2147483647i), vec3<bool>(var_0, false, var_0)) | var_1.wzx, vec3<i32>(var_1.x << (u_input.a % 32u), countOneBits(u_input.b.x), abs(2147483647i))), var_0 == var_0, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1870f, -1422f)), vec2<f32>(816f, 641f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(252f, 146f), vec2<f32>(-1512f, -237f), vec2<bool>(false, var_0))))))), vec3<i32>(var_1.x, _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(_wgslsmith_div_vec3_i32(var_1.yyy, u_input.b.wxw), vec3<i32>(u_input.b.x, 0i, -1i) >> (vec3<u32>(u_input.a, u_input.a, 39577u) % vec3<u32>(32u))), u_input.c.wxw), ~(-13397i)));
    return -1i;
}

fn func_2() -> Struct_2 {
    var var_0 = _wgslsmith_sub_vec4_i32(vec4<i32>(-23942i, func_3(), -_wgslsmith_div_i32(~u_input.c.x, 17656i), 33388i), _wgslsmith_clamp_vec4_i32(select(abs(_wgslsmith_mod_vec4_i32(u_input.b, vec4<i32>(-1i, u_input.b.x, 1i, u_input.c.x))), vec4<i32>(_wgslsmith_clamp_i32(2147483647i, u_input.c.x, u_input.c.x), 1i, u_input.c.x, _wgslsmith_mult_i32(u_input.b.x, u_input.c.x)), any(select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), true))), min(max(-vec4<i32>(27043i, u_input.b.x, 12117i, -2147483647i), min(u_input.b, vec4<i32>(12615i, -1i, 2147483647i, u_input.c.x))), ~u_input.b >> (min(vec4<u32>(u_input.d, 21412u, 0u, u_input.d), vec4<u32>(0u, 1u, u_input.d, u_input.a)) % vec4<u32>(32u))), ~vec4<i32>(~u_input.c.x, 0i >> (u_input.d % 32u), u_input.c.x | -1i, firstTrailingBit(u_input.c.x))));
    var var_1 = _wgslsmith_div_vec3_u32(vec3<u32>(u_input.d, _wgslsmith_sub_u32(1u, _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(u_input.a, 617u, 17883u, u_input.d)), firstTrailingBit(vec4<u32>(43129u, u_input.d, u_input.a, u_input.d)))), ~101183u), vec3<u32>(_wgslsmith_add_u32(~u_input.d, _wgslsmith_clamp_u32(0u, ~4294967295u, 1u)), u_input.a, 15442u));
    let var_2 = _wgslsmith_dot_vec3_i32(u_input.b.zwy, countOneBits(_wgslsmith_div_vec3_i32(var_0.zzw, ~(var_0.xxx ^ vec3<i32>(-28219i, var_0.x, var_0.x)))));
    global1 = 25158u;
    let var_3 = Struct_1(36244u, var_0.ywz, any(!select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true)), all(vec2<bool>(true, false)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -380f), 1f)), vec3<i32>(u_input.b.x, -2147483647i, ~_wgslsmith_dot_vec3_i32(~var_0.xxy, vec3<i32>(var_0.x, 8410i, u_input.b.x))));
    return global0[_wgslsmith_index_u32(firstTrailingBit(0u), 25u)];
}

fn func_1(arg_0: vec2<f32>) -> Struct_1 {
    let var_0 = func_2();
    var var_1 = global0[_wgslsmith_index_u32(~1260u, 25u)];
    let var_2 = Struct_2(Struct_1(var_1.a.a, _wgslsmith_div_vec3_i32(-var_0.a.e & vec3<i32>(-2147483647i, u_input.c.x, -20484i), abs(u_input.c.zzw) ^ reverseBits(u_input.b.xwy)), select(any(select(vec3<bool>(true, var_1.a.c, false), vec3<bool>(true, false, var_0.a.c), vec3<bool>(var_1.a.c, true, var_1.a.c))), var_1.a.c, any(vec3<bool>(var_0.a.c, false, var_0.a.c)) && (false | var_1.a.c)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-274f, arg_0.x)))), ~(~(~vec3<i32>(var_1.a.b.x, 25411i, var_1.a.e.x)))));
    var var_3 = Struct_2(Struct_1(var_2.a.a, min(var_2.a.e, vec3<i32>(u_input.c.x, var_2.a.b.x, -2147483647i) ^ _wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, var_1.a.e.x, 24381i), var_0.a.e, var_1.a.b)), ~_wgslsmith_mod_u32(12168u, var_1.a.a) > countOneBits(1u), arg_0, _wgslsmith_mult_vec3_i32(vec3<i32>(var_0.a.e.x, var_0.a.e.x ^ var_0.a.e.x, var_2.a.b.x), var_0.a.b)));
    var var_4 = ~var_3.a.a;
    return Struct_1(func_2().a.a, ~(vec3<i32>(-1i) * -(~u_input.b.xzx)), !var_0.a.c, var_2.a.d, firstTrailingBit(_wgslsmith_div_vec3_i32(abs(vec3<i32>(-2147483647i, var_1.a.b.x, -1i)) >> ((vec3<u32>(1u, 57341u, var_0.a.a) << (vec3<u32>(u_input.d, 4294967295u, 14962u) % vec3<u32>(32u))) % vec3<u32>(32u)), -vec3<i32>(var_3.a.b.x, var_3.a.e.x, var_1.a.b.x))));
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_2) -> Struct_2 {
    global1 = reverseBits(arg_0);
    var var_0 = global3[_wgslsmith_index_u32(arg_1.a, 29u)];
    let var_1 = 689f;
    global2 = _wgslsmith_mult_u32(9863u, (arg_0 & ~u_input.a) << (firstLeadingBit(~(~124555u)) % 32u));
    var var_2 = !(!vec2<bool>(arg_1.c, false));
    return func_2();
}

fn func_5(arg_0: i32, arg_1: Struct_2) -> Struct_1 {
    global2 = u_input.d;
    let var_0 = Struct_2(Struct_1(firstLeadingBit(arg_1.a.a), vec3<i32>(arg_1.a.b.x, ~(-3853i), 1i), false, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_1.a.d.x, -1373f), arg_1.a.d, vec2<bool>(arg_1.a.c, arg_1.a.c)))))), ~vec3<i32>(-u_input.b.x, select(9057i, arg_0, arg_1.a.c), _wgslsmith_dot_vec3_i32(u_input.b.zxx, u_input.c.ywz))));
    let var_1 = func_4(var_0.a.a, arg_1.a, Struct_1(~var_0.a.a, max(~var_0.a.e, _wgslsmith_mult_vec3_i32(firstLeadingBit(vec3<i32>(var_0.a.e.x, var_0.a.e.x, -51034i)), arg_1.a.e)), true, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(arg_1.a.d - arg_1.a.d))) * _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(171f, var_0.a.d.x))))), arg_1.a.b), arg_1);
    let var_2 = global0[_wgslsmith_index_u32(4294967295u, 25u)];
    let var_3 = vec4<bool>(var_2.a.c, select(var_2.a.d.x >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_2.a.d.x, var_0.a.d.x))), false, var_2.a.c), !(303f >= _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -924f)))), !var_2.a.c);
    return func_2().a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    let var_1 = func_5(~min(_wgslsmith_add_i32(u_input.c.x >> (u_input.d % 32u), 1i), -1i), func_4(max(reverseBits(u_input.a | u_input.a), 9332u), func_1(vec2<f32>(-404f, _wgslsmith_f_op_f32(f32(-1f) * -1479f))), Struct_1(u_input.d, u_input.b.wxx, true, vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1227f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), ~vec3<i32>(-20945i, 33147i, u_input.b.x) >> (~vec3<u32>(u_input.a, u_input.d, 28342u) % vec3<u32>(32u))), Struct_2(Struct_1(func_2().a.a, u_input.c.zyz & vec3<i32>(-2147483647i, 2147483647i, u_input.b.x), all(vec4<bool>(false, false, true, false)), vec2<f32>(-306f, -1202f), -vec3<i32>(u_input.b.x, -1i, u_input.b.x)))));
    let var_2 = var_1;
    let var_3 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-948f, 2445f, var_2.d.x) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1595f, 1668f, 374f))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_1.d.x, 1739f, -1549f), vec3<f32>(var_1.d.x, -850f, 1534f))))))))));
    var var_4 = _wgslsmith_div_vec2_u32(~_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, 16843u), vec2<u32>(866u, var_2.a)) & vec2<u32>(min(var_1.a, 37801u), 4294967295u), countOneBits(vec2<u32>(_wgslsmith_mod_u32(min(var_1.a, 29764u), var_1.a), ~1u)));
    global2 = ~4294967295u;
    let var_5 = Struct_2(func_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.d.x, _wgslsmith_f_op_f32(-var_3.x)) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(2001f, var_1.d.x), vec2<f32>(var_1.d.x, var_1.d.x))), _wgslsmith_f_op_vec2_f32(var_1.d - vec2<f32>(-373f, 1817f)), vec2<bool>(true, var_2.c))))));
    var var_6 = Struct_1(u_input.a, abs(u_input.b.wyy), !(var_5.a.d.x < var_5.a.d.x), _wgslsmith_f_op_vec2_f32(exp2(var_5.a.d)), func_4(var_1.a, var_2, var_1, func_4(func_4(var_1.a, var_2, var_1, global0[_wgslsmith_index_u32(var_5.a.a, 25u)]).a.a ^ reverseBits(var_1.a), Struct_1(var_5.a.a, var_1.e, true, _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.d.x, -324f)), vec3<i32>(u_input.b.x, var_1.e.x, 0i)), Struct_1(_wgslsmith_sub_u32(var_2.a, 6600u), min(vec3<i32>(0i, 3780i, var_1.b.x), var_1.b), all(vec3<bool>(false, var_2.c, var_1.c)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_5.a.d.x, 226f)), ~var_2.b), global0[_wgslsmith_index_u32(4294967295u, 25u)])).a.e);
    var_4 = min(_wgslsmith_div_vec2_u32(~select(_wgslsmith_mod_vec2_u32(vec2<u32>(var_2.a, 33472u), vec2<u32>(var_4.x, var_1.a)), abs(vec2<u32>(u_input.a, 35576u)), select(vec2<bool>(false, var_5.a.c), vec2<bool>(false, var_1.c), vec2<bool>(var_0, var_6.c))), _wgslsmith_clamp_vec2_u32(abs(reverseBits(vec2<u32>(4396u, 6749u))), ~vec2<u32>(8297u, 0u), _wgslsmith_mod_vec2_u32(~vec2<u32>(4294967295u, var_1.a), vec2<u32>(18667u, 7179u)))), firstTrailingBit(~min(~vec2<u32>(4294967295u, var_2.a), vec2<u32>(var_2.a, 53341u) ^ vec2<u32>(0u, 0u))));
    let x = u_input.a;
    s_output = StorageBuffer((_wgslsmith_mult_i32(var_5.a.b.x, 0i) ^ var_5.a.b.x) << (0u % 32u), 49829u);
}

