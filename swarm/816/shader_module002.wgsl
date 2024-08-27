struct Struct_1 {
    a: vec4<i32>,
    b: vec2<f32>,
    c: vec2<f32>,
    d: f32,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<i32>(0i, 2147483647i, 10786i, 0i), vec2<f32>(-653f, -1035f), vec2<f32>(1268f, 819f), -128f, vec3<bool>(true, true, false));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec2<f32>) -> vec3<bool> {
    let var_0 = 22968u;
    var var_1 = Struct_1(firstLeadingBit(vec4<i32>(global0.a.x, min(_wgslsmith_add_i32(global0.a.x, global0.a.x), reverseBits(-1i)), _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -24700i, global0.a.x, 2147483647i), vec4<i32>(2147483647i, -2147483647i, global0.a.x, global0.a.x)), ~(~(-49533i)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-895f, -230f))) - arg_1) + vec2<f32>(714f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-146f * global0.b.x), _wgslsmith_f_op_f32(abs(global0.d)), arg_0.x)))), _wgslsmith_f_op_vec2_f32(-global0.c), -193f, select(vec3<bool>(all(vec2<bool>(false, arg_0.x)) && select(true, false, arg_0.x), all(select(vec4<bool>(false, false, global0.e.x, arg_0.x), vec4<bool>(arg_0.x, arg_0.x, global0.e.x, global0.e.x), arg_0.x)), false), vec3<bool>(false, !(1482f != global0.b.x), _wgslsmith_dot_vec4_i32(global0.a, global0.a) > (i32(-1i) * -1i)), !vec3<bool>(any(arg_0), false, true)));
    let var_2 = global0.a.wz;
    global0 = Struct_1(firstTrailingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(var_2.x >> (2837u % 32u), 6312i, i32(-1i) * -8615i, 5233i), -(vec4<i32>(var_2.x, var_1.a.x, var_1.a.x, var_2.x) & global0.a))), _wgslsmith_f_op_vec2_f32(ceil(global0.b)), arg_1, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_1.d, _wgslsmith_f_op_f32(sign(-1260f)))) - _wgslsmith_f_op_f32(min(480f, _wgslsmith_f_op_f32(-global0.c.x)))), _wgslsmith_f_op_f32(f32(-1f) * -635f), false)), select(!select(!var_1.e, vec3<bool>(false, global0.e.x, arg_0.x), false | arg_0.x), !global0.e, any(vec4<bool>(all(vec4<bool>(var_1.e.x, arg_0.x, false, arg_0.x)), any(global0.e), true, true))));
    let var_3 = any(vec2<bool>(abs(global0.a.x) <= (i32(-1i) * -1i), all(select(global0.e, select(vec3<bool>(global0.e.x, var_1.e.x, false), global0.e, false), true))));
    return vec3<bool>(!(!var_3), any(!var_1.e), true);
}

fn func_4(arg_0: vec4<u32>, arg_1: vec4<f32>, arg_2: i32, arg_3: Struct_1) -> vec4<i32> {
    global0 = arg_3;
    global0 = arg_3;
    let var_0 = global0.a.x < -25662i;
    let var_1 = arg_3.a.wz;
    let var_2 = arg_3;
    return vec4<i32>(_wgslsmith_dot_vec4_i32(arg_3.a, vec4<i32>(var_1.x, _wgslsmith_div_i32(var_1.x, 61474i) << (countOneBits(28055u) % 32u), -2147483647i, var_1.x)), _wgslsmith_sub_i32(var_2.a.x, _wgslsmith_mod_i32(-2147483647i, firstTrailingBit(-1i))) << ((_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 75671u, arg_0.x, u_input.a), firstLeadingBit(arg_0)) & 4294967295u) % 32u), -26006i, 11547i);
}

