struct Struct_1 {
    a: u32,
    b: i32,
    c: f32,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: bool,
    d: vec3<u32>,
    e: vec3<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<bool>,
    c: Struct_1,
}

struct Struct_4 {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec2<bool>,
    d: Struct_1,
    e: bool,
}

struct Struct_5 {
    a: vec4<bool>,
    b: i32,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: bool, arg_1: Struct_5, arg_2: vec3<u32>, arg_3: f32) -> u32 {
    return ~abs(firstLeadingBit(arg_2.x));
}

fn func_3(arg_0: vec4<bool>, arg_1: bool, arg_2: Struct_2, arg_3: u32) -> u32 {
    var var_0 = arg_2;
    var_0 = Struct_2(min(-u_input.a, -1i), var_0.b, arg_2.c, arg_2.d, select(!select(arg_2.e, vec3<bool>(false, true, true), !arg_0.zzz), arg_2.e, vec3<bool>(2657f >= _wgslsmith_f_op_f32(step(1128f, -1000f)), select(true, true, arg_2.d.x < 4294967295u), false)));
    var_0 = Struct_2(~(~5750i | abs(-arg_2.b)), _wgslsmith_dot_vec3_i32(max(~vec3<i32>(arg_2.b, 67470i, 1i), u_input.b.xyx), _wgslsmith_mult_vec3_i32(vec3<i32>(var_0.b, var_0.b | -2147483647i, -1i), max(abs(vec3<i32>(-40420i, 36537i, 29588i)), max(u_input.b.zxx, u_input.b.yxx)))), arg_2.c, vec3<u32>(arg_2.d.x, 35827u, 4294967295u), select(arg_2.e, select(vec3<bool>(false, any(arg_0.wyy), false), !(!vec3<bool>(var_0.c, true, true)), arg_0.wwz), arg_2.e.x));
    var var_1 = arg_0;
    var_0 = Struct_2(min(arg_2.b, _wgslsmith_div_i32(_wgslsmith_mult_i32(arg_2.a, -2147483647i), firstLeadingBit(var_0.a)) << (~_wgslsmith_div_u32(4294967295u, 1u) % 32u)), 0i | ~_wgslsmith_add_i32(~(-12506i), _wgslsmith_clamp_i32(u_input.b.x, u_input.b.x, var_0.a)), !all(arg_0), ~select(_wgslsmith_div_vec3_u32(~vec3<u32>(arg_3, 4294967295u, arg_2.d.x), var_0.d), var_0.d, true), vec3<bool>(!(any(var_0.e) & (-6169i != arg_2.a)), true, (arg_3 > arg_2.d.x) & (arg_0.x && true)));
    return arg_3;
}

fn func_2(arg_0: vec2<bool>, arg_1: vec4<bool>, arg_2: u32, arg_3: vec3<f32>) -> Struct_4 {
    var var_0 = arg_2;
    var_0 = ~func_3(arg_1, arg_1.x, Struct_2(_wgslsmith_sub_i32(firstTrailingBit(-2147483647i), -2147483647i), -2147483647i, true, ~vec3<u32>(arg_2, 76922u, 62800u), select(!arg_1.zxy, !arg_1.wzx, any(arg_1))), 2296u);
    var var_1 = false;
    var_1 = arg_0.x;
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1685f), arg_3.x);
    return Struct_4(vec2<i32>(-12886i, 1i), vec4<i32>(max(-1i, _wgslsmith_div_i32(select(u_input.a, u_input.a, arg_1.x), -7695i >> (arg_2 % 32u))), ~_wgslsmith_add_i32(1439i, -1i), _wgslsmith_dot_vec3_i32(max(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b.x, 51388i, u_input.a), vec3<i32>(u_input.b.x, u_input.a, -2147483647i)), vec3<i32>(23121i, -21377i, u_input.b.x) & vec3<i32>(13629i, 12388i, 39598i)), u_input.b.wxx), 39801i), vec2<bool>(arg_1.x, !(!(!arg_0.x))), Struct_1(countOneBits(1u), reverseBits(i32(-1i) * -1078i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(527f - arg_3.x)) + 1469f)), select(select(any(select(arg_1, arg_1, arg_1.x)), arg_1.x, arg_0.x), true, any(!arg_1)));
}

fn func_4(arg_0: u32, arg_1: Struct_4) -> vec4<u32> {
    var var_0 = Struct_3(Struct_1(~((arg_1.d.a << (arg_1.d.a % 32u)) | ~0u), abs(-6784i), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_1.d.c)) - arg_1.d.c), -540f)), vec2<bool>(true, true), arg_1.d);
    var var_1 = 85561u;
    let var_2 = ~(~min(_wgslsmith_sub_vec3_u32(vec3<u32>(1u, 2287u, arg_1.d.a), vec3<u32>(4294967295u, 1u, 0u)), abs(vec3<u32>(1u, 60495u, 90081u))) | _wgslsmith_div_vec3_u32(countOneBits(_wgslsmith_add_vec3_u32(vec3<u32>(arg_1.d.a, 94u, arg_1.d.a), vec3<u32>(0u, 4294967295u, arg_1.d.a))), ~vec3<u32>(arg_1.d.a, 1u, arg_1.d.a) << (firstTrailingBit(vec3<u32>(arg_1.d.a, arg_0, 4294967295u)) % vec3<u32>(32u))));
    let var_3 = ~(~vec4<u32>(_wgslsmith_div_u32(_wgslsmith_div_u32(27465u, var_0.a.a), ~2460u), 0u, ~arg_1.d.a, ~26043u));
    var var_4 = Struct_5(vec4<bool>(false, true, var_0.b.x, all(vec2<bool>(false, true)) != all(func_2(arg_1.c, vec4<bool>(false, arg_1.c.x, true, false), 42546u, vec3<f32>(var_0.c.c, arg_1.d.c, -502f)).c)), -48646i, ~countOneBits(firstLeadingBit(-arg_1.b)));
    return var_3;
}

