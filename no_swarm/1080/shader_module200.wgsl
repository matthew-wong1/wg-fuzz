struct Struct_1 {
    a: vec3<f32>,
    b: vec4<u32>,
    c: vec4<f32>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: Struct_1,
    d: vec4<bool>,
    e: vec3<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: vec2<f32>,
}

struct Struct_4 {
    a: vec4<i32>,
    b: i32,
    c: Struct_3,
    d: i32,
    e: vec3<f32>,
}

struct Struct_5 {
    a: Struct_1,
    b: u32,
    c: f32,
    d: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: Struct_5 = Struct_5(Struct_1(vec3<f32>(-430f, -131f, -513f), vec4<u32>(1u, 0u, 25523u, 12927u), vec4<f32>(-1620f, -174f, 789f, 214f), vec2<i32>(-5669i, 22332i)), 4294967295u, -534f, 4294967295u);

var<private> global2: vec2<f32> = vec2<f32>(-1000f, -711f);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: i32) -> i32 {
    var var_0 = false;
    let var_1 = _wgslsmith_f_op_vec3_f32(-global1.a.a);
    global1 = Struct_5(global1.a, select(~global1.b, ~(~firstLeadingBit(56710u)), select(any(vec2<bool>(true, true)), !any(vec3<bool>(true, false, false)), -406f >= _wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(719f + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(var_1.x)), global1.a.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(var_1.x)), _wgslsmith_f_op_f32(-849f - var_1.x))), true)), global1.a.b.x);
    var var_2 = _wgslsmith_f_op_f32(trunc(-1957f));
    global0 = ~vec4<i32>(-1i, 1i, -1i, arg_0);
    return global0.x;
}

fn func_2(arg_0: i32, arg_1: vec2<u32>, arg_2: bool, arg_3: vec2<bool>) -> f32 {
    global1 = Struct_5(global1.a, global1.d, 487f, _wgslsmith_add_u32(global1.d, _wgslsmith_div_u32(global1.b, 8278u)));
    var var_0 = Struct_4(_wgslsmith_mod_vec4_i32(vec4<i32>(-8841i, 2147483647i, firstLeadingBit(2147483647i), ~(-39819i)) & firstLeadingBit(vec4<i32>(-1i, u_input.c, -16612i, -18337i)), countOneBits(vec4<i32>(-2147483647i, 41005i, 2147483647i, global1.a.d.x)) >> ((global1.a.b ^ _wgslsmith_add_vec4_u32(global1.a.b, global1.a.b)) % vec4<u32>(32u))), _wgslsmith_add_i32(_wgslsmith_div_i32(-1i, abs(1i)), -12264i), Struct_3(Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global2.x, global2.x, -302f, global1.c)))), global1.a, global1.a, !vec4<bool>(arg_2, true, arg_3.x, arg_2), _wgslsmith_f_op_vec3_f32(global1.a.c.xwx * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, 608f, -930f)))), false, global1.a.a.xx), ~_wgslsmith_mod_i32(_wgslsmith_mult_i32(func_3(2147483647i), u_input.a.x << (52739u % 32u)), -20419i), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global2.x), -1735f, global2.x), global1.a.a));
    var var_1 = var_0.c.a.b.d;
    global1 = Struct_5(Struct_1(global1.a.c.zxw, vec4<u32>(~1u, global1.d, ~_wgslsmith_sub_u32(var_0.c.a.b.b.x, 1u), ~83138u), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(sign(var_0.c.a.c.c)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(global1.a.c)) * _wgslsmith_f_op_vec4_f32(global1.a.c + var_0.c.a.b.c))), vec2<i32>(func_3(3701i), -20604i)), var_0.c.a.c.b.x, 1f, _wgslsmith_mod_u32(~abs(firstTrailingBit(arg_1.x)), global1.a.b.x >> (21234u % 32u)));
    var_0 = Struct_4(-vec4<i32>(_wgslsmith_mult_i32(firstTrailingBit(var_0.a.x), 30992i), -(-2147483647i | global0.x), -u_input.a.x, firstTrailingBit(_wgslsmith_mult_i32(global1.a.d.x, var_1.x))), ~var_0.c.a.b.d.x, var_0.c, max(~(~(~27634i)), ~_wgslsmith_dot_vec3_i32(vec3<i32>(var_1.x, global0.x, 1i), ~vec3<i32>(global1.a.d.x, var_0.b, 2147483647i))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_div_f32(670f, -1267f), _wgslsmith_div_f32(global1.c, global1.c), -1309f))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global2.x, var_0.c.a.b.c.x, -627f))), var_0.e))));
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(var_0.c.c.x)), global1.a.a.x));
}

