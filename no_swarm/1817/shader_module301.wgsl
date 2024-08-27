struct Struct_1 {
    a: bool,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: Struct_1,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 3> = array<Struct_2, 3>(Struct_2(Struct_1(false, 36076u), vec4<bool>(false, false, true, true), Struct_1(true, 1u), vec4<u32>(0u, 14246u, 1u, 2058u)), Struct_2(Struct_1(false, 4294967295u), vec4<bool>(true, true, true, false), Struct_1(false, 50273u), vec4<u32>(0u, 0u, 4294967295u, 1u)), Struct_2(Struct_1(true, 1030u), vec4<bool>(true, false, true, false), Struct_1(true, 0u), vec4<u32>(0u, 44331u, 1u, 3350u)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec4<u32>) -> vec3<u32> {
    let var_0 = Struct_1(!(select(false, false, true) && any(vec2<bool>(true, true))), 4035u);
    global0 = array<Struct_2, 3>();
    var var_1 = var_0;
    var var_2 = global0[_wgslsmith_index_u32(~arg_0.x, 3u)];
    global0 = array<Struct_2, 3>();
    return vec3<u32>(_wgslsmith_mult_u32(0u, _wgslsmith_sub_u32(select(1u, 1u, true), var_2.a.b)), var_0.b, _wgslsmith_div_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 0u, u_input.a.x, var_1.b), arg_0), var_1.b << (var_0.b % 32u))) & ~((~var_2.d.zyz ^ arg_0.yzx) & abs(_wgslsmith_mod_vec3_u32(arg_0.wzw, vec3<u32>(u_input.c.x, 0u, 1u))));
}

fn func_2(arg_0: i32, arg_1: Struct_1) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(-271f + _wgslsmith_f_op_f32(-2428f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1000f))))));
    var var_1 = ~func_3(~(abs(vec4<u32>(u_input.b.x, arg_1.b, 33350u, arg_1.b)) >> ((vec4<u32>(1u, u_input.c.x, arg_1.b, 85765u) | vec4<u32>(u_input.c.x, arg_1.b, arg_1.b, u_input.a.x)) % vec4<u32>(32u))));
    var var_2 = Struct_2(arg_1, vec4<bool>(false, false, true, all(select(select(vec4<bool>(true, false, false, false), vec4<bool>(arg_1.a, arg_1.a, arg_1.a, true), false), !vec4<bool>(true, true, arg_1.a, true), true))), Struct_1(arg_1.a, ~(min(72137u, u_input.a.x) & var_1.x)), vec4<u32>(arg_1.b, var_1.x, u_input.b.x, _wgslsmith_clamp_u32(26873u, arg_1.b, var_1.x) >> (func_3(vec4<u32>(4294967295u, u_input.c.x, 7491u, u_input.c.x)).x % 32u)) ^ vec4<u32>(var_1.x, max(~4294967295u, firstTrailingBit(u_input.a.x)), 4294967295u, arg_1.b));
    var var_3 = global0[_wgslsmith_index_u32(func_3(var_2.d).x, 3u)];
    global0 = array<Struct_2, 3>();
    return ~(13340u ^ ~var_2.c.b);
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_1) -> Struct_1 {
    var var_0 = Struct_2(Struct_1(arg_0.x, _wgslsmith_div_u32(7883u, firstTrailingBit(u_input.b.x))), select(!vec4<bool>(false, arg_0.x, arg_0.x, !arg_1.a), !select(select(vec4<bool>(false, arg_1.a, true, false), vec4<bool>(false, arg_0.x, false, false), arg_0.x), select(vec4<bool>(arg_0.x, true, true, arg_0.x), vec4<bool>(arg_1.a, true, true, arg_1.a), false), true & arg_1.a), !(!vec4<bool>(true, false, arg_0.x, true))), arg_1, (_wgslsmith_sub_vec4_u32(firstTrailingBit(vec4<u32>(51167u, 14898u, u_input.b.x, arg_1.b)), _wgslsmith_sub_vec4_u32(vec4<u32>(4119u, 0u, u_input.c.x, 56127u), vec4<u32>(28211u, arg_1.b, arg_1.b, 4294967295u))) >> (~(~vec4<u32>(35541u, arg_1.b, 27518u, u_input.c.x)) % vec4<u32>(32u))) << (~vec4<u32>(func_2(-1i, arg_1), 1u << (arg_1.b % 32u), 1u, select(arg_1.b, arg_1.b, true)) % vec4<u32>(32u)));
    var_0 = Struct_2(Struct_1(!any(!var_0.b.ww), _wgslsmith_sub_u32(u_input.a.x, 1u)), var_0.b, var_0.c, _wgslsmith_mod_vec4_u32(var_0.d | _wgslsmith_div_vec4_u32(vec4<u32>(u_input.b.x, u_input.c.x, arg_1.b, 1u), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.c.x, 1u, 1u, var_0.d.x), vec4<u32>(var_0.d.x, var_0.d.x, var_0.d.x, var_0.d.x))), ~countOneBits(var_0.d)));
    let var_1 = var_0.c;
    global0 = array<Struct_2, 3>();
    var var_2 = 39223i;
    return arg_1;
}

