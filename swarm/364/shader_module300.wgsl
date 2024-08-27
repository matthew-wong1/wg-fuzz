struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: bool,
    d: f32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec4<u32>,
    c: bool,
    d: i32,
}

struct Struct_4 {
    a: i32,
    b: vec3<bool>,
    c: vec2<i32>,
}

struct Struct_5 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: u32;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> f32 {
    var var_0 = _wgslsmith_add_vec3_i32(~(-reverseBits(vec3<i32>(-40807i, 2147483647i, -2147483647i))), ~(vec3<i32>(-1i) * -(vec3<i32>(2147483647i, 21857i, 6052i) >> (u_input.a.yzz % vec3<u32>(32u)))));
    let var_1 = (min(~countOneBits(vec3<i32>(35606i, var_0.x, var_0.x)), vec3<i32>(67199i, -38358i >> (u_input.b % 32u), 1i)) << (vec3<u32>(_wgslsmith_sub_u32(46105u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, u_input.a.x), vec2<u32>(55948u, u_input.c))), ~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 20643u, 12604u), u_input.a.zwz), abs(abs(46249u))) % vec3<u32>(32u))) >> (~_wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 0u), vec3<u32>(1u, u_input.b, 4294967295u)), u_input.a.x, 0u), u_input.a.zzx) % vec3<u32>(32u));
    global1 = ~_wgslsmith_add_u32(0u, 4294967295u);
    global0 = Struct_1(global0.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.d, global0.b.x) - _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(exp2(global0.b)))))), select(all(vec4<bool>(true, true, true, true)) | all(select(vec2<bool>(global0.c, global0.c), vec2<bool>(false, true), global0.a)), (true | global0.c) == false, false), _wgslsmith_f_op_f32(f32(-1f) * -342f));
    global0 = Struct_1(true, global0.b, all(!vec2<bool>(all(vec4<bool>(global0.c, global0.a, global0.c, false)), true)), global0.d);
    return global0.d;
}

fn func_2() -> f32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-global0.b);
    global0 = Struct_1(select(any(!vec2<bool>(true, global0.c)), global0.c, all(!(!vec4<bool>(false, true, global0.c, false)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0 * _wgslsmith_f_op_vec2_f32(global0.b * var_0)), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(global0.b, global0.b) * _wgslsmith_f_op_vec2_f32(min(global0.b, global0.b)))) * global0.b), global0.a && (global0.c | !(!global0.c)), _wgslsmith_f_op_f32(func_3()));
    var var_1 = Struct_3(select(vec2<bool>(true & (global0.a && global0.c), global0.a), select(select(!vec2<bool>(false, global0.a), !vec2<bool>(true, global0.c), vec2<bool>(false, true)), vec2<bool>(true, true), select(vec2<bool>(true, global0.c), !vec2<bool>(true, global0.c), vec2<bool>(true, true))), true), reverseBits(abs(reverseBits(vec4<u32>(61785u, u_input.b, u_input.b, u_input.b)))), true, ~(-28687i));
    var var_2 = Struct_2(vec2<bool>(true | global0.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1228f * 1495f) + -548f) > global0.d), Struct_1(false, _wgslsmith_f_op_vec2_f32(var_0 + vec2<f32>(_wgslsmith_f_op_f32(global0.d + -1000f), _wgslsmith_f_op_f32(f32(-1f) * -1554f))), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(440f, 1000f)) + -534f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, global0.d) - _wgslsmith_div_f32(global0.b.x, var_0.x))) - -941f));
    let var_3 = _wgslsmith_clamp_u32(countOneBits(39760u), reverseBits(_wgslsmith_add_u32(1u, _wgslsmith_dot_vec2_u32(min(u_input.a.zy, vec2<u32>(u_input.b, u_input.b)), ~u_input.a.yy))), _wgslsmith_mult_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 45455u, var_1.b.x, 4294967295u), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, u_input.c, u_input.c, u_input.a.x), var_1.b)), _wgslsmith_add_u32(var_1.b.x, u_input.b)));
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.c), var_0.x)) + -134f)));
}