fn func_4(arg_0: vec4<f32>) -> vec3<bool> {
    global2 = vec2<f32>(arg_0.x, global1.c);
    global1 = Struct_5(Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1070f, -943f, arg_0.x)))), _wgslsmith_f_op_vec3_f32(step(arg_0.xwz, arg_0.yyz))), (select(global1.a.b, vec4<u32>(148709u, global1.a.b.x, global1.b, global1.d), vec4<bool>(false, true, true, false)) ^ firstLeadingBit(global1.a.b)) ^ global1.a.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(ceil(arg_0)))) + vec4<f32>(global2.x, global1.a.c.x, _wgslsmith_f_op_f32(f32(-1f) * -125f), _wgslsmith_f_op_f32(max(159f, arg_0.x)))), select(~firstTrailingBit(vec2<i32>(-1i, global0.x)), ~u_input.a, vec2<bool>(true, any(vec2<bool>(false, false))))), global1.b, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(316f * arg_0.x) * _wgslsmith_f_op_f32(select(global2.x, arg_0.x, false)))), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(2052f)), _wgslsmith_f_op_f32(-704f * arg_0.x)), _wgslsmith_f_op_f32(func_2(_wgslsmith_sub_i32(2147483647i, 0i), global1.a.b.zw, 5813u >= global1.b, vec2<bool>(true, true)))))), ~(~global1.d));
    let var_0 = (1i ^ global1.a.d.x) ^ -1i;
    let var_1 = global0.xwx;
    let var_2 = ~1u;
    return vec3<bool>((global1.d ^ 71014u) >= max(global1.d, 7687u), !(global1.b >= _wgslsmith_mult_u32(var_2, 0u)) && (u_input.a.x != -(i32(-1i) * -2147483647i)), false && any(vec3<bool>(true, true, true)));
}

fn func_1(arg_0: u32, arg_1: vec4<f32>, arg_2: vec2<f32>, arg_3: vec3<i32>) -> vec3<bool> {
    global2 = _wgslsmith_f_op_vec2_f32(-arg_2);
    var var_0 = global2.x;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-210f - arg_2.x))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global1.a.c.x, arg_2.x)) * global2.x) * _wgslsmith_f_op_f32(-arg_1.x))));
    global2 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.a.c.x, 180f))) + vec2<f32>(_wgslsmith_div_f32(-464f, _wgslsmith_f_op_f32(min(global1.a.a.x, 398f))), arg_2.x))));
    var var_2 = vec2<i32>(1i, 57380i);
    return func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1227f, -632f, -1379f, -1449f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1544f, arg_1.x, global1.c, 976f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.x, var_1, -792f, -1410f))) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-209f - 1764f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_div_f32(-1462f, global2.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(global1.a.d.x, vec2<u32>(0u, 1u), false, vec2<bool>(false, false)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(var_1)), global2.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_5(global1.a, 29257u, 1000f, _wgslsmith_sub_u32(~(~_wgslsmith_clamp_u32(4294967295u, 0u, 1u)), 46935u));
    global0 = vec4<i32>(u_input.b, firstLeadingBit(-2147483647i), -_wgslsmith_div_i32(0i, abs(-48460i)), _wgslsmith_div_i32(_wgslsmith_mult_i32(42978i, global0.x), ~(~firstLeadingBit(40706i))));
    global0 = -vec4<i32>(global1.a.d.x, -1i, ~(~_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -1i, var_0.a.d.x), global0.zzy)), global1.a.d.x);
    let var_1 = all(!select(vec3<bool>(true, true, true), !func_1(0u, var_0.a.c, var_0.a.c.xz, global0.zzw), vec3<bool>(true, true, true)));
    let var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global1.a.c)) * var_0.a.c), var_0.a, var_0.a, !(!(!select(vec4<bool>(var_1, var_1, var_1, var_1), vec4<bool>(var_1, var_1, var_1, var_1), vec4<bool>(true, var_1, true, true)))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_div_f32(-117f, global1.c), _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_0.c + 2758f), _wgslsmith_f_op_f32(f32(-1f) * -1532f), var_1))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(312f * 586f), global2.x, global1.a.a.x), _wgslsmith_f_op_vec3_f32(var_0.a.a + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1270f, global1.a.c.x, 292f))))))));
    let var_3 = Struct_5(Struct_1(vec3<f32>(-1212f, _wgslsmith_f_op_f32(global1.a.c.x * _wgslsmith_f_op_f32(round(-405f))), -403f), ~(~var_0.a.b), vec4<f32>(_wgslsmith_f_op_f32(var_2.c.a.x + global2.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.x - -458f) * _wgslsmith_f_op_f32(f32(-1f) * -289f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-749f - var_0.c) * _wgslsmith_f_op_f32(abs(var_0.a.a.x))), -472f), abs(_wgslsmith_div_vec2_i32(min(vec2<i32>(var_0.a.d.x, u_input.b), vec2<i32>(u_input.a.x, u_input.c)), ~vec2<i32>(2147483647i, 0i)))), ~var_2.b.b.x, global2.x, var_2.c.b.x);
    global2 = _wgslsmith_f_op_vec2_f32(-var_3.a.a.zx);
    global2 = vec2<f32>(_wgslsmith_div_f32(362f, -787f), var_0.c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(~var_3.a.d.x, _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.a.d.x, -1i, 2147483647i, 94145i), vec4<i32>(global1.a.d.x, u_input.b, -1i, 1i)), _wgslsmith_div_i32(var_0.a.d.x, -13052i))) ^ func_3(min(var_3.a.d.x, max(var_3.a.d.x, 0i))), vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(21177u, 81392u, 0u), var_0.a.b.zwz) ^ 4294967295u, 4294967295u) << ((var_3.a.b.xy | ~var_0.a.b.zx) % vec2<u32>(32u)));
}