fn func_2(arg_0: vec2<bool>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-418f)) * global0.b.x))));
    global0 = Struct_1(func_4(firstTrailingBit(abs(vec4<u32>(118534u, u_input.a, 39500u, 70029u)) << (~vec4<u32>(u_input.a, 9172u, 0u, 58009u) % vec4<u32>(32u))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1217f, global0.d, -1000f, var_0)))), global0.a.x, Struct_1(vec4<i32>(1i, _wgslsmith_clamp_i32(9025i, 15147i, global0.a.x), global0.a.x, -22077i), _wgslsmith_f_op_vec2_f32(-global0.c), global0.b, 1476f, select(func_3(arg_0, vec2<f32>(-607f, 1052f)), !global0.e, global0.e.x))), vec2<f32>(global0.c.x, var_0), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(global0.c.x - -1923f), _wgslsmith_div_f32(global0.d, 933f)) - vec2<f32>(global0.c.x, 1f)), vec2<f32>(-587f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-162f * -684f), _wgslsmith_f_op_f32(global0.c.x - global0.d), arg_0.x))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -705f)))), func_3(!(!select(global0.e.xx, arg_0, arg_0)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_0 - var_0), -403f) - global0.c)));
    var var_1 = _wgslsmith_mult_vec2_u32(firstLeadingBit(~(~select(vec2<u32>(u_input.b.x, 0u), vec2<u32>(58406u, u_input.a), vec2<bool>(global0.e.x, arg_0.x)))), ~_wgslsmith_mult_vec2_u32(~vec2<u32>(u_input.b.x, u_input.a), vec2<u32>(~u_input.b.x, firstLeadingBit(27528u))));
    var var_2 = arg_0.x;
    var_1 = vec2<u32>(~1u, 1u ^ countOneBits(var_1.x));
    return Struct_1(vec4<i32>(1i, 15031i, 1i, ~(-3567i << (var_1.x % 32u)) | -2147483647i), global0.c, _wgslsmith_f_op_vec2_f32(vec2<f32>(961f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(var_0, global0.d, arg_0.x))))) - _wgslsmith_f_op_vec2_f32(max(vec2<f32>(2225f, _wgslsmith_f_op_f32(f32(-1f) * -1478f)), vec2<f32>(_wgslsmith_f_op_f32(sign(-527f)), _wgslsmith_f_op_f32(sign(-1000f)))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global0.d), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(var_0, -2957f)), 1f)) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(226f + var_0)))))), func_3(select(select(vec2<bool>(true, true), arg_0, global0.e.zz), !vec2<bool>(false, global0.e.x), global0.e.x), global0.c));
}

fn func_5(arg_0: Struct_1) -> vec3<bool> {
    var var_0 = reverseBits(~(~select(vec2<u32>(u_input.b.x, u_input.b.x), vec2<u32>(4294967295u, u_input.b.x), !arg_0.e.xy)));
    var var_1 = Struct_1(-_wgslsmith_div_vec4_i32(func_4(vec4<u32>(68506u, 5350u, var_0.x, var_0.x) >> (vec4<u32>(4294967295u, 63078u, u_input.a, 4294967295u) % vec4<u32>(32u)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1639f, 1176f, arg_0.d, -1009f))), arg_0.a.x, func_2(global0.e.zy)), ~_wgslsmith_mod_vec4_i32(global0.a, vec4<i32>(-35906i, -30449i, global0.a.x, global0.a.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.d) + _wgslsmith_f_op_f32(ceil(arg_0.b.x))), arg_0.d)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.b) + _wgslsmith_f_op_vec2_f32(global0.c - _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-361f, 1525f))))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(1000f - 123f), -1071f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.c.x) * arg_0.d), select(global0.e, select(!(!global0.e), func_3(vec2<bool>(true, global0.e.x), global0.b), !func_3(vec2<bool>(global0.e.x, arg_0.e.x), vec2<f32>(-341f, 765f))), true));
    var var_2 = -abs(_wgslsmith_div_i32(~(~var_1.a.x), var_1.a.x));
    var var_3 = arg_0;
    var_0 = _wgslsmith_sub_vec2_u32(~vec2<u32>(u_input.b.x, 62763u), vec2<u32>(~u_input.b.x, u_input.b.x));
    return select(vec3<bool>(global0.e.x, true, true), vec3<bool>(func_2(!func_3(var_3.e.xz, global0.b).yy).e.x, !(_wgslsmith_f_op_f32(-var_3.b.x) >= var_3.c.x), true), func_3(func_3(!global0.e.yx, _wgslsmith_f_op_vec2_f32(var_3.b - vec2<f32>(var_1.b.x, var_3.b.x))).xx, func_2(vec2<bool>(var_1.e.x, true)).b).x);
}

