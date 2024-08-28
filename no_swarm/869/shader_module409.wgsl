struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec4<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: vec4<i32>;

var<private> global2: vec2<bool> = vec2<bool>(true, true);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1) -> vec4<i32> {
    let var_0 = u_input.c.ww;
    let var_1 = arg_1;
    global2 = select(vec2<bool>(!any(select(vec2<bool>(true, true), vec2<bool>(false, global2.x), vec2<bool>(global2.x, true))), true), !vec2<bool>(!(2147483647i > global1.x), global2.x), select(vec2<bool>(!(!global2.x), !any(vec3<bool>(global2.x, false, global2.x))), !(!(!vec2<bool>(global2.x, global2.x))), select(!vec2<bool>(global2.x, global2.x), !(!vec2<bool>(global2.x, true)), global2.x)));
    global2 = select(vec2<bool>(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -810f) - -154f) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(551f, 633f)))), vec2<bool>(false, all(vec2<bool>(true, global2.x))), select(select(select(select(vec2<bool>(true, false), vec2<bool>(false, true), global2.x), vec2<bool>(true, true), global2.x || true), select(select(vec2<bool>(global2.x, false), vec2<bool>(false, global2.x), global2.x), vec2<bool>(true, true), vec2<bool>(false, true)), -26517i >= _wgslsmith_sub_i32(-529i, arg_1.a.x)), vec2<bool>(false, true), global2.x));
    var var_2 = ~firstTrailingBit(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a.x, -2147483647i), _wgslsmith_div_vec2_i32(vec2<i32>(-1i, -1i), arg_1.a.zz))) | (u_input.a & vec2<i32>(select(-16767i, -2147483647i & u_input.d, any(vec3<bool>(false, global2.x, false))), _wgslsmith_div_i32(arg_1.a.x, _wgslsmith_mod_i32(u_input.a.x, global1.x))));
    return vec4<i32>(_wgslsmith_mod_i32(2147483647i, 2147483647i), abs(arg_1.a.x), -10528i, -8912i);
}

fn func_4(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: f32, arg_3: Struct_1) -> vec2<bool> {
    global1 = -vec4<i32>(-18137i, _wgslsmith_dot_vec3_i32(select(vec3<i32>(15883i, arg_1.x, arg_1.x), arg_0.a.yzy, global2.x), -vec3<i32>(-10273i, -2147483647i, arg_1.x)) & arg_1.x, -reverseBits(arg_0.a.x), _wgslsmith_sub_i32(0i, countOneBits(arg_0.a.x)) | countOneBits(2147483647i));
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(2744f, arg_2)) + _wgslsmith_f_op_f32(trunc(arg_2)));
    var_0 = -733f;
    return select(select(vec2<bool>(true, ~(-6964i) < _wgslsmith_dot_vec4_i32(vec4<i32>(-2085i, -62150i, 3748i, arg_1.x), arg_3.a)), vec2<bool>(true, true), vec2<bool>(614f <= _wgslsmith_f_op_f32(trunc(arg_2)), true)), vec2<bool>(max(~arg_1.x, -36388i) <= reverseBits(1i), global2.x), !(!(!(!vec2<bool>(true, global2.x)))));
}

fn func_2(arg_0: vec4<u32>, arg_1: vec4<u32>, arg_2: i32) -> f32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1609f, -731f, 791f))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1054f, 411f, 484f))), vec3<f32>(114f, -1955f, 306f))) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -989f)), -490f, -743f)));
    global2 = vec2<bool>(global2.x & false, !(global2.x | !global2.x));
    var var_1 = !vec4<bool>(true, false, any(!vec2<bool>(global2.x, global2.x)), false);
    global2 = func_4(Struct_1(~(vec4<i32>(arg_2, -2147483647i, -26532i, u_input.d) | vec4<i32>(-79165i, -2147483647i, 2147483647i, global1.x)) ^ vec4<i32>(countOneBits(global1.x), -12995i, ~1i, -39527i)), _wgslsmith_mult_vec4_i32(-select(~vec4<i32>(arg_2, global1.x, arg_2, arg_2), vec4<i32>(2147483647i, arg_2, global1.x, -2147483647i), vec4<bool>(true, var_1.x, global2.x, var_1.x)), ~(~_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, global1.x, arg_2, 0i), vec4<i32>(u_input.d, arg_2, global1.x, -2147483647i)))), -223f, Struct_1(~_wgslsmith_clamp_vec4_i32(vec4<i32>(24800i, global1.x, arg_2, 0i), func_3(Struct_2(26869u), Struct_1(vec4<i32>(arg_2, u_input.d, -2147483647i, u_input.a.x))), ~vec4<i32>(arg_2, -52921i, arg_2, arg_2))));
    let var_2 = _wgslsmith_add_u32(_wgslsmith_mod_u32(4294967295u, ~_wgslsmith_sub_u32(1u, ~u_input.c.x)), u_input.e);
    return -1196f;
}

