struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: bool,
}

struct Struct_2 {
    a: u32,
    b: vec4<bool>,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
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

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_2) -> bool {
    let var_0 = u_input.a.x;
    var var_1 = select(!(!vec2<bool>(arg_1.d.a.x, true)), select(arg_1.d.a.yy, select(arg_1.d.a.zw, !arg_1.b.yz, select(true || arg_1.b.x, false, true)), true), arg_1.b.x);
    var_1 = arg_1.b.xw;
    let var_2 = arg_1.d;
    let var_3 = 34626u;
    return !arg_1.d.a.x;
}

fn func_2(arg_0: i32, arg_1: bool) -> Struct_1 {
    var var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(781f, _wgslsmith_f_op_f32(ceil(566f))), vec2<f32>(-421f, _wgslsmith_f_op_f32(ceil(555f))), !arg_1 && false))));
    let var_1 = arg_0 ^ -25305i;
    let var_2 = Struct_2(~u_input.a.x, !vec4<bool>(arg_1, true, true, false), arg_0, Struct_1(!select(vec4<bool>(arg_1, true, true, arg_1), vec4<bool>(false, false, arg_1, arg_1), vec4<bool>(false, false, arg_1, arg_1)), ~u_input.b.x, !(!select(arg_1, arg_1, arg_1))));
    let var_3 = arg_1;
    var var_4 = Struct_1(var_2.d.a, ~_wgslsmith_div_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(u_input.a, u_input.a), 1u), ~(var_2.d.b | var_2.d.b)), any(select(var_2.d.a, vec4<bool>(var_3, any(var_2.d.a), func_3(vec2<i32>(55663i, 2147483647i), Struct_2(var_2.d.b, var_2.d.a, 24243i, var_2.d)), !var_3), vec4<bool>(var_3 || var_3, true, false, false))));
    return Struct_1(var_2.b, ~(firstTrailingBit(countOneBits(672u)) << (var_2.a % 32u)), any(!select(!vec2<bool>(false, arg_1), vec2<bool>(false, arg_1), !vec2<bool>(true, var_2.b.x))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: u32) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -329f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1028f, -1695f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(504f - 156f) * _wgslsmith_f_op_f32(sign(-952f))), 1f))))));
    var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(270f, 293f), _wgslsmith_f_op_f32(519f - -574f))) - -2105f), -728f)), _wgslsmith_f_op_f32(f32(-1f) * -102f)));
    var var_1 = select(vec2<bool>(arg_1.c, func_3(abs(-arg_2), Struct_2(countOneBits(arg_0.b), vec4<bool>(false, true, arg_1.a.x, false), ~1i, Struct_1(vec4<bool>(arg_1.c, true, arg_0.c, true), 4294967295u, true)))), vec2<bool>(!arg_1.c, true), vec2<bool>(~(~arg_0.b) < ~4294967295u, arg_0.c & all(arg_1.a)));
    var_0 = 1037f;
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1197f, -691f, 857f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1200f, -155f, -619f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-552f, 189f, -679f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-200f, -596f, -1000f)))))));
    return !arg_1.a;
}