fn func_4(arg_0: Struct_3, arg_1: i32, arg_2: vec3<u32>, arg_3: f32) -> vec4<i32> {
    var var_0 = Struct_4(_wgslsmith_clamp_i32(arg_0.d, arg_1, _wgslsmith_mod_i32(arg_1, -(arg_0.d | arg_0.d))), select(vec3<bool>(false, (global0.a | global0.a) && false, true), !(!vec3<bool>(global0.c, true, true)), !select(vec3<bool>(arg_0.a.x, arg_0.a.x, global0.a), vec3<bool>(global0.a, true, true), select(vec3<bool>(global0.c, true, false), vec3<bool>(arg_0.c, true, true), arg_0.c))), _wgslsmith_sub_vec2_i32(vec2<i32>(reverseBits(arg_1), _wgslsmith_clamp_i32(arg_0.d, -3144i, _wgslsmith_sub_i32(1i, arg_0.d))), vec2<i32>(max(-1i, arg_1), arg_1) >> (abs(~arg_2.yy) % vec2<u32>(32u))));
    let var_1 = Struct_2(vec2<bool>(global0.c && true, global0.a), Struct_1(true, _wgslsmith_f_op_vec2_f32(-global0.b), !global0.c, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_3)))), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(arg_3, arg_3), 258f)));
    global0 = Struct_1(false, global0.b, false, _wgslsmith_f_op_f32(-global0.d));
    var var_2 = var_1.b;
    var var_3 = countOneBits(min(_wgslsmith_sub_vec4_i32(-_wgslsmith_div_vec4_i32(vec4<i32>(var_0.c.x, 0i, var_0.c.x, var_0.a), vec4<i32>(-1i, arg_0.d, arg_0.d, -1i)), ~vec4<i32>(arg_0.d, 26467i, 8750i, arg_1) & abs(vec4<i32>(-1i, arg_1, arg_0.d, arg_0.d))), ~(firstLeadingBit(vec4<i32>(-2147483647i, -15810i, arg_0.d, 34339i)) | firstTrailingBit(vec4<i32>(-20206i, -1i, 29366i, -1i)))));
    return ~(_wgslsmith_div_vec4_i32(~(-vec4<i32>(-1i, -36350i, var_0.c.x, var_3.x)), select(vec4<i32>(-5495i, -33669i, var_3.x, var_0.c.x), -vec4<i32>(1i, 1i, -2286i, arg_0.d), !vec4<bool>(true, var_0.b.x, false, var_0.b.x))) ^ _wgslsmith_div_vec4_i32(vec4<i32>(-1i, _wgslsmith_clamp_i32(var_0.a, 2147483647i, var_0.a), 24332i, _wgslsmith_div_i32(21669i, arg_1)), _wgslsmith_sub_vec4_i32(vec4<i32>(var_3.x, -2457i, arg_0.d, var_3.x) | vec4<i32>(4376i, 12934i, arg_0.d, 0i), -vec4<i32>(32018i, var_0.a, var_0.c.x, arg_1))));
}