fn func_5(arg_0: f32, arg_1: i32, arg_2: i32) -> vec2<bool> {
    return vec2<bool>(arg_0 <= 1284f, global2.x);
}

fn func_1() -> Struct_2 {
    global2 = select(!func_5(_wgslsmith_f_op_f32(func_2(~u_input.c, vec4<u32>(u_input.c.x, u_input.e, 4294967295u, u_input.b.x), 0i)), u_input.a.x, _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(34507i, u_input.d), vec2<i32>(12999i, -8651i)), countOneBits(vec2<i32>(u_input.d, global1.x)))), select(!(!(!vec2<bool>(global2.x, false))), func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -671f)), ~global1.x, _wgslsmith_dot_vec4_i32(~vec4<i32>(-2147483647i, u_input.d, u_input.d, 0i), firstLeadingBit(vec4<i32>(u_input.d, -1i, u_input.d, -2613i)))), func_4(Struct_1(~vec4<i32>(1i, u_input.a.x, 16891i, -2147483647i)), ~(~vec4<i32>(global1.x, global1.x, 0i, 2613i)), _wgslsmith_f_op_f32(f32(-1f) * -1144f), Struct_1(vec4<i32>(72147i, 3955i, 26487i, 37034i)))), true != (((0u ^ u_input.e) & _wgslsmith_add_u32(29529u, 22655u)) <= (~u_input.b.x ^ _wgslsmith_div_u32(u_input.c.x, u_input.e))));
    let var_0 = Struct_2(u_input.b.x);
    var var_1 = 2147483647i;
    global0 = ~0u;
    global1 = _wgslsmith_div_vec4_i32(select(-reverseBits(-vec4<i32>(u_input.d, 25977i, 56610i, 25751i)), ~(~vec4<i32>(26973i, u_input.d, global1.x, global1.x) | ~vec4<i32>(u_input.a.x, 8886i, global1.x, global1.x)), vec4<bool>(all(!vec2<bool>(global2.x, global2.x)), !global2.x, false, true && global2.x)), vec4<i32>(-1i) * -vec4<i32>(15172i, _wgslsmith_dot_vec4_i32(vec4<i32>(global1.x, -1i, 2147483647i, -2147483647i), vec4<i32>(9572i, global1.x, global1.x, 10986i)), _wgslsmith_clamp_i32(u_input.d, 2147483647i, 2147483647i), _wgslsmith_div_i32(u_input.d, 32359i)));
    return var_0;
}

fn func_6(arg_0: Struct_2) -> Struct_1 {
    var var_0 = false;
    var var_1 = func_1();
    return Struct_1(min(vec4<i32>(global1.x, -1i, _wgslsmith_div_i32(min(global1.x, -8100i), u_input.d), _wgslsmith_dot_vec4_i32(vec4<i32>(-31203i, u_input.a.x, global1.x, 0i), ~vec4<i32>(-17945i, 0i, -7869i, global1.x))), vec4<i32>(~(u_input.a.x | 2147483647i), global1.x, _wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.d, 1i, u_input.d), -vec3<i32>(-79277i, global1.x, global1.x)), u_input.d)));
}

