struct Struct_1 {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec2<bool>,
    d: bool,
    e: vec2<bool>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec3<u32>,
}

struct Struct_3 {
    a: u32,
    b: bool,
    c: u32,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: i32,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
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

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: bool) -> i32 {
    var var_0 = Struct_5(u_input.a.x, countOneBits(vec4<u32>(8758u, 1u, ~u_input.d.x, 4294967295u)));
    var var_1 = firstTrailingBit(u_input.d);
    let var_2 = Struct_3(var_1.x, true, ~firstTrailingBit(~1u ^ _wgslsmith_sub_u32(54332u, var_0.b.x)));
    var_0 = Struct_5(abs(_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(~vec3<i32>(arg_0, -12151i, 1i), u_input.a | vec3<i32>(47905i, 0i, -65192i)), 63398i)), min(reverseBits(~vec4<u32>(8947u, 0u, 35872u, 4294967295u)) ^ firstTrailingBit(var_0.b), _wgslsmith_div_vec4_u32(min(var_0.b, var_0.b), vec4<u32>(~var_1.x, ~5003u, max(var_0.b.x, var_1.x), min(var_2.a, 30532u)))));
    let var_3 = u_input.c;
    return var_0.a;
}

fn func_2(arg_0: i32, arg_1: vec3<f32>, arg_2: vec2<u32>) -> vec2<bool> {
    var var_0 = Struct_5(func_3(_wgslsmith_mod_i32(_wgslsmith_add_i32(1i, _wgslsmith_mult_i32(1i, u_input.b)), arg_0), false), vec4<u32>(arg_2.x, _wgslsmith_sub_u32(arg_2.x, ~(~4294967295u)), u_input.d.x, firstTrailingBit(firstTrailingBit(~u_input.d.x))));
    var_0 = Struct_5((((u_input.b | -2147483647i) | ~var_0.a) & 45227i) ^ var_0.a, abs(var_0.b));
    var_0 = Struct_5(reverseBits(arg_0), var_0.b);
    var var_1 = max(arg_0, arg_0);
    var_0 = Struct_5(-_wgslsmith_dot_vec3_i32(u_input.a, -vec3<i32>(-11897i, 16428i, arg_0)) | var_0.a, vec4<u32>(countOneBits(u_input.c), firstTrailingBit(36096u), u_input.c, _wgslsmith_mod_u32(~select(arg_2.x, u_input.c, true), 31941u)));
    return vec2<bool>(select(!any(vec4<bool>(true, true, true, false)), false, false), any(vec4<bool>(true, arg_1.x >= _wgslsmith_f_op_f32(-arg_1.x), true, true)));
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: Struct_1) -> Struct_5 {
    let var_0 = max(u_input.b, func_3(_wgslsmith_clamp_i32(-(~arg_2.b.x), arg_0.a.x, arg_2.b.x), false));
    let var_1 = Struct_3(u_input.c, !arg_2.c.x, ~u_input.d.x);
    let var_2 = arg_0;
    var var_3 = Struct_4(var_2);
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_1 * _wgslsmith_f_op_f32(-arg_1))))));
    return Struct_5(~(~u_input.b & (i32(-1i) * -1i)), vec4<u32>(4294967295u, max(arg_0.b.x, arg_0.b.x), _wgslsmith_mult_u32(~_wgslsmith_div_u32(arg_0.b.x, 0u), firstTrailingBit(~4294967295u)), _wgslsmith_dot_vec4_u32(~(vec4<u32>(0u, 4294967295u, var_3.a.b.x, var_1.c) | vec4<u32>(var_2.b.x, arg_0.b.x, 1u, 62579u)), vec4<u32>(4294967295u, ~var_1.c, min(4294967295u, 0u), 40191u >> (u_input.d.x % 32u)))));
}