fn func_1(arg_0: vec3<f32>) -> vec4<u32> {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b.x) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-150f * arg_0.x) * -429f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(988f * _wgslsmith_f_op_f32(arg_0.x - -2904f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.d) + _wgslsmith_f_op_f32(abs(1247f))) - -219f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(1249f, -923f)), -1007f), 307f)))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(452f, 789f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1139f)), arg_0.x)));
    let var_2 = _wgslsmith_clamp_vec4_i32(func_4(Struct_3(vec2<bool>(true, true), firstLeadingBit(~vec4<u32>(u_input.b, u_input.b, 1189u, u_input.a.x)), var_0.x <= 916f, -(~(-42616i))), 1i, reverseBits(_wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 36191u, u_input.a.x), vec3<u32>(u_input.c, u_input.a.x, u_input.a.x)), vec3<u32>(1u, u_input.c, u_input.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2()))), _wgslsmith_div_vec4_i32(vec4<i32>(-1i) * -(~vec4<i32>(13031i, 2147483647i, -15205i, -1i)), vec4<i32>(1i, 1i, 1i, 1i) >> (u_input.a % vec4<u32>(32u))), vec4<i32>(-24429i, _wgslsmith_sub_i32(countOneBits(2147483647i), ~countOneBits(-1i)), 18469i, 3804i));
    global1 = u_input.c;
    var var_3 = _wgslsmith_f_op_f32(-global0.d);
    return vec4<u32>(min(0u, 4294967295u), select(~(~(u_input.a.x ^ 109680u)), 11786u, select(global0.c, !global0.a == true, select(true, global0.a, !global0.c))), ~_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(~u_input.a, vec4<u32>(u_input.b, u_input.c, u_input.a.x, 28362u)), u_input.b), ~(~_wgslsmith_dot_vec2_u32(abs(vec2<u32>(4294967295u, u_input.a.x)), _wgslsmith_mult_vec2_u32(u_input.a.xz, vec2<u32>(4294967295u, 11877u)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = min(u_input.a, func_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.d, global0.d, global0.b.x)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-781f, global0.d, global0.d))))) & _wgslsmith_clamp_vec4_u32(u_input.a, vec4<u32>(abs(0u), ~(u_input.b | 23290u), 116575u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1u, u_input.a.x, 4332u), countOneBits(u_input.a))), select(~u_input.a, select(vec4<u32>(0u, u_input.c, u_input.b, 0u), vec4<u32>(u_input.a.x, 22335u, u_input.a.x, 0u), vec4<bool>(global0.a, false, false, true)), vec4<bool>(global0.c, true, global0.a, true)) << (~(~vec4<u32>(u_input.c, 62657u, u_input.c, u_input.c)) % vec4<u32>(32u)));
    let var_1 = firstLeadingBit(_wgslsmith_add_u32(abs(var_0.x), _wgslsmith_div_u32(~var_0.x, var_0.x)) | u_input.a.x);
    var var_2 = var_1;
    global0 = Struct_1(all(vec2<bool>(!(!global0.c), global0.a)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b.x) + global0.b.x), 1171f)), false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0.d)))));
    let var_3 = ~(_wgslsmith_sub_vec2_u32(func_1(vec3<f32>(-138f, global0.b.x, global0.d)).wy << (u_input.a.xx % vec2<u32>(32u)), _wgslsmith_add_vec2_u32(~var_0.yx, select(vec2<u32>(var_0.x, 10709u), vec2<u32>(1u, 7587u), true))) ^ abs(abs(min(vec2<u32>(var_0.x, var_0.x), vec2<u32>(4294967295u, 46674u)))));
    var var_4 = ~_wgslsmith_div_vec3_i32(vec3<i32>(min(-17161i, -1572i), ~21825i, i32(-1i) * -41860i), vec3<i32>(-1i) * -vec3<i32>(-39489i, -43767i, 27435i)) >> (vec3<u32>(_wgslsmith_div_u32(var_1, _wgslsmith_dot_vec4_u32(~var_0, ~var_0)), 0u, 1u) % vec3<u32>(32u));
    let var_5 = u_input.a.zxx;
    let var_6 = Struct_4(var_4.x, !vec3<bool>(!global0.a, select(false, false, any(vec3<bool>(true, false, true))), global0.c), var_4.zz);
    global0 = Struct_1(false, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(global0.b, vec2<f32>(global0.b.x, global0.d)) + _wgslsmith_f_op_vec2_f32(sign(global0.b)))))), false, global0.d);
    let x = u_input.a;
    s_output = StorageBuffer(abs(~1u ^ _wgslsmith_add_u32(abs(u_input.b), abs(0u))));
}

