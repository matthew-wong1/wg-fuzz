struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: bool,
    b: vec2<bool>,
    c: f32,
}

struct Struct_5 {
    a: vec4<f32>,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec4<i32>,
    d: vec3<i32>,
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

var<private> global0: f32;

var<private> global1: Struct_2;

var<private> global2: array<vec2<f32>, 9>;

var<private> global3: array<Struct_4, 26> = array<Struct_4, 26>(Struct_4(false, vec2<bool>(true, true), -374f), Struct_4(false, vec2<bool>(false, false), -1000f), Struct_4(true, vec2<bool>(true, false), 315f), Struct_4(false, vec2<bool>(true, false), -1077f), Struct_4(true, vec2<bool>(true, false), 950f), Struct_4(true, vec2<bool>(false, true), 1000f), Struct_4(false, vec2<bool>(true, false), -1391f), Struct_4(false, vec2<bool>(false, true), -1000f), Struct_4(false, vec2<bool>(true, false), 967f), Struct_4(true, vec2<bool>(true, true), -869f), Struct_4(true, vec2<bool>(true, true), 428f), Struct_4(false, vec2<bool>(true, true), -1184f), Struct_4(true, vec2<bool>(true, false), -417f), Struct_4(false, vec2<bool>(false, true), -1394f), Struct_4(false, vec2<bool>(false, true), 1068f), Struct_4(true, vec2<bool>(false, false), -2298f), Struct_4(false, vec2<bool>(true, true), -230f), Struct_4(false, vec2<bool>(true, false), -114f), Struct_4(true, vec2<bool>(false, false), 1153f), Struct_4(true, vec2<bool>(true, false), 1103f), Struct_4(true, vec2<bool>(false, false), 368f), Struct_4(false, vec2<bool>(false, true), -1182f), Struct_4(true, vec2<bool>(true, false), -155f), Struct_4(true, vec2<bool>(false, false), -311f), Struct_4(true, vec2<bool>(false, false), 298f), Struct_4(true, vec2<bool>(false, false), 527f));

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: bool, arg_3: i32) -> vec2<bool> {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(587f * _wgslsmith_div_f32(-2670f, 574f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2402f), _wgslsmith_div_f32(-963f, 432f))), 0u == ~_wgslsmith_dot_vec2_u32(arg_1.xy, vec2<u32>(arg_1.x, 1u)))));
    let var_1 = Struct_3(280f);
    var var_2 = min(u_input.c.wwz, _wgslsmith_mod_vec3_i32(u_input.d, _wgslsmith_sub_vec3_i32(abs(vec3<i32>(arg_3, arg_3, u_input.a) | vec3<i32>(u_input.a, 14946i, arg_3)), _wgslsmith_mult_vec3_i32(~vec3<i32>(2147483647i, u_input.a, -42834i), _wgslsmith_add_vec3_i32(vec3<i32>(-1i, 974i, u_input.a), u_input.c.zzw)))));
    var_2 = vec3<i32>(~(-arg_3), min(-2147483647i, var_2.x ^ u_input.c.x), max(_wgslsmith_add_i32(max(var_2.x | arg_3, _wgslsmith_mult_i32(-43472i, 0i)), var_2.x), reverseBits(1i)));
    global3 = array<Struct_4, 26>();
    return vec2<bool>(true, arg_2);
}

fn func_4(arg_0: f32, arg_1: f32, arg_2: vec2<i32>, arg_3: vec2<bool>) -> vec4<f32> {
    let var_0 = Struct_3(arg_1);
    let var_1 = global3[_wgslsmith_index_u32(~abs(1u), 26u)];
    global0 = -1527f;
    global1 = Struct_2(~_wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b.x, 4294967295u), u_input.b.xz), firstLeadingBit(~global1.a)));
    var var_2 = arg_3.x;
    return _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.a, arg_1, 166f, -743f))) * vec4<f32>(var_1.c, arg_1, -126f, 1087f)) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(124f, arg_0, var_0.a, var_1.c), vec4<f32>(-290f, -307f, arg_0, 676f))))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(308f, 1565f, 312f, arg_1)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, 1656f, 912f, arg_0) - vec4<f32>(846f, -267f, 2239f, var_0.a))))))));
}

fn func_2(arg_0: vec3<u32>, arg_1: vec3<bool>, arg_2: vec3<u32>) -> vec3<bool> {
    global3 = array<Struct_4, 26>();
    global3 = array<Struct_4, 26>();
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-695f, _wgslsmith_f_op_f32(1056f * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, -1058f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), -1240f) - _wgslsmith_f_op_vec4_f32(func_4(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-341f, _wgslsmith_f_op_f32(ceil(1000f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(417f, _wgslsmith_div_f32(1787f, -266f)))), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.d.x, u_input.c.x), _wgslsmith_clamp_vec2_i32(u_input.d.yx, vec2<i32>(-14069i, 26002i), u_input.d.yz)) ^ select(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.c.x, u_input.c.x), vec2<i32>(u_input.a, -1i), u_input.d.yx), vec2<i32>(1i, u_input.c.x) << (global1.a % vec2<u32>(32u)), arg_1.x), func_3(Struct_1(select(arg_1, vec3<bool>(true, true, true), true)), firstTrailingBit(vec4<u32>(19044u, arg_0.x, 1u, arg_0.x)), all(!vec3<bool>(arg_1.x, false, arg_1.x)), ~firstTrailingBit(u_input.d.x)))));
    global0 = 1004f;
    let var_1 = Struct_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, -891f, -1423f, -836f) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.x, var_0.x, -357f, -735f)))))), -(vec2<i32>(_wgslsmith_mod_i32(-58524i, 894i), u_input.c.x ^ -9555i) ^ _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a, u_input.a), -vec2<i32>(u_input.a, 1i), _wgslsmith_mod_vec2_i32(u_input.d.xz, vec2<i32>(u_input.c.x, u_input.a)))));
    return select(!(!arg_1), arg_1, !(abs(u_input.d.x ^ -6683i) >= var_1.b.x));
}