fn func_6(arg_0: Struct_1) -> Struct_1 {
    var var_0 = arg_0.a;
    return Struct_1(_wgslsmith_mult_vec4_i32(countOneBits(vec4<i32>(global0.a.x, global0.a.x, -37233i, global0.a.x)) >> (~vec4<u32>(37726u, 0u, 1u, 5402u) % vec4<u32>(32u)), ~select(global0.a, global0.a, !vec4<bool>(false, global0.e.x, false, true))), global0.c, vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(-1100f)))))), -320f), 236f, vec3<bool>(!func_3(global0.e.xz, _wgslsmith_div_vec2_f32(vec2<f32>(-1481f, global0.b.x), arg_0.c)).x, false, _wgslsmith_dot_vec4_i32(vec4<i32>(5498i, 2147483647i, arg_0.a.x, -54307i), vec4<i32>(arg_0.a.x, 2147483647i, -34981i, global0.a.x) >> (vec4<u32>(u_input.b.x, u_input.a, 28558u, 1u) % vec4<u32>(32u))) < var_0.x));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<i32>) -> i32 {
    global0 = func_6(Struct_1(arg_0.a, _wgslsmith_f_op_vec2_f32(select(arg_0.b, vec2<f32>(1f, arg_0.d), vec2<bool>(true, all(vec2<bool>(arg_0.e.x, false))))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(213f, arg_0.d))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.d * 881f) * _wgslsmith_f_op_f32(-arg_0.c.x)) * -154f), func_5(func_2(global0.e.yz))));
    global0 = func_2(!global0.e.zy);
    let var_0 = ~(~(~_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b.x, u_input.b.x), vec2<u32>(929u, 72569u))));
    let var_1 = arg_1.x;
    global0 = func_6(arg_0);
    return _wgslsmith_div_i32(~0i, arg_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(~countOneBits(vec4<i32>(reverseBits(2147483647i), -1i, func_1(Struct_1(global0.a, global0.b, vec2<f32>(944f, global0.c.x), global0.b.x, vec3<bool>(true, false, true)), vec3<i32>(global0.a.x, -9993i, global0.a.x)), global0.a.x)), vec2<f32>(_wgslsmith_f_op_f32(global0.d - _wgslsmith_f_op_f32(min(global0.b.x, _wgslsmith_f_op_f32(-1410f * -224f)))), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-710f, global0.d), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global0.d)) * 565f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1226f, 846f), vec2<f32>(global0.b.x, global0.b.x)))) - global0.b), global0.d, global0.e);
    let var_0 = ~global0.a.wwy;
    var var_1 = firstTrailingBit(u_input.b);
    var var_2 = func_2(!(!(!(!global0.e.zy))));
    var var_3 = Struct_1(firstTrailingBit(_wgslsmith_div_vec4_i32(var_2.a, func_6(Struct_1(var_2.a, vec2<f32>(-316f, global0.b.x), vec2<f32>(-949f, 187f), 371f, vec3<bool>(false, true, false))).a)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(func_6(Struct_1(global0.a, var_2.c, global0.b, var_2.d, global0.e)).c, vec2<f32>(_wgslsmith_f_op_f32(-global0.d), _wgslsmith_f_op_f32(f32(-1f) * -1719f)), global0.e.zy)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_2.b.x, -992f)))) * _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(global0.c, global0.c), _wgslsmith_f_op_vec2_f32(-var_2.c)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global0.b.x), -549f) * global0.c), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.b.x, -1126f) - _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-156f, var_2.d), vec2<f32>(1245f, 323f)))) * vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -615f), _wgslsmith_f_op_f32(-var_2.d)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-264f + global0.d) + 321f), var_2.e);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(global0.b - _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.c.x, var_2.c.x) * var_3.b)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(var_3.c)) - vec2<f32>(var_2.d, global0.c.x)) - vec2<f32>(_wgslsmith_f_op_f32(floor(var_3.b.x)), _wgslsmith_f_op_f32(-var_2.c.x)))));
}