fn func_5(arg_0: vec4<i32>, arg_1: f32, arg_2: Struct_5, arg_3: vec4<u32>) -> Struct_4 {
    var var_0 = arg_1;
    var var_1 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-447f - 1216f), _wgslsmith_f_op_f32(-724f - _wgslsmith_f_op_f32(-arg_1)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-152f, -126f)), -312f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-2130f, 379f, arg_1, 1307f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1063f, 1238f, -1739f, 172f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, arg_1, 546f, -311f)) * vec4<f32>(1048f, arg_1, -532f, arg_1)))), vec4<f32>(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(arg_1)))), arg_1, -934f)));
    var_0 = 840f;
    var var_2 = !select(vec3<bool>(arg_2.a.x, -arg_0.x == -u_input.b.x, all(select(vec2<bool>(true, arg_2.a.x), arg_2.a.wx, arg_2.a.zx))), !select(select(arg_2.a.wxz, arg_2.a.zxy, arg_2.a.yzx), vec3<bool>(arg_2.a.x, arg_2.a.x, arg_2.a.x), arg_2.a.wxw), vec3<bool>(all(select(arg_2.a, vec4<bool>(false, true, false, arg_2.a.x), true)), false, -138f != var_1.x));
    var_2 = !(!vec3<bool>(!(!arg_2.a.x), !arg_2.a.x, arg_2.a.x));
    return Struct_4(firstLeadingBit(vec2<i32>(_wgslsmith_mult_i32(_wgslsmith_div_i32(-1i, arg_2.b), arg_2.c.x), 1i)), arg_0, select(vec2<bool>(true | var_2.x, all(vec2<bool>(arg_2.a.x, arg_2.a.x))), arg_2.a.xx, !(arg_2.a.x || any(arg_2.a))), func_2(vec2<bool>(false, true), select(vec4<bool>(any(vec3<bool>(false, arg_2.a.x, arg_2.a.x)), var_2.x, false, any(arg_2.a.yyz)), arg_2.a, select(vec4<bool>(false, false, false, true), arg_2.a, any(vec4<bool>(true, false, false, true)))), firstLeadingBit(arg_3.x), vec3<f32>(342f, 1976f, _wgslsmith_f_op_f32(-517f * -779f))).d, true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -530f;
    let var_1 = ~vec4<u32>(1u, ~reverseBits(func_1(false, Struct_5(vec4<bool>(true, true, false, true), u_input.b.x, vec4<i32>(u_input.b.x, 1i, u_input.a, u_input.b.x)), vec3<u32>(1u, 0u, 42399u), 334f)), 22356u, _wgslsmith_sub_u32(reverseBits(4294967295u), 1u));
    let var_2 = _wgslsmith_div_u32(abs(0u), ~_wgslsmith_div_u32(_wgslsmith_add_u32(4294967295u, var_1.x | var_1.x), var_1.x));
    let var_3 = 17328i;
    let var_4 = func_5(abs(u_input.b) | _wgslsmith_mod_vec4_i32(abs(-u_input.b), vec4<i32>(max(1i, var_3), var_3, u_input.b.x, ~22009i)), -496f, Struct_5(vec4<bool>(false, true, true, var_1.x <= _wgslsmith_add_u32(var_2, var_1.x)), -var_3, u_input.b), func_4(~(~var_2), func_2(vec2<bool>(true, u_input.a >= 52918i), vec4<bool>(true, true, true, true), ~31560u & (var_2 & 1u), vec3<f32>(1f, 1f, 1f))));
    var var_5 = i32(-1i) * -8395i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.d.c, var_4.d.c, var_4.d.c, -1971f)), _wgslsmith_div_vec4_f32(vec4<f32>(var_4.d.c, 1106f, var_4.d.c, var_4.d.c), vec4<f32>(var_4.d.c, -282f, var_4.d.c, var_4.d.c))))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(vec4<f32>(661f, var_4.d.c, -814f, -312f), vec4<f32>(-1128f, var_4.d.c, var_4.d.c, -766f)))))), select(select(vec4<bool>(false, true, var_4.c.x, false), vec4<bool>(true, true, true, true), !vec4<bool>(var_4.c.x, var_4.c.x, var_4.c.x, false)), !select(vec4<bool>(var_4.e, false, var_4.c.x, var_4.c.x), vec4<bool>(true, var_4.c.x, var_4.e, false), vec4<bool>(true, var_4.e, var_4.c.x, false)), !select(vec4<bool>(var_4.c.x, var_4.e, true, true), vec4<bool>(true, true, var_4.e, var_4.c.x), true)))));
}