fn func_7(arg_0: i32, arg_1: Struct_1) -> Struct_2 {
    let var_0 = select(select(vec4<bool>(true, true, all(select(vec4<bool>(global2.x, false, global2.x, false), vec4<bool>(false, true, global2.x, true), false)), true), !select(!vec4<bool>(global2.x, true, global2.x, true), vec4<bool>(global2.x, false, global2.x, false), any(vec4<bool>(global2.x, global2.x, global2.x, global2.x))), vec4<bool>(global2.x, false, !(global2.x | global2.x), func_4(Struct_1(vec4<i32>(arg_0, -18261i, -16230i, 1i)), ~arg_1.a, _wgslsmith_f_op_f32(-656f + -822f), arg_1).x)), select(vec4<bool>(func_5(_wgslsmith_f_op_f32(-137f - -1048f), 1i, firstLeadingBit(-4009i)).x, false || global2.x, any(vec3<bool>(true, true, global2.x)), true), !vec4<bool>(true, func_4(arg_1, vec4<i32>(0i, global1.x, arg_0, -76681i), -172f, Struct_1(arg_1.a)).x, true, arg_1.a.x != -2147483647i), !(!vec4<bool>(global2.x, global2.x, false, global2.x))), !select(select(select(vec4<bool>(true, global2.x, global2.x, global2.x), vec4<bool>(false, global2.x, global2.x, global2.x), vec4<bool>(global2.x, true, global2.x, global2.x)), select(vec4<bool>(false, global2.x, global2.x, false), vec4<bool>(global2.x, global2.x, true, global2.x), global2.x), vec4<bool>(true, true, global2.x, global2.x)), !(!vec4<bool>(global2.x, global2.x, true, true)), true));
    global0 = 4841u;
    var var_1 = true;
    global2 = var_0.wy;
    var_1 = var_0.x;
    return Struct_2(16302u);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec4<i32>(u_input.a.x, -1i, i32(-1i) * -abs(_wgslsmith_mod_i32(-1i, global1.x)), -47664i);
    global0 = u_input.c.x;
    var var_0 = Struct_2((_wgslsmith_add_u32(u_input.b.x & 1u, _wgslsmith_mult_u32(u_input.e, 1932u)) & 1u) << (abs(u_input.e) % 32u));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), -1212f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(260f, 1000f), 1f, all(vec3<bool>(false, false, true)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1350f + 120f) - 338f)))));
    var var_2 = func_7(1i, func_6(func_1()));
    let var_3 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1018f, var_1.x)) - var_1.x), var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-2290f)))), vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-142f - var_1.x))))), var_1.x, var_1.x), global2.x));
    var var_4 = Struct_1(~(select(vec4<i32>(-1i, -1i, global1.x, u_input.d), vec4<i32>(global1.x, 1i, u_input.d, u_input.a.x), true) >> (reverseBits(vec4<u32>(u_input.c.x, u_input.c.x, 4294967295u, 0u)) % vec4<u32>(32u))) | _wgslsmith_sub_vec4_i32(~vec4<i32>(global1.x, 2147483647i, -17869i, global1.x) >> ((u_input.c << (u_input.c % vec4<u32>(32u))) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_i32(select(vec4<i32>(24559i, -15603i, 2147483647i, 51609i), vec4<i32>(global1.x, 544i, 57716i, global1.x), vec4<bool>(global2.x, global2.x, global2.x, false)), ~vec4<i32>(-3478i, 0i, 7246i, -25082i), ~vec4<i32>(u_input.d, 43875i, global1.x, u_input.a.x))));
    var var_5 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -631f), _wgslsmith_div_f32(-1032f, var_3.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(-var_3.x)) - -1355f));
    let var_6 = (vec3<u32>(var_2.a, 4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(28859u, 1128u, u_input.b.x), vec3<u32>(var_2.a, 83126u, 0u))) & (vec3<u32>(~var_0.a, 9680u, var_2.a) & u_input.c.wxx)) << (~vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.a, var_0.a), vec2<u32>(var_0.a, u_input.b.x)), u_input.c.x, _wgslsmith_mult_u32(4294967295u, ~4294967295u)) % vec3<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(abs(2147483647i), _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(var_4.a, _wgslsmith_clamp_vec4_i32(var_4.a, var_4.a, var_4.a)), var_4.a)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), var_5.x, 2424f));
}