fn func_5(arg_0: i32, arg_1: vec3<bool>, arg_2: Struct_3, arg_3: vec4<i32>) -> Struct_4 {
    global1 = Struct_2(_wgslsmith_mult_vec2_u32(~global1.a, u_input.b.xw));
    global2 = array<vec2<f32>, 9>();
    var var_0 = 21179u;
    let var_1 = vec2<i32>(abs(-_wgslsmith_mod_i32(arg_0, arg_0)), _wgslsmith_sub_i32(reverseBits(_wgslsmith_mult_i32(u_input.a, arg_0)), select(firstLeadingBit(arg_0), -30269i, false))) | _wgslsmith_sub_vec2_i32(-abs(u_input.c.yy), _wgslsmith_div_vec2_i32(~vec2<i32>(arg_0, arg_3.x), u_input.c.wx) ^ abs(vec2<i32>(0i, 2147483647i) ^ u_input.d.zy));
    global1 = Struct_2(~max(~reverseBits(u_input.b.xw), vec2<u32>(u_input.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 1u), u_input.b))));
    return global3[_wgslsmith_index_u32(~abs(70933u), 26u)];
}

fn func_1(arg_0: f32) -> f32 {
    global3 = array<Struct_4, 26>();
    let var_0 = ~(~vec4<u32>(u_input.b.x, u_input.b.x, 0u, ~(global1.a.x >> (global1.a.x % 32u))));
    var var_1 = global3[_wgslsmith_index_u32(69000u, 26u)];
    var_1 = func_5(u_input.a, func_2(~(~(~vec3<u32>(global1.a.x, 104428u, 62849u))), vec3<bool>(var_1.a, any(!vec3<bool>(var_1.a, true, false)), !(var_0.x < 0u)), vec3<u32>(abs(1u), _wgslsmith_mod_u32(var_0.x, var_0.x), ~(~var_0.x))), Struct_3(_wgslsmith_f_op_f32(exp2(arg_0))), vec4<i32>(u_input.c.x | _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, 44082i, -40939i, u_input.c.x), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.c.x, u_input.a, -2147483647i, -26830i), vec4<i32>(u_input.d.x, 790i, 9295i, u_input.a))), i32(-1i) * -u_input.a, 0i, -(~u_input.c.x) << (global1.a.x % 32u)));
    let var_2 = Struct_2(~(~global1.a));
    return 495f;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec2<f32>, 9>();
    global1 = Struct_2(u_input.b.yy);
    let var_0 = Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-399f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-830f * -1930f))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1019f, -124f)))))));
    var var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-568f, -361f, -497f, 1987f))))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(438f - var_0.a), 1407f, _wgslsmith_f_op_f32(func_1(-783f)), -1815f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(248f, var_0.a, var_0.a, var_0.a)))) - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.a, 1325f, var_0.a, var_0.a)))))), vec4<bool>(func_5(_wgslsmith_dot_vec3_i32(reverseBits(u_input.c.zzw), u_input.d), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false))), var_0, vec4<i32>(~(-2147483647i), -2147483647i ^ u_input.c.x, u_input.d.x, _wgslsmith_div_i32(-2147483647i, -4035i))).a, any(vec3<bool>(true, true, true)), !all(vec2<bool>(true, false)), !func_5(31732i, vec3<bool>(true, true, true), Struct_3(var_0.a), vec4<i32>(0i, -4433i, u_input.d.x, 2147483647i)).a)));
    var var_2 = Struct_2(global1.a);
    var var_3 = select(vec2<bool>(func_3(Struct_1(vec3<bool>(false, false, false)), u_input.b, func_2(vec3<u32>(u_input.b.x, 4294967295u, var_2.a.x), vec3<bool>(true, true, true), vec3<u32>(64119u, 510u, var_2.a.x)).x, 1i).x, true), select(!select(vec2<bool>(false, false), func_3(Struct_1(vec3<bool>(false, false, false)), vec4<u32>(89574u, 0u, u_input.b.x, var_2.a.x), true, 49386i), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false))), vec2<bool>(var_2.a.x == _wgslsmith_clamp_u32(72345u, 4294967295u, 4294967295u), var_2.a.x >= global1.a.x), select(!func_5(0i, vec3<bool>(true, true, true), Struct_3(-325f), u_input.c).b, vec2<bool>(true, true), any(vec2<bool>(true, true)))), func_5(2147483647i, vec3<bool>(true, true, true), var_0, u_input.c).b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_1.x, -1742f, -432f, _wgslsmith_f_op_f32(-184f * -316f)))));
}