fn func_4(arg_0: vec3<f32>, arg_1: f32, arg_2: Struct_1, arg_3: u32) -> bool {
    global0 = array<Struct_2, 3>();
    global0 = array<Struct_2, 3>();
    global0 = array<Struct_2, 3>();
    let var_0 = select(select(vec3<bool>(true, true, false), select(vec3<bool>(true, true, any(vec3<bool>(arg_2.a, false, true))), vec3<bool>(true, !arg_2.a, arg_2.a), true & (true != arg_2.a)), !vec3<bool>(any(vec4<bool>(false, true, false, arg_2.a)), true, arg_2.a)), select(!vec3<bool>(!arg_2.a, 4294967295u < arg_2.b, true), !vec3<bool>(false | arg_2.a, select(arg_2.a, true, false), arg_2.a), arg_2.a | true), select(vec3<bool>(all(vec4<bool>(false, arg_2.a, arg_2.a, arg_2.a)), !(0u <= arg_2.b), !arg_2.a), !vec3<bool>(true, arg_2.a, arg_2.a && true), any(!vec4<bool>(arg_2.a, arg_2.a, true, arg_2.a))));
    var var_1 = -(~(abs(select(12090i, 2147483647i, arg_2.a)) ^ firstLeadingBit(~35991i)));
    return !(var_0.x | (var_0.x || false));
}

fn func_5(arg_0: bool, arg_1: vec2<bool>, arg_2: vec4<bool>, arg_3: vec2<u32>) -> Struct_2 {
    var var_0 = select(vec4<bool>(arg_1.x, func_1(arg_1, func_1(!arg_1, func_1(vec2<bool>(arg_1.x, false), Struct_1(arg_2.x, 4294967295u)))).a, func_1(arg_1, func_1(select(vec2<bool>(arg_0, true), arg_2.xz, false), func_1(vec2<bool>(arg_2.x, false), Struct_1(false, u_input.a.x)))).a, true), select(select(arg_2, !vec4<bool>(arg_1.x, arg_2.x, true, arg_2.x), arg_2), arg_2, true), false);
    var_0 = select(vec4<bool>(true, select(func_4(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(521f, -588f, -1604f), vec3<f32>(-1429f, -1000f, 648f), var_0.www)), _wgslsmith_f_op_f32(trunc(-291f)), func_1(vec2<bool>(var_0.x, arg_0), Struct_1(true, 0u)), 26092u), any(arg_2.wwx), true), any(var_0.zz), arg_0), !vec4<bool>(false, true, arg_1.x, false), true);
    var var_1 = arg_3;
    var var_2 = ~vec3<u32>(_wgslsmith_mult_u32(~_wgslsmith_sub_u32(u_input.c.x, 1u), _wgslsmith_mult_u32(var_1.x, countOneBits(arg_3.x))), var_1.x, var_1.x);
    var var_3 = _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(-250f, 1449f) * vec2<f32>(-1298f, -199f)), vec2<f32>(1f, 1f))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-372f, -1448f))), arg_2.x)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(578f, 362f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-764f, -671f)))))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(539f)))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1626f, -1259f))))))), true)));
    return global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(~(~arg_3.x), _wgslsmith_dot_vec3_u32(u_input.b, _wgslsmith_clamp_vec3_u32(vec3<u32>(arg_3.x, u_input.b.x, 1u), vec3<u32>(arg_3.x, var_1.x, 1u), u_input.b) & ~_wgslsmith_add_vec3_u32(vec3<u32>(49400u, var_2.x, 4294967295u), u_input.b))), 3u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(trunc(-544f));
    var var_1 = func_5(all(vec3<bool>(true, any(vec3<bool>(false, true, true)), true)), vec2<bool>(true, !all(vec2<bool>(true, true))), vec4<bool>(true, func_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(274f, -657f, -435f) + vec3<f32>(-512f, 1020f, -2110f)), 113f, func_1(select(vec2<bool>(true, true), vec2<bool>(false, false), false), Struct_1(false, 57146u)), func_3(vec4<u32>(u_input.c.x, 6608u, u_input.c.x, u_input.a.x)).x >> (_wgslsmith_div_u32(u_input.a.x, u_input.c.x) % 32u)), (func_4(vec3<f32>(-1069f, -502f, 1000f), -859f, Struct_1(false, 24239u), u_input.b.x) || any(vec4<bool>(true, true, true, false))) && true, true), u_input.b.xz);
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-384f)) - _wgslsmith_f_op_f32(abs(-1000f))), -921f, var_1.c.a)))), _wgslsmith_div_f32(470f, -123f), _wgslsmith_f_op_f32(exp2(1f)));
    global0 = array<Struct_2, 3>();
    var var_3 = var_1.a;
    var var_4 = func_5(countOneBits(0u) < var_3.b, !vec2<bool>(true, var_1.c.a), var_1.b, _wgslsmith_mult_vec2_u32(firstTrailingBit(~(~u_input.a)), vec2<u32>(~firstTrailingBit(28340u), 19910u)));
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(1u, 0u, 0u, abs(var_3.b)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_2.x * _wgslsmith_f_op_f32(trunc(var_2.x))), -181f, !(var_2.x < -911f))))), ~(~64811u), _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(1i, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, -2380i), vec2<i32>(-1i, 0i)), 1i, i32(-1i) * -19667i), vec4<i32>(i32(-1i) * -8628i, 1i, 0i, ~(-42093i))), vec4<i32>(_wgslsmith_clamp_i32(_wgslsmith_mult_i32(9375i, -1i), -53746i, -56165i), _wgslsmith_dot_vec2_i32(~vec2<i32>(2147483647i, 46666i), -vec2<i32>(-2147483647i, -18318i)), -25055i, _wgslsmith_div_i32(_wgslsmith_sub_i32(-5646i, 13885i), ~(-81553i)))));
}