fn func_1(arg_0: Struct_3, arg_1: Struct_3, arg_2: u32, arg_3: Struct_1) -> f32 {
    var var_0 = i32(-1i) * -1i;
    var var_1 = Struct_2(_wgslsmith_mult_u32(~u_input.b.x, ~min(_wgslsmith_clamp_u32(arg_2, 4294967295u, 4294967295u), _wgslsmith_clamp_u32(arg_2, 30428u, u_input.a.x))), select(!(!select(vec4<bool>(false, arg_3.a.x, arg_3.a.x, true), vec4<bool>(false, true, arg_3.c, true), vec4<bool>(arg_3.c, false, true, true))), func_4(arg_3, func_2(-4443i, true), vec2<i32>(-11423i, i32(-1i) * -1i), u_input.b.x), arg_3.a), u_input.c, arg_3);
    let var_2 = Struct_2(35108u >> (arg_2 % 32u), select(vec4<bool>(any(var_1.b.wyz), any(func_2(var_1.c, arg_3.c).a.yyz), any(!vec3<bool>(var_1.b.x, var_1.d.a.x, var_1.b.x)), false), vec4<bool>(false, !var_1.b.x, 1u >= _wgslsmith_mult_u32(71130u, arg_2), arg_3.c), vec4<bool>(false, true, func_3(vec2<i32>(var_1.c, var_1.c) & vec2<i32>(-29320i, u_input.c), Struct_2(var_1.a, vec4<bool>(false, var_1.d.a.x, arg_3.a.x, var_1.d.a.x), 0i, Struct_1(vec4<bool>(true, arg_3.c, var_1.d.c, true), arg_3.b, true))), any(arg_3.a.ywx))), u_input.c, Struct_1(func_4(Struct_1(func_4(arg_3, Struct_1(vec4<bool>(false, false, false, false), 0u, arg_3.a.x), vec2<i32>(-23425i, 62384i), arg_2), arg_3.b, true || arg_3.a.x), func_2(2147483647i, var_1.b.x), vec2<i32>(1i, i32(-1i) * -2147483647i), var_1.d.b), ~1u, !var_1.d.a.x));
    var_0 = ~(~(-_wgslsmith_add_i32(53548i, -var_2.c)));
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.x + 910f)))), _wgslsmith_f_op_f32(-arg_1.a.x));
    return -530f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(vec3<f32>(-115f, -858f, -500f), vec3<f32>(234f, 1640f, 1000f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(838f, -190f, -1000f)))) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -712f)))), -835f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_1(Struct_3(vec2<f32>(-1237f, 485f)), Struct_3(vec2<f32>(129f, 1583f)), 79202u, Struct_1(vec4<bool>(false, true, false, false), u_input.b.x, false))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(1318f, -578f)))))));
    var_0 = vec3<f32>(1256f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2368f), -391f)), var_0.x);
    var var_1 = ~vec4<i32>(countOneBits(u_input.c), -(~_wgslsmith_mod_i32(47157i, 12671i)), _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(~vec3<i32>(u_input.c, 59004i, -2147483647i), vec3<i32>(u_input.c, u_input.c, u_input.c) << (vec3<u32>(u_input.b.x, u_input.b.x, 4294967295u) % vec3<u32>(32u))), _wgslsmith_mult_vec3_i32(select(vec3<i32>(-28014i, -19281i, u_input.c), vec3<i32>(11405i, 12097i, 0i), vec3<bool>(true, true, false)), vec3<i32>(u_input.c, u_input.c, u_input.c))), i32(-1i) * -1i);
    var var_2 = Struct_2(~61866u, !vec4<bool>(true, true, false, _wgslsmith_add_u32(u_input.a.x, 0u) > ~u_input.a.x), -2147483647i, Struct_1(select(select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true), false), vec4<bool>(true, true, false, true), u_input.b.x > u_input.a.x), vec4<bool>(u_input.c > 43956i, true, any(vec2<bool>(false, false)), true), any(vec2<bool>(true, true))), ~u_input.b.x, false & ((u_input.a.x < u_input.a.x) | select(true, false, true))));
    let var_3 = select(vec4<bool>(!(func_2(u_input.c, var_2.b.x).b > u_input.b.x), true, ~(-var_1.x) >= _wgslsmith_dot_vec2_i32(vec2<i32>(665i, var_2.c), var_1.ww), var_2.b.x & any(vec3<bool>(var_2.d.c, true, true))), var_2.b, true);
    let var_4 = vec2<i32>(min(~var_2.c, _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(firstTrailingBit(var_1.zzw), ~vec3<i32>(-1i, var_1.x, -14740i), vec3<i32>(var_2.c, var_1.x, 2147483647i)), min(_wgslsmith_mult_vec3_i32(vec3<i32>(-42864i, var_2.c, u_input.c), var_1.ywz), vec3<i32>(u_input.c, 2147483647i, 1i) << (vec3<u32>(u_input.b.x, var_2.a, var_2.a) % vec3<u32>(32u))))), -min(-1i, var_2.c));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.x))), abs(~var_1.xz));
}