fn func_5(arg_0: Struct_5, arg_1: u32, arg_2: Struct_1, arg_3: vec4<i32>) -> vec2<bool> {
    var var_0 = 31343i;
    var var_1 = arg_2.e;
    var_1 = !(!arg_2.e);
    var_1 = arg_2.e;
    var_0 = _wgslsmith_dot_vec2_i32(u_input.a.yy, vec2<i32>(select(-arg_3.x, 2201i, any(vec4<bool>(true, true, arg_2.e.x, true))), -23784i));
    return arg_2.c;
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_3, arg_2: u32, arg_3: vec2<f32>) -> u32 {
    var var_0 = func_5(func_4(Struct_2(u_input.a << (vec3<u32>(u_input.d.x, 39979u, 35075u) % vec3<u32>(32u)), ~vec3<u32>(0u, arg_1.c, 0u) << (~vec3<u32>(797u, arg_1.c, 11052u) % vec3<u32>(32u))), arg_3.x, Struct_1(abs(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b, arg_0.x, arg_0.x, 34171i), vec4<i32>(u_input.b, u_input.b, 17783i, u_input.b))), min(vec4<i32>(0i, u_input.b, 19452i, arg_0.x), ~vec4<i32>(u_input.a.x, u_input.a.x, -9931i, arg_0.x)), vec2<bool>(true, true | arg_1.b), arg_1.b, select(vec2<bool>(false, arg_1.b), func_2(u_input.b, vec3<f32>(233f, arg_3.x, arg_3.x), u_input.d.xz), func_2(-1i, vec3<f32>(-166f, -454f, 1585f), u_input.d.zz).x))), _wgslsmith_div_u32(firstLeadingBit(_wgslsmith_div_u32(~1u, ~arg_2)), 4294967295u), Struct_1(_wgslsmith_add_vec4_i32(~select(vec4<i32>(arg_0.x, arg_0.x, u_input.a.x, u_input.a.x), vec4<i32>(4479i, 0i, arg_0.x, -47825i), arg_1.b), vec4<i32>(i32(-1i) * -2147483647i, u_input.a.x, _wgslsmith_mod_i32(arg_0.x, -1i), arg_0.x)), vec4<i32>(-2147483647i, ~(~2147483647i), firstLeadingBit(u_input.a.x), u_input.a.x), select(select(select(vec2<bool>(arg_1.b, false), vec2<bool>(arg_1.b, true), vec2<bool>(true, true)), func_2(-22094i, vec3<f32>(-1916f, 129f, arg_3.x), u_input.d.zz), vec2<bool>(false, false)), vec2<bool>(arg_1.b | arg_1.b, any(vec3<bool>(true, false, arg_1.b))), vec2<bool>(false, arg_1.b)), all(!select(vec4<bool>(true, true, false, arg_1.b), vec4<bool>(true, arg_1.b, true, false), vec4<bool>(false, arg_1.b, true, true))), func_2(-24341i, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1434f, 689f, arg_3.x))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3.x, -1290f, 648f))), ~(u_input.d.yy & vec2<u32>(4294967295u, arg_2)))), vec4<i32>(1i, firstLeadingBit(abs(-1i << (arg_1.c % 32u))), 0i, _wgslsmith_mult_i32(-func_3(arg_0.x, true), ~(0i >> (u_input.c % 32u)))));
    return 20289u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_5(countOneBits(_wgslsmith_mult_i32(reverseBits(u_input.b), firstTrailingBit(~0i))), ~(~min(~vec4<u32>(u_input.c, u_input.d.x, 30207u, 0u), vec4<u32>(u_input.d.x, u_input.c, 0u, u_input.c))));
    var var_1 = _wgslsmith_add_u32(~firstLeadingBit(u_input.d.x >> (u_input.d.x % 32u)), u_input.d.x) & ~(_wgslsmith_dot_vec4_u32(var_0.b, var_0.b) >> (max(countOneBits(1u), ~var_0.b.x) % 32u));
    var var_2 = ~(~(~(~(~vec4<u32>(u_input.c, 6451u, u_input.d.x, var_0.b.x)))));
    var_2 = vec4<u32>(func_1(u_input.a.zz, Struct_3(_wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(1u, 1u)), ~var_0.b.zy), !(var_2.x < u_input.d.x), ~_wgslsmith_sub_u32(var_2.x, u_input.c)), ~74456u, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-2025f * 1395f), 1f))), u_input.c, ~(~_wgslsmith_clamp_u32(_wgslsmith_mult_u32(35058u, 24649u), u_input.d.x, _wgslsmith_div_u32(59048u, var_0.b.x))), u_input.d.x);
    var_1 = u_input.d.x;
    let var_3 = func_4(Struct_2(firstTrailingBit(vec3<i32>(~31416i, ~var_0.a, 0i)), _wgslsmith_add_vec3_u32(~var_0.b.wzz, ~vec3<u32>(u_input.d.x, var_0.b.x, var_2.x)) ^ vec3<u32>(43046u, u_input.c, u_input.d.x)), _wgslsmith_f_op_f32(f32(-1f) * -1346f), Struct_1(select(select(~vec4<i32>(2147483647i, -2147483647i, -33906i, 2147483647i), vec4<i32>(u_input.a.x, var_0.a, u_input.a.x, 0i), select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false))), abs(_wgslsmith_sub_vec4_i32(vec4<i32>(1i, -26852i, var_0.a, -11479i), vec4<i32>(u_input.a.x, var_0.a, var_0.a, var_0.a))), !select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true))), -_wgslsmith_div_vec4_i32(vec4<i32>(-10908i, u_input.a.x, -37022i, u_input.a.x), _wgslsmith_sub_vec4_i32(vec4<i32>(var_0.a, var_0.a, -12779i, var_0.a), vec4<i32>(-20400i, u_input.a.x, -2147483647i, -2147483647i))), vec2<bool>(false, true), true, func_5(Struct_5(~var_0.a, vec4<u32>(0u, var_2.x, var_2.x, 1u)), ~u_input.c, Struct_1(vec4<i32>(-39108i, 0i, var_0.a, -16133i) & vec4<i32>(u_input.a.x, var_0.a, var_0.a, -1i), vec4<i32>(u_input.a.x, -19716i, 1i, 3794i) & vec4<i32>(-2147483647i, 1i, u_input.b, 50090i), vec2<bool>(true, true), any(vec3<bool>(true, true, false)), vec2<bool>(true, false)), ~vec4<i32>(var_0.a, var_0.a, u_input.b, u_input.b))));
    var var_4 = Struct_4(Struct_2(u_input.a, ~(min(var_0.b.xxx, vec3<u32>(1u, 1u, var_2.x)) | vec3<u32>(u_input.d.x, u_input.c, var_0.b.x))));
    var_2 = vec4<u32>(u_input.c, firstLeadingBit(var_0.b.x) ^ func_4(var_4.a, 3518f, Struct_1(vec4<i32>(u_input.a.x, 27537i, 0i, 8983i) | vec4<i32>(u_input.a.x, -1i, 1i, -1i), vec4<i32>(20750i, u_input.a.x, -2147483647i, -1i), vec2<bool>(true, false), true, vec2<bool>(true, false))).b.x, ~0u, ~(abs(~39957u) & var_0.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(1725f, ~vec4<u32>(select(max(1u, u_input.d.x), var_4.a.b.x << (10432u % 32u), all(vec3<bool>(false, false, false))), 7717u, ~reverseBits(4294967295u), 52878u));
}

